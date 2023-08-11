# mikecalsetup

Manually setting up a calibration of a MIKE SHE model in an independent program can be cumbersome. Here an altenative to the manual approach is presented. With mikeCalSetup an initial, ready-to-run calibration setup of a MIKE SHE model can be created in OSTRICH or PEST automatically. 

This includes:
- Writing template files (\*.she, \*.mhydro, \*.uzs, \*.etv)
- Writing a forward model bash script
- Writing script for calculating model performance
- Writing control file for OSTRICH or PEST

The only input is the \*.she model file!

mikecalsetup parameterizes the nested header file format found in the MIKE files she, hydro, uzs and etv. To parameterize MIKE SHE dfs0, dfs1, dfs2 and dfs3 file formats the reader is refered to the PstFrom module of pyEMU (https://github.com/pypest/pyemu). A short example of the combination of mikecalsetup with pyEMU is given in the examples folder. 

## Installation
The easiest way to install mikecalsetup with all dependencies is to create an environment using the file mike.yml. 
```bash
conda env create -f mike.yml
```

Alternatively, use the package manager [pip](https://pip.pypa.io/en/stable/) to install mikecalsetup.
Download the package and run "pip install ." in the folder with the setup file.
```bash
cd mikecalsetup directory
pip install .
```

## Usage
A short example of usage is given in the following. The jupyter notebooks in the examples folder provides a more complete overview of how to use this tool.
```python
import mikecalsetup

# extract all relevant information from model
mod_nme = 'Karup_basic0'  # name of model (no extension)
pth = '.\\test\\example_models\\Karup\\Karup_Basic'  # relative path to model
setup = mikecalsetup.Setup(mod_nme, pth)

# constrain the number of processes that are parameterized with the par_from variable
setup = mikecalsetup.Setup(mod_nme, pth, par_from=['ol', 'sz', 'uz', 'river'])  # possibilites ['lu', 'ol', 'sz', 'uz', 'river']

# check that path to mike she installation is correct
setup.mzpath

# parameters are specified in the par dataframe
par = setup.par
par_nme = par.index.to_list()

# drop parameters not needed for the calibration
drop_par = ['ol_InitialWaterDepth', 'sz_Drainage_Level']
par_nme = [nme for nme in par_nme if nme not in drop_par]
par = par.loc[par_nme]

# set transform ['none', 'fixed', 'tied'], 
group = [nme for nme in par_nme if nme.startswith('riv')]
par.loc[group[0], 'transform'] = 'none'
par.loc[group[1:], 'transform'] = 'tied'
par.loc[group[1:], 'tied_to'] = group[0]

par.loc['ol_Manning', 'transform'] = 'fixed'
par.loc['ol_Manning', 'value'] = 2.5

# set upper and lower bounds
group = [nme for nme in par_nme if nme.endswith('HydrGenuchten_Ks')]
par.loc[group, ['lower', 'upper']] = 0.39, 0.46

# assign parameter dataframe back to class
setup.par = par

# assign needed statistics to observation-simulation pairs
results = setup.results
results['stats'] = 'fbal, nse'  # possibilities = rmse, kge, nse, pcc, fbal delimited with comma 

# write files based on setup
setup.write_files()

```

## Tests
A collection of tests are developed using [unittest](https://docs.python.org/3/library/unittest.html). 
The test script is located in the test folder along with MIKE SHE example model setups.

## Community guidelines
Please do not hesitate to contact me directly if you need more information to apply the tool, find a bug, have ideas for extending the functionality. 
If you wish to contribute, please fork the [mikecalsetup repository](https://github.com/tenemark/mikecalsetup) on GitHub, clone, and develop your modifications on a branch. Then submit a pull request.
