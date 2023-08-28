# -*- coding: utf-8 -*-
"""
Created on Mon Aug 28 14:08:12 2023

@author: wqg436
"""
import os
import nbformat
from nbconvert.preprocessors import ExecutePreprocessor
example_dir = '../examples'
os.chdir(example_dir)

fns = [f for f in os.listdir(example_dir) if f.endswith('.ipynb') and 'PEST' not in f]

def test_notebook_exec(notebook):
  with open(notebook) as f:
      nb = nbformat.read(f, as_version=4)
      ep = ExecutePreprocessor(timeout=600, kernel_name='python3')
      try:
        assert ep.preprocess(nb) is not None, f"Got empty notebook for {notebook}"
      except Exception:
          assert False, f"Failed executing {notebook}"

for notebook in fns:
    test_notebook_exec(notebook)
    

def tearDown():  # runs once in the end of all tests
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
    remove_files.append('parameter_array_update.py')
    remove_files.append('par_array_factors.txt')
    # remove_files.append('stats.txt.ins')
    # remove_files.append('PstFrom.log')
    # remove_files.append('Karup_basic_pest.pst')
    remove_files.append('OSTRICH - Serial.bat')
    remove_files.append('OSTRICH - Parallel.bat')
    for file in remove_files:
        os.remove(file)

os.chdir('../test')
tearDown()
