// Created     : 2020-12-15 14:43:5
// DLL         : C:\Program Files (x86)\DHI\2020\bin\x64\pfs2004.dll
// Version     : 18.1.0.14122

[UzSoilProp]
   [UzSoilPropDocVersion]
      Touched = 0
      Version = 2
   EndSect  // UzSoilPropDocVersion

   [SOILSETUP]
      Touched = 1
      MzSEPfsListItemCount = 10
      NO_SOILS = 10
      [SoilNo_1]
         SOILNAME = 'Sand'
         HYDRCONDCURVETYPE = 2
         RETENTIONCURVETYPE = 1
         COMMENT = ''
         BulkDensity = 1700.0
         IncludeMacropores = 0
         [ReteTabulated]
            Touched = 1
            MzSEPfsListItemCount = 0
            PFfc = 2
            PFw = 4.2
            ThetaEff = 0.385
            NO_ITEM = 0
            Green_Ampt_Suction = -1
         EndSect  // ReteTabulated

         [ReteGenuchten]
            Touched = 1
            PFfc = 2
            PFw = 4.2
            Alpha = 0.035
            M = 0.68652
            N = 3.19
            ThetaR = 0.058
            ThetaS = 0.37
            Green_Ampt_Suction = -0.0495
         EndSect  // ReteGenuchten

         [ReteCamp]
            Touched = 1
            PFfc = 2
            PFw = 4.2
            Lambda = 0.14
            ThetaS = 0.38
            PsiB = 0.14
            Green_Ampt_Suction = -1
         EndSect  // ReteCamp

         [HydrAverjanov]
            Touched = 1
            Ks = 2e-06
            N = 13
            ThetaR = 0.01
            ThetaS = 0.38
         EndSect  // HydrAverjanov

         [HydrTabulated]
            Touched = 1
            MzSEPfsListItemCount = 0
            NO_ITEM = 0
            UserInputAs = 0
         EndSect  // HydrTabulated

         [HydrGenuchten]
            Touched = 1
            Alpha = 0.035
            Ks = 6.5e-05
            L = 0.5
            M = 0.68652
            N = 3.19
         EndSect  // HydrGenuchten

         [HydrCampBurd]
            Touched = 1
            Ks = 2e-06
            Lambda = 0.14
            PsiB = 28.5714
         EndSect  // HydrCampBurd

         [Macropores]
            Touched = 1
            Matrix_MP = 300
            Mp_Matrix = 300
            Porosity = 0.02
            PsiThreshold = -0.15
            SaturatedConductivity = 1e-05
            ConductivityExponent = 3
         EndSect  // Macropores

      EndSect  // SoilNo_1

      [SoilNo_2]
         SOILNAME = 'Loamy Sand'
         HYDRCONDCURVETYPE = 2
         RETENTIONCURVETYPE = 1
         COMMENT = ''
         BulkDensity = 1700.0
         IncludeMacropores = 0
         [ReteTabulated]
            Touched = 1
            MzSEPfsListItemCount = 0
            PFfc = 2
            PFw = 4.2
            ThetaEff = 0.385
            NO_ITEM = 0
            Green_Ampt_Suction = -1
         EndSect  // ReteTabulated

         [ReteGenuchten]
            Touched = 1
            PFfc = 2
            PFw = 4.2
            Alpha = 0.035
            M = 0.58159
            N = 2.39
            ThetaR = 0.074
            ThetaS = __uz_Loamysand_ReteGenuchten_ThetaS__
            Green_Ampt_Suction = -0.0613
         EndSect  // ReteGenuchten

         [ReteCamp]
            Touched = 1
            PFfc = 2
            PFw = 4.2
            Lambda = 0.14
            ThetaS = 0.38
            PsiB = 0.14
            Green_Ampt_Suction = -1
         EndSect  // ReteCamp

         [HydrAverjanov]
            Touched = 1
            Ks = 2e-06
            N = 13
            ThetaR = 0.01
            ThetaS = 0.38
         EndSect  // HydrAverjanov

         [HydrTabulated]
            Touched = 1
            MzSEPfsListItemCount = 0
            NO_ITEM = 0
            UserInputAs = 0
         EndSect  // HydrTabulated

         [HydrGenuchten]
            Touched = 1
            Alpha = 0.035
            Ks = __uz_Loamysand_HydrGenuchten_Ks__
            L = 0.5
            M = 0.58159
            N = 2.39
         EndSect  // HydrGenuchten

         [HydrCampBurd]
            Touched = 1
            Ks = 2e-06
            Lambda = 0.14
            PsiB = 28.5714
         EndSect  // HydrCampBurd

         [Macropores]
            Touched = 1
            Matrix_MP = 300
            Mp_Matrix = 300
            Porosity = 0.02
            PsiThreshold = -0.15
            SaturatedConductivity = 1e-05
            ConductivityExponent = 3
         EndSect  // Macropores

      EndSect  // SoilNo_2

      [SoilNo_3]
         SOILNAME = 'Sandy Loam'
         HYDRCONDCURVETYPE = 2
         RETENTIONCURVETYPE = 1
         COMMENT = ''
         BulkDensity = 1700.0
         IncludeMacropores = 0
         [ReteTabulated]
            Touched = 1
            MzSEPfsListItemCount = 0
            PFfc = 2
            PFw = 4.2
            ThetaEff = 0.385
            NO_ITEM = 0
            Green_Ampt_Suction = -1
         EndSect  // ReteTabulated

         [ReteGenuchten]
            Touched = 1
            PFfc = 2
            PFw = 4.2
            Alpha = 0.021
            M = 0.378882
            N = 1.61
            ThetaR = 0.067
            ThetaS = 0.37
            Green_Ampt_Suction = -0.1101
         EndSect  // ReteGenuchten

         [ReteCamp]
            Touched = 1
            PFfc = 2
            PFw = 4.2
            Lambda = 0.14
            ThetaS = 0.38
            PsiB = 0.14
            Green_Ampt_Suction = -1
         EndSect  // ReteCamp

         [HydrAverjanov]
            Touched = 1
            Ks = 2e-06
            N = 13
            ThetaR = 0.01
            ThetaS = 0.38
         EndSect  // HydrAverjanov

         [HydrTabulated]
            Touched = 1
            MzSEPfsListItemCount = 0
            NO_ITEM = 0
            UserInputAs = 0
         EndSect  // HydrTabulated

         [HydrGenuchten]
            Touched = 1
            Alpha = 0.021
            Ks = 6.1e-06
            L = 0.5
            M = 0.378882
            N = 1.61
         EndSect  // HydrGenuchten

         [HydrCampBurd]
            Touched = 1
            Ks = 2e-06
            Lambda = 0.14
            PsiB = 47.619
         EndSect  // HydrCampBurd

         [Macropores]
            Touched = 1
            Matrix_MP = 300
            Mp_Matrix = 300
            Porosity = 0.02
            PsiThreshold = -0.15
            SaturatedConductivity = 1e-05
            ConductivityExponent = 3
         EndSect  // Macropores

      EndSect  // SoilNo_3

      [SoilNo_4]
         SOILNAME = 'Loam'
         HYDRCONDCURVETYPE = 2
         RETENTIONCURVETYPE = 1
         COMMENT = ''
         BulkDensity = 1700.0
         IncludeMacropores = 0
         [ReteTabulated]
            Touched = 1
            MzSEPfsListItemCount = 0
            PFfc = 2
            PFw = 4.2
            ThetaEff = 0.385
            NO_ITEM = 0
            Green_Ampt_Suction = -1
         EndSect  // ReteTabulated

         [ReteGenuchten]
            Touched = 1
            PFfc = 2
            PFw = 4.2
            Alpha = 0.025
            M = 0.236641
            N = 1.31
            ThetaR = 0.083
            ThetaS = __uz_Loam_ReteGenuchten_ThetaS__
            Green_Ampt_Suction = -0.0889
         EndSect  // ReteGenuchten

         [ReteCamp]
            Touched = 1
            PFfc = 2
            PFw = 4.2
            Lambda = 0.14
            ThetaS = 0.38
            PsiB = 0.14
            Green_Ampt_Suction = -1
         EndSect  // ReteCamp

         [HydrAverjanov]
            Touched = 1
            Ks = 2e-06
            N = 13
            ThetaR = 0.01
            ThetaS = 0.38
         EndSect  // HydrAverjanov

         [HydrTabulated]
            Touched = 1
            MzSEPfsListItemCount = 0
            NO_ITEM = 0
            UserInputAs = 0
         EndSect  // HydrTabulated

         [HydrGenuchten]
            Touched = 1
            Alpha = 0.025
            Ks = __uz_Loam_HydrGenuchten_Ks__
            L = 0.5
            M = 0.236641
            N = 1.31
         EndSect  // HydrGenuchten

         [HydrCampBurd]
            Touched = 1
            Ks = 2e-06
            Lambda = 0.14
            PsiB = 40
         EndSect  // HydrCampBurd

         [Macropores]
            Touched = 1
            Matrix_MP = 300
            Mp_Matrix = 300
            Porosity = 0.02
            PsiThreshold = -0.15
            SaturatedConductivity = 1e-05
            ConductivityExponent = 3
         EndSect  // Macropores

      EndSect  // SoilNo_4

      [SoilNo_5]
         SOILNAME = 'Silt Loam'
         HYDRCONDCURVETYPE = 2
         RETENTIONCURVETYPE = 1
         COMMENT = ''
         BulkDensity = 1700.0
         IncludeMacropores = 0
         [ReteTabulated]
            Touched = 1
            MzSEPfsListItemCount = 0
            PFfc = 2
            PFw = 4.2
            ThetaEff = 0.385
            NO_ITEM = 0
            Green_Ampt_Suction = -1
         EndSect  // ReteTabulated

         [ReteGenuchten]
            Touched = 1
            PFfc = 2
            PFw = 4.2
            Alpha = 0.012
            M = 0.280576
            N = 1.39
            ThetaR = 0.061
            ThetaS = __uz_Siltloam_ReteGenuchten_ThetaS__
            Green_Ampt_Suction = -0.1668
         EndSect  // ReteGenuchten

         [ReteCamp]
            Touched = 1
            PFfc = 2
            PFw = 4.2
            Lambda = 0.14
            ThetaS = 0.38
            PsiB = 0.14
            Green_Ampt_Suction = -1
         EndSect  // ReteCamp

         [HydrAverjanov]
            Touched = 1
            Ks = 2e-06
            N = 13
            ThetaR = 0.01
            ThetaS = 0.38
         EndSect  // HydrAverjanov

         [HydrTabulated]
            Touched = 1
            MzSEPfsListItemCount = 0
            NO_ITEM = 0
            UserInputAs = 0
         EndSect  // HydrTabulated

         [HydrGenuchten]
            Touched = 1
            Alpha = 0.012
            Ks = __uz_Siltloam_HydrGenuchten_Ks__
            L = 0.5
            M = 0.280576
            N = 1.39
         EndSect  // HydrGenuchten

         [HydrCampBurd]
            Touched = 1
            Ks = 2e-06
            Lambda = 0.14
            PsiB = 83.3333
         EndSect  // HydrCampBurd

         [Macropores]
            Touched = 1
            Matrix_MP = 300
            Mp_Matrix = 300
            Porosity = 0.02
            PsiThreshold = -0.15
            SaturatedConductivity = 1e-05
            ConductivityExponent = 3
         EndSect  // Macropores

      EndSect  // SoilNo_5

      [SoilNo_6]
         SOILNAME = 'Sandy Clay Loam'
         HYDRCONDCURVETYPE = 2
         RETENTIONCURVETYPE = 1
         COMMENT = ''
         BulkDensity = 1700.0
         IncludeMacropores = 0
         [ReteTabulated]
            Touched = 1
            MzSEPfsListItemCount = 0
            PFfc = 2
            PFw = 4.2
            ThetaEff = 0.385
            NO_ITEM = 0
            Green_Ampt_Suction = -1
         EndSect  // ReteTabulated

         [ReteGenuchten]
            Touched = 1
            PFfc = 2
            PFw = 4.2
            Alpha = 0.033
            M = 0.328859
            N = 1.49
            ThetaR = 0.086
            ThetaS = 0.4
            Green_Ampt_Suction = -0.2185
         EndSect  // ReteGenuchten

         [ReteCamp]
            Touched = 1
            PFfc = 2
            PFw = 4.2
            Lambda = 0.14
            ThetaS = 0.38
            PsiB = 0.14
            Green_Ampt_Suction = -1
         EndSect  // ReteCamp

         [HydrAverjanov]
            Touched = 1
            Ks = 2e-06
            N = 13
            ThetaR = 0.01
            ThetaS = 0.38
         EndSect  // HydrAverjanov

         [HydrTabulated]
            Touched = 1
            MzSEPfsListItemCount = 0
            NO_ITEM = 0
            UserInputAs = 0
         EndSect  // HydrTabulated

         [HydrGenuchten]
            Touched = 1
            Alpha = 0.033
            Ks = 8.3e-07
            L = 0.5
            M = 0.328859
            N = 1.49
         EndSect  // HydrGenuchten

         [HydrCampBurd]
            Touched = 1
            Ks = 2e-06
            Lambda = 0.14
            PsiB = 30.303
         EndSect  // HydrCampBurd

         [Macropores]
            Touched = 1
            Matrix_MP = 300
            Mp_Matrix = 300
            Porosity = 0.02
            PsiThreshold = -0.15
            SaturatedConductivity = 1e-05
            ConductivityExponent = 3
         EndSect  // Macropores

      EndSect  // SoilNo_6

      [SoilNo_7]
         SOILNAME = 'Clay Loam'
         HYDRCONDCURVETYPE = 2
         RETENTIONCURVETYPE = 1
         COMMENT = ''
         BulkDensity = 1700.0
         IncludeMacropores = 0
         [ReteTabulated]
            Touched = 1
            MzSEPfsListItemCount = 0
            PFfc = 2
            PFw = 4.2
            ThetaEff = 0.385
            NO_ITEM = 0
            Green_Ampt_Suction = -1
         EndSect  // ReteTabulated

         [ReteGenuchten]
            Touched = 1
            PFfc = 2
            PFw = 4.2
            Alpha = 0.03
            M = 0.270073
            N = 1.37
            ThetaR = 0.129
            ThetaS = 0.47
            Green_Ampt_Suction = -0.2088
         EndSect  // ReteGenuchten

         [ReteCamp]
            Touched = 1
            PFfc = 2
            PFw = 4.2
            Lambda = 0.14
            ThetaS = 0.38
            PsiB = 0.14
            Green_Ampt_Suction = -1
         EndSect  // ReteCamp

         [HydrAverjanov]
            Touched = 1
            Ks = 2e-06
            N = 13
            ThetaR = 0.01
            ThetaS = 0.38
         EndSect  // HydrAverjanov

         [HydrTabulated]
            Touched = 1
            MzSEPfsListItemCount = 0
            NO_ITEM = 0
            UserInputAs = 0
         EndSect  // HydrTabulated

         [HydrGenuchten]
            Touched = 1
            Alpha = 0.03
            Ks = 5.6e-07
            L = 0.5
            M = 0.270073
            N = 1.37
         EndSect  // HydrGenuchten

         [HydrCampBurd]
            Touched = 1
            Ks = 2e-06
            Lambda = 0.14
            PsiB = 33.3333
         EndSect  // HydrCampBurd

         [Macropores]
            Touched = 1
            Matrix_MP = 300
            Mp_Matrix = 300
            Porosity = 0.02
            PsiThreshold = -0.15
            SaturatedConductivity = 1e-05
            ConductivityExponent = 3
         EndSect  // Macropores

      EndSect  // SoilNo_7

      [SoilNo_8]
         SOILNAME = 'Silty Clay Loam'
         HYDRCONDCURVETYPE = 2
         RETENTIONCURVETYPE = 1
         COMMENT = ''
         BulkDensity = 1700.0
         IncludeMacropores = 0
         [ReteTabulated]
            Touched = 1
            MzSEPfsListItemCount = 0
            PFfc = 2
            PFw = 4.2
            ThetaEff = 0.385
            NO_ITEM = 0
            Green_Ampt_Suction = -1
         EndSect  // ReteTabulated

         [ReteGenuchten]
            Touched = 1
            PFfc = 2
            PFw = 4.2
            Alpha = 0.027
            M = 0.29078
            N = 1.41
            ThetaR = 0.098
            ThetaS = 0.55
            Green_Ampt_Suction = -0.273
         EndSect  // ReteGenuchten

         [ReteCamp]
            Touched = 1
            PFfc = 2
            PFw = 4.2
            Lambda = 0.14
            ThetaS = 0.38
            PsiB = 0.14
            Green_Ampt_Suction = -1
         EndSect  // ReteCamp

         [HydrAverjanov]
            Touched = 1
            Ks = 2e-06
            N = 13
            ThetaR = 0.01
            ThetaS = 0.38
         EndSect  // HydrAverjanov

         [HydrTabulated]
            Touched = 1
            MzSEPfsListItemCount = 0
            NO_ITEM = 0
            UserInputAs = 0
         EndSect  // HydrTabulated

         [HydrGenuchten]
            Touched = 1
            Alpha = 0.027
            Ks = 5.6e-07
            L = 0.5
            M = 0.29078
            N = 1.41
         EndSect  // HydrGenuchten

         [HydrCampBurd]
            Touched = 1
            Ks = 2e-06
            Lambda = 0.14
            PsiB = 37.037
         EndSect  // HydrCampBurd

         [Macropores]
            Touched = 1
            Matrix_MP = 300
            Mp_Matrix = 300
            Porosity = 0.02
            PsiThreshold = -0.15
            SaturatedConductivity = 1e-05
            ConductivityExponent = 3
         EndSect  // Macropores

      EndSect  // SoilNo_8

      [SoilNo_9]
         SOILNAME = 'Silty Clay'
         HYDRCONDCURVETYPE = 2
         RETENTIONCURVETYPE = 1
         COMMENT = ''
         BulkDensity = 1700.0
         IncludeMacropores = 0
         [ReteTabulated]
            Touched = 1
            MzSEPfsListItemCount = 0
            PFfc = 2
            PFw = 4.2
            ThetaEff = 0.385
            NO_ITEM = 0
            Green_Ampt_Suction = -1
         EndSect  // ReteTabulated

         [ReteGenuchten]
            Touched = 1
            PFfc = 2
            PFw = 4.2
            Alpha = 0.023
            M = 0.280576
            N = 1.39
            ThetaR = 0.163
            ThetaS = 0.47
            Green_Ampt_Suction = -0.2922
         EndSect  // ReteGenuchten

         [ReteCamp]
            Touched = 1
            PFfc = 2
            PFw = 4.2
            Lambda = 0.14
            ThetaS = 0.38
            PsiB = 0.14
            Green_Ampt_Suction = -1
         EndSect  // ReteCamp

         [HydrAverjanov]
            Touched = 1
            Ks = 2e-06
            N = 13
            ThetaR = 0.01
            ThetaS = 0.38
         EndSect  // HydrAverjanov

         [HydrTabulated]
            Touched = 1
            MzSEPfsListItemCount = 0
            NO_ITEM = 0
            UserInputAs = 0
         EndSect  // HydrTabulated

         [HydrGenuchten]
            Touched = 1
            Alpha = 0.023
            Ks = 2.8e-07
            L = 0.5
            M = 0.280576
            N = 1.39
         EndSect  // HydrGenuchten

         [HydrCampBurd]
            Touched = 1
            Ks = 2e-06
            Lambda = 0.14
            PsiB = 43.4783
         EndSect  // HydrCampBurd

         [Macropores]
            Touched = 1
            Matrix_MP = 300
            Mp_Matrix = 300
            Porosity = 0.02
            PsiThreshold = -0.15
            SaturatedConductivity = 1e-05
            ConductivityExponent = 3
         EndSect  // Macropores

      EndSect  // SoilNo_9

      [SoilNo_10]
         SOILNAME = 'Clay'
         HYDRCONDCURVETYPE = 2
         RETENTIONCURVETYPE = 1
         COMMENT = ''
         BulkDensity = 1700.0
         IncludeMacropores = 0
         [ReteTabulated]
            Touched = 1
            MzSEPfsListItemCount = 0
            PFfc = 2
            PFw = 4.2
            ThetaEff = 0.385
            NO_ITEM = 0
            Green_Ampt_Suction = -1
         EndSect  // ReteTabulated

         [ReteGenuchten]
            Touched = 1
            PFfc = 2
            PFw = 4.2
            Alpha = 0.021
            M = 0.166667
            N = 1.2
            ThetaR = 0.102
            ThetaS = 0.51
            Green_Ampt_Suction = -0.3163
         EndSect  // ReteGenuchten

         [ReteCamp]
            Touched = 1
            PFfc = 2
            PFw = 4.2
            Lambda = 0.14
            ThetaS = 0.38
            PsiB = 0.14
            Green_Ampt_Suction = -1
         EndSect  // ReteCamp

         [HydrAverjanov]
            Touched = 1
            Ks = 2e-06
            N = 13
            ThetaR = 0.01
            ThetaS = 0.38
         EndSect  // HydrAverjanov

         [HydrTabulated]
            Touched = 1
            MzSEPfsListItemCount = 0
            NO_ITEM = 0
            UserInputAs = 0
         EndSect  // HydrTabulated

         [HydrGenuchten]
            Touched = 1
            Alpha = 0.021
            Ks = 1.7e-07
            L = 0.5
            M = 0.166667
            N = 1.2
         EndSect  // HydrGenuchten

         [HydrCampBurd]
            Touched = 1
            Ks = 2e-06
            Lambda = 0.14
            PsiB = 47.619
         EndSect  // HydrCampBurd

         [Macropores]
            Touched = 1
            Matrix_MP = 300
            Mp_Matrix = 300
            Porosity = 0.02
            PsiThreshold = -0.15
            SaturatedConductivity = 1e-05
            ConductivityExponent = 3
         EndSect  // Macropores

      EndSect  // SoilNo_10

   EndSect  // SOILSETUP

EndSect  // UzSoilProp

