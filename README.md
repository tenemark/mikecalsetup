# mikeCalSetup

mikeCalSetup can create an initial, ready-to-run setup for model calibration of Mike She models in Ostrich or PEST. 

This includes:
- Writing template files (*.she, *.hydro, *.uzs, *.vpf)
- Writing a forward model bash script
- Writing script for calculating model performance
- Writing input file for Ostrich or PEST

The only input is the *.she model file!

## Installation

Use the package manager [pip](https://pip.pypa.io/en/stable/) to install mikeCalSetup.
Download the package and run "pip install ." in the folder with the setup file.
```bash
cd mikecalsetup directory
pip install .
```

## Usage

```python
import mikecalsetup.mikecalsetup as mikecalsetup

# extract all relevant information from model
mod_nme = 'Karup_basic0'  # name of model (no extension)
pth = '.\\test\\example_models\\Karup\\Karup_Basic'  # relative path to model !!! FULL PATHS NOT SUPPORTED!
setup = mikecalsetup.Setup(mod_nme, pth)

# constrain the number of processes that are parameterized with the par_from variable
setup = mikecalsetup.Setup(mod_nme, pth, par_from=['ol', 'sz', 'uz', 'river'])  # possibilites ['lu', 'ol', 'sz', 'uz', 'river']

# check that path to mike she installation is correct
setup.mzpath

# check that python environment is correct
setup.environment

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

# parameter files that can be parameterized are located in the par_files variable
# par_files = setup.par_files
# add parameters from par_files
# setup.add_array_pars()

# assign parameter dataframe back to class
setup.par = par

# assign needed statistics to observation-simulation pairs
results = setup.results
results['stats'] = 'fbal, nse'  # possibilities = rmse, kge, nse, pcc, fbal delimited with comma 

# add extra statistics
# setup.statscripts.append('extra_stats.py')

# write files based on setup
setup.write_files()

```

## Tests
A collection of tests are developed using `unittest <https://docs.python.org/3/library/unittest.html>`_. 
The test script is located in the test folder along with MIKE SHE example model setups.
