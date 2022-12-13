# -*- coding: utf-8 -*-
"""
Created on Fri Jun 17 15:55:49 2022

@author: wqg436
"""
import pandas as pd
import numpy as np
import re
import shutil
import os
import subprocess
import warnings
import sys
from mikecalsetup import ost_file
import mikeio
import pkg_resources

# import geopandas as gp

pd.options.mode.chained_assignment = "raise"


def set_initial_trasnform_bounds(pardf):
    """
    Set initial upper and lower bound and transform of parameter dataframe.

    Parameters
    ----------
    pardf : pandas dataframe
        parameter dataframe with columns ['value', 'line', 'col', 'file']
        and an index with the automatically created parameter name.

    Returns
    -------
    pardf : pandas dataframe
        parameter dataframe with columns ['value', 'line', 'col', 'file',
                                          'lower', 'upper', 'transform']
        and an index with the automatically created parameter name.

    """
    # set initial transform and bounds
    pardf['transform'] = 'none'  # transform = none, log, tied, fixed
    pardf['tied_to'] = ''
    pardf['tied_factor'] = 1

    pardf['lower'] = 0.5 * pardf['value']
    pardf['upper'] = 1.5 * pardf['value']

    # account for negative values
    mask = pardf['value'] < 0
    pardf.loc[mask, 'lower'] = 1.5 * pardf['value']
    pardf.loc[mask, 'upper'] = 0.5 * pardf['value']
    return pardf


def extract_observations_from_file(stat_file, program='OSTRICH'):
    """
    Convert stat_file to a readable table for OSTRICH or PEST.

    Reads the file stat_file and records a table that can be used directly in a
    PEST or OSTRICH input file. For PEST an instruction file for stat_fild is
    also written.

    Parameters
    ----------
    stat_file : string
        name and path to file with observations
    program : string, optional
        Program to which the observations should be written. The options are
        OSTRICH or PEST. The default is 'OSTRICH'.

    Returns
    -------
    obs : pandas dataframe
        If program == OSTRICH: Observations section (Ostrich manual section
        2.14) for Ostrich input file with columns
        <name1><value1><wgt1><file1><sep1><key1><line1><col1><tok1><aug1><grp1>
        If program == PEST: obsdata section for PEST control file with columns
        OBSNME OBSVAL WEIGTH OBSGNME.

    """
    sep = '\t'

    f = open(stat_file, 'r')
    lines = f.readlines()
    f.close()

    best_pos_values = {'me': 0, 'mea': 0, 'rms': 0, 'kge': 1, 'pcc': 1,
                       'nse': 1, 'fbal': 0, 'ri': 0}

    # OSTRICH
    keys = [line.split(sep)[0] for line in lines]
    keys = [key.replace(' ', '_') for key in keys]  # removes spaces from name
    names = keys

    ost_obs = pd.DataFrame([names, keys],
                           index=['name', 'key']).T

    ost_obs['val'] = [key.split('_')[0] for key in keys]
    ost_obs['val'] = ost_obs['val'].map(best_pos_values)
    ost_obs['wgt'] = 1
    ost_obs['file'] = stat_file
    ost_obs['sep'] = sep
    ost_obs['line'] = 0
    ost_obs['col'] = 2  # column number as a tabel not character count
    ost_obs['tok'] = "' '"  # column seperator
    ost_obs['aug'] = 'yes'
    ost_obs['group'] = [name[-2:] for name in names]

    ost_obs = ost_obs[['name', 'val', 'wgt', 'file', 'key', 'line', 'col',
                       'tok', 'aug', 'group']]

    if program.upper() == 'OSTRICH':
        return ost_obs

    # PEST
    pest_obs = pd.DataFrame(columns=['obsnme', 'obsval', 'weight', 'obsgnme'])
    pest_obs['obsnme'] = ost_obs['name']
    pest_obs['obsval'] = ost_obs['val']
    pest_obs['weight'] = 1
    pest_obs['obsgnme'] = ost_obs['group']

    if program.upper() == 'PEST':
        # PEST instruction file
        # * observation groups
        # OBGNME
        # (one such line for each observation group)
        # obsgnme = list(pest_obs['obsgnme'].unique())

        # instruction file
        cols = [line.index(line.split(sep)[1])+1 for line in lines]
        f = open('./' + stat_file + '.ins', 'w')
        f.write('pif @' + '\n')
        for name, col in zip(names, cols):
            f.write('l1 ['+name+']{:0d}:{:0d} \n'.format(col, col+6))
        f.close()
        return pest_obs


def get_directories(pth):
    """
    Get extra directories for ostin file given path.

    Records the base directory of a given path. Further add any existing
    directory with the a name close to "model_inputs". These are useful to
    copy whe setting up the calibration.

    Parameters
    ----------
    pth : string
        path to model

    Returns
    -------
    directories : list
        list of directories as strings

    """
    # find base directory
    sppth = pth.split('/')
    sppth = [sp for sp in sppth if len(sp) > 0]
    try:
        directories = [sppth[1] if len(sppth[0]) == 1 else sppth[0]]
    except IndexError:  #
        directories = []

    # add model input like directories
    other_dir = os.listdir('./')
    pot_spelling = ['modelinputs', 'modelinput', 'model inputs',
                    'model_inputs', 'model input', 'model_input']
    other_dir = [od for od in other_dir if od.lower() in pot_spelling]
    if len(other_dir) > 0:
        directories.append(other_dir[0])
    return directories


def get_result_folder(all_df, pth, mod_nme):
    """
    Get resultfolder for Mike She model.

    Based on the extracted dataframe from the Mike She file (all_df), the
    result file folder is recorded.

    Parameters
    ----------
    all_df : pandas dataframe
        Dataframe with columns ['header0', 'header1', 'header2', 'header3',
                                'header4','header5',
                                'name', 'value', 'line', 'col'] extracted with
        the table_from_file() function.
    pth : string
        path to Mike She model
    mod_nme : string
        name of Mike She model

    Returns
    -------
    result_ff : str
        result file folder string

    """
    try:
        use_custom_res_f = all_df.loc[all_df['name']
                                      == 'UseCustomResultFolder', 'value'].iloc[0]
        if use_custom_res_f == 'true':
            rel_path = all_df.loc[all_df['name']
                                  == 'CustomResultFolder', 'value'].iloc[0]
            result_ff = '.\\'+os.path.normpath(os.path.join(pth, rel_path))+'/'
        else:
            result_ff = os.path.join(pth, mod_nme + '.she - Result Files/')
    except IndexError:
        result_ff = os.path.join(pth, mod_nme + '.she - Result Files/')
    return result_ff


def name_par_from_headers(parInidf):
    """
    Name parameters and simplify parameter dataframe.

    Automatically create a parameter name based on the strings in header1-5
    in parInidf and name column in a parameter dataframe. Place the new
    parameter name in the index and deletes the columns on which the automatic
    name is based.

    Parameters
    ----------
    parInidf : pandas dataframe
        parameter dataframe with columns ['header0', 'header1', 'header2',
        'header3', 'header4', 'header5', 'name', 'value', 'line', 'col',
        'file'] and a continous int index.

    Returns
    -------
    par : pandas dataframe
        parameter dataframe with columns [value', 'line', 'col', 'file']
        and an index with the automatically created parameter name.

    """
    # name parameters based on header columns
    name_cols = ['header0', 'header1', 'header2', 'header3', 'header4',
                 'header5', 'name']

    # if subarea names are numbers --> convert to string
    mask = pd.to_numeric(parInidf['header5'], errors='coerce').notnull()
    parInidf.loc[mask, 'header5'] = parInidf.loc[mask, 'header5'].astype(float).astype(int).astype(str)

    # Camelize strings with _ and all capital strings
    # assume not an abbreviation if str len > 3
    mask = (parInidf['name'].str.len() > 3) & (parInidf['name'].str.isupper())
    parInidf.loc[mask, 'name'] = parInidf.loc[mask, 'name'].apply(camelize)

    # create parameter name
    par = parInidf.replace('', np.nan)
    par['par_nme'] = par[name_cols].apply(lambda x: x.str.cat(sep='_'), axis=1)
    par['par_nme'] = par['par_nme'].str.replace(" ", "", regex=True)

    # final clean clean up
    par.index = par['par_nme']  # put parameter name in index
    par = par[['value', 'line', 'col', 'file']]  # delete unnecesssary columns
    return par


def camelize(string):
    """Camelize all capitals strings."""
    string = re.sub(r"(?:^|_)(.)", lambda m: m.group(
        1).upper(), string.lower())
    return string


