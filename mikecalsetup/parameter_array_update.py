"""
Script for updating array parameter from dfs files. Is general. Is copied to
input file directory in mikecalsetup.write_parameter_array_update_script()
"""
import mikeio
import os
import pandas as pd
import numpy as np

df = pd.read_csv("par_array_factors.txt", sep='\t', index_col=0)

# # # UNIFORM FACTOR
mask = df['method'] == 'uniform_factor'
for file in df.loc[mask, 'file'].unique(): # unique files to avoid opening and closing the same file multiple times
    # reading original file
    filename, file_extension = os.path.splitext(file)
    ds = mikeio.read(filename + "_ori" + file_extension)

    # looping over items in file
    for key, row in df[df['file'] == file].iterrows():
        factor = row['value']
        item = int(row['item']-1)

        # updating original with factor
        ds[item] = ds[item]*factor

    # save as input array
    ds.to_dfs(file)

# # # CLASS VALUES
mask = df['method'] == 'class_value'
# looping over unique files
for file in df.loc[mask, 'file'].unique():
    ds = mikeio.read(file)

    # looping over items in file
    for item in df.loc[(df['file'] == file), 'item'].unique():
        # loading array tpl file and replacing values
        name = df[(df['file'] == file) & (df['item'] == item)].index.tolist()[0][:-2]
        tpl_array = np.load(name + '.tpl.npy', allow_pickle=True)
        new_arr = np.zeros_like(tpl_array, dtype=float)

        # looping over pars in file item
        for par, row in df[(df['file'] == file) & (df['item'] == item)].iterrows():
            new_arr[tpl_array == '__' + par + '__'] = row['value'] 

        # replacing array with new array in dfs file
        ds[int(item-1)].values = new_arr
    ds.to_dfs(file)
