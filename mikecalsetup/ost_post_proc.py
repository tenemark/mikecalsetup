# -*- coding: utf-8 -*-
"""
OSTRICH output reading
Example script reading all solutions from an ongoing or finished OSTRICH
ParaPADDS calibration

Raphael Schneider, rs@geus.dk, GEUS Hydro, Mar 2023
"""

import os
import pandas as pd
import numpy as np
import mikecalsetup.ost_file as ost_file
import glob
import seaborn as sns
import shutil


class OstPostProc:
    """Postprocessing of OSTRICH files for ParaPADDS calibration."""

    def __init__(self, root):
        self.root = root
        self.out_fp = root + r'OstOutput0.txt'
        self.outf_fp = root + r'OstModel'
        self.oin_fp = root + r'ostIn.txt'

        # extract output data
        self.ns = self.read_ostoutput0()
        self.fs = self.read_ostmodel_files()
        self.ws = self.get_observation_weigths()

    def read_ostoutput0(self):
        """
        Read ostoutput file and records non-dominant solutions in dataframe.

        Returns
        -------
        ns : pandas dataframe
            Non-dominant solutions from ostoutputfile

        """
        with open(self.out_fp, 'r') as f:
            lines = f.readlines()

        # done = 1 if the run is finished
        temp = [i for i, line in enumerate(lines)
                if 'Non-Dominated Solutions\n' == line]
        done = 1 if len(temp) != 0 else 0

        # loading last set of non-dominated solutions
        if done == 0:
            # starting index last set of non-dominated solutions
            lino = [i for i, line in enumerate(lines)
                    if '\n' == line][-1]
            # column names
            idx = [i for i, line in enumerate(lines)
                   if 'Ostrich Run Record\n' == line][0]
            cols = lines[idx+1].split()
            cols = [c for c in cols if ('WSSE' in c) | ('GCOP' in c) | (c.find('__') > -1)]

            # loading data
            ns = pd.read_csv(self.out_fp, skiprows=lino+1, header=None, sep='\s+')
            ns = ns[ns.columns.tolist()[1:-1]]
            ns.columns = cols
        elif done == 1:
            # starting index
            idx = temp[0]
            last_idx = [idx+i for i, line in enumerate(lines[idx:])
                        if '\n' == line][0]

            # columns
            cols = lines[idx+1].split()
            cols = [col for col in cols if ')' != col]
            cols = [c for c in cols if ('WSSE' in c) | ('GCOP' in c) | (c.find('__') > -1)]

            # loading data
            ns = pd.read_csv(self.out_fp, skiprows=temp[0]+2, header=None, sep='\s+',
                             skipfooter=len(lines)-last_idx, engine='python')
            ns.columns = cols
        return ns

    def read_ostmodel_files(self):
        """
        Record everything from ostmodel files, i.e. full set of solutions.

        Includes single observations which are not present in ostoutput file.

        Returns
        -------
        fs : pandas dataframe
            all records from ostmodel files

        """
        fs = pd.DataFrame()
        for file in glob.glob(self.root + "OstModel*"):
            fs = pd.concat([fs, pd.read_csv(file, sep='\s+', skiprows=1,
                                            header=None, 
                                            index_col=0, engine='python')])
        fs.reset_index(inplace=True)
        with open(file, 'r') as f:
            first_line = f.readline()
        cols = [col for col in first_line.split() if col != ')']
        fs.columns = cols
        return fs

    def get_observation_weigths(self):
        """
        Get observation weigths.

        Returns
        -------
        ws : TYPE
            DESCRIPTION.

        """
        # read ostin file
        ostin = ost_file.OstFile(self.oin_fp)
        ostin.load()
        # get observation weights
        obs = ostin.obsdf
        ws = obs[['name', 'weight']]
        ws.columns = ['obs', 'w']
        return ws

    def plot_wsse(self, ofs=None):
        """
        Plot objective functions (ofs) against each other.

        Parameters
        ----------
        ofs : list, optional
            objective functions to plot. The default is all of them.

        Returns
        -------
        None.

        """
        # define default all wsse_cols if none are specified
        if ofs is None:
            ofs = [col for col in self.fs.columns if 'WSSE' in col]
        # Creating the scatter matrix pairplot
        if 'select' not in self.fs.columns:
            df = pd.concat([self.fs[ofs].assign(hue='All solutions'),
                            self.ns[ofs].assign(hue='Non-dom solutions')],
                            ignore_index=True)
            ax = sns.pairplot(df, hue='hue', diag_kind='kde',
                              palette=['orange', 'k'])
        else:
            ss = self.fs.loc[self.fs.select == 1]
            df = pd.concat([self.fs[ofs].assign(hue='All solutions'),
                            self.ns[ofs].assign(hue='Non-dom solutions'),
                            ss[ofs].assign(hue='Selected solutions')],
                            ignore_index=True)
            ax = sns.pairplot(df, hue='hue', diag_kind='kde',
                              palette=['orange', 'k', 'blue'])
        return ax

    def autoselect_solutions(self, method='pareto', ofs=None, of_weights=None,
                             reselect=True):
        """
        Autoselect solutions based on method.

        Parameters
        ----------
        method : string
            choose either pareto or weighing_ofs
        ofs : list
            objective function columns in fs ans ns
        of_weights : list
            objective function weigts
        reselect : boolean
            should solutions be reselected

        """
        ns = self.ns
        fs = self.fs
        # reset selection if reselect is True
        if reselect is True:
            ns['select'] = 0
            fs['select'] = 0

        # define default all wsse_cols if none are specified and equal weight
        if ofs is None:
            ofs = [col for col in fs.columns if ('WSSE' in col) or ('GCOP' in col)]
            of_weights = [1/len(ofs) for i in range(len(ofs))]

        # selecting solutions
        if method == 'pareto':  # alternative 1
            # add pareto front marker to full solution
            for i, row in ns.iterrows():
                mask = [fs[col] == row[col] for col in ofs]
                mask1 = np.column_stack(mask).all(axis=1)
                fs.loc[mask1, 'select'] = 1

        elif method == 'weighing_ofs':  # alternative 2
            # create some useful colummns?!?
            for of in ofs:
                ns[of+'_sc'] = ns[of] / fs[of].min()

            # calculate combined weighted OF
            ns['OFcomb'] = ((ns.loc[:, ns.columns.str.endswith('_sc')]).mul(of_weights)).sum(axis=1) / np.sum(of_weights)

            # add marker to nondomsol
            ns.loc[ns['OFcomb'].idxmin(), 'select'] = 1

            # ...and add marker to full solution
            for i, row in fs.iterrows():
                try:
                    fs.loc[i, 'select'] = ns[(ns[ofs[0]] == row[ofs[0]]) &
                                             (ns[ofs[1]] == row[ofs[1]])]['select'].values[0]
                except IndexError:
                    fs.loc[i, 'select'] = 0
        self.fs = fs
        self.ns = ns

    def ready_pars_for_runs(self, run_ini):
        """
        Put parameters of selected runs into pandas dataframe pars_out.

        Parameters
        ----------
        run_ini : boolean
            if initial parameter set from OstIn.txt file should be added

        Returns
        -------
        None.

        """
        # Raise errors if no runs selected
        if 'select' not in self.fs:
            raise ValueError('No runs selected. Select manually by creating a '
                             'column "select" in fs or automatically with the '
                             'the function autoselect_solutions')
        if self.fs['select'].sum() == 0:
            raise ValueError('No runs selected. Select manually by creating a '
                             'column "select" in fs or automatically with the '
                             'the function autoselect_solutions')

        # identify selected runs
        fs = self.fs
        run_i = list(fs[fs['select'] == 1].index)  # selected runs

        # loading parameter table from ostin
        ostin = ost_file.OstFile(self.oin_fp)
        ostin.load()
        pars = ostin.paramsdf[['name', 'init']]
        pars.columns = ['name', 'val']
        tied = ostin.tied_params[['name', 'pname', 'type_data(c1', 'c0)']]
        tied.columns = ['name', 'tto', 'c1', 'c0']
        pars_out = pd.concat([pars, tied])
        pars_out = pars_out.set_index('name')

        # add realization columns and variable parameters
        par_names = [par for par in list(fs.columns) if par in list(pars.name)]
        runs = fs.loc[run_i, par_names]
        start = 1 if run_ini else 0
        runs.index = ['val_' + str(j) for j in range(start, len(runs.index)+start)]
        pars_out = pd.concat([pars_out, runs.T], axis=1)
        if run_ini:  # add initial run
            pars.index = pars.name
            pars_out['val_0'] = pars['val'].copy().astype(float)
        
        # calcualte tied parameters
        val_cols = pars_out.columns.str.startswith('val_')
        tied_par = pars_out['tto'].str.contains('__').fillna(False)
        values = pd.DataFrame(pars_out.loc[pars_out.loc[tied_par, 'tto'], val_cols].values,
                              index=pars_out.loc[tied_par].index,
                              columns=pars_out.loc[:, val_cols].columns)
        multiplier = pars_out.loc[tied_par, 'c1'].astype(float).values
        adding = pars_out.loc[tied_par, 'c0'].astype(float).values
        pars_out.loc[tied_par, val_cols] = values.apply(lambda x: x * multiplier + adding)

        # add fixed parameters
        fixed_par = pars_out.loc[:, val_cols].isna().sum(axis=1) != 0
        if sum(fixed_par) > 0:  # no fixed parameters
            fixed_vals = pars_out.loc[fixed_par, 'tto'].astype(float).values
            pars_out.loc[fixed_par, val_cols] = np.tile(fixed_vals, sum(val_cols))
        
        # finalize and save
        keep_cols = [col for col in pars_out.columns if col.startswith('val_')]
        pars_out = pars_out[keep_cols]
        
        self.pars_out = pars_out
        pars_out.to_csv('OSTRICH_runs_pars.txt', sep='\t')

        # s_out (OSTRICH RUNS)
        s_out = fs.loc[run_i, :]
        self.s_out = s_out
        s_out.to_csv('OSTRICH_runs.txt', sep='\t')

    def setup_parallel_runs(self, run_ini):
        """
        Create run directories for all parameter sets.

        Run directories contains all template files, extra files, and extra
        directories as defined in the ostIn.txt file.
        * Copy template folder for each parameter set and replace parameter
        space holders across all template files.
        Use of special rundir_temp to avoid running a model with potential old
        inputs.

        Parameters
        ----------
        run_ini : boolean
            if initial parameter set from OstIn.txt file should be added

        Returns
        -------
        None.

        """
        # make sure pars_out exists
        self.ready_pars_for_runs(run_ini)
        pars_out = self.pars_out

        # loading ostin
        ostin = ost_file.OstFile(self.oin_fp)
        ostin.load()

        # create run directories
        run_dirs = []
        modelsubdir = './best'  # name change from rundir to comply with ostrich names
        for i, r in enumerate(pars_out.columns):
            # define and create parallel folders
            rund = modelsubdir+r.split('val')[1]+'\\'
            run_dirs.append(rund)
            if not os.path.exists(rund):
                os.makedirs(rund)
            # copy all template files, extra files and extra folders
            shutil.copy(self.root+ostin.configbas['ModelExecutable'],
                        rund+ostin.configbas['ModelExecutable'])
            for ef in ostin.extra_files:
                shutil.copy(self.root+ef, rund+ef)
            for ed in ostin.extra_dirs:
                if not os.path.exists(rund+ed):
                    shutil.copytree(self.root+ed, rund+ed)
            for t, (tf, inf) in enumerate(zip(ostin.temp_files, ostin.in_files)):
                shutil.copy(self.root+tf, rund+tf)
                # replacing placeholders in template files
                with open(self.root+tf, 'r') as file:
                    filedata = file.read()
                # search and replace for current set of parameters
                for j in range(pars_out.shape[0]):  # loop over all parameters
                    parname = pars_out.iloc[j].name
                    val = str(pars_out.iloc[j, i])
                    filedata = filedata.replace(parname, val)
                # Write to the output file
                with open(rund+inf, 'w') as file:
                    file.write(filedata)
        # write runs and parameter value overviews
        pars_out.to_csv('OSTRICH_runs_pars.txt', sep='\t')


# %%
"""
Still missing in class:
    Calculations sections (KGE, pareto etc.)
    Parameter plotted against objective function
    S_out
    Only loading ostin once

"""