def table_from_file(file):
    """
    Extract all parameters from mike she languaged file.

    Opens and reads Mike She languaged file and extract all parameters and
    place them in a pandas dataframe. For each parameter the headers are
    recoded. In Mike She language header lines contain [] while parameter
    lines contain = . The level of headers [0-4] in the dataframe is based
    on leading white spaces. Further the location of the parameter in the file
    in terms of line number and column is recorded.,

    Parameters
    ----------
    file : str
        name/path to file on which to extract the parameter table.

    Returns
    -------
    parInidf : pandas dataframe
        Dataframe with columns ['header0', 'header1', 'header2', 'header3',
                                'header4','header5',
                                'name', 'value', 'line', 'col']

    """
    # reading all lines in file
    f = open(file, mode='r')
    lines = f.readlines()
    f.close()

    # initialize containers to fill in loop
    header0 = []  # header with 3 leading whitespace
    header1 = []  # header with 6 leading whitespace
    header2 = []  # header with 9 leading whitespace
    header3 = []  # header with 12 leading whitespace
    header4 = []  # header with 15 leading whitespace
    header5 = []  # name_after name
    name = []  # parameter name
    value = []  # parameter value in file
    idx = []  # line index
    col = []  # column of start of parameter value
    h0 = None
    h1 = None
    h2 = None
    h3 = None
    h4 = None
    h5 = None
    # looping through sub section of lines
    for i, line in enumerate(lines):
        try:
            # headers
            if "[" in line and ']' in line:
                leading_white = len(line) - len(line.lstrip(' '))
                header = line.split('[')[1].split(']')[0]
                if leading_white == 3:
                    h0 = header
                    h1, h2, h3, h4, h5 = '', '', '', '', None
                if leading_white == 6:
                    h1 = header
                    h2, h3, h4, h5 = '', '', '', None
                elif leading_white == 9:
                    h2 = header
                    h3, h4, h5 = '', '', None
                elif leading_white == 12:
                    h3 = header
                    h4, h5 = '', None
                elif leading_white == 15:
                    h4 = header
            # parameters
            if '=' in line:
                if line.count('=') == 1:
                    n, v = line.strip().split(' = ')
                else:
                    n = line.strip().split(' = ')[0]
                    # v = line.replace(n + ' = ', '').strip()
                    v = line.strip().split(' = ')[1] + line.strip().split(' = ')[2]
                val_col = line.index('=')+2
                # append to lists
                idx.append(i)  # line index
                col.append(val_col)
                name.append(n)
                value.append(v)
                # write headers
                header0.append(h0)
                header1.append(h1)
                header2.append(h2)
                header3.append(h3)
                header4.append(h4)
                header5.append(h5)
        except ValueError:
            pass

    parInidf = pd.DataFrame([header0, header1, header2, header3, header4,
                             header5,
                             name, value, idx, col]).T
    parInidf.columns = ['header0', 'header1', 'header2', 'header3', 'header4',
                        'header5',
                        'name', 'value', 'line', 'col']
    if len(parInidf) == 0:
        raise ValueError('Parameter df not read correctly or file empty')
    parInidf['value'] = parInidf['value'].str.replace("'", "", regex=True)
    parInidf['value'] = parInidf['value'].str.replace("|", "", regex=True)

    # clean up convert to floats, int and str.
    parInidf['value'] = parInidf['value'].apply(convert_str_to_appr_dtypes)
    return parInidf


def convert_str_to_appr_dtypes(txt):
    """Convert txt to appropriate datatype that is float, integer or string."""
    try:
        k = float(txt)
        if k % 1 == 0:
            return int(k)
        return k

    except ValueError:
        return txt


def remove_unused_par(parInidf, keep_par, type_par, header, filter_val):
    """
    Remove rows in par dataframe based on setting in type_par.

    For a header with the filter_val setting in type_par, keep the parameters
    specified in keep_par and remove the rest for that specific header.

    Parameters
    ----------
    parInidf : pandas dataframe
        Dataframe with columns ['header0', 'header1', 'header2', 'header3',
                                'header4','header5',
                                'name', 'value', 'line', 'col']
    keep_par : list
        list of parameters to keep for unique strings in the header column.
    type_par : string
        name of parameter with the required setting of filterval.
    header : string
        column name in par df that contains the headers with parameter names.
        header = [header0, ...., header5]
    filter_val : int
        value of the type_par parameter for which to keep the keep_par.

    Returns
    -------
    parInidf : pandas dataframe
        Dataframe with columns ['header0', 'header1', 'header2', 'header3',
                                'header4','header5',
                                'name', 'value', 'line', 'col']

    """
    setting = list(parInidf.loc[parInidf['name'] == type_par, 'value'])
    processes = list(parInidf.loc[parInidf['name'] == type_par, header])

    # remove empty strings i.e. no header
    læn = len(setting)
    setting = [setting[i] for i in range(læn) if len(processes[i]) > 1]
    processes = [processes[i] for i in range(læn) if len(processes[i]) > 1]

    # filter processes based on setting
    sub_proc = [processes[i]
                for i in range(len(processes)) if setting[i] == filter_val]

    # filter parameters based on remaining processes
    parInidf = parInidf.loc[~(parInidf[header].isin(sub_proc) &
                            (~parInidf['name'].isin(keep_par)))]
    return parInidf


def name_after(parInidf, name, level=3):
    """
    Name rows in parameter dataframe after specific parameter.

    Assign the parameter value of the parameter with the name "name" to header5
    in pandas dataframe df. The variable level determines how many headers
    needs to be the same before the same name ca be assiged to header5.

    Parameters
    ----------
    parInidf : pandas dataframe
        Dataframe with columns ['header0', 'header1', 'header2', 'header3',
                                'header4','header5',
                                'name', 'value', 'line', 'col']
    name : string
        name of parameter of whos value to assign name after.
    level : int, optional
        number of headers that needs to be the same for rows to get the same
        name_after name in header 5. Level = [0, ..., 4]. The default is 3.

    Returns
    -------
    parInidf : pandas dataframe
        Dataframe with columns ['header0', 'header1', 'header2', 'header3',
                                'header4','header5',
                                'name', 'value', 'line', 'col']

    """
    subc = parInidf.loc[parInidf.name == name, 'value'].tolist()
    subc_idx = np.where(parInidf.name == name)[0].tolist()

    # get last index
    headers = ['header'+str(i) for i in range(level)]
    a1 = parInidf.loc[:, headers].values
    b1 = parInidf.loc[parInidf.name == name, headers].head(1).values.tolist()
    mask = np.isin(a1, b1).all(1)
    last_idx = np.where(mask == 1)[0][-1]+1

    # indexing
    subc_idx = np.array(subc_idx + [last_idx])
    repeat = subc_idx[1:] - subc_idx[:-1]
    h5 = [[subc[i]] * repeat[i] for i in range(len(subc))]
    h5 = [x for xs in h5 for x in xs]
    # adding empty strings in pre rows
    h5 = ['' for i in range(subc_idx[0])] + h5
    # adding empty strings in post rows
    h5 = h5 + ['' for i in range(len(parInidf) - len(h5))]
    parInidf.loc[:, 'header5'] = h5
    return parInidf


def get_parameters_from_uzs(uzs_file, soils):
    """
    Extract parameters from the uzs_file.

    Only keeps those parameters that pertain to the soils defined in the soils
    list of names.

    Parameters
    ----------
    uzs_file : sting
        path to a *.uzs file
    soils : list
        list of strings with soil names

    Returns
    -------
    uzs : pandas dataframe
        dataframe with the extracted parameters from the uzs file with columns
        ['header0', 'header1', 'header2', 'header3',
        'header4','header5',
        'name', 'value', 'line', 'col']


    """
    uzs = table_from_file(uzs_file)

    # rename headers
    translator = dict(zip(uzs[uzs.name == 'SOILNAME'].header1,
                          uzs[uzs.name == 'SOILNAME'].value))
    translator.update({'SOILSETUP': 'uz'})
    uzs = uzs.replace(translator)

    # filter unused soils
    uzs = uzs[uzs['header1'].isin(soils)]

    # filter unused parameters
    soil_par = ['Ks', 'ThetaS']  # keep_par
    uzs = uzs[(uzs['name'].isin(soil_par)) &
              uzs['header2'].str.contains('Genuchten')]

    # set file name
    uzs['file'] = uzs_file
    return uzs


def get_parameters_from_vpf(vpf_file, veg_names, irrigation):
    """
    Extract parameters from the vpf_file.

    Only keeps those parameters that
    pertain to the vegetation defined in the veg_names list of names. Also
    extract irrigation parameters if irrigation is True.

    Parameters
    ----------
    vpf_file : sting
        path to a *.uzs file
    veg_names : list
        list of strings with vegetation names to extract parameters for
    irrigation: bool
        indication of whether irrigation parameters should be included

    Returns
    -------
    vpf : pandas dataframe
        dataframe with the extracted parameters from the vpf file with columns
        ['header0', 'header1', 'header2', 'header3',
        'header4','header5',
        'name', 'value', 'line', 'col']
    """
    # extracting initial table
    vpf = table_from_file(vpf_file)

    # translate veg_no into veg_names
    translator = dict(zip(vpf[vpf.name == 'VEGNAME'].header1,
                          vpf[vpf.name == 'VEGNAME'].value))
    translator.update({'VEGSETUP': '',
                       'UserDefVegDevelopment': '',
                       'LandUse': 'lu'})
    vpf = vpf.replace(translator)

    # filter out unused vegetation
    vpf = vpf[vpf['header1'].isin(veg_names)]

    # IRRIGATION
    if irrigation:  # irrigation in the model
        # filter out irrigation if not used for veg_type
        irri_setting = list(vpf[vpf.name == 'IRRIGATION']['value'])
        no_irri_veg = [veg for i, veg in enumerate(
            veg_names) if irri_setting[i] == 0]

        vpf = vpf.loc[~((vpf['header1'].isin(no_irri_veg)) &
                        (vpf['header2'] == 'Irrigation'))]

    # filter unused parameters
    veg_par = ['LAI', 'ROOT', 'Kc']
    irrigation_par = ['MOISTURE_DEF_START', 'MOISTURE_DEF_STOP', 'REFERENCE',
                      'PRESCRIBED', 'CROPSTRESSFACTOR', 'PONDINGDEPTH']
    keep_par = veg_par + irrigation_par if irrigation else veg_par
    vpf = vpf[vpf['name'].isin(keep_par)]

    # finalizing
    vpf['header0'] = 'lu'
    vpf['file'] = vpf_file
    return vpf


