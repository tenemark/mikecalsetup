import numpy as np

def preproc():
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
    
    txt_to_dfs2(file="Model_Inputs/Root Depth.dfs2", item=1)