# -*- coding: utf-8 -*-
"""
Created on Wed Oct 19 02:31:13 2022

@author: wqg436
"""

import unittest
import mikecalsetup
import os
import numpy as np
import pandas as pd
from mikecalsetup import main
from mikecalsetup import ost_file
import pyemu

# making sure currect working directory if test run from project directory folder. 
cwd = os.getcwd()
cwd = cwd if cwd[-4:] == 'test' else cwd+'\\test'
os.chdir(cwd)

# shared information
par_from = ['lu', 'ol', 'sz', 'uz', 'river']
h0_useless = ['FlowModelDocVersion', 'ViewSettings', 'Overlays',
              'Catchment', 'Topography', 'ExtraParams', 'Result',
              'Results_Post_Processing', 'Subcatchments']
h0_results = ['StoringOfResults']
h0_simspec = ['SimSpec']


# test models
models = {'m0': {'mod_nme': 'Karup_basic0',
                 'pth': './example_models/Karup/Karup_Basic/',
                 'model_types': {'OL': 0, 'SZ': 0, 'UZ': 0},
                 'proc_active': {'ET': True, 'OL': True, 'SZ': True,
                                 'UZ': True, 'River': True},
                 'result_ff': '.\\example_models\\Karup\\Karup_Basic\\Karup_basic0.she - Result Files/'},
          'm1': {'mod_nme': 'Karup_basic1',
                 'pth': './example_models/Karup/Karup_Basic/',
                 'model_types': {'OL': 0, 'SZ': 0, 'UZ': 0},
                 'proc_active': {'ET': True, 'OL': True, 'SZ': True,
                                 'UZ': True, 'River': True},
                 'result_ff': '.\example_models\Karup\Karup_Basic\Karup_basic.she - Result Files/'},
          'm2': {'mod_nme': 'Karup_basic2',
                 'pth': './example_models/Karup/Karup_Basic/',
                 'model_types': {'OL': 1, 'SZ': 0, 'UZ': 0},
                 'proc_active': {'ET': True, 'OL': True, 'SZ': True,
                                 'UZ': True, 'River': True}},
          'm3': {'mod_nme': 'Karup_basic3',
                 'pth': './example_models/Karup/Karup_Basic/',
                 'model_types': {'OL': 0, 'SZ': 0, 'UZ': 0},
                 'proc_active': {'ET': True, 'OL': True, 'SZ': True,
                                 'UZ': True, 'River': True}},
          'm4': {'mod_nme': 'Karup_basic4',
                 'pth': './example_models/Karup/Karup_Basic/',
                 'model_types': {'OL': 0, 'SZ': 0, 'UZ': 2},
                 'proc_active': {'ET': True, 'OL': True, 'SZ': True,
                                 'UZ': True, 'River': True}},
          'm5': {'mod_nme': 'Karup_basic5',
                 'pth': './example_models/Karup/Karup_Basic/',
                 'model_types': {'OL': 0, 'SZ': 1, 'UZ': 2},
                 'proc_active': {'ET': True, 'OL': True, 'SZ': True,
                                 'UZ': True, 'River': True}},
          'm6': {'mod_nme': 'Karup_basic6',
                 'pth': './example_models/Karup/Karup_Basic/',
                 'model_types': {'OL': 0, 'SZ': 1, 'UZ': 1},
                 'proc_active': {'ET': True, 'OL': True, 'SZ': True,
                                 'UZ': True, 'River': True}}}