def write_template_files(par_df, program='OSTRICH'):
    """
    Write template file for parameters in par_df.

    Writes a template file for unique files listed in par_df['file'] for
    specified program. All parameters in the parameter dataframe are included
    and will be named accordingly in the template file.

    Parameters
    ----------
    par_df : pandas dataframe
        parameter dataframe with columns [value', 'line', 'col', 'file']
        and an index with the parameter name.
    program :  str, optional
        [OSTRICH, PEST]

    Returns
    -------
    None.

    """
    # make sure line and col are intergers
    par_df['line'] = par_df['line'].astype(int)
    par_df['col'] = par_df['col'].astype(int)

    # prefix and suffix for parameter name for template file
    if program.upper() == 'OSTRICH':
        fix = '__'
    elif program.upper() == 'PEST':
        fix = '#'

    # loop through files in parameter df
    files = par_df['file'].unique()
    for file in files:
        par = par_df.loc[par_df['file'] == file]

        # Read all lines of file
        f = open(file, mode='r')
        lines = f.readlines()
        f.close()

        # Changing parameter values in lines
        for nme, row in par[['line', 'col']].iterrows():
            par_string = lines[row['line']][:row['col']] + \
                fix + nme + fix + '\n'
            lines[row['line']] = par_string

        # Writing to file
        filename, file_extension = os.path.splitext(file)
        tpl_file = filename + '.tpl'
        f = open(tpl_file, mode='w')
        if program.upper() == 'PEST':
            f.write('ptf #' + '\n')
        f.writelines(lines)
        f.close()


def remove_unused_data(parInidf):
    """
    Remove rows in par_df associated with unused data.

    In a mike she file the parameter name "IsDataUsedInSetup" indicates whether
    the data under a specific header is used in the setup. This function
    deletes all rows from an inital parameter dataframe extracted with the
    function table_from_file() associated with headers where the parameter
    value for "IsDataUsedInSetup" is 0.

    Parameters
    ----------
    parInidf : pandas dataframe
        dataframe with columns
        ['header0', 'header1', 'header2', 'header3',
        'header4','header5',
        'name', 'value', 'line', 'col']

    Returns
    -------
    parInidf : pandas dataframe
        parameter dataframe with columns ['header0', 'header1', 'header2',
        'header3', 'header4','header5',
        'name', 'value', 'line', 'col'] and integer index.

    """
    # remove where "data used in setup" == 0
    headers = ['header'+str(i) for i in range(5)]+['value']
    dataused = parInidf.loc[parInidf['name'] == 'IsDataUsedInSetup', headers]
    dataused_filter = dataused.loc[dataused['value'] == 1]

    a1 = parInidf.loc[:, ['header'+str(i) for i in range(5)]].values
    b1 = dataused_filter.loc[:, ['header'+str(i) for i in range(5)]].values

    mask = np.zeros((a1.shape[0]), dtype=bool)
    for i in range(b1.shape[0]):
        mask += np.isin(a1, b1[i, :]).all(1)
    parInidf = parInidf.loc[mask]
    return parInidf


def pardf_to_ost_par(par_df):
    """
    Divide parameters into parameter table and tied table for OstIn file.

    Parameters
    ----------
    par_df : pandas dataframe
        parameter dataframe with columns [value', 'line', 'col', 'file']
        and an index with the parameter name.

    Returns
    -------
    ost_par : pandas dataframe
        dataframe with parameters in the format of Real-valued Parameters for
        ostin file. Section 2.7 in Ostrich documentation. This table is
        specfied between BeginParams and EndParams in the OstIn file.
    ost_tied : pandas dataframe
        dataframe with parameters in the format of Tied Parameters for
        ostin file. Section 2.10 in Ostrich documentation. This table is
        specfied between BeginTiedParams and EndTiedParams in the OstIn file.
    ost_int : pandas dataframe
        dataframe with parameters in the format of Integer Parameters for
        ostin file. Section 2.8 in Ostrich documentation. This table is
        specfied between BeginIntegerParams and EndIntegerParams in the OstIn
        file.
    """
    par_rows = []
    tied_rows = []
    int_rows = []
    for idx, row in par_df.iterrows():
        if row['transform'] in ['log']:
            par_rows.append(['__'+idx+'__', row.value, row.lower, row.upper,
                             'none', 'log10', 'none', 'E10.4'])
        elif row['transform'] in ['none']:
            par_rows.append(['__'+idx+'__', row.value, row.lower, row.upper,
                             'none', 'none', 'none', 'E10.4'])
        elif row['transform'] in ['fixed']:
            tied_rows.append(['__'+idx+'__', 0, row.value, 'E10.4'])
        elif row['transform'] in ['tied']:
            tied_rows.append(['__'+idx+'__', 1, '__'+row.tied_to+'__',
                              'linear', row['tied_factor'], 0, 'E10.4'])
        elif row['transform'] in ['int']:
            int_rows.append(['__'+idx+'__', row.value, row.lower, row.upper])

    # for parameter section
    par_cols = ['name', 'init', 'lwr', 'upr', 'txIn', 'txOst', 'txOut', 'fmt']
    ost_par = pd.DataFrame(par_rows, columns=par_cols)

    # for tied parameter section
    tied_par_cols = ['name', 'np', 'pname', 'type',
                     'type_data:(c1', 'c0', 'fmt)']
    if len(tied_rows) > 0:
        ost_tied = pd.DataFrame(tied_rows, columns=tied_par_cols)
    else:
        ost_tied = []

    # for int parameter section
    int_par_cols = ['name', 'init', 'lwr', 'upr']
    if len(int_rows) > 0:
        ost_int = pd.DataFrame(int_rows, columns=int_par_cols)
        ost_int[int_par_cols[1:]] = ost_int[int_par_cols[1:]] .astype(int)
    else:
        ost_int = []
    return ost_par, ost_tied, ost_int


def pardf_to_pest_par(par_df):
    """
    Divide parameters into parameter tables for PEST file.

    Three tables are needed for the PEST control file: parameter group table,
    parameter data table and a table of tied parameters.

    Parameters
    ----------
    par_df : pandas dataframe
        parameter dataframe with columns [value', 'line', 'col', 'file']
        and an index with the parameter name.

    Returns
    -------
    pest_parg : pandas dataframe
        parameter group table for PEST control file with columns PARGPNME
        INCTYP DERINC DERINCLB FORCEN DERINCMUL DERMTHD.
    pest_par1 : pandas dataframe
        first section of parameter data for PEST control file with columns
        PARNME PARTRANS PARCHGLIM PARVAL1 PARLBND PARUBND PARGP SCALE OFFSET
        DERCOM.
    pest_par2 : pandas dataframe
        second section of parameter data for PEST control file with columns
        PARNME PARTIED

    """
    par_df.loc[par_df['upper'] == 0, 'upper'] = 1
    # Parameter groups section
    # * parameter groups
    # PARGPNME INCTYP DERINC DERINCLB FORCEN DERINCMUL DERMTHD
    pargpnme = set([idx.split('_')[0] for idx in par_df.index])
    pest_parg = pd.DataFrame(index=pargpnme)
    pest_parg['inctyp'] = 'relative'
    pest_parg['derinc'] = 0.01
    pest_parg['derinclb'] = 0.0
    pest_parg['forcen'] = 'switch'
    pest_parg['derincmul'] = 2
    pest_parg['dermthd'] = 'parabolic'

    # Parameters data section
    # * parameter data
    # PARNME PARTRANS PARCHGLIM PARVAL1 PARLBND PARUBND PARGP SCALEOFFSETDERCOM
    pest_par1 = par_df.copy()
    pest_par1.drop(['line', 'col', 'file', 'tied_to', 'tied_factor'],
                   axis=1, inplace=True)
    pest_par1 = pest_par1.rename({'transform': 'partrans',
                                  'value': 'parval1',
                                  'lower': 'parlbnd',
                                  'upper': 'parubnd'}, axis=1)
    pest_par1['parchglim'] = 'relative'  # relative or factor
    pest_par1['pargp'] = [idx.split('_')[0]
                          for idx in pest_par1.index]  # parameter group
    pest_par1['scale'] = 1
    pest_par1['offset'] = 0
    pest_par1['dercom'] = 1  # model command run
    pest_par1 = pest_par1[['partrans', 'parchglim', 'parval1',
                           'parlbnd', 'parubnd', 'pargp', 'scale', 'offset',
                           'dercom']]
    pest_par1 = pest_par1.rename_axis(index=None)

    # PARNME PARTIED
    pest_par2 = par_df.copy()
    pest_par2 = pest_par2['tied_to']
    pest_par2 = pest_par2[pest_par2.str.len() != 0]

    return pest_parg, pest_par1, pest_par2


