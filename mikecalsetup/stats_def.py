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
    m1, m2 = np.mean(y_true), np.mean(y_pred)
    r = np.sum((y_true - m1) * (y_pred - m2)) / (np.sqrt(np.sum((y_true - m1) ** 2)) * np.sqrt(np.sum((y_pred - m2) ** 2)))
    beta = m2 / m1
    gamma = (np.std(y_pred) / m2) / (np.std(y_true) / m1)
    kge = 1 - np.sqrt((r - 1) ** 2 + (beta - 1) ** 2 + (gamma - 1) ** 2)
    kge  = -9 if np.isnan(kge) else kge
    return kge


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
