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
f = open("stats.txt", mode="w")

for i, row in df.iterrows():
    # load sim discharge
    sim_df = mikeio.read(row["sim_file"]).to_dataframe()

    # load obs discharge
    load = mikeio.read(row["obs_file"])[row["obs_item"]-1]
    dis = pd.DataFrame(data=load.values, index=load.time)
    dis.rename(columns={0: "obs"}, inplace=True)

    # combine by interpolating sim to obs index
    dis["sim"] = np.interp(dis.index, sim_df.index, sim_df[str(row["sim_item"])], left=np.nan, right=np.nan)
    dis.dropna(axis=0, inplace=True)

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
            name = stat + "_" + row["type"] + str(row["name"])
            string = name + sep + "{:.4f}".format(value) + "\n"
            f.write(string)
f.close()

if k == 1:  # if some stations dropped --> save new
    df.to_csv("sim_vs_obs.csv")
