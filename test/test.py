# -*- coding: utf-8 -*-
"""
Created on Wed Oct 19 02:31:13 2022

@author: wqg436
"""

import unittest
import mikecalsetup.mikecalsetup as mikecalsetup
import os

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
                 'proc_active': {'ET': True, 'OL': True, 'SZ': True, 'UZ': True, 'River': True},
                 'result_ff': '.\\example_models\\Karup\\Karup_Basic\\Karup_basic0.she - Result Files/'},
          'm1': {'mod_nme': 'Karup_basic1',
                 'pth': './example_models/Karup/Karup_Basic/',
                 'model_types': {'OL': 0, 'SZ': 0, 'UZ': 0},
                 'proc_active': {'ET': True, 'OL': True, 'SZ': True, 'UZ': True, 'River': True},
                 'result_ff': '.\example_models\Karup\Karup_Basic\Karup_basic.she - Result Files/'},
          'm2': {'mod_nme': 'Karup_basic2',
                 'pth': './example_models/Karup/Karup_Basic/',
                 'model_types': {'OL': 1, 'SZ': 0, 'UZ': 0},
                 'proc_active': {'ET': True, 'OL': True, 'SZ': True, 'UZ': True, 'River': True}},
          'm3': {'mod_nme': 'Karup_basic3',
                 'pth': './example_models/Karup/Karup_Basic/',
                 'model_types': {'OL': 0, 'SZ': 0, 'UZ': 0},
                 'proc_active': {'ET': True, 'OL': True, 'SZ': True, 'UZ': True, 'River': True}},
          'm4': {'mod_nme': 'Karup_basic4',
                 'pth': './example_models/Karup/Karup_Basic/',
                 'model_types': {'OL': 0, 'SZ': 0, 'UZ': 2},
                 'proc_active': {'ET': True, 'OL': True, 'SZ': True, 'UZ': True, 'River': True}},
          'm5': {'mod_nme': 'Karup_basic5',
                 'pth': './example_models/Karup/Karup_Basic/',
                 'model_types': {'OL': 0, 'SZ': 1, 'UZ': 2},
                 'proc_active': {'ET': True, 'OL': True, 'SZ': True, 'UZ': True, 'River': True}},
          'm6': {'mod_nme': 'Karup_basic6',
                 'pth': './example_models/Karup/Karup_Basic/',
                 'model_types': {'OL': 0, 'SZ': 1, 'UZ': 1},
                 'proc_active': {'ET': True, 'OL': True, 'SZ': True, 'UZ': True, 'River': True}}}



class Misc(unittest.TestCase):
    """Test class for non class functions."""

    @classmethod
    def setUpClass(self):
        tbl = {}
        tbl_r = {}
        for m in models:
            tbl[m] = mikecalsetup.table_from_file(os.path.join(models[m]['pth'],
                                                           models[m]['mod_nme']) + '.she')
            tbl_r[m] = mikecalsetup.remove_unused_data(tbl[m])
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
        names = mikecalsetup.name_after(tbl_r_lu, 'NAME', level=2)
        self.assertEqual(names['header5'].unique().tolist(),
                         ['', 'Grass', 'Forest', 'Shrubs', 'Wetlands'])
        self.assertEqual(names[names['header5'] != ''].shape, (47, 10))

        tbl_r_uz = self.tbl_r['m0'][self.tbl_r['m0']['header0'] == 'Unsatzone'].copy()
        names = mikecalsetup.name_after(tbl_r_uz, 'SoilProfile_ID', level=3)
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
        print('parameters')
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
        self.assertEqual(self.setups['m0'].results.shape, (5, 7))


    def test_add_array_pars(self):
        # before adding parameters
        self.setups['m1'].write_files()
        # test no extra parameters
        self.assertEqual(self.setups['m1'].par.shape, (36, 9))  # no parameter arrays
        self.assertEqual(len(self.setups['m1'].files), 2)  # no parameter arrays
        # no par update line in forward model
        forward_content = open('forward.bat').read()
        self.assertFalse('python parameter_array_update.py' in forward_content)
        # no par update script
        self.assertFalse(os.path.exists('parameter_array_update.py'))
        # no extra par file
        self.assertFalse(os.path.exists('par_array_factors.txt'))
        # no extra template file in ostin file
        ostin_content = open('ostin.txt').read()
        self.assertFalse('./par_array_factors.tpl;./par_array_factors.txt' in ostin_content)
        
        # test adding parameters
        self.setups['m1'].add_array_pars()
        self.setups['m1'].write_files()
        # four array parameters added
        self.assertEqual(self.setups['m1'].par.shape, (40, 9))
        # extra parameter array file
        self.assertEqual(len(self.setups['m1'].files), 3)
        # extra line in forward model
        forward_content = open('forward.bat').read()
        self.assertTrue('python parameter_array_update.py' in forward_content)
        # existence of par update script
        self.assertTrue(os.path.exists('parameter_array_update.py'))
        # existence of par file for array parameters
        self.assertTrue(os.path.exists('par_array_factors.txt'))
        # extra template file in ostin file
        ostin_content = open('ostin.txt').read()
        self.assertTrue('./par_array_factors.tpl;./par_array_factors.txt' in ostin_content)
        
        # The file Level.dfs2 added another layer, test that no changes to this layer 
        # also two categories, test that updated correctly with class_value
 

class TestExtractParameters(unittest.TestCase):
    """Test ExtractParameters class of mikecalsetup."""

    @classmethod
    def setUpClass(self):   # runs once before start of testing
        extpar = {}
        for m in models:
            all_df = mikecalsetup.table_from_file(os.path.join(models[m]['pth'],
                                                           models[m]['mod_nme']) + '.she')
            all_df = mikecalsetup.remove_unused_data(all_df)
            parInidf = all_df.loc[~all_df['header0'].isin(h0_results +
                                                          h0_simspec +
                                                          h0_useless)].copy()
            extpar[m] = mikecalsetup.ExtractParameters(parInidf,
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
        self.assertEqual(self.extpar['m5'].extract_sz_par().shape, (60, 10),
                         'Saturated zone parameters not extracted correctly in model5')
        self.assertEqual(self.extpar['m6'].extract_sz_par().shape, (69, 10),
                         'Saturated zone parameters not extracted correctly in model6')

    def test_river(self):
        self.assertEqual(self.extpar['m0'].extract_riv_par().shape, (6, 11),
                         'River parameters not extracted correctly in model0')


if __name__ == '__main__':
    unittest.main()