class ExtractParameters():
    """Extract relevant parameters from initial parameter table."""

    # For translating mike she language into shortnames or empty strings to
    # simplify automatically given parameter names.
    translator = {'SaturatedZoneSubCatchment': 'lr',
                  'SaturatedZone': 'sz',
                  'SZShallowGWRoutingZones': '',
                  'SZShallowGWRouting': 'if',
                  'SZDeepGWRoutingZones': '',
                  'SZDeepGWRouting': 'bf',
                  'Reservoir1': 'res1',
                  'Reservoir2': 'res2',
                  'OverlandSubcatchment': 'ol',
                  'Overland': 'ol',
                  'MSheLinks': 'riv',
                  'TopographicalRouting': '',
                  'Unsatzone': 'uz',
                  'TwoLayerUZSoilProperties': '',
                  'UZSoilProp': '',
                  'BoundaryConditionsPfs': '',
                  'FixedValue': '',
                  'FIXED_VALUE_LAI': 'LAI',
                  'FIXED_VALUE_RD': 'RD',
                  'LandUse': 'lu',
                  'ROOT': 'RD',
                  'GLOBAL': '',
                  'FixedValue': '',
                  'VEGETATION': '',
                  'DFS_2D_DATA_FILE': 'arrfile',
                  'CommandAreas': '',
                  'Sources': '',
                  'Source1': '',
                  'Demands': '',
                  'CommandArea': 'Irrigation',
                  'Overland': 'ol',
                  'GeoUnitsSZProperties': '',
                  'UZSoilProfiles': '',
                  'UZSoilProfileProp': '',
                  'TIME_SERIES_FILE': 'tsfile',
                  'ROOT_DEPTH': 'RD'}


    def __init__(self, parInidf, proc_active, model_types, par_from, pth):
        self.parInidf = parInidf
        self.model_types = model_types
        self.pth = pth
        # extract calibration parameters and combine parameter dfs
        process_dfs = []
        if proc_active['ET'] and 'lu' in par_from:
            process_dfs.append(self.extract_lu_par())

        if proc_active['OL'] and 'ol' in par_from:
            process_dfs.append(self.extract_ol_par())

        if proc_active['SZ'] and 'sz' in par_from:
            process_dfs.append(self.extract_sz_par())

        if proc_active['UZ'] and 'uz' in par_from:
            process_dfs.append(self.extract_uz_par())

        if proc_active['River'] and 'river' in par_from:
            process_dfs.append(self.extract_riv_par())
        par2 = pd.concat(process_dfs)

        # clean up
        par2 = par2.replace(self.translator)
        mask = (par2['name'].str.len() > 3) & (par2['name'].str.isupper())
        par2.loc[mask, 'name'] = par2.loc[mask, 'name'].apply(camelize)

        # extract parameter files
        mask = ((par2['name'] == 'FileName') |
                (par2['name'] == 'ItemNumbers'))
        if mask.sum() > 0:
            # filtering
            par_files_ = par2.loc[mask].copy()
            self.par_files_ = par_files_

            # cleanup
            headers = ['header0', 'header1', 'header2', 'header3', 'header4']
            par_files = par_files_.groupby(headers).aggregate({'value': 'first'}).reset_index()
            par_files['item'] = par_files_.groupby(headers).aggregate({'value': 'last'})['value'].tolist()

            # # create parameter name
            par_files = par_files.replace('', np.nan)
            par_files['par_nme'] = par_files[headers].apply(lambda x: x.str.cat(sep='_'), axis=1)
            par_files['par_nme'] = par_files['par_nme'].str.replace(" ", "", regex=True)

            # make relevant columns
            par_files['file'] = ['.\\' + os.path.normpath(os.path.join(self.pth, file)) for file in par_files['value'].to_list()]
            par_files.index = par_files['par_nme']
            par_files['method'] = 'uniform_factor'
            par_files = par_files[['file', 'item', 'method', 'value']]
            self.par_files = par_files
        else:  # no parameter file --> empty dataframe
            self.par_files = pd.DataFrame(columns=['file', 'item', 'method',
                                                   'value', 'lower', 'upper'])
            self.par_files = pd.DataFrame(columns=['file', 'item', 'method',
                                                   'value'])
        # clean up of parameter df
        par2 = par2.loc[~mask].copy()
        par = name_par_from_headers(par2)

        par = set_initial_trasnform_bounds(par)

        # order of columns
        par = par[['value', 'lower', 'upper', 'transform', 'tied_to',
                   'tied_factor', 'line', 'col', 'file']]
        self.par = par

    def extract_lu_par(self):
        """
        Extract land use parameters from initial parameter df.

        Reduce the number of rows in the initial paramter dataframe "parInidf"
        to only include those that are relevant to the process. In case a vpf
        file is used to define land use parameters, this file is also read and
        parameters extracted.

        Parameters
        ----------
        parInidf : pandas dataframe
            parameter dataframe with columns ['header0', 'header1', 'header2',
            'header3', 'header4','header5',
            'name', 'value', 'line', 'col'] and integer index.

        Returns
        -------
        lu : pandas dataframe
            parameter dataframe with columns ['header0', 'header1', 'header2',
            'header3', 'header4','header5',
            'name', 'value', 'line', 'col'] and integer index.

        """
        lu = self.parInidf.loc[self.parInidf['header0'] == 'LandUse'].copy()
        irrigation = bool(lu.loc[lu.name == 'Irrigation', 'value'].tolist()[0])
        spat_dist = lu.loc[lu.name == 'DistributionType', 'value'].tolist()[0]
        if irrigation:
            lu_ir = lu[lu['header1'].isin(['CommandAreas', 'Demands'])].copy()
            lu = lu[~lu['header1'].isin(['CommandAreas', 'Demands'])].copy()

        # # Veg Setup Type
        # # 1 = Define vegetation units (use *.etv files),
        # # 2 = Define Parameters Individually
        try:
            veg_setup_type = lu.loc[lu.name == 'SETUP_TYPE', 'value'].tolist()[
                0]
        except IndexError:  # she file created before "define parameters
            # individually" was possible
            veg_setup_type = 1

        # Dropping more parameters based on settings
        if veg_setup_type == 1:  # Define vegetation units (use *.etv files)
            if spat_dist == 1:  # uniform spatial distribution
                temp_dist = lu.loc[lu.name == 'TYPE', 'value'].tolist()[0]
                if temp_dist == 1:  # constant
                    lu = lu[lu['header1'] != '']
                    keep_par = ['C1', 'C2', 'C3', 'C_INT', 'A_ROOT',
                                'ETReduced', 'FIXED_VALUE_LAI',
                                'FIXED_VALUE_RD']
                    lu = remove_unused_par(lu, keep_par, 'TYPE',
                                           'header1', 1)
                elif temp_dist == 2:  # time series file
                    lu = lu[lu['header2'] == 'GLOBAL']
                    lu = remove_unused_par(lu,
                                           ['FILE_NAME', 'ITEM_NUMBERS'],
                                           'TYPE', 'header2', 2)
                elif temp_dist == 3:  # vegetation property file (*.etv file)
                    lu = lu[lu['header3'] != '']
                    lu = remove_unused_par(lu, ['FILE_NAME', 'STAGE_NAMES'],
                                           'TYPE', 'header2', 3)
                    vpf_file = lu.loc[(lu['name'] == 'FILE_NAME'),
                                      'value'].iloc[0]
                    vpf_file = os.path.normpath(os.path.join(self.pth,
                                                             vpf_file))
                    veg_names = lu.loc[lu['name'] == 'STAGE_NAMES',
                                       'value'].to_list()
                    lu = get_parameters_from_vpf(vpf_file, veg_names,
                                                 irrigation)

            if spat_dist == 2:  # sub areas spatail distribution
                lu = name_after(lu, 'NAME', level=2)
                lu = lu.loc[lu['header5'] != '']

                # Translate vegetation type into landuse from Mike She file
                mask = lu['name'] == 'STAGE_NAMES'
                veg_translator = dict(zip(lu.loc[mask, 'value'],
                                          lu.loc[mask, 'header5']))
                self.translator.update(veg_translator)

                # Type 1 = Constant
                lu = remove_unused_par(lu, ['FIXED_VALUE_LAI',
                                            'FIXED_VALUE_RD'],
                                       'TYPE', 'header5', 1)
                # Type 2 = Time series file
                lu = remove_unused_par(lu, ['FILE_NAME', 'ITEM_NUMBERS'],
                                       'TYPE', 'header5', 2)
                local_trans = {'TIME_SERIES_FILE_1': 'LAI_ts',
                               'TIME_SERIES_FILE_2': 'RD_ts'}
                lu['header3'] = lu['header3'].replace(local_trans)

                # Type 3 = Vegetation proporty file
                lu = remove_unused_par(lu, ['FILE_NAME', 'STAGE_NAMES'],
                                       'TYPE', 'header5', 3)

                vpf_file = lu.loc[(lu['name'] == 'FILE_NAME') &
                                  (lu['header3'] == 'VEG_PROP_FILES'),
                                  'value'].to_list()[0]  # takes single vpf file!!!
                type3_veg = lu.loc[lu['name'] == 'STAGE_NAMES',
                                   'value'].to_list()
                type3_veg = list(set(type3_veg))
                type3_header5 = lu.loc[lu['name'] ==
                                       'STAGE_NAMES', 'header5'].to_list()
                lu = lu[~(lu['header5'].isin(type3_header5))]
                vpf_file_path = os.path.normpath(os.path.join(self.pth, vpf_file))
                vpf = get_parameters_from_vpf(
                    vpf_file_path, type3_veg, irrigation)
                lu[['header1', 'header2', 'header4']] = ''
                lu = pd.concat([lu, vpf])

        if veg_setup_type == 2:  # Define Parameters Individually
            # initial clean up
            lu = lu[~lu['header2'].isin(
                ['', 'GLOBAL', 'STATION_BASED', 'FULLY_DISTRIBUTED'])]

            file_header = 'header3'   # header that contain type of file
            process_header = 'header2'  # header that contain name of parameter

            # Veg Distribution type
            # Veg dist type == 1 Uniform, time varying
            lu = remove_unused_par(lu, ['FILE_NAME', 'ITEM_NUMBERS'], 'TYPE',
                                   process_header, 2)
            # Veg dist type == 1 Uniform, time constant
            lu = remove_unused_par(lu, ['FIXED_VALUE'], 'DistributionType',
                                   process_header, 1)

            # 2 = Subareas, uniform (time varying not supported)
            # lu = remove_unused_par(lu, ['FIXED_VALUE'], 'DistributionType',
            #                        process_header, 2)

            # 3 = Fully distributed
            setting = lu.loc[(lu['name'] == 'DistributionType')
                             & (lu[file_header] == ''), 'value']
            process = list(lu.loc[(lu['name'] == 'DistributionType') & (
                lu[file_header] == ''), process_header])

            #     # setting 1 = dfs2, 2 = shp, 3 = txt
            lu = remove_unused_par(lu, ['FILE_NAME', 'ITEM_NUMBERS'], 'Type',
                                   process_header, 1)

            setting_trans = {13: 'DFS_2D_DATA_FILE', 2: 'SHAPE_FILE',
                             3: 'XYZ_FILE'}
            setting = list(setting.replace(setting_trans))

            lu = lu.loc[~(lu[process_header].isin(process) &
                          (~lu[file_header].isin(setting)))]
            lu = lu.loc[lu['header3'] != 'XYZ_FILE']

        # Irrigation
        if irrigation:
            # COMMAND AREAS
            lu_ir = name_after(lu_ir, 'AreaName')
            lu_ir = lu_ir[lu_ir['header2'] != '']
            lu_ir = lu_ir[(lu_ir['header2'] == 'Demand') |
                          (lu_ir['header3'] == 'Sources')]

            lu_ir = remove_unused_par(lu_ir, ['CapacityRS'], 'SourceTypeCode',
                                      'header5', 1)  # River source
            lu_ir = remove_unused_par(lu_ir, ['CapacitySIWS'], 'SourceTypeCode',
                                      'header5', 2)  # Single well source
            lu_ir = remove_unused_par(lu_ir, ['CapacitySWS'], 'SourceTypeCode',
                                      'header5', 3)  # Shallow well source
            lu_ir = remove_unused_par(lu_ir, ['CapacityES'], 'SourceTypeCode',
                                      'header5', 4)  # External source

            # DEMAND
            keep_par = ['DemandMoistureDeficitStartConst']
            lu_ir = remove_unused_par(lu_ir, keep_par, 'DemandCode',
                                      'header2', 0)  # External source

            lu = pd.concat([lu, lu_ir])
        return lu

    def extract_ol_par(self):
        """
        Extract overland flow parameters from initial parameter df.

        Reduce the number of rows in the initial paramter dataframe "parInidf"
        to only include those that are relevant to the process.

        Parameters
        ----------
        parInidf : pandas dataframe
            parameter dataframe with columns ['header0', 'header1', 'header2',
            'header3', 'header4','header5',
            'name', 'value', 'line', 'col'] and integer index.

        Returns
        -------
        ov : pandas dataframe
            parameter dataframe with columns ['header0', 'header1', 'header2',
            'header3', 'header4','header5',
            'name', 'value', 'line', 'col'] and integer index.

        """
        if self.model_types['OL'] == 1:  # subcatchment based
            ov = self.parInidf.loc[self.parInidf['header0'] ==
                                   'OverlandSubcatchment'].copy()
            if len(ov) == 0:
                pass
            ov = name_after(ov, 'Name')

            # keep pars
            keep_par = ['Slope', 'ManningNb',
                        'DetentionStorage', 'SlopeLength']
            ov = ov.loc[ov['name'].isin(keep_par)]
        elif self.model_types['OL'] == 0:  # finite difference
            ov = self.parInidf.loc[self.parInidf['header0'] ==
                                   'Overland'].copy()

            file_header = 'header2'   # header that contain type of file
            process_header = 'header1'  # header that contain name of parameter

            # initial filters
            ov = ov[ov[process_header] != '']

            # Type 0 = Uniform spatial distribution
            ov = remove_unused_par(ov, ['FixedValue'], 'Type',
                                   process_header, 0)

            # Fully distributed
            setting = ov.loc[(ov['name'] == 'Type'), 'value']
            process = list(ov.loc[(ov['name'] == 'Type'), process_header])
            # setting 1 = dfs2, 2 = shp, 3 = txt
            ov = remove_unused_par(ov, ['FILE_NAME', 'ITEM_NUMBERS'], 'Type',
                                   process_header, 1)
            setting_trans = {1: 'DFS_2D_DATA_FILE', 2: 'SHAPE_FILE',
                             3: 'XYZ_FILE'}
            setting = list(setting.replace(setting_trans))

            ov = ov.loc[~(ov[process_header].isin(process) &
                          (~ov[file_header].isin(setting)))]
        return ov

    def extract_uz_par(self):
        """
        Extract unsaturated zone parameters from initial parameter df.

        Reduce the number of rows in the initial paramter dataframe "parInidf"
        to only include those that are relevant to the process. In case a usz
        file is used to define unsaturated zone parameters, this file is also
        read and parameters extracted.

        Parameters
        ----------
        parInidf : pandas dataframe
            parameter dataframe with columns ['header0', 'header1', 'header2',
            'header3', 'header4','header5',
            'name', 'value', 'line', 'col'] and integer index.

        Returns
        -------
        uz : pandas dataframe
            parameter dataframe with columns ['header0', 'header1', 'header2',
            'header3', 'header4','header5',
            'name', 'value', 'line', 'col'] and integer index.

        """
        uz = self.parInidf.loc[self.parInidf['header0'] == 'Unsatzone'].copy()

        # settings
        uz_bypass = int(uz.loc[uz.name == 'Bypass', 'value'])
        uz_gaa = int(uz.loc[uz.name == 'USE_Green_And_Ampt', 'value'])

        # uztype = 0 (Richards), uztype = 1 (Gravity)
        if self.model_types['UZ'] in [0, 1]:
            uz = name_after(uz, 'SoilProfile_ID')
            keep_par = ['DataBase', 'SoilID']
            keep_par = keep_par + ['BYP', 'THR1',
                                   'THR2'] if uz_bypass == 1 else keep_par
            uz = uz.loc[uz['name'].isin(keep_par)]

            # extract parameters from uzs file
            uzs_file = uz.loc[uz['name'] == 'DataBase', 'value'].to_list()[
                0]  # takes single file!!!
            soils = uz.loc[uz['name'] == 'SoilID', 'value'].to_list()
            uzs_file_path = os.path.normpath(os.path.join(self.pth, uzs_file))
            uzs = get_parameters_from_uzs(uzs_file_path, soils)

            # translator from name in uzs file to name in mshe file
            uzs_to_mshe_name = dict(zip(uz[uz.name == 'SoilID'].value,
                                        uz[uz.name == 'SoilID'].header5))
            uzs = uzs.replace(uzs_to_mshe_name)

            # combine parameters from mshe file and uzs file
            uz = uz.loc[~uz['name'].isin(['DataBase', 'SoilID'])]
            uz = pd.concat([uz, uzs])

        elif self.model_types['UZ'] == 2:  # uztype = 2 (2 layer)
            uz_ets = uz[uz['header1'] == 'ETSurfaceDepth']
            uz = uz[uz['header1'] != 'ETSurfaceDepth']
            uz = name_after(uz, 'Soil_ID')

            # keep pars
            keep_par = ['ThetaS', 'ThetaFC', 'ThetaWP', 'Kint']
            keep_par += ['BYP', 'THR1', 'THR2'] if uz_bypass == 1 else []
            keep_par += ['SoilSuction'] if uz_gaa == 1 else []
            uz = uz[uz['name'].isin(keep_par)]

            # ET SURFACE
            # type = 0 uniform distributed
            uz_ets = remove_unused_par(
                uz_ets, ['FixedValue'], 'Type', 'header1', 0)

            # type = 1 spatial distributed
            uz_ets = remove_unused_par(
                uz_ets, ['FILE_NAME', 'ITEM_NUMBERS'], 'Type', 'header1', 1)

            # remove xyz files
            uz_ets = uz_ets[uz_ets['header2'] != 'XYZ_FILE']

            # Combine
            uz = pd.concat([uz, uz_ets])
        return uz

    def extract_sz_par(self):
        """
        Extract saturated zone parameters from initial parameter df.

        Reduce the number of rows in the initial paramter dataframe "parInidf"
        to only include those that are relevant to the process.

        Parameters
        ----------
        parInidf : pandas dataframe
            parameter dataframe with columns ['header0', 'header1', 'header2',
            'header3', 'header4','header5',
            'name', 'value', 'line', 'col'] and integer index.

        Returns
        -------
        sz : pandas dataframe
            parameter dataframe with columns ['header0', 'header1', 'header2',
            'header3', 'header4','header5',
            'name', 'value', 'line', 'col'] and integer index.

        """
        # Linear Reservoir
        if self.model_types['SZ'] == 1:
            sz = self.parInidf.loc[self.parInidf['header0'] ==
                                   'SaturatedZoneSubCatchment'].copy()
            sz = name_after(sz, 'Name')

            # settings
            sz_wells = int(sz.loc[sz.name == 'Wells', 'value'])

            # keep pars
            keep_par = ['SpecificYield', 'InitialDepth', 'DepthReservoir',
                        'TimeConstantPercolation', 'ThresholdDepthInterflow',
                        'TimeConstantInterflow', 'SpecificYield',
                        'TimeConstHFlow', 'GWDeadStorageFrac',
                        'UZFeedbackFrac', 'InitialDepth', 'ThresholdDepth',
                        'DepthReservoir']
            pump_extra = ['FracPump1', 'ThresholdPumping']
            keep_par += pump_extra if sz_wells == 1 else []
            sz = sz.loc[sz['name'].isin(keep_par)]

        # Finite difference
        elif self.model_types['SZ'] == 0:
            sz = self.parInidf.loc[self.parInidf['header0'] ==
                                   'SaturatedZone'].copy()
            drainage = bool(sz.loc[sz.name == 'Drainage', 'value'].tolist()[0])

            if drainage:
                sz_dr = sz[sz['header1'].isin(['Drainage'])]
                sz = sz[~sz['header1'].isin(['Drainage'])]
            par_dist = int(sz.loc[sz['name'] == 'TypeOfGeoParaDistribution',
                                  'value'])

            if par_dist == 0:  # Assign parameters via geological layers
                # LAYERS
                sz_lay = sz[sz['header1'] == 'GeoLayersSZ']
                file_header = 'header4'   # header with type of file
                process_header = 'header3'  # header with name of parameter
                sz_lay = sz_lay[sz_lay[process_header] != '']

                # filetypes
                setting = sz_lay.loc[sz_lay.name == 'Type', 'value']
                process = sz_lay.header3.unique().tolist()
                # Type 0 = Uniform spatial distribution
                sz_lay = remove_unused_par(
                    sz_lay, ['FixedValue'], 'Type', process_header, 0)

                # Fully distributed
                setting = sz_lay.loc[(sz_lay['name'] == 'Type') & (
                    sz_lay[file_header] == ''), 'value']
                process = list(sz_lay.loc[(sz_lay['name'] == 'Type') & (
                    sz_lay[file_header] == ''), process_header])

                # type setting 1 = dfs2, 2 = shp, 3 = txt
                sz_lay = remove_unused_par(sz_lay, ['FILE_NAME',
                                                    'ITEM_NUMBERS'],
                                           'Type', process_header, 1)
                setting_trans = {1: 'DFS_2D_DATA_FILE', 2: 'SHAPE_FILE',
                                 3: 'XYZ_FILE'}
                setting = list(setting.replace(setting_trans))

                sz_lay = sz_lay.loc[~(sz_lay[process_header].isin(process) &
                                      (~sz_lay[file_header].isin(setting)))]

                # drop lower level?
                sz = sz_lay[sz_lay[process_header] != 'LowerLevel']

            elif par_dist == 1:  # Assign parameters via geological units
                # GEOUNITS
                sz = sz.loc[sz['header1'].isin(
                    ['GeoUnitsSZProperties', 'Drainage'])]
                sz = name_after(sz, 'SoilName', level=2)
                keep_par = ['HorConduc', 'VerConduc',
                            'SpecYield', 'StorageCoef']
                sz = sz.loc[(sz['name'].isin(keep_par)) |
                            (sz['header1'] == 'Drainage')]
            # DRAINAGE
            if drainage:
                file_header = 'header3'   # header with type of file
                process_header = 'header2'  # header with name of parameter
                sz_dr = sz_dr[sz_dr[process_header] != '']
    
                # Type 0 = Uniform spatial distribution
                sz_dr = remove_unused_par(
                    sz_dr, ['FixedValue'], 'Type', process_header, 0)
    
                # Type 1 = Uniform spatial distribution
                sz_dr = remove_unused_par(sz_dr, ['FILE_NAME', 'ITEM_NUMBERS'],
                                          'Type', process_header, 1)
    
                # remove xyz files
                sz_dr = sz_dr[sz_dr['header3'] != 'XYZ_FILE']
    
                # remove draincode and distributed option code
                sz_dr = sz_dr[~sz_dr['header2'].isin(['DrainCode',
                                                      'DistributedOptionCode'])]
    
                # Combine
                sz = pd.concat([sz, sz_dr])
        return sz

    def extract_riv_par(self):
        """
        Extract river and lake parameters from initial parameter df.

        Reduce the number of rows in the initial paramter dataframe "parInidf"
        to only include those that are relevant to the process.

        Parameters
        ----------
        parInidf : pandas dataframe
            parameter dataframe with columns ['header0', 'header1', 'header2',
            'header3', 'header4','header5',
            'name', 'value', 'line', 'col'] and integer index.

        Returns
        -------
        riv : pandas dataframe
            parameter dataframe with columns ['header0', 'header1', 'header2',
            'header3', 'header4','header5',
            'name', 'value', 'line', 'col'] and integer index.

        """
        riv = self.parInidf.loc[self.parInidf['header0'] == 'River'].copy()

        # getting river file name
        riv_file = riv.loc[riv['name'] ==
                           'Filename']['value'].to_string().split()[1]

        extension = os.path.splitext(riv_file)[1]

        if extension == '.mhydro':
            riv_file_path = os.path.normpath(os.path.join(self.pth, riv_file))
            hydro = table_from_file(riv_file_path)
            riv = hydro.loc[hydro['header0'] == 'BoundaryConditionsPfs'].copy()
            riv = name_after(riv, 'BranchID')
            riv = riv.loc[riv['name'].isin(['LeakageCoef'])].copy()

            extra = hydro.loc[hydro['header0'] == 'MH_River_Network'].copy()
            extra = name_after(extra, 'ObjectID')
            extra = extra.loc[extra['name'].isin(['Name'])]
            extra['value'] = extra['value'].str.strip("'")

            branchIDtranslator = dict(zip(extra['header5'],
                                          extra['value']))
            self.translator.update(branchIDtranslator)
            riv.loc[:, 'header2'] = ''
            riv.loc[:, 'file'] = riv_file_path
        else:  # other file extensions not hydro
            riv = None
        return riv


