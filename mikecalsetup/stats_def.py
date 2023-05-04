# -*- coding: utf-8 -*-
"""
Created on Tue Aug 16 13:02:19 2022

@author: wqg436
"""
import numpy as np

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
    alpha = np.std(y_pred)/np.std(y_true)
    beta = np.sum(y_pred)/np.sum(y_true)
    kge = 1 - np.sqrt((cc-1)**2 + (alpha-1)**2 + (beta-1)**2)
    kge = -9 if np.isnan(kge) else kge
    return kge


def calc_flow_variability_error(y_true, y_pred):
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


def calc_bias_term(y_true, y_pred):
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


def calc_fbal(y_true, y_pred):
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
    fbal : float
        flow balance

    """
    fbal = (y_pred.sum() - y_true.sum())/y_true.sum()
    return fbal


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
    me = np.mean(y_pred - y_true, axis=0)
    return me


"""
FLOW STAT SIGNATURES
Module to calculate various hydrologic signatures - collection of functions.
For some of those, the spotpy package is being used.
For the recession constant, RECESS from USGS is used.

Raphael Schneider, GEUS Hydro, September 2018, rs@geus.dk
"""
thresh = 0.1


def calc_highFlowEventFreq(y_pred, thresh):
    """
    High flow grequency.

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


