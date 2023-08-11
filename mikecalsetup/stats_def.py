# -*- coding: utf-8 -*-
"""
Created on Tue Aug 16 13:02:19 2022

@author: wqg436
"""
import numpy as np
from scipy.stats import kendalltau
from scipy.stats import spearmanr


def calc_rmse(y_true, y_pred):
    """
    Calculate Root mean square error.

    Parameters
    ----------
    y_true : np.array
        The true values
    y_pred : np.array
        The predicted values

    Returns
    -------
    rms : float
        root mean square error

    """
    res = y_pred - y_true
    rms = np.sqrt(np.sum((res) ** 2) / len(y_true))
    return rms


def calc_kge(y_true, y_pred):
    """
    Calculate the Kling-Gupta Efficiency.

    Parameters
    ----------
    y_true : np.array
        The true values
    y_pred : np.array
        The predicted values

    Returns
    -------
    kge : float
        kling gupta effieciency

    """
    cc = calc_pcc(y_true, y_pred)
    alpha = calc_alpha(y_true, y_pred)
    beta = calc_beta(y_true, y_pred)
    kge = 1 - np.sqrt((cc-1)**2 + (alpha-1)**2 + (beta-1)**2)
    return kge


def calc_alpha(y_true, y_pred):
    """
    Calculate flow variability error from KGE.

    Parameters
    ----------
    y_true : np.array
        The true values
    y_pred : np.array
        The predicted values

    Returns
    -------
    alpha : float
        flow_variability_error

    """
    alpha = np.std(y_pred)/np.std(y_true)
    return alpha


def calc_beta(y_true, y_pred):
    """
    Calculate bias term from KGE.

    Parameters
    ----------
    y_true : np.array
        The true values
    y_pred : np.array
        The predicted values

    Returns
    -------
    beta : float
        bias term

    """
    beta = np.sum(y_pred)/np.sum(y_true)
    return beta


def calc_pcc(y_true, y_pred):
    """
    Calculate the Pearson correlation coefficient.

    Parameters
    ----------
    y_true : np.array
        The true values
    y_pred : np.array
        The predicted values

    Returns
    -------
    pcc : float
        pearson correlation coefficient

    """
    m1, m2 = np.mean(y_true), np.mean(y_pred)
    numerator = np.sum((y_true - m1) * (y_pred - m2))
    denominator = np.sqrt(np.sum((y_true - m1) ** 2)) * np.sqrt(np.sum((y_pred - m2) ** 2))
    pcc = numerator / denominator
    return pcc


def calc_nse(y_true, y_pred):
    """
    Calculate the Nash-Sutcliffe Efficiency.

    Parameters
    ----------
    y_true : np.array
        The true values
    y_pred : np.array
        The predicted values

    Returns
    -------
    nse : float
        nash-sutcliffe efficiency

    """
    res = y_true - y_pred
    nse = 1 - np.sum((res) ** 2) / np.sum((y_true - np.mean(y_true)) ** 2)
    return nse


def calc_wbl(y_true, y_pred):
    """
    Calculate the water balance closure.

    Parameters
    ----------
    y_true : np.array
        The true values
    y_pred : np.array
        The predicted values

    Returns
    -------
    wbal : float
        water balance

    """
    wbal = (y_pred.sum() - y_true.sum())/y_true.sum()
    return wbal


def calc_me(y_true, y_pred):
    """
    Calculate the mean error.

    Parameters
    ----------
    y_true : np.array
        The true values
    y_pred : np.array
        The predicted values

    Returns
    -------
    me : float
        mean error

    """
    me = np.mean(y_pred - y_true)
    return me


def calc_mae(y_true, y_pred):
    """
    Mean Absolute Error.

    Parameters
    ----------
    y_true : np.array
        The true values
    y_pred : np.array
        The predicted values

    Returns
    -------
        mae: float
            mean absolute error
    """
    mae = np.mean(np.abs(y_pred-y_true))
    return mae


def calc_kt(y_true, y_pred):
    """
    Kendall's tau coefficient Maurice G. Kendall, 1945.

    Parameters
    ----------
    y_true : np.array
        The true values
    y_pred : np.array
        The predicted values

    Returns
    -------
        kt: float
            Kendall's "tau-b" coefficient
    """
    kt = kendalltau(y_pred, y_true)[0]
    return kt