class Setup:
    """
    A class to represent the setup of a Mike She model.

    Attributes
    ----------
    mod_nme : string
        name of Mike She model
    pth : string
        path to Mike She model
    par_from : list
        list of processes to parameterize.
        Default is all processe ['lu', 'ol', 'sz', 'uz', 'river']
    """

    ost_programtype = 'PADDS'
    ost_math = False
    mzpath = 'C:\\Program Files (x86)\\DHI\\MIKE Zero\\2022\\bin\\x64'
    environment = 'base'  # !!!
    stat_file = 'stats.txt'
    program = 'OSTRICH'
    array_factor_fname = 'par_array_factors.txt'
    statscripts = ['stats.py']

    def __init__(self, mod_nme, pth,
                 par_from=['lu', 'ol', 'sz', 'uz', 'river']):
        self.mod_nme = mod_nme
        self.statscripts = ['stats.py']
        # self.directories = get_directories(pth)
        self.pth = pth.replace("/", '\\')
        self.par_from = par_from
        all_df = table_from_file(os.path.join(pth, mod_nme) + '.she')
        self.result_ff = get_result_folder(all_df, self.pth, self.mod_nme)
        # get extra files and directories
        self.extra_files = []
        self.get_extra_dir_files(all_df)
        # remove rows where data used == 0
        all_df = remove_unused_data(all_df)

        # Class variables? Header 0 in Mike she file to parse into sections
        h0_useless = ['FlowModelDocVersion', 'ViewSettings', 'Overlays',
                      'Catchment', 'Topography', 'ExtraParams', 'Result',
                      'Results_Post_Processing', 'Subcatchments']
        h0_results = ['StoringOfResults']
        h0_simspec = ['SimSpec']

        # simulation specifications -------------------------------------------
        spec = all_df.loc[all_df['header0'].isin(h0_simspec)].copy()
        model_types = {}  # type of model used to simulate process,
        # i.e. linear reservoir or finite difference for sz
        for proc in ['OL', 'SZ', 'UZ']:
            string = proc.upper() + '_ModelType'
            model_types[proc] = int(spec.loc[spec['name'] == string, 'value'])
        self.model_types = model_types

        proc_active = {}  # active processes in the simulation
        for proc in ['ET', 'OL', 'SZ', 'UZ', 'River']:
            proc_active[proc] = bool(
                int((spec.loc[spec['name'] == proc, 'value'])))
        self.proc_active = proc_active

        # parameters ---------------------------------------------------------
        parInidf = all_df.loc[~all_df['header0'].isin(h0_results +
                                                      h0_simspec +
                                                      h0_useless)].copy()
        parInidf['file'] = os.path.join(self.pth, mod_nme) + '.she'
        extpar = ExtractParameters(parInidf, proc_active, model_types,
                                   par_from, pth)
        self.par = extpar.par
        self.par_files = extpar.par_files

        # get files
        files = self.par.file.unique().tolist()
        files = [file.replace('\\', '/') for file in files]
        files = ['./' + file if file[:2] != './' else file for file in files]
        self.files = files

        # observations -------------------------------------------------------
        resultsIni = all_df.loc[all_df['header0'].isin(h0_results)].copy()
        self.results = self.extract_obs_vs_sim(resultsIni)

    def get_extra_dir_files(self, all_df):
        """
        Get extra directories and files for input file.

        Based on the extracted dataframe from the Mike She file (all_df),
        all subdirectories where files are located that the *.she file depends
        on are recorded. If file are located in the current directory they are
        added to extra_files

        Parameters
        ----------
        all_df : pandas dataframe
            Dataframe with columns ['header0', 'header1', 'header2', 'header3',
                                    'header4','header5',
                                    'name', 'value', 'line', 'col']
            extracted with the table_from_file() function.

        Returns
        -------
        Extra directories and extra files

        """
        filedf = all_df[((all_df['name'].str.lower() == 'file_name') &
                         (all_df['value'].str.len() > 0)) |
                        ((all_df['name'].str.lower() == 'filename') &
                         (all_df['value'].str.len() > 0))].copy()

        # ori_paths = filedf['value'].str.lower().str.split('\\').tolist()
        ori_paths = filedf['value'].str.lower().tolist()
        ori_paths = ['.\\' + os.path.normpath(os.path.join(self.pth, ori))
                     for ori in ori_paths]

        if self.pth != '.\\':
            paths = [path for path in ori_paths if self.pth not in path]
            paths = ['\\'.join(path.split('\\')[:-1]) for path in paths]
            directories = [self.pth]
            directories.extend(paths)
        elif self.pth == '.\\':
            split = [path.split('\\') for path in ori_paths]
            length = [len(p) for p in split]
            # remove file name from path
            paths = ['\\'.join(path.split('\\')[:2]) for i, path in
                     enumerate(ori_paths) if length[i] > 2]
            # extract unique paths
            directories = [''.join(list(x)) for x in set(tuple(x) for x in paths)]
            # does not support files that are not in same directory or below
            if '.\..' in directories: directories.remove('.\..')
            # extra files are those placed in same directory as *.she file
            extra_files = ['\\'.join(path.split('\\')[:2]) for i, path in
                           enumerate(ori_paths) if length[i] == 2]
            self.extra_files = list(set(extra_files))
        self.directories = list(set(directories))

    def write_parameter_array_factor_file(self):
        """
        Create new parameter and parameter file for factors.

        Based on the parameters in the parameter dataframe par that contains
        a filename and itemnumber, a new parameter and parameter file is
        created, and the filename and itemnumber parameter is removed from the
        parameter dataframe par. Each filename/itemnumber pair is then
        described by a single parameter, a factor which is multiplied on the
        file/item pair with the parameter_array_update script created in
        write_parameter_array_update_script().

        Returns
        -------
        par_df : pandas dataframe
            parameter dataframe with columns [value', 'line', 'col', 'file']
            and an index with the parameter name. With FileName and ItemNumbers
            parameters replaced with factor parameter.

        """
        # # # Saving new parameter file
        par_files = self.par_files
        sep = '\t'
        # value has to be the last column for the template script t
        df = pd.DataFrame(columns=['file', 'item', 'method', 'value'])

        # Parameterization method: Uniform factor
        mask = par_files['method'] == 'uniform_factor'
        df[['file', 'item']] = par_files.loc[mask, ['file', 'item']]
        df['value'] = 1
        df['method'] = 'uniform_factor'

        # Make a copy of the file that we do not touch. Only for reading.
        for file in par_files.loc[mask, 'file']:
            filename, file_extension = os.path.splitext(file)
            orifile = filename + '_ori' + file_extension
            shutil.copy(file, orifile)

        # Parameterization method: Class value
        mask = par_files['method'] == 'class_value'
        for name, row in par_files.loc[mask].iterrows():
            ds = mikeio.read(row['file'])[row['item']-1]

            values = np.unique(ds.values).tolist()
            names = [name + '{:02d}'.format(i) for i in range(len(values))]
            new_df = pd.DataFrame({'value': values,
                                   'file': [row['file']]*len(values),
                                   'item': [row['item']]*len(values),
                                   'method': ['class_value']*len(values)},
                                  index=names)

            df = pd.concat([df, new_df])
            # saving as array that ca be read by script
            tpl = np.empty(ds.values.shape, dtype=object)
            for i in range(len(values)):
                tpl[ds.values == values[i]] = '__' + names[i] + '__'
            np.save(name + '.tpl', tpl)

        self.df = df
        df.to_csv(self.array_factor_fname, header=True, index=True, sep=sep,
                  index_label='name')

        # # # Add new parameters to par table
        f = open(self.array_factor_fname, 'r')
        lines = f.readlines()[1:]
        f.close()
        col = [line.index(line.split(sep)[-1]) for line in lines]
        par_arr_factor = df[['file', 'value']].copy()
        par_arr_factor['file'] = self.array_factor_fname
        par_arr_factor['col'] = col
        par_arr_factor['line'] = [i for i in range(1, len(col)+1)]
        set_initial_trasnform_bounds(par_arr_factor)

        # add factor parameter to par
        par = pd.concat([self.par, par_arr_factor])
        return par

    def write_parameter_array_update_script(self):
        """
        Write script that updates the array parameters.

        Copies the script from the package directory. This script will be used
        in the forward model to update array with the sampled factor
        parameters. Arrays are updated based on the information in
        array_factor_fname. Available methods are uniform_factor and
        class_value.
        In uniform_factor the value is multiplied on the file/item pair.
        In class_value a template file has been created to show the location of
        each of the classes in the array. This array is loaded to update to
        new values specified in array_factor_fname.

        Returns
        -------
        None.

        """
        # loading script from package folder
        package_path = pkg_resources.resource_filename('mikecalsetup',
                                                       'parameter_array_update.py')
        with open(package_path, 'r') as f:
            txt = f.read()
        f.close()
        # saving script to current folder
        with open('parameter_array_update.py', 'w') as f:
            f.write(txt)
        f.close()
        self.files.append(self.array_factor_fname)

    def extract_obs_vs_sim(self, resultsIni):
        """
        Extract observation - simulation file pairs from dataframe.

        From a pandas dataframe res extracted from the MIKE SHE file "Storing
        of Results" section, relevant information is extracted. For each item
        specified in the Mike She file including a observation file as row is
        extracted.The location of the time series in the obs_file is specified
        in item col, while it is specified through the name col in the
        sim_file. The statistics to be calulated are specified in the stats
        column in the form of a string where each statistic is seperated
        with ','.

        Parameters
        ----------
        resultsIni : pandas dataframe
            dataframe with columns
            ['header0', 'header1', 'header2', 'header3', 'header4','header5',
            'name', 'value', 'line', 'col']

        Returns
        -------
        res : pandas dataframe
            dataframe with columns
            [name, type, item, sim_file, obs_file, stats]

        """
        simq_file = os.path.join(self.result_ff,
                                 self.mod_nme+'DetailedTS_M11.dfs0')
        simh_file = os.path.join(self.result_ff,
                                 self.mod_nme+'DetailedTS_SZ.dfs0')

        resultsIni = resultsIni.loc[resultsIni['header1'] != ''].copy()
        resultsIni = name_after(resultsIni, 'Name', level=1)
        process_header = 'header2'
        resTemp = resultsIni[resultsIni[process_header] != '']
        filter_val = resTemp.loc[resTemp['name'] == 'InclObserved',
                                 'value'].tolist()
        process = resTemp.loc[resTemp['name'] == 'InclObserved',
                              process_header].tolist()
        keep = [proc for val, proc in zip(filter_val, process) if val == 1]
        resTemp = resTemp.loc[resTemp[process_header].isin(keep)]
        resTemp = remove_unused_par(resTemp, ['FILE_NAME', 'ITEM_NUMBERS'],
                                    'InclObserved', process_header, 1)

        # creating new dataframe with relevant information
        res = pd.DataFrame()
        res['sim_item'] = resTemp['header5'].unique().tolist()
        res['name'] = resTemp['header5'].unique().astype(str).tolist()
        res['name'] = res['name'].str.replace(" ", "")
