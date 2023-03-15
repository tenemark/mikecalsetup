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
Computer models of the integrated hydrological cycle at catchment scale are routinely used for water resources management. MIKE SHE is one such tool that simulates the overland flow, infiltration,  evapotranspiration, recharge, surface water and groundwater processes [@Abbott1986]. To ensure the reliability of the model results, the model parameters are often calibrated against observed data. This calibration often takes place in an automatic calibration program, where an integrated tool in MIKE SHE [@Madsen2003] can be applied. Secondary independent automatic calibration program such as PEST [@Doherty2015a;@Doherty2015] or OSTRICH [@Matott2017], are however also popular as they offer additional calibration settings.

The procedure for setting up the calibration in independent programs is often 1) manual writing an input file containing all required parameters observations and calibration settings, 2) manual manipulation of input files to create markers for parameter locations to create so-called template files, 3) creating and recording indicators of the required observations. The first calibration setup is rarely the final and the above-mentioned steps may therefore have to be repeated. This manual process is time-consuming, prone to errors, and with increased complexity in terms of number of parameters and observations, the task may become overwhelming. This manual process makes calibration in independent software inaccessible, while it may also force the modeler to create a simpler calibration than necessary.

Here an alternative approach is presented. mikecalsetup is an open-source python tool that provides an opportunity for automatically calibration setup of MIKE SHE models in PEST and OSTRICH. The python tool writes an input file, template files, a forward model batch script and observation files, all based on a single input; the name of the MIKE SHE model. The setup provided by mikecalsetup is ready-to-run and is easily augmented through several instance variables, to create the desired calibration setup. 
mikecalsetup is similar to the PstFrom class of pyemu [@WHITE2021105022] in that it can setup an automatic calibration of a model in an independent program. However, while the PstFrom is setting up PEST files for MODFLOW [@Harbaugh2017] models, mikecalsetup is setting up PEST or OSTRICH files for MIKE SHE models. Further, the PstFrom class has the option of setting up highly parameterized calibrations e.g., using pilot points, which is not implemented in mikecalsetup.

mikecalsetup is applied in the ongoing project “Integrated water resources assessment of Udaipur District” funded by Danida Fellowship Centre to setup a calibration in OSTRICH of a MIKE SHE model of the Banas-Berach catchment. The tool is also used to support the calibration of the national water resource model of Denmark, the DK-model. Further, the tool has been applied in four Master thesis projects.


# Acknowledgements
This tool was developed as part of the project “Integrated water resources assessment of Udaipur District” funded by Danida Fellowship Centre. Raphael Schneider is thanked for fruitful discussion on the development of the parts of the tool. Elisa Bjerre, Tanja Denager, Andreas-Orfeas Ireiotis-Gkempiaou, and Kathrine Vestergaard Thage, are thanked for applying earlier versions of the tool and finding bugs.


# References