class Misc(unittest.TestCase):
    """Test class for non class functions."""

    @classmethod
    def setUpClass(self):
        tbl = {}
        tbl_r = {}
        for m in models:
            tbl[m] = main.table_from_file(os.path.join(models[m]['pth'],
                                                                models[m]['mod_nme']) + '.she')
            tbl_r[m] = main.remove_unused_data(tbl[m])
        self.tbl = tbl
        self.tbl_r = tbl_r

    def test_table_from_file(self):
        self.assertEqual(self.tbl['m0'].shape, (3449, 10))

    def test_remove_unused_data(self):
        self.assertEqual(self.tbl_r['m0'].shape, (912, 10))
        data_used = self.tbl_r['m0'].loc[self.tbl_r['m0']['name'] == 'IsDataUsedInSetup',
                                          'value'].tolist()
        self.assertTrue(data_used.count(1) == len(data_used),
                        'Not all unused rows have been removed from dataframe')

    def test_name_after(self):
        tbl_r_lu = self.tbl_r['m0'][self.tbl_r['m0']['header0'] == 'LandUse'].copy()
        names = main.name_after(tbl_r_lu, 'NAME', level=2)
        self.assertEqual(names['header5'].unique().tolist(),
                          ['', 'Grass', 'Forest', 'Shrubs', 'Wetlands'])
        self.assertEqual(names[names['header5'] != ''].shape, (47, 10))

        tbl_r_uz = self.tbl_r['m0'][self.tbl_r['m0']['header0'] == 'Unsatzone'].copy()
        names = main.name_after(tbl_r_uz, 'SoilProfile_ID', level=3)
        self.assertEqual(names['header5'].unique().tolist(),
                          ['', 'Silt loam', 'Loamy sand', 'Loam'])
        self.assertEqual(names[names['header5'] != ''].shape, (119, 10))
        pass


class TestSetup(unittest.TestCase):
    """Test Setup class of mikecalsetup."""

    @classmethod
    def setUpClass(self):   # runs once before start of testing
        setups = {}
        for m in models:
            setups[m] = mikecalsetup.Setup(models[m]['mod_nme'],
                                        pth=models[m]['pth'])
        self.setups = setups

    @classmethod
    def tearDownClass(self):  # runs once in the end of all tests
        # delete created files
        remove_files = []
        # find ori files
        for path, currentDirectory, files in os.walk("./"):
            for file in files:
                if '_ori.' in file:  # extract ori files
                    name, ext = os.path.splitext(path+'\\'+file)  # check that it is in fact an ori file
                    if os.path.exists(name[:-4] + ext):
                        remove_files.append(path+'\\'+file)
                elif '.tpl' in file:
                    remove_files.append(path+'\\'+file)
        # append par array script and parameter file
        remove_files.append('parameter_array_update.py')
        remove_files.append('par_array_factors.txt')
        remove_files.append('ostin.txt')
        remove_files.append('forward.bat')
        remove_files.append('stats.txt')
        remove_files.append('stats.py')
        remove_files.append('sim_vs_obs.csv')

        for file in remove_files:
            os.remove(file)

    def test_parameters(self):
        """Test the parameters are read correctly."""
        self.assertEqual(self.setups['m0'].par.shape, (39, 9))
        self.assertEqual(self.setups['m0'].par.isnull().sum().sum(), 0)
        self.assertEqual(len(self.setups['m0'].files), 4)
        self.assertEqual(self.setups['m1'].par.isnull().sum().sum(), 0)

    def test_simspecs(self):
        """Test the simulation specification are read correctly."""
        self.assertEqual(self.setups['m0'].proc_active,
                          models['m0']['proc_active'])
        self.assertEqual(self.setups['m0'].model_types,
                          models['m0']['model_types'])
        self.assertEqual(self.setups['m0'].result_ff,
                          models['m0']['result_ff'], 'default result file folder')
        self.assertEqual(self.setups['m1'].result_ff,
                          models['m1']['result_ff'], 'specified result file folder')

    def test_observations(self):
        """Test the observations are read correctly."""
        self.assertEqual(self.setups['m0'].results.shape, (5, 9))


    def test_add_array_pars(self):
        # before adding parameters
        self.setups['m1'].write_files()
        # test no extra parameters
        self.assertEqual(self.setups['m1'].par.shape, (36, 9))  # no parameter arrays
        self.assertEqual(len(self.setups['m1'].files), 2)  # no parameter arrays
        # no par update line in forward model
        with open('forward.bat', 'r') as f:
            forward_content = f.read()
        self.assertFalse('python parameter_array_update.py' in forward_content)
        # no par update script
        self.assertFalse(os.path.exists('parameter_array_update.py'))
        # no extra par file
        self.assertFalse(os.path.exists('par_array_factors.txt'))
        # no extra template file in ostin file
        with open('ostin.txt', 'r') as f:
            ostin_content = f.read()
        self.assertFalse('./par_array_factors.tpl	./par_array_factors.txt' in ostin_content)

        # test adding parameters
        self.setups['m1'].add_array_pars()
        self.setups['m1'].write_files()
        # four array parameters added
        self.assertEqual(self.setups['m1'].par.shape, (40, 9))
        # extra parameter array file
        self.assertEqual(len(self.setups['m1'].files), 3)
        # extra line in forward model
        with open('forward.bat', 'r') as f:
            forward_content = f.read()
        self.assertTrue('python parameter_array_update.py' in forward_content)
        # existence of par update script
        self.assertTrue(os.path.exists('parameter_array_update.py'))
        # existence of par file for array parameters
        self.assertTrue(os.path.exists('par_array_factors.txt'))
        # extra template file in ostin file
        with open('ostin.txt', 'r') as f:
            ostin_content = f.read()
        self.assertTrue('./par_array_factors.tpl	./par_array_factors.txt' in ostin_content)
        # extra file in ostin
        self.assertTrue('parameter_array_update.py' in ostin_content)

        # The file Level.dfs2 added another layer, test that no changes to this layer
        # also two categories, test that updated correctly with class_value
        par = self.setups['m1'].par
        self.setups['m1'].par = par[par['file'] != 'par_array_factors.txt']
        par_files = self.setups['m1'].par_files
        par_files.loc['sz_Drainage_Level_arrfile', 'method'] = 'class_value'
        self.setups['m1'].par_files = par_files
        self.setups['m1'].add_array_pars()
        self.assertTrue(os.path.exists('sz_Drainage_Level_arrfile.tpl.npy'))
        tpl_array = np.load('sz_Drainage_Level_arrfile.tpl.npy',
                            allow_pickle=True)
        self.assertEqual(np.sum(tpl_array == '__sz_Drainage_Level_arrfile00__'), 34)
        df = pd.read_csv("par_array_factors.txt", sep='\t', index_col=0)
        self.assertEqual(df.columns.tolist()[-1], 'value')  # last column has to be value for template file writer to work
        self.assertEqual(df.shape, (5, 4))

    def test_forward_model_scripts(self):
        # testing simple and compelx script
        self.setups['m1'].write_forward_model_simple()
        for i in range(2):
            if i == 0:
                self.setups['m1'].write_forward_model_simple()
                
            else:
                self.setups['m1'].write_forward_model_complex()
            with open('forward.bat', 'r') as f:
                forward_content = f.readlines()
            # test that she file is called and exists
            ms_command = [line for line in forward_content if 'MzLaunch' in line]
            self.assertEqual(len(ms_command), 1)
            she_file = ms_command[0].split()[3]
            # self.assertTrue(os.path.exists(os.path.normpath(cwd+she_file)))
            # test that conda path is called and exist
            conda_set = [line for line in forward_content if 'PATH=' in line][0]
            self.assertTrue(len(conda_set) > 1)
            conda_path = conda_set.split('=')[1][:-1]
            conda_call = [line for line in forward_content if 'PATH%' in line][0]
            conda_call = conda_call.replace('call %CONDAPATH%', conda_path)[:-1]
            self.assertTrue(os.path.exists(conda_call))
            # test that stat script is called
            stats_call = [line for line in forward_content if 'stats.py' in line]
            self.assertEqual(len(stats_call), 1)