def calc_pbias(y_true, y_pred):
    """
    Percent Bias.

    Parameters
    ----------
    y_true : np.array
        The true values
    y_pred : np.array
        The predicted values

    Returns
    -------
        pbias: percent bias
    """
    pb = 100.0*np.sum(y_pred-y_true)/np.sum(y_true)
    return pb


def calc_apbias(y_true, y_pred):
    """
    Absolute Percent Bias.

    Parameters
    ----------
    y_true : np.array
        The true values
    y_pred : np.array
        The predicted values

    Returns
    -------
        apbias: absolute percent bias
    """
    ap = 100.0*np.sum(np.abs(y_pred-y_true))/np.sum(y_true)
    return ap


def calc_rsr(y_true, y_pred):
    """
    Root mean square observations Standard deviation Ratio- RMSE/STDEVobs.

    Parameters
    ----------
    y_true : np.array
        The true values
    y_pred : np.array
        The predicted values

    Returns
    -------
        rsr: float
            Root mean square observations Standard deviation Ratio
    """
    rsr = np.sqrt(np.mean((y_pred-y_true)**2))/np.std(y_true)
    return rsr


def calc_nse_squared(y_true, y_pred):
    """
    Calculate Nash Sutcliffe efficiency coefficient on squared streamflow.

    Gives higher weight to high flows.

    Parameters
    ----------
    y_true : np.array
        The true values
    y_pred : np.array
        The predicted values

    Returns
    -------
        nse: float
            Nash Sutcliffe efficient coefficient on squared streamflow
    """
    s = y_pred**2
    o = y_true**2
    nse_h = 1 - np.sum((s-o)**2)/np.sum((o-np.mean(o))**2)
    return nse_h


def _filter_nan(s, o):
    """
    Remove data from simulated simulated and observed data wherever one is nan.

    Parameters
    ----------
    o : np.array
        The observed values
    s : np.array
        The simulated values

    Returns
    -------
        s, o: simulated and observed values without nan
    """
    if np.sum(~np.isnan(s*o)) >= 1:
        data = np.array([s.flatten(), o.flatten()])
        data = np.transpose(data)
        data = data[~np.isnan(data).any(1)]
        s = data[:, 0]
        o = data[:, 1]
    return s, o


def calc_nse_logn(y_true, y_pred):
    """
    Nash Sutcliffe efficiency coefficient on log n streamflow.

    Gives higher weight to low flows.

    Parameters
    ----------
    y_true : np.array
        The true values
    y_pred : np.array
        The predicted values

    Returns
    -------
        nse: Nash Sutcliffe efficient coefficient on log n streamflow
    """
    # remove zeros (should this be handled differently!?)
    y_pred[y_pred == 0] = np.nan
    y_true[y_true == 0] = np.nan
    y_pred, y_true = _filter_nan(y_pred, y_true)
    y_pred = np.log(y_pred)
    y_true = np.log(y_true)
    nse_l = 1 - np.sum((y_pred-y_true)**2)/np.sum((y_true-np.mean(y_true))**2)
    return nse_l


def calc_L(y_true, y_pred, N=5):
    """
    Likelihood.

    Parameters
    ----------
    y_true : np.array
        The true values
    y_pred : np.array
        The predicted values

    Returns
    -------
        L: float
            likelihood
    """
    like = np.exp(-N*np.sum((y_pred-y_true)**2)/np.sum((y_true-np.mean(y_true))**2))
    return like


def calc_ia(y_true, y_pred):
    """
    Index of agreement Willmott (1981, 1982).

    Parameters
    ----------
    y_true : np.array
        The true values
    y_pred : np.array
        The predicted values

    Returns
    -------
        ia: float
            index of agreement
    """
    tel = np.sum((y_true-y_pred)**2)
    nev = np.sum((np.abs(y_pred-np.mean(y_true)) +
                  np.abs(y_true-np.mean(y_true)))**2)
    ia = 1 - tel/nev
    return ia


