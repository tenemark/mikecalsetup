# -*- coding: utf-8 -*-
"""
Created on Mon Jul 24 14:35:21 2023

@author: wqg436
"""
import mikeio
import numpy as np


def dfs2_to_txt(file, item):
    """Convert dfs2 file to txt file."""
    # loading file
    ds = mikeio.read(file)[int(item-1)]

    # saving file
    np.savetxt(file + '.txt', ds.values[0, :, :])


def txt_to_dfs2(file, item):
    """Convert txt file to dfs2 file."""
    # load old array to get geometry
    ds = mikeio.read(file)
    # load new values
    arr2d = np.loadtxt(file + '.txt')
    # assign values and save
    arr3d = np.expand_dims(arr2d, axis=0)
    ds[int(item-1)].values = arr3d
    ds.to_dfs(file)