class TestExtractParameters(unittest.TestCase):
    """Test ExtractParameters class of mikecalsetup."""

    @classmethod
    def setUpClass(self):   # runs once before start of testing
        extpar = {}
        for m in models:
            all_df = main.table_from_file(os.path.join(models[m]['pth'],
                                                            models[m]['mod_nme']) + '.she')
            all_df = main.remove_unused_data(all_df)
            parInidf = all_df.loc[~all_df['header0'].isin(h0_results +
                                                          h0_simspec +
                                                          h0_useless)].copy()
            extpar[m] = main.ExtractParameters(parInidf,
                                                    models[m]['proc_active'],
                                                    models[m]['model_types'],
                                                    par_from, models[m]['pth'])
        self.extpar = extpar


    @classmethod
    def tearDownClass(self):  # runs once in the end of all tests
        pass


    def test_landuse(self):
        self.assertEqual(self.extpar['m0'].extract_lu_par().shape, (18, 11),
                          'Land Use parameters not extracted correctly in model0')
        self.assertEqual(self.extpar['m1'].extract_lu_par().shape, (13, 10),
                          'Land Use parameters not extracted correctly in model1')
        self.assertEqual(self.extpar['m2'].extract_lu_par().shape, (20, 11),
                          'Land Use parameters not extracted correctly in model2')
        self.assertEqual(self.extpar['m3'].extract_lu_par().shape, (8, 10),
                          'Land Use parameters not extracted correctly in model3')
        self.assertEqual(self.extpar['m4'].extract_lu_par().shape, (4, 10),
                          'Land Use parameters not extracted correctly in model4')
        self.assertEqual(self.extpar['m5'].extract_lu_par().shape, (18, 11),
                          'Land Use parameters not extracted correctly in model5')

    def test_overland(self):
        self.assertEqual(self.extpar['m1'].extract_ol_par().shape, (5, 10),
                          'Overland flow parameters not extracted correctly in model1')
        self.assertEqual(self.extpar['m2'].extract_ol_par().shape, (8, 10),
                          'Overland flow parameters not extracted correctly in model1')

    def test_unsatzone(self):
        self.assertEqual(self.extpar['m0'].extract_uz_par().shape, (6, 11),
                          'Unsaturated zone parameters not extracted correctly in model0')
        self.assertEqual(self.extpar['m1'].extract_uz_par().shape, (15, 11),
                          'Unsaturated zone parameters not extracted correctly in model1')
        self.assertEqual(self.extpar['m2'].extract_uz_par().shape, (6, 11),
                          'Unsaturated zone parameters not extracted correctly in model2')
        self.assertEqual(self.extpar['m3'].extract_uz_par().shape, (6, 11),
                          'Unsaturated zone parameters not extracted correctly in model3')
        self.assertEqual(self.extpar['m4'].extract_uz_par().shape, (16, 10),
                          'Unsaturated zone parameters not extracted correctly in model4')
        self.assertEqual(self.extpar['m5'].extract_uz_par().shape, (23, 10),
                          'Unsaturated zone parameters not extracted correctly in model5')
        self.assertEqual(self.extpar['m6'].extract_uz_par().shape, (6, 11),
                          'Unsaturated zone parameters not extracted correctly in model6')

    def test_satzone(self):
        self.assertEqual(self.extpar['m0'].extract_sz_par().shape, (6, 10),
                          'Saturated zone parameters not extracted correctly in model0')
        self.assertEqual(self.extpar['m1'].extract_sz_par().shape, (11, 10),
                          'Saturated zone parameters not extracted correctly in model1')
        self.assertEqual(self.extpar['m2'].extract_sz_par().shape, (7, 10),
                          'Saturated zone parameters not extracted correctly in model2')
        self.assertEqual(self.extpar['m3'].extract_sz_par().shape, (7, 10),
                          'Saturated zone parameters not extracted correctly in model3')
        self.assertEqual(self.extpar['m4'].extract_sz_par().shape, (7, 10),
                          'Saturated zone parameters not extracted correctly in model4')
        self.assertEqual(self.extpar['m5'].extract_sz_par().shape, (61, 10),
                          'Saturated zone parameters not extracted correctly in model5')
        self.assertEqual(self.extpar['m6'].extract_sz_par().shape, (70, 10),
                          'Saturated zone parameters not extracted correctly in model6')

    def test_river(self):
        self.assertEqual(self.extpar['m0'].extract_riv_par().shape, (6, 11),
                          'River parameters not extracted correctly in model0')