def calc_acorr(y_true, y_pred):
    """
    Calculate Agreement Coefficient for Image Comparison by Lei Ji and Kevin Gallo.

    Parameters
    ----------
    y_true : np.array
        The true values
    y_pred : np.array
        The predicted values

    Returns
    -------
        acorr: agreement coefficient
    """
    sbar = np.mean(y_pred)
    obar = np.mean(y_true)
    ac = 1 - (np.sum((y_pred-y_true)**2))/np.sum((np.abs(sbar-obar) + np.abs(y_pred-sbar))*(np.abs(sbar-obar) + np.abs(y_true-obar)))
    return ac


def calc_rnp(s, o):
    """
    Calculate non-parametric variant of the Klingt-Gupta efficiency.

    After Pool, S., Vis, M. and Seibert, J.: Evaluating model performance:
    towards a non-parametric variant of the Kling-Gupta efficiency, Hydrol.
    Sci. J., 63(13–14), 1941–1953, doi:10.1080/02626667.2018.1552002, 2018.

    Parameters
    ----------
    y_true : np.array
        The true values
    y_pred : np.array
        The predicted values

    Returns
    -------
        rnp: non-parameteric efficiency
        alpha: difference between normalized flow duration curves
        beta: bias
        r: Spearman rank correlation coefficient
    """
    # calculate mean sim and obs
    s_m = np.mean(s)
    o_m = np.mean(o)
    # calculate the normalized flow duration curves
    s_fdc = np.sort(s / (s_m * len(s)))
    o_fdc = np.sort(o / (o_m * len(o)))
    # calculate the alpha component
    alpha = 1 - 0.5 * np.sum(np.abs(s_fdc - o_fdc))
    # calculate the beta component
    beta = s_m / o_m
    # calculate the r component
    r = spearmanr(s, o)[0]
    # return the non-parametric efficiency value
    rnp = 1 - np.sqrt((alpha - 1)**2 + (beta - 1)**2 + (r - 1)**2)
    return rnp


def calc_fbal(y_true, y_pred):
    """
    Average flow balance (Henriksen et al., 2003).

    Parameters
    ----------
    y_true : np.array
        The true values
    y_pred : np.array
        The predicted values

    Returns
    -------
        fbal: float
            Average flow balance
    """
    fbal = (np.mean(y_true)-np.mean(y_pred))/np.mean(y_true)
    return fbal


def calc_fl(y_true, y_pred):
    """
    Low flow balance (Wood., 1974).

    Parameters
    ----------
    y_true : np.array
        The true values
    y_pred : np.array
        The predicted values

    Returns
    -------
        fl: float
            Low flow balance
    """
    fl = np.sum(((y_true-y_pred)/y_true)*np.mean(y_true)**2)
    return fl


def calc_q05n(y_true, y_pred):
    """
    Calculate normalized 5 % percentile difference Q05obs - Q05sim / Q50obs.

    Parameters
    ----------
    y_true : np.array
        The true values
    y_pred : np.array
        The predicted values

    Returns
    -------
        q05n: float
            Normalized 5 % percentile difference
    """
    q05n = (np.percentile(y_true, 5)-np.percentile(y_pred, 5))/np.median(y_true)
    return q05n


def calc_q95n(y_true, y_pred):
    """
    Calculate normalized 95 % percentile difference Q95obs - Q95sim / Q50obs.

    Parameters
    ----------
    y_true : np.array
        The true values
    y_pred : np.array
        The predicted values

    Returns
    -------
        q95n: float
            Normalized 95 % percentile difference
    """
    q95n = (np.percentile(y_true, 95)-np.percentile(y_pred, 95))/np.median(y_true)
    return q95n


"""
FLOW STAT SIGNATURES
Module to calculate various hydrologic signatures - collection of functions.
For some of those, the spotpy package is being used.
For the recession constant, RECESS from USGS is used.

Raphael Schneider, GEUS Hydro, September 2018, rs@geus.dk
"""


def calc_highFlowEventFreq(y_true, y_pred, thresh=10):
    """
    High flow frequency.

    INPUT
        Q timeseries
        thresh: Q that determines a high flow event
    OUTPUT
        high flow event frequency [a^-1]
    High flow event frequency is the number of annual occurences of flow above
    "thresh" (typical value 3*Qmedian)
    """
    count = 0
    for i in range(1, len(y_pred)):
        if ((y_pred[i] > thresh) & (y_pred[i-1] <= thresh)):
            count += 1
    return (count / (sum(y_pred.notna())/365))
