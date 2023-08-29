---
title: 'mikecalsetup: an open-source python tool for automatically creating calibration setups of MIKE SHE models in PEST or OSTRICH'
tags:
  - Python
  - Calibration 
  - MIKESHE
  - OSTRICH
  - PEST

authors:
  - name: Trine Enemark
    orcid: 0000-0002-3881-2739
    affiliation: 1 

affiliations:
  - name: Department of Geosciences and Natural Resource Management, University of Copenhagen, Copenhagen, 1350, Denmark
    index: 1
date: 15 March 2023
bibliography: paper.bib
---

# Summary
Computer models of the integrated hydrological cycle at catchment scale are routinely used for water resources management. MIKE SHE is one such tool that simulates the overland flow, infiltration, evapotranspiration, recharge, surface water and groundwater processes [@Abbott1986]. To ensure the reliability of the model results, the model parameters are often calibrated against observed data. This calibration often takes place in an automatic calibration program, where an integrated tool in MIKE SHE [@Madsen2003] can be applied. Secondary independent automatic calibration programs such as PEST [@Doherty2015a;@Doherty2015] or OSTRICH [@Matott2017], are however also popular as they offer additional calibration settings.

The procedure for setting up the calibration of a MIKE SHE model in an independent program is often 1) manual writing of an input file containing all required parameters, observations, and calibration settings, 2) manual manipulation of input files to create markers for parameter locations to create so-called template files, 3) creating and recording indicators of the required observations. The first calibration setup is rarely the final and the above-mentioned steps may therefore have to be repeated. This manual process is time-consuming, prone to error, and with increased complexity in terms of number of parameters and observations, the task may become overwhelming. This manual process makes calibration of a MIKE SHE model in an independent software inaccessible, while it may also force the modeler to create a simpler calibration than necessary.

Here an alternative approach is presented. mikecalsetup is an open-source python tool that provides an opportunity to create a calibration setup of a MIKE SHE model in PEST and OSTRICH. The python tool writes an input file, template files, a forward model batch script and observation files. The setup provided by mikecalsetup is ready-to-run and is easily augmented through several instance variables, to create the desired calibration setup. 

mikecalsetup is applied in the ongoing project “Integrated water resources assessment of Udaipur District” funded by Danida Fellowship Centre to setup a calibration in OSTRICH of a MIKE SHE model of the Banas-Berach catchment. The tool is also used to support the calibration of the national water resource model of Denmark, the DK-model. Further, the tool has been applied in five Master thesis projects.


# Statement of need
The most popular tool for creating calibration configurations in PEST is through the PstFrom module in pyemu [@WHITE2021105022;@White2016]. PstFrom is designed to be compatible with any model and accepts text files containing numerical arrays and tabular data. While it is possible to leverage some of these functions by converting MIKE SHE's dfs file format into text files, using tools like MIKEIO [@Andersson2023], certain features are limited due to the unsupported nested header file format found in MIKE SHE's primary input files. This is where mikecalsetup can be brought into play. Further, mikecalsetup is the first python tool for generating and manipulating input files of OSTRICH.


# Acknowledgements
This tool was developed as part of the project “Integrated water resources assessment of Udaipur District” funded by Danida Fellowship Centre. Raphael Schneider is thanked for fruitful discussion on the development of the parts of the tool. Asger Hansen Aaes, Elisa Bjerre, Tanja Denager, Andreas-Orfeas Ireiotis-Gkempiaou, and Kathrine Vestergaard Thage, are thanked for applying earlier versions of the tool and finding bugs.


# References