class Test_Controlfiles(unittest.TestCase):
    """Test control file setup. """
    @classmethod
    def setUpClass(self):   # runs once before start of testing
        m = 'm1'
        setup = mikecalsetup.Setup('Karup_basic_pest',
                                    pth=models[m]['pth'])
        par = setup.par
        par_nme = par.index.tolist()
        group = [nme for nme in par_nme if 'HydrGenuchten' in nme]
        par.loc[group[1:], 'transform'] = 'tied'
        par.loc[group[1:], 'tied_to'] = group[0]
        par.loc['ol_DetentionStorage', 'transform'] = 'fixed'
        par.loc['lu_LAI_FixedValue', 'transform'] = 'int'
        par.loc['sz_GeoLayersSZ_Layer_1_VerHydrCon', 'transform'] = 'log'
        self.par = par
        setup.write_files()
        setup.program = 'PEST'
        setup.write_files()
    
        ost = mikecalsetup.OstFile('./ostin.txt')
        ost.load()
        ost.configbas['OstrichCaching'] = 'yes'
        ost.configsa = ['PerturbationValue 0.2', 'MaxIterations 300', 'SelectionMetric Random']
        ost.write()
        ost.paramsdf.index = ost.paramsdf.name.str.replace('__', '')
        self.ost = ost

    @classmethod
    def tearDownClass(self):  # runs once in the end of all tests
        # delete created files
        remove_files = []
        # find ori files
        for path, currentDirectory, files in os.walk("./"):
            for file in files:
                if '_ori.' in file:  # extract ori files
                    name, ext = os.path.splitext(path+'\\'+file)  # check that it is in fact an ori file
                    if os.path.exists(name[:-4] + ext):
                        remove_files.append(path+'\\'+file)
                elif '.tpl' in file:
                    remove_files.append(path+'\\'+file)
        # append par array script and parameter file
        remove_files.append('ostin.txt')
        remove_files.append('forward.bat')
        remove_files.append('stats.txt')
        remove_files.append('stats.py')
        remove_files.append('sim_vs_obs.csv')

        for file in remove_files:
            os.remove(file)


    def test_ostrich_control(self):
        # testing correct writing
        with open('ostin.txt', 'r') as f:
            ostin_content = f.read()
        self.assertTrue('BeginTiedParams' in ostin_content)
        self.assertTrue('EndTiedParams' in ostin_content)
        self.assertTrue('BeginParams' in ostin_content)
        self.assertTrue('EndParams' in ostin_content)
        self.assertTrue('BeginPADDSAlg' in ostin_content)
        self.assertTrue('EndPADDSAlg' in ostin_content)
        self.assertTrue('Empty	DataFrame' not in ostin_content, 'Empty dataframe written to ostin file')

        # check corrct variable pars
        ex_par = ['sz_GeoLayersSZ_Layer_1_StorageCoef', 'sz_Drainage_TimeConstant',
                  'uz_Siltloam_ReteGenuchten_ThetaS', 'uz_Siltloam_HydrGenuchten_Ks',
                  'uz_Loamysand_ReteGenuchten_ThetaS']
        ostin_vals = self.ost.paramsdf.loc[ex_par, 'init'].astype(float).values
        load_vals = self.par.loc[ex_par, 'value'].values
        self.assertEqual((ostin_vals == load_vals).sum(), 5) 

        # check correct fixed pars
        ostin_vals = self.ost.tied_params.loc[self.ost.tied_params['np'] == '0', 'pname'].astype(float).values
        load_vals = self.par.loc[self.par['transform'] == 'fixed', 'value'].values
        self.assertEqual((ostin_vals == load_vals).sum(), 1) 
        
        # check correct tied pars
        ostin_vals = self.ost.tied_params.loc[self.ost.tied_params['np'] == '1', 'pname'].tolist()
        ostin_vals = [ov.replace('__', '') for ov in ostin_vals]
        load_vals = self.par.loc[self.par['transform'] == 'tied', 'tied_to'].tolist()
        self.assertTrue(ostin_vals == load_vals)
        
        # testing correct loading
        self.assertEqual(self.ost.paramsdf.shape, (13, 8))
        self.assertTrue(self.ost.obsdf.shape, (8, 10))
        self.assertTrue(self.ost.tied_params.shape, (2, 7))
        self.assertTrue(len(self.ost.extra_dirs) == 2)
        self.assertTrue(len(self.ost.extra_files) >= 2)
        self.assertTrue(len(self.ost.in_files) == 2)
        
        # test loading with no tied/fixed parameters
        self.ost.tied_params = pd.DataFrame()
        self.ost.write()
        self.ost.load()
        

    def test_pest_control(self):
        # testing file can be read by pyemu
        control_file = "Karup_basic_pest.pst"
        self.assertTrue(os.path.exists(control_file))
        pst = pyemu.Pst(control_file)
        self.assertIsInstance(pst, pyemu.pst.pst_handler.Pst)
        pst_input_files = pst.input_files
        ost_input_files = self.ost.in_files
        pst_input_files = [os.path.normpath(f) for f in pst_input_files]
        ost_input_files = [os.path.normpath(f) for f in ost_input_files]
        self.assertTrue(pst_input_files == ost_input_files)
        pst_temp_files = pst.template_files
        ost_temp_files = self.ost.temp_files
        pst_temp_files = [os.path.normpath(f) for f in pst_temp_files]
        ost_temp_files = [os.path.normpath(f) for f in ost_temp_files]
        self.assertTrue(pst_temp_files == ost_temp_files)
        self.assertTrue(pst.parameter_data.shape, (17, 11))
        