# sim item and name almost the same but the cal input files cannot handle
# observations with space and sim_item (with space) is used to extract information from the simfile.
        res['type'] = resTemp.loc[resTemp['name'] == 'FILE_NAME',
                                  'header1'].tolist()
        res['type'] = res['type'].map({'DetailedTimeseriesOutput': 'H',
                                       'DetailedM11TimeseriesOutput': 'Q'})
        res['obs_item'] = resTemp.loc[resTemp['name'] == 'ITEM_NUMBERS',
                                      'value'].tolist()
        res['sim_file'] = res['type'].map({'H': simh_file, 'Q': simq_file})
        obs_files = resTemp.loc[resTemp['name'] == 'FILE_NAME',
                                'value'].tolist()
        obs_files = [os.path.normpath(os.path.join(self.pth, file))
                     for file in obs_files]
        res['obs_file'] = obs_files
        res['stats'] = 'kge,nse'

        return res

    def write_stats_script(self):
        """
        Write python script to calculate model performance.

        The script reads the sim_vs_obs.csv that describes which simulation
        files should be match with what observations files. Calculates (a)
        statitic(s) also defined in the sim_vs_obs.csv and prints to the
        statsfile. Sometimes simulation/observation pairs are defined where
        no observations are given for the simulation period. These
        simulation/observation pairs are dropped from sim_vs_obs.csv.
        This script is to be run as the last thing in the forward model call.

        Returns
        -------
        None.

        """
        # loading script from package folder
        package_path = pkg_resources.resource_filename('mikecalsetup',
                                                       self.statscripts[0])
        with open(package_path, 'r') as f:
            txt = f.read()
        f.close()

        # saving script to current folder
        with open(self.statscripts[0], 'w') as f:
            f.write(txt)
        f.close()

    def write_ost_file(self, ost_par, ost_tied, ost_int, ost_obs):
        """
        Write Ostrich input file ostin.

        Parameters
        ----------
        ost_par : pandas dataframe
            dataframe with parameters in the format of Real-valued Parameters
            for ostin file. Section 2.7 in Ostrich documentation. This table is
            specfied between BeginParams and EndParams in the OstIn file.
        ost_tied : pandas dataframe
            dataframe with parameters in the format of Tied Parameters for
            ostin file. Section 2.10 in Ostrich documentation. This table is
            specfied between BeginTiedParams and EndTiedParams in the
            OstIn file.
        ost_int : pandas dataframe
            dataframe with parameters in the format of Integer Parameters for
            ostin file. Section 2.8 in Ostrich documentation. This table is
            specfied between BeginIntegerParams and EndIntegerParams in
            the OstIn file.
        ost_obs : pandas dataframe
            Observations section (Ostrich manual section 2.14) for Ostrich
            input file with columns
            <name><value><wgt><file><sep><key><line><col><tok><aug><grp>

        Returns
        -------
        None.

        """
        ostclass = ost_file.OstFile('ostIn.txt')
        ostclass.paramsdf = ost_par
        ostclass.tied_params = ost_tied
        ostclass.int_params = ost_int
        ostclass.obsdf = ost_obs
        ostclass.in_files = self.files
        ostclass.temp_files = [os.path.splitext(file)[0] + '.tpl'
                               for file in self.files]

        extra_files = self.extra_files
        for script in self.statscripts:
            extra_files.append(script)
        if 'par_array_factors.txt' in self.files:
            extra_files.append('parameter_array_update.py')
        extra_files.append('sim_vs_obs.csv')
        ostclass.extra_files = self.extra_files

        ostclass.extra_dirs = self.directories

        ostclass.configbas['ProgramType'] = self.ost_programtype
        ostclass.write()
        pass

    def write_pst_file(self, pest_parg, pest_par1, pest_par2, pest_obs):
        """
        Write PEST control file.

        Parameters
        ----------
        pest_parg : pandas dataframe
            parameter group table for PEST control file with columns PARGPNME
            INCTYP DERINC DERINCLB FORCEN DERINCMUL DERMTHD.
        pest_par1 : pandas dataframe
            first section of parameter data for PEST control file with columns
            PARNME PARTRANS PARCHGLIM PARVAL1 PARLBND PARUBND PARGP SCALE
            OFFSET DERCOM.
        pest_par2 : pandas dataframe
            second section of parameter data for PEST control file with columns
            PARNME PARTIED.
        pest_obs : pandas dataframe
            obsdata section for PEST control file with columns OBSNME OBSVAL
            WEIGTH OBSGNME.

        Returns
        -------
        None.

        """
        npar = len(pest_par1)
        npargp = len(pest_parg)
        nobs = len(pest_obs)
        obsgnme = pest_obs['obsgnme'].unique()
        nobsgp = len(obsgnme)

        # Control data - default settings
        nprior = 0
        ntplfile = len(self.files)  # number of template files
        ninsfile = 1  # number of instruction files !!!!
        numcom = 1  # number of model command lines !!!! Only forward model?
        noptmax = 0

        second = '             restart          estimation' + '\n'
        third = '{:0d}\t{:0d}\t{:0d}\t{:0d}\t{:0d}\t'.format(npar, nobs,
                                                             npargp, nprior,
                                                             nobsgp) + '\n'
        fourth = '{:0d}\t{:0d}\t single \t point\t{:0d}'.format(ntplfile,
                                                                ninsfile,
                                                                numcom) + '\n'
        fifth = '10.0\t-2.0\t0.3\t0.01\t10' + '\n'
        sixth = '10.0\t10.0\t0.001' + '\n'
        seventh = '0.1' + '\n'
        eigth = '{:0d}\t0.005\t4\t4\t0.005\t4'.format(noptmax) + '\n'
        ninth = '0\t0\t0' + '\n'
        contdat = second + third + fourth + fifth + sixth + seventh+eigth+ninth

        # Writing to file
        self.pst_file = self.mod_nme+'.pst'
        f = open(self.pst_file, 'w')
        f.write('pcf \n* control data' + '\n')
        f.write(contdat)

        f.write('* parameter groups' + '\n')
        f.write(re.sub('\t', ' ', pest_parg.to_string(
            header=False, index=True)) + '\n')

        f.write('* parameter data' + '\n')
        f.write(re.sub('\t', ' ', pest_par1.to_string(
            header=False, index=True)) + '\n')
        if len(pest_par2) != 0:
            f.write(re.sub('\t', ' ', pest_par2.to_string(
                header=False, index=True)) + '\n')

        f.write('* observation groups' + '\n')
        for grp in obsgnme:
            f.write(grp + ' \n')

        f.write('* observation data' + '\n')
        f.write(
            re.sub(' +', '\t', pest_obs.to_string(header=False,
                                                  index=False))+'\n')

        f.write('* model command line' + '\n')
        # f.write('python forward_run.py' + '\n')  # !!!!  not existing!
        f.write('forward.bat' + '\n')

        f.write('* model input/output' + '\n')
        for file in self.files:
            filename, file_extension = os.path.splitext(file)
            # f.write('"'+filename + '.tpl"' + '\t' + '"'+file+'"' + '\n')
            # f.write("'"+filename + ".tpl'" + '\t' + "'"+file+"'" + "\n")
            f.write(filename + ".tpl" + '\t' + file + "\n")
        f.write(self.stat_file + '.ins\t' + self.stat_file)
        f.close()

    def write_forward_model_old(self):
        """
        Write bash script that runs model and relevant scripts.

        Writes a bash script that runs script that updates array parameters,
        runs the Mike She model and runs script that calculate statistics based
        on model results. The python scripts are run in the specified
        environment in the environment variable. The Mike She model is run
        using MzLaunch in the given path variable mzpath.


        Returns
        -------
        None.

        """
        executable = sys.executable
        condapath = executable[:-len('python.exe')-1]
        result_ff = self.result_ff
        result_ff = result_ff.replace('/', '\\')

        with open('forward.bat', 'w') as f:
            f.write('@echo off' + '\n' + '\n')
            f.write('REM set paths' + '\n')
            f.write('set path=%path%;"'+self.mzpath+'"' + '\n')

            f.write('rem path to conda installation' + '\n')
            f.write('set CONDAPATH='+condapath + '\n')

            f.write('rem name of the environment' + '\n')
            f.write('set ENVNAME='+self.environment + '\n' + '\n')

            f.write('rem activate the base environment' + '\n')
            f.write(
                'if %ENVNAME%==base (set ENVPATH=%CONDAPATH%) else (set ENVPATH=%CONDAPATH%\envs\%ENVNAME%)' + '\n')

            f.write('rem Activate the conda environment' + '\n')
            f.write('call %CONDAPATH%/Scripts/activate.bat %ENVPATH%'+'\n\n')

            f.write('rem delete old result files' + '\n')
            f.write('del "'+result_ff+self.mod_nme+'DetailedTS_M11.dfs0"'+'\n')
            f.write('del "'+result_ff+self.mod_nme+'_WM_Print.log"'+'\n\n')

            if 'par_array_factors.txt' in self.files:
                f.write('rem update parameters' + '\n')
                f.write('python parameter_array_update.py' + '\n' + '\n')

            f.write('rem run MIKE SHE' + '\n')
            f.write('ping -n 2 localhost > nul' + '\n')
            f.write('start /wait MzLaunch.exe ' +
                    os.path.join(self.pth, self.mod_nme).replace('\\', '/')
                    + '.she -x' + '\n\n')

            f.write('rem calcualte statistics - only if model run to end'+'\n')
            f.write('ping -n 2 localhost > nul' + '\n')
            f.write('findstr /m "Normal termination." "' +
                    result_ff+self.mod_nme+'_WM_Print.log"' + '\n\n')

            f.write('rem calculating statistics'+'\n')
            f.write('ping -n 2 localhost > nul' + '\n')
            for script in self.statscripts:
                f.write('python ' + script + '\n')

        f.close()

    def write_forward_model(self):
        """
        Write bash script that runs model and relevant scripts.

        Writes a bash script that runs script that updates array parameters,
        runs the Mike She model and runs script that calculate statistics based
        on model results. The python scripts are run in the specified
        environment in the environment variable. The Mike She model is run
        using MzLaunch in the given path variable mzpath.


        Returns
        -------
        None.

        """
        executable = sys.executable
        condapath = executable[:-len('python.exe')-1]
        result_ff = self.result_ff
        result_ff = result_ff.replace('/', '\\')

        with open('forward.bat', 'w') as f:
            f.write('@echo off' + '\n' + '\n')
            f.write('REM set paths' + '\n')
            f.write('set path=%path%;"'+self.mzpath+'"' + '\n')

            f.write('rem path to conda installation' + '\n')
            f.write('set CONDAPATH='+condapath + '\n')

            f.write('rem name of the environment' + '\n')
            f.write('set ENVNAME='+self.environment + '\n' + '\n')

            f.write('rem activate the base environment' + '\n')
            f.write(
                'if %ENVNAME%==base (set ENVPATH=%CONDAPATH%) else (set ENVPATH=%CONDAPATH%\envs\%ENVNAME%)' + '\n')

            f.write('rem Activate the conda environment' + '\n')
            f.write('call %CONDAPATH%/Scripts/activate.bat %ENVPATH%'+'\n\n')

            res = [f for f in self.files if 'par_array_factors.txt' in f]
            if len(res) == 1:
                f.write('rem update parameters' + '\n')
                f.write('python parameter_array_update.py' + '\n' + '\n')
            # *.she run commnd needs / while findstr needs \\
            wmlogfp = os.path.join(self.pth, self.mod_nme).replace('/', '\\') +'_WM.log'
            model_run = ('rem delete old WM.log files\n'
                         'del "'+wmlogfp+'"\n\n'
                         'rem run MIKE SHE\n'
                         'findstr /m "Simulation succeeded" "' + wmlogfp + '"\n'
                         ':while_g1\n'
                         'if NOT %errorlevel%==0 (\n'
                         'ping -n 3 localhost > nul\n'
                         'start /wait MzLaunch.exe "' +
                          os.path.join(self.pth, self.mod_nme).replace('\\', '/')
                          + '.she" -x\n'
                         'ping -n 3 localhost > nul\n'
                         'findstr /m "Simulation succeeded" "' +wmlogfp+'"\n'
                         'goto :while_g1\n'
                         ')\n\n')
            f.write(model_run)

            f.write('rem calculate statistics'+'\n')
            # f.write('ping -n 2 localhost > nul' + '\n')
            for script in self.statscripts:
                f.write('python ' + script + '\n')

        f.close()

    def add_array_pars(self):
        """
        Add array parameters from par_files to par table.

        Returns
        -------
        None.

        """
        # parameter arrays
        if len(self.par_files) > 0:
            self.par = self.write_parameter_array_factor_file()
            self.write_parameter_array_update_script()

    def write_files(self):
        """
        Update and write all input files for model calibration.

        Writes templatefile, script that calculates statistics and inputfile
        to PEST or OSTRICH.

        Raises
        ------
        ValueError
            when a script in statscript list does not run.

        Returns
        -------
        None.

        """
        # update file list based on par
        files = self.par.file.unique().tolist()
        files = [file.replace('\\', '/') for file in files]
        files = ['./' + file if file[:2] != './' else file for file in files]
        self.files = files

        program = self.program
        if program == 'PEST':
            if len([file for file in self.files if ' ' in file]) > 0:
                warnings.warn("PEST does not support spaces in file names or paths")

        # write results dataframe to csv
        self.results.to_csv('sim_vs_obs.csv', index=None)

        # writes stats script based on information in "results" dataframe
        self.write_stats_script()

        # run stats scripts to ensure stats file is updated with all values
        for script in self.statscripts:
            s = subprocess.call(['python', script], shell=True)
            if s == 1:
                warnings.warn('Stat script: '+script+' did not run')

        # writing OstIn or *.pst file depending on program
        if program.upper() == 'OSTRICH':
            # writing template file based on parameter dataframe
            write_template_files(self.par, program='OSTRICH')
            ost_par, ost_tied, ost_int = pardf_to_ost_par(self.par)
            ost_obs = extract_observations_from_file(self.stat_file,
                                                     program='OSTRICH')
            self.write_ost_file(ost_par, ost_tied, ost_int, ost_obs)
        elif program.upper() == 'PEST':
            write_template_files(self.par, program='PEST')
            pest_parg, pest_par1, pest_par2 = pardf_to_pest_par(self.par)
            pest_obs = extract_observations_from_file(self.stat_file,
                                                      program='PEST')
            self.write_pst_file(pest_parg, pest_par1, pest_par2, pest_obs)

        # writing forward model
        self.write_forward_model()
