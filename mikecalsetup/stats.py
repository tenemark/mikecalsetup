"""
Script for calculating statistics. Is general. Is copied to
input file directory in mikecalsetup.write_stats_script()
"""
import mikeio
import numpy as np
import pandas as pd
import mikecalsetup.stats_def as stats_def
df = pd.read_csv("sim_vs_obs.csv")
sep = "\t"
k = 0

# load sim files
sim_file_names = df['sim_file'].unique().tolist()
sim_dfs = [None]*len(sim_file_names)
for i, fn in enumerate(sim_file_names):
    sim_dfs[i] = mikeio.read(fn).to_dataframe()

# load obs files
obs_file_names = df['obs_file'].unique().tolist()
obs_dfs = [None]*len(obs_file_names)
for i, fn in enumerate(obs_file_names):
    obs_dfs[i] = mikeio.read(fn).to_dataframe()
    obs_dfs[i].columns = [i for i in range(obs_dfs[i].shape[1])]  # rename to item

# open file to write
f = open("stats.txt", mode="w")

for i, row in df.iterrows():
    # select sim file
    sim_df = sim_dfs[sim_file_names.index(row["sim_file"])]

    # select obs file
    obs_df = obs_dfs[obs_file_names.index(row["obs_file"])].copy()

    # initialize combined dataframe
    dis = pd.DataFrame(obs_df[row["obs_item"]-1].values, columns=['obs'],
                       index=obs_df.index)

    # combine by interpolating sim to obs index
    try:
        dis["sim"] = np.interp(dis.index, sim_df.index,
                               sim_df[str(row["sim_item"])],
                               left=np.nan, right=np.nan)
        dis.dropna(axis=0, inplace=True)

        # filter based on dates
        dis = dis.loc[(dis.index > row['start']) & (dis.index < row['end'])]

        # if len of dis is 0 no observations in sim period --> drop from further eval
        if len(dis) == 0:
            df = df.drop(i)
            k = 1
        else:
            y_true, y_pred = np.array(dis["obs"]), np.array(dis["sim"])

            # stats to calculate specified in df
            stats = row.stats.replace(" ", "").split(",")

            # loop through specified stats, calculate and write to file
            for i, stat in enumerate(stats):
                value = eval("stats_def.calc_"+stat+"(y_true, y_pred)")
                value = 999 if np.isnan(value) else value
                name = stat + "_" + row["type"] + str(row["name"])
                string = name + sep + "{:.4f}".format(value) + "\n"
                f.write(string)
    except KeyError:
        df = df.drop(i)
        k = 1
f.close()

if k == 1:  # if some stations dropped --> save new
    df.to_csv("sim_vs_obs.csv")
