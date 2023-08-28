# -*- coding: utf-8 -*-
"""
Created on Mon Oct 24 11:04:27 2022

@author: wqg436
"""

import re
import pandas as pd


class OstFile:
    """
    A class containing setup from input file to OSTRICH.

    For writing an input file by specifying the required setup or loading the
    ostin file, changing the setup and writing the ostin file again with the
    updated setup. The variable names corresponds to language used in the
    OSTRICH documentation.

    Attributes
    ----------
    pth : string
        pth to ostin file. The file needs to be named ostin.txt in accordance
        with the OSTRICH documentation.
    """

    # default basic configuration
    configbas = {'ProgramType': 'PADDS',
                 'ModelExecutable': 'forward.bat',
                 'ModelSubdir': 'mod',
                 'ObjectiveFunction': 'wsse',
                 'PreserveBestModel': None,
                 'PreserveModelOutput': 'no',
                 'OstrichWarmStart': 'no',
                 'NumDigitsOfPrecision': None,
                 'TelescopingStrategy': None,
                 'RandomSeed': 33,
                 'OnObsError': 99999,
                 'CheckSensitivities': None,
                 'SuperMUSE': None,
                 'OstrichCaching': None,
                 'BoxCoxTransformation': None,
                 'ModelOutputRedirectionFile': None}
    configsa = []  # default search algorithm configuration
    temp_files = []  # default template files
    in_files = []  # default input files
    extra_files = []  # default extra files
    extra_dirs = []  # default extra directories
    paramsdf = pd.DataFrame(columns=['name', 'init', 'lwr',
                                     'upr', 'txIn',
                                     'txOst', 'txOut', 'fmt'])
    tied_params = pd.DataFrame(columns=['name', 'np', 'pname', 'type',
                                        'type_data(c1', 'c0)', 'fmt'])
    int_params = pd.DataFrame(columns=['name', 'init', 'lwr', 'upr'])
    obsdf = pd.DataFrame()

    # search algorithm tags to specify in basic configuration section
    searchalg = ['BisectionAlg', 'FletchReevesAlg', 'LevMar',
                 'GridAlg', 'PowellAlg', 'SteepDescAlg', 'APPSO',
                 'ParticleSwarm', 'BEERS', 'GeneticAlg',
                 'SimulatedAlg', 'DiscreteDDSAlg',
                 'SCEUA', 'SamplingAlg', '_DDSAU_Alg', 'GLUE',
                 'MetropolisSampler', 'RejectionSampler', 'PADDSAlg',
                 'ParallelPADDS', 'ParaPADDSAlg', 'ParaPADDS',
                 'PADDS', 'SMOOTH']
    # search algorithm parsing tags for search algorithm section
    pars_tags_dict = {'BisectionAlgorithm': 'BisectionAlg',  # programtype: parsing tags
                      'Fletcher-Reeves': 'FletchReevesAlg',
                      'Levenberg-Marquardt': 'LevMar',
                      'GridAlgorithm': 'GridAlg',
                      'Powell': 'PowellAlg',
                      'Steepest-Descent': 'SteepDescAlg',
                      'APPSO': 'APPSO',
                      'ParticleSwarm': 'ParticleSwarm',
                      'BEERS': 'BEERS',
                      'BinaryGeneticAlgorithm': 'GeneticAlg',
                      'GeneticAlgorithm': 'GeneticAlg',
                      'DiscreteSimulatedAnnealing': 'SimulatedAlg',
                      'SimulatedAnnealing': 'SimulatedAlg',
                      'VanderbiltSimulatedAnnealing': 'SimulatedAlg',
                      'DiscreteDDS': 'DDSAlg',
                      'DDS': 'DDSAlg',
                      'ParallelDDS': 'ParallelDDSAlg',
                      'SCEUA': 'SCEUA',
                      'SamplingAlgorithm': 'SamplingAlg',
                      'DDSAU': 'DDSAU_Alg',
                      'GLUE': 'GLUE',
                      'MetropolisSampler': 'MetropolisSampler',
                      'RejectionSampler': 'RejectionSampler',
                      'PADDS': 'PADDSAlg',
                      'ParaPADDS': 'PADDSAlg',
                      'SMOOTH': 'SMOOTH'}
    # basic configuration setting options
    bc_settings = ['ProgramType', 'ModelExecutable', 'ModelSubdir',
                   'ObjectiveFunction', 'PreserveBestModel',
                   'PreserveModelOutput', 'OstrichWarmStart',
                   'NumDigitsOfPrecision', 'TelescopingStrategy',
                   'RandomSeed', 'OnObsError', 'CheckSensitivities',
                   'SuperMUSE', 'OstrichCaching', 'BoxCoxTransformation',
                   'ModelOutputRedirectionFile']

    def __init__(self, pth):
        self.pth = pth

    def load(self):
        """
        Record the ostin.txt file into instance variables.

        This function overwrites default settings if specified in ostin file.

        Returns
        -------
        None.

        """
        lookup_sa = ['Begin'+s+'\n' for s in self.searchalg]
        # lookup_sa = ['Begin'+s+'\n' for s in list(self.pars_tags_dict.keys())]
        cf = []
        configsa = []
        with open(self.pth, 'r') as f:
            for line in f:
                # Search Algorithm settings
                if line in lookup_sa:
                    s_alg = line.replace('Begin', '').strip()
                    for line in f:
                        if s_alg in line and 'End' in line:
                            break
                        elif not line.startswith('#'):  # ignore comments
                            configsa.append(line.strip('\n'))
                # File pairs
                elif line == 'BeginFilePairs\n':
                    temp_files = []
                    in_files = []
                    for line in f:
                        if line == 'EndFilePairs\n':
                            break
                        elif not line.startswith('#'):  # ignore comments
                            temp = re.split(';|\t|,', line)
                            temp_files.append(temp[0])
                            in_files.append(temp[-1].strip('\n'))
                # Extra files
                elif line == 'BeginExtraFiles\n':
                    extra_files = []
                    for line in f:
                        if line == 'EndExtraFiles\n':
                            break
                        elif not line.startswith('#'):  # ignore comments
                            extra_files.append(line.strip('\n'))
                # Directories
                elif line == 'BeginExtraDirs\n':
                    extra_dirs = []
                    for line in f:
                        if line == 'EndExtraDirs\n':
                            break
                        elif not line.startswith('#'):  # ignore comments
                            extra_dirs.append(line.strip('\n'))
                # Parameter section
                elif line == 'BeginParams\n':
                    params = []
                    for line in f:
                        if line == 'EndParams\n':
                            break
                        elif not line.startswith('#'):  # ignore comments
                            line = line.strip('\n')
                            temp = line.split('\t')
                            temp.remove('') if '' in temp else temp
                            params.append(temp)
                # Tied parameters
                elif line == 'BeginTiedParams\n':
                    tied_params = []
                    tied_params0 = []
                    tied_params1 = []
                    for line in f:
                        if line == 'EndTiedParams\n':
                            break
                        elif not line.startswith('#'):  # ignore comments
                            line = line.strip('\n')
                            temp = line.split('\t')
                            temp.remove('') if '' in temp else temp
                            tied_params.append(temp)
                            # np = temp[1] (number of non-tied parameters)
                            if temp[1] == '0':  # fixed parameters
                                tied_params0.append(temp)
                            elif temp[1] == '1':  # one tied parameter
                                tied_params1.append(temp)
                # Observation section
                elif line == 'BeginObservations\n':
                    obs = []
                    for line in f:
                        if line == 'EndObservations\n':
                            break
                        elif not line.startswith('#'):  # ignore comments
                            line = line.strip('\n')
                            temp = line.split('\t')
                            temp.remove('') if '' in temp else temp
                            # if tab is token
                            if len(temp) == 11:
                                temp.remove("'") if "'" in temp else temp
                                temp[7] = "\\t"
                            obs.append(temp)
                else:
                    if not line.startswith('#') and line != '\n':
                        cf.append(line)
        # Files
        self.temp_files = temp_files
        self.in_files = in_files
        self.extra_files = extra_files
        self.extra_dirs = extra_dirs

        # configuration
        self.cf = cf
        # overwrite default basic configuration
        configbas = {setting: None for setting in self.bc_settings}

        for line in cf:
            line = line.strip('\n')
            temp = re.split(';|\t|,| ', line)

            # basic configurations
            for setting in self.bc_settings:
                configbas[setting] = temp[1] if temp[0] == setting else configbas[setting]
        self.configbas = configbas

        # search algorithm configurations
        self.configsa = configsa

        # Tables Parameters Observations
        self.paramsdf = pd.DataFrame(params,
                                     columns=['name', 'init', 'lwr',
                                              'upr', 'txIn',
                                              'txOst', 'txOut', 'fmt'])
        try:  # asking for forgiveness
            tiedparams0 = pd.DataFrame(tied_params0,
                                       columns=['name', 'np', 'pname',
                                                'type', 'fmt'])
        except UnboundLocalError:  # no fixed parameters
            tiedparams0 = pd.DataFrame()
        try:
            tiedparams1 = pd.DataFrame(tied_params1,
                                       columns=['name', 'np', 'pname', 'type',
                                                'type_data(c1', 'c0)', 'fmt'])
        except UnboundLocalError:  # no tied parameters
            tiedparams1 = pd.DataFrame(columns=['name', 'np', 'pname', 'type',
                                                'type_data(c1', 'c0)', 'fmt'])

        # combining tied parameter section
        tied_params = pd.concat([tiedparams0, tiedparams1], ignore_index=True)
        # ensuring right sequence of headers
        self.tied_params = tied_params[['name', 'np', 'pname', 'type',
                                        'type_data(c1', 'c0)', 'fmt']]
        self.obsdf = pd.DataFrame(obs, columns=['name', 'value', 'weight',
                                                'file', 'keyword', 'line',
                                                'col', 'token', 'aug?',
                                                'group'])

    def write(self):
        """
        Write the ostin.txt file from specified instance variables.

        Returns
        -------
        None.

        """
        configtxt = ''
        for key, value in self.configbas.items():
            if value is not None:
                configtxt += key + ' ' + str(value) + '\n'
        self.configtxt = configtxt

        filepairstxt = ('# Template file list\n'
                        'BeginFilePairs\n')
        for tfile, ifile in zip(self.temp_files, self.in_files):
            filepairstxt = filepairstxt + tfile + '\t' + ifile + '\n'
        filepairstxt = filepairstxt + 'EndFilePairs\n\n'

        extfiletxt = ('# Extra file\n'
                      'BeginExtraFiles\n')
        self.extra_files = list(set(self.extra_files))  # unique files
        for efile in self.extra_files:
            extfiletxt = extfiletxt + efile + '\n'
        extfiletxt = extfiletxt + 'EndExtraFiles\n\n'

        extdirtxt = ('# Extra directories\n'
                     'BeginExtraDirs\n')
        self.extra_dirs = list(set(self.extra_dirs))  # unique dirs
        for edir in self.extra_dirs:
            extdirtxt = extdirtxt + edir + '\n'
        extdirtxt = extdirtxt + 'EndExtraDirs\n\n'

        with open('ostIn.txt', 'w') as f:
            f.write('# Python generated ostIn file\n')
            f.write(configtxt + '\n')
            f.write(filepairstxt)
            f.write(extfiletxt) if len(self.extra_files) != 0 else f.write('')
            f.write(extdirtxt) if len(self.extra_dirs) != 0 else f.write('')

            f.write('# Parameter section' + '\n')
            f.write('BeginParams' + '\n')
            if len(self.paramsdf) != 0:
                f.write(('# name    init    lwr    upr    txIn    txOst    '
                         'txOut    fmt\n'))
                f.write(
                    re.sub(' +', '\t',
                           self.paramsdf.to_string(header=False,
                                                   index=False)) + '\n')
            f.write('EndParams' + '\n' + '\n')
            if len(self.tied_params) != 0:
                f.write('BeginTiedParams' + '\n')
                f.write(('# name    np    pname    type    '
                        'type_data:(c1    c0    fmt)' + '\n'))
                f.write('#Xtied = (c1*X) + c0' + '\n')
                tied_params_tied = self.tied_params.loc[self.tied_params['np'] != 0]
                tied_params_fixd = self.tied_params.loc[self.tied_params['np'] == 0]  # ensuring fixed values are written as floats.
                tied_params_fixd = tied_params_fixd.astype({'pname': float})
                if len(tied_params_fixd) != 0:
                    f.write(re.sub(' +', '\t',
                                   tied_params_fixd.to_string(header=False,
                                                              index=False,
                                                              na_rep=''))+'\n')
                if len(tied_params_tied) != 0:
                    f.write(re.sub(' +', '\t',
                                   tied_params_tied.to_string(header=False,
                                                              index=False,
                                                              na_rep=''))+'\n')  
                f.write('EndTiedParams' + '\n' + '\n')
            if len(self.int_params) != 0:
                f.write('BeginIntegerParams' + '\n')
                f.write('# name, init, lwr, upr' + '\n')
                f.write(re.sub(' +', '\t',
                               self.int_params.to_string(header=False,
                                                         index=False,
                                                         na_rep=''))+'\n')
                f.write('EndIntegerParams' + '\n' + '\n')

            f.write('BeginObservations' + '\n')
            if len(self.obsdf) != 0:
                f.write(('# name    value    weight    file    keyword    line'
                         '    col    token    aug?    group' + '\n'))
                f.write(re.sub(' +', '\t',
                               self.obsdf.to_string(header=False,
                                                    index=False)) + '\n')
            f.write('EndObservations' + '\n' + '\n')

            if len(self.configsa) != 0:
                pars_tag = self.pars_tags_dict[self.configbas['ProgramType']]
                f.write('Begin' + pars_tag + '\n')
                for string in self.configsa:
                    f.write(string + '\n')
                f.write('End' + pars_tag + '\n')