class test_OstPostProc(unittest.TestCase):
    def test_ostrich_loading(self):
        # example with cal ended manually
        root = './example_ostrich_output/done+tied/'
        ostpp = mikecalsetup.OstPostProc(root)
        self.assertEqual(ostpp.fs.shape, (21, 36))
        self.assertEqual(ostpp.ns.shape, (13, 25))
        cols = [c for c in ostpp.fs.columns if 'WSSE' in c or '__' in c]
        self.assertEqual(ostpp.ns.columns.tolist(), cols)

        # example with cal run to end
        root = './example_ostrich_output/not done+tied/'
        ostpp = mikecalsetup.OstPostProc(root)
        self.assertEqual(ostpp.fs.shape, (64, 36))
        self.assertEqual(ostpp.ns.shape, (13, 25))
        cols = [c for c in ostpp.fs.columns if 'WSSE' in c or '__' in c]
        self.assertEqual(ostpp.ns.columns.tolist(), cols)

        g = ostpp.plot_wsse() # without selected solutions

        # loading control file setup
        ostin = ost_file.OstFile(ostpp.oin_fp)
        ostin.load()
        var_pars = ostin.paramsdf  # variable parameters
        var_pars.index = var_pars['name']
        var_pars = var_pars['init'].astype(float)
        tied_pars = ostin.tied_params[['name', 'pname', 'type_data(c1', 'c0)']]
        tied_pars.columns = ['name', 'tto', 'c1', 'c0']
        tied_pars.loc[:, ['c1', 'c0']] = tied_pars[['c1', 'c0']].astype(float)
        
        # select solutions
        with self.assertRaises(ValueError):  # no runs selected throw error
            ostpp.setup_parallel_runs(False)
        ostpp.fs['select'] = 0
        with self.assertRaises(ValueError):  # no runs selected but with select column throw error
            ostpp.setup_parallel_runs(False)
        ostpp.autoselect_solutions(method='pareto', ofs=None, of_weights=None, 
                                   reselect=False)
        ofs = [col for col in ostpp.fs.columns if ('WSSE' in col) or ('GCOP' in col)]
        weights = [1]*len(ofs)
        ostpp.autoselect_solutions(method='weighing_ofs', ofs=ofs, of_weights=weights, 
                                   reselect=True)
        g = ostpp.plot_wsse()  # with selected solutions
    # def test_run_pars(self):
        # one run selected without initial run
        ostpp.ready_pars_for_runs(False)
        pars_out = pd.read_csv('./OSTRICH_runs_pars.txt', sep='\t',
                               index_col=0)
        self.assertEqual(pars_out.shape, (39, 1))
        
        # including initial run
        ostpp.ready_pars_for_runs(True)
        pars_out = pd.read_csv('./OSTRICH_runs_pars.txt', sep='\t',
                               index_col=0)
        self.assertEqual(pars_out.shape, (39, 2))

        # with more than one run selected
        ostpp.fs.loc[:, 'select'] = 0
        ostpp.fs.loc[[15, 20], 'select'] = 1
        ostpp.ready_pars_for_runs(True)
        pars_out = pd.read_csv('./OSTRICH_runs_pars.txt', sep='\t',
                               index_col=0)
        self.assertEqual(pars_out.shape, (39, 3))
        # parameter values
        cols = [col for col in ostpp.fs.columns if '__' in col]
        solutions = ostpp.fs.loc[ostpp.fs.select == 1, cols].T

        # x*c1+c0
        # testing tied parameters calculated correctly
        val = var_pars.loc[tied_pars.loc[1, 'tto']] * tied_pars.loc[1, 'c1'] + tied_pars.loc[1, 'c0']
        self.assertEqual(pars_out.loc[tied_pars.loc[1, 'name'], 'val_0'], val)
        val = pars_out.loc[tied_pars.loc[2, 'tto'], 'val_1'] * tied_pars.loc[2, 'c1'] + tied_pars.loc[2, 'c0']
        self.assertEqual(pars_out.loc[tied_pars.loc[2, 'name'], 'val_1'], val)
        
        # ostpp.setup_parallel_runs(False)

if __name__ == '__main__':
    unittest.main()
