// Created     : 2021-03-26 11:51:44
// DLL         : C:\Program Files (x86)\DHI\2020\bin\x64\pfs2004.dll
// Version     : 18.1.0.14122

[MIKEHYDRO]
   Version = 30
   LastRibbonPageIndex = 1
   RibbonMinmized = false
   ResultFileCount = 0
   [Introduction]
      Touched = true
   EndSect  // Introduction

   [MH_SimSpec]
      Touched = true
      SimulationType = 1
      ModeOpt = 0
      [MH_SimModules]
         Touched = true
      EndSect  // MH_SimModules

      [MH_SimSpec_Modules_MB]
         Touched = false
         IncludeGroundWater = false
         GlobalRankingAllocation = false
         IncludeWaterQuality = false
         UnlimitedResource = false
         IncludeReservoirSedimentation = false
         ExecuteEngine_RR = false
         ExecuteEngine_MB = true
         Substract_ReservoirArea_And_IrrigationArea_From_CatchmentArea = false
         ExecuteEngine_RR_Sim = true
         ExecuteEngine_MB_Sim = true
         IncludeGroundWater_Sim = true
         IncludeReservoirSedimentation_Sim = true
         GlobalRankingAllocation_Sim = true
         IncludeWaterQuality_Sim = true
         CarryOverDemand = false
      EndSect  // MH_SimSpec_Modules_MB

      [MH_SimSpec_Modules_River]
         Touched = false
         RainfallRunoff_Data = false
         RainfallRunoff_Sim = true
         Hydrodynamic = true
         Hydrodynamic_Sim = true
         IncludeAD_Data = false
         IncludeAD_Sim = true
         IncludeWQ_Data = false
         IncludeWQ_Sim = true
         IncludeAssimilation_Data = false
         IncludeAssimilation_Sim = true
         IncludeST_Data = false
         IncludeST_Sim = true
      EndSect  // MH_SimSpec_Modules_River

      [MH_SimSpec_Description]
         Touched = true
         SimulationTitle = 'Simulation 1'
         SimulationDesc = ''
      EndSect  // MH_SimSpec_Description

      [MH_SimSpec_SimPeriod]
         Touched = true
         StartTime = '2000 01 08 00:00:00'
         EndTime = '2000 07 16 00:00:00'
      EndSect  // MH_SimSpec_SimPeriod

      [MH_SimSpec_TimeStep]
         Touched = true
         Type = 0
         TimeStep = 5.0
         LengthType = 1
         Minimum = 1.0
         Maximum = 30.0
         Unit = 1
         MaximumIncreaseFactor = 2.0
         UseResidBC_BC = true
         ResidBC_BC = 0.01
         ForBC = 0.01
         UseDelQ = false
         DelQ = 1.0
         UseDelQ_Q = true
         DelQ_Q = 0.01
         ForQ = 0.01
         UseDelH = false
         DelH = 0.01
         UseDelH_H = true
         DelH_H = 0.01
         ForH = 0.01
         UseCourantHD = false
         CourantHD = 10.0
         UseCourantAD = true
         CourantAD = 1.0
         TimeStepMultiplierRR = 1
         [TimeStepFile]
            Touched = false
            FILE_NAME = ||
            ITEM_COUNT = 0
            ITEM_NUMBERS = 0
         EndSect  // TimeStepFile

      EndSect  // MH_SimSpec_TimeStep

      [MH_SimSpec_TimeStep_MB]
         Touched = false
         TimeStep_MB = 1.0
         LengthType_MB = 3
         Multiplier_MB = 1
         StochasticAnalysis_MB = false
         UseAnnualUpdating = false
         ReservoirStorageCurveUpdateFrequency = 1
         AnnualUpdatingMonth = 1
         AnnualUpdatingDay = 1
         TimeStep_RR = 1.0
         LengthType_RR = 3
      EndSect  // MH_SimSpec_TimeStep_MB

      [MH_SimSpec_CompControl_River]
         Touched = true
         Delta = 0.75
         Alpha = 1.0
         Theta = 1.0
         Eps = 0.0001
         EnConvSup = false
         FroudeMax = -1.0
         FroudeExp = -1.0
         AltConvSup = false
         Delhs = 0.01
         ZetaMin = 0.1
         MaxIterStruc = 100
         UseQh = false
         Delh = 0.001
         NoIterations = 10
         MaxBankDepth = 10.0
         [GridSpaces]
            Touched = false
            DhiSEPfsListItemCount = 0
            GlobalMaxDx = 10000.0
         EndSect  // GridSpaces

         [WaveApproximation]
            Touched = false
            DhiSEPfsListItemCount = 0
            GlobalWaveApproximation = 1
         EndSect  // WaveApproximation

      EndSect  // MH_SimSpec_CompControl_River

      [MH_SimSpec_CompControl_MB]
         Touched = false
         MaxIteration = 150
         Flow = 1e-05
         ControlFlow = 0.1
         Concentration = 0.0001
      EndSect  // MH_SimSpec_CompControl_MB

   EndSect  // MH_SimSpec

   [MapConfigurationsPfs]
      Touched = true
      [CoordinateSystem]
         Touched = true
         X0 = 407461.1666723809
         X1 = 611123.8333276145
         Y0 = 6160219.219983855
         Y1 = 6323080.780019606
         MapProjection = 'PROJCS["ETRS_1989_UTM_Zone_32N",GEOGCS["GCS_ETRS_1989",DATUM["D_ETRS_1989",SPHEROID["GRS_1980",6378137.0,298.257222101]],PRIMEM["Greenwich",0.0],UNIT["Degree",0.0174532925199433]],PROJECTION["Transverse_Mercator"],PARAMETER["False_Easting",500000.0],PARAMETER["False_Northing",0.0],PARAMETER["Central_Meridian",9.0],PARAMETER["Scale_Factor",0.9996],PARAMETER["Latitude_Of_Origin",0.0],UNIT["Meter",1.0]]'
         FeatureProjection = 'PROJCS["ETRS_1989_UTM_Zone_32N",GEOGCS["GCS_ETRS_1989",DATUM["D_ETRS_1989",SPHEROID["GRS_1980",6378137.0,298.257222101]],PRIMEM["Greenwich",0.0],UNIT["Degree",0.0174532925199433]],PROJECTION["Transverse_Mercator"],PARAMETER["False_Easting",500000.0],PARAMETER["False_Northing",0.0],PARAMETER["Central_Meridian",9.0],PARAMETER["Scale_Factor",0.9996],PARAMETER["Latitude_Of_Origin",0.0],UNIT["Meter",1.0]]'
         DatumShiftType = 0
         DatumShiftParams0 = 0.0
         DatumShiftParams1 = 0.0
         DatumShiftParams2 = 0.0
         DatumShiftParams3 = 0.0
         DatumShiftParams4 = 0.0
         DatumShiftParams5 = 0.0
         DatumShiftParams6 = 0.0
      EndSect  // CoordinateSystem

      [MapProperties]
         Touched = false
         ShowLegend = false
         ShowScalebar = false
         ShowNorthArrow = false
      EndSect  // MapProperties

      [BackgroundMap]
         Touched = true
         MapVisible = true
         MapType = 0
         GoogleMapStyle = 0
         ShapeFileColorRamp = true
      EndSect  // BackgroundMap

      [BackgroundLayers]
         Touched = true
         DhiSEPfsListItemCount = 1
         LayerTypes = 1
         [BackgroundLayer_0]
            Touched = true
            ObjectID = '2f6a25b8-92a0-4026-8ab5-b34f4e8b91c2'
            LayerTitle = 'Background layer 1'
            LayerFile = |.\map.bmp|
            LayerType = 1
            UseCoords = true
            X0 = 484935.0
            Y0 = 6220029.0
            X1 = 552440.0
            Y1 = 6264854.0
            [PolygonSymbology]
               Touched = false
               ShowSymbol = true
               LabelVisible = false
               FontSize = 9
               FontStyle = 0
               FontColor = -16777216
               SymbolField = ''
               SymbolFieldTypeCode = 0
               UseCustomColor = false
               LabelField = ''
               SymbolScope = 0
               SymbolExpression = ''
               SymbologyType = 0
               [SpecifiedSymbols]
                  Count = 0
               EndSect  // SpecifiedSymbols

               [GraduatedColorRamp]
                  Invert = false
                  ColorRamp = '-16777216:0;-1:100'
               EndSect  // GraduatedColorRamp

               PolygonFillColor = 16777215
               PolygonOutlineColor = -16777216
               PolygonTransparency = 0
               PolygonThickness = 1
               PolygonOutlineStyle = 0
            EndSect  // PolygonSymbology

         EndSect  // BackgroundLayer_0

      EndSect  // BackgroundLayers

      [DigitalElevationModel]
         Touched = true
         RasterFormat = 0
         RasterFileName = ||
         AsciiUnitKey = 1000
         DEMMapProjection = 'PROJCS["ETRS_1989_UTM_Zone_32N",GEOGCS["GCS_ETRS_1989",DATUM["D_ETRS_1989",SPHEROID["GRS_1980",6378137.0,298.257222101]],PRIMEM["Greenwich",0.0],UNIT["Degree",0.0174532925199433]],PROJECTION["Transverse_Mercator"],PARAMETER["False_Easting",500000.0],PARAMETER["False_Northing",0.0],PARAMETER["Central_Meridian",9.0],PARAMETER["Scale_Factor",0.9996],PARAMETER["Latitude_Of_Origin",0.0],UNIT["Meter",1.0]]'
         UseForCrossSectionGeneration = false
         UseForRiverTracingCatchmentDelineation = false
         SpatialExtent = 0
         ResampleFactor = 1
         AssumeInternalUndefinedAreasAsLocalDepressions = true
         PreprocessedFileName = ||
         LastDemUpdateDate = '2018 10 01 14:01:45'
         IsPPDDpropertiesDirty = true
         UseBilinearInterpolation = false
         UseHalfCellSize = true
         Spacing = 10.0
         MaxNumOfPoints = 100
         ShowDEM = false
         UseHalfCellSizePlot = true
         SpacingPlot = 10.0
         [DEMSymbologyStylePfs]
            Touched = false
            ShowSymbol = true
            LabelVisible = false
            ColorPaletteOption = 1
            Transparency = 0
            MzChartRasterType = 0
            [MIKEZero_Palette_Definition]
               Palette_Title = 'Palette'
               Palette_Type = 0
               Locked = false
               Topmost_Value = false
               Nice_Value = true
               RGB_Delete_Color = 255, 255, 255
               RGB_Color_Value = 128, 0, 128
               RGB_Color_Value = 117, 0, 138
               RGB_Color_Value = 106, 0, 149
               RGB_Color_Value = 95, 0, 160
               RGB_Color_Value = 85, 0, 171
               RGB_Color_Value = 74, 0, 181
               RGB_Color_Value = 63, 0, 192
               RGB_Color_Value = 52, 0, 202
               RGB_Color_Value = 42, 0, 213
               RGB_Color_Value = 31, 0, 223
               RGB_Color_Value = 21, 0, 234
               RGB_Color_Value = 10, 0, 244
               RGB_Color_Value = 0, 0, 255
               RGB_Color_Value = 0, 14, 247
               RGB_Color_Value = 0, 28, 240
               RGB_Color_Value = 0, 42, 232
               RGB_Color_Value = 0, 56, 225
               RGB_Color_Value = 0, 69, 217
               RGB_Color_Value = 0, 83, 210
               RGB_Color_Value = 0, 97, 202
               RGB_Color_Value = 0, 111, 195
               RGB_Color_Value = 0, 124, 187
               RGB_Color_Value = 0, 138, 180
               RGB_Color_Value = 0, 152, 173
               RGB_Color_Value = 0, 166, 166
               RGB_Color_Value = 0, 173, 152
               RGB_Color_Value = 0, 181, 138
               RGB_Color_Value = 0, 188, 124
               RGB_Color_Value = 0, 196, 110
               RGB_Color_Value = 0, 203, 96
               RGB_Color_Value = 0, 211, 82
               RGB_Color_Value = 0, 218, 68
               RGB_Color_Value = 0, 226, 55
               RGB_Color_Value = 0, 233, 41
               RGB_Color_Value = 0, 240, 27
               RGB_Color_Value = 0, 247, 13
               RGB_Color_Value = 0, 255, 0
               RGB_Color_Value = 21, 255, 0
               RGB_Color_Value = 42, 255, 0
               RGB_Color_Value = 63, 255, 0
               RGB_Color_Value = 85, 255, 0
               RGB_Color_Value = 106, 255, 0
               RGB_Color_Value = 127, 255, 0
               RGB_Color_Value = 148, 255, 0
               RGB_Color_Value = 170, 255, 0
               RGB_Color_Value = 191, 255, 0
               RGB_Color_Value = 212, 255, 0
               RGB_Color_Value = 233, 255, 0
               RGB_Color_Value = 255, 255, 0
               RGB_Color_Value = 255, 233, 0
               RGB_Color_Value = 255, 212, 0
               RGB_Color_Value = 255, 191, 0
               RGB_Color_Value = 255, 170, 0
               RGB_Color_Value = 255, 148, 0
               RGB_Color_Value = 255, 127, 0
               RGB_Color_Value = 255, 106, 0
               RGB_Color_Value = 255, 85, 0
               RGB_Color_Value = 255, 63, 0
               RGB_Color_Value = 255, 42, 0
               RGB_Color_Value = 255, 21, 0
               RGB_Color_Value = 255, 0, 0
            EndSect  // MIKEZero_Palette_Definition

         EndSect  // DEMSymbologyStylePfs

      EndSect  // DigitalElevationModel

      [WorkingArea]
         Touched = true
         IsDefined = true
         X0 = 489160.65
         Y0 = 6220397.15
         X1 = 533623.96
         Y1 = 6262704.93
         [PolygonSymbology]
            Touched = false
            ShowSymbol = true
            LabelVisible = false
            FontSize = 9
            FontStyle = 0
            FontColor = -16777216
            SymbolField = ''
            SymbolFieldTypeCode = 0
            UseCustomColor = false
            LabelField = ''
            SymbolScope = 0
            SymbolExpression = ''
            SymbologyType = 0
            [SpecifiedSymbols]
               Count = 0
            EndSect  // SpecifiedSymbols

            [GraduatedColorRamp]
               Invert = false
               ColorRamp = '-16777216:0;-1:100'
            EndSect  // GraduatedColorRamp

            PolygonFillColor = 16777215
            PolygonOutlineColor = -16777216
            PolygonTransparency = 100
            PolygonThickness = 1
            PolygonOutlineStyle = 0
         EndSect  // PolygonSymbology

      EndSect  // WorkingArea

   EndSect  // MapConfigurationsPfs

   [MH_River_Network]
      Touched = false
      [Branches]
         Touched = true
         DhiSEPfsListItemCount = 6
         [PolylineSymbology]
            Touched = false
            ShowSymbol = true
            LabelVisible = false
            FontSize = 9
            FontStyle = 0
            FontColor = -16777216
            SymbolField = 'BranchType'
            SymbolFieldTypeCode = 9
            UseCustomColor = false
            LabelField = 'Name'
            SymbolScope = 0
            SymbolExpression = ''
            SymbologyType = 3
            [SpecifiedSymbols]
               Count = 3
               [SpecifiedSymbolElem_0]
                  ClassifyType = 3
                  Label = 'Regular branch'
                  Value = 'Regular'
                  IsOthersStyle = false
                  PolylineSymbolColor = -16776961
                  PolylineThickness = 2
                  PolylineType = 0
                  DrawDirectionArrow = true
                  ArrowPosition = 0
               EndSect  // SpecifiedSymbolElem_0

               [SpecifiedSymbolElem_1]
                  ClassifyType = 3
                  Label = 'LinkChannel branch'
                  Value = 'LinkChannel'
                  IsOthersStyle = false
                  PolylineSymbolColor = -5383962
                  PolylineThickness = 2
                  PolylineType = 0
                  DrawDirectionArrow = true
                  ArrowPosition = 0
               EndSect  // SpecifiedSymbolElem_1

               [SpecifiedSymbolElem_2]
                  ClassifyType = 3
                  Label = 'KinematicRouting branch'
                  Value = 'KinematicRouting'
                  IsOthersStyle = false
                  PolylineSymbolColor = -16744448
                  PolylineThickness = 2
                  PolylineType = 0
                  DrawDirectionArrow = true
                  ArrowPosition = 0
               EndSect  // SpecifiedSymbolElem_2

            EndSect  // SpecifiedSymbols

            [GraduatedThicknessRange]
               SizeFrom = 1
               SizeTo = 20
            EndSect  // GraduatedThicknessRange

            [GraduatedColorRamp]
               Invert = false
               ColorRamp = '-16777216:0;-1:100'
            EndSect  // GraduatedColorRamp

            PolylineSymbolColor = -16776961
            PolylineThickness = 2
            PolylineType = 0
            DrawDirectionArrow = true
            ArrowPosition = 0
         EndSect  // PolylineSymbology

         [Branch_0]
            Touched = false
            ObjectID = '867a0dbb-d602-4fc2-8941-5ae36cc4a714'
            Shape = 'LINESTRING(496755.000000002 6243880,496764.999999999 6243915,496785 6243935,496785 6244225,496764.999999999 6244265,496764.999999999 6244305,496835.000000001 6244355,496905 6244365,496945.000000001 6244405,496975.000000002 6244415,497025 6244475,497045.000000001 6244465,497075.000000001 6244495,497045.000000001 6244535,497065.000000001 6244575,497145 6244665,497175.000000001 6244655,497195.000000001 6244675,497185.000000001 6244705,497215 6244745,497215 6244755,497195.000000001 6244765,497195.000000001 6244795,497215 6244825,497185.000000001 6244865,497185.000000001 6244955,497165.000000001 6244975,497155.000000001 6245025,497195.000000001 6245085,497195.000000001 6245135,497215 6245155,497245 6245245,497245 6245295,497275.000000001 6245335,497275.000000001 6245405,497324.999999999 6245475,497455 6245585,497525.000000001 6245615,497555 6245615,497575 6245635,497625.000000001 6245645,497745.000000001 6245715,497815 6245735,497845.000000001 6245765,497925 6245755,497935.000000001 6245775,497965.000000001 6245795,497994.999999999 6245775,498035 6245795,498065.000000001 6245795,498125 6245855,498145 6245855,498195.000000001 6245915,498325.000000002 6245995,498375 6246005,498425.000000001 6245985,498455 6246015,498455 6246035,498545.000000002 6246115,498575 6246125,498625.000000001 6246195,498645.000000001 6246185,498664.999999999 6246205,498725.000000001 6246205,498735.000000001 6246215,498795 6246195,498805 6246205,498795 6246215,498915 6246335,498915 6246375,498965.000000001 6246395,498985.000000002 6246425,498975.000000001 6246455,498995.000000002 6246475,499005 6246465,499025 6246475,499035 6246465,499145 6246565,499135 6246575,499145 6246605,499115 6246635,499125 6246645,499125 6246685,499145 6246715,499115 6246765,499135 6246795,499135 6246815,499165.000000001 6246835,499165.000000001 6246855,499195.000000001 6246895,499195.000000001 6246915,499224.999999999 6246965,499224.999999999 6247005,499255 6247035,499295.000000001 6247045,499425.000000001 6247205,499425.000000001 6247235,499455 6247295,499455 6247375,499465 6247385,499455 6247395,499455 6247435,499444.999999999 6247435,499495 6247495,499515.000000001 6247475,499545.000000002 6247495,499545.000000002 6247535,499525.000000001 6247555,499525.000000001 6247595,499515.000000001 6247605,499545.000000002 6247645,499545.000000002 6247695,499555.000000002 6247705,499555.000000002 6247785,499545.000000002 6247795,499545.000000002 6247865,499535.000000001 6247875,499585 6247925,499585 6247945,499635.000000001 6247975,499605 6247995,499605 6248025,499575 6248065,499575 6248115,499605 6248125,499615.000000001 6248215,499645.000000001 6248255,499635.000000001 6248295,499615.000000001 6248315,499625.000000001 6248325,499625.000000001 6248365,499645.000000001 6248385,499635.000000001 6248405,499645.000000001 6248455,499665.000000002 6248475,499655.000000002 6248485,499655.000000002 6248515,499695 6248535,499715 6248525,499725.000000001 6248535,499725.000000001 6248565,499745.000000001 6248585,499795 6248595,499815 6248615,499815 6248625,499785 6248645,499815 6248695,499835.000000001 6248685,499865.000000001 6248695,499855.000000001 6248715,499815 6248745,499825 6248765,499855.000000001 6248785,499835.000000001 6248815,499845.000000001 6248835,499915 6248865,499915 6248875,499885.000000002 6248895,499894.999999999 6248915,499885.000000002 6248945,499945.000000001 6248985,500015 6248975,500035 6248995,500085.000000001 6249005,500155 6249065,500115.000000002 6249085,500125 6249105,500205.000000001 6249095,500255 6249135,500295.000000001 6249115,500315.000000001 6249135,500325.000000001 6249125,500355 6249135,500395.000000001 6249165,500405.000000001 6249225,500454.999999999 6249255,500475 6249235,500495 6249265,500525.000000001 6249285,500555.000000002 6249335,500555.000000002 6249355,500595 6249375,500575 6249415,500585 6249425,500575 6249445,500555.000000002 6249455,500555.000000002 6249475,500485 6249555,500465 6249605,500465 6249635,500495 6249655,500495 6249695,500515.000000001 6249715,500515.000000001 6249755,500475 6249805,500475 6249855,500485 6249865,500475 6249875,500515.000000001 6249895,500515.000000001 6249905,500485 6249925,500495 6249955,500485 6249975,500505.000000001 6250005,500495 6250035,500505.000000001 6250065,500535.000000001 6250105,500525.000000001 6250125,500564.999999999 6250175,500555.000000002 6250185,500555.000000002 6250245,500564.999999999 6250255,500555.000000002 6250265,500665.000000002 6250365,500665.000000002 6250385,500695 6250425,500695 6250475,500705 6250485,500685 6250505,500665.000000002 6250495,500655.000000001 6250505,500655.000000001 6250535,500615.000000001 6250575,500615.000000001 6250635,500625.000000001 6250645,500665.000000002 6250645,500695 6250625,500715 6250645,500695 6250665,500674.999999999 6250665,500655.000000001 6250705,500655.000000001 6250765,500674.999999999 6250785,500674.999999999 6250925,500625.000000001 6250965,500585 6251005,500585 6251025,500515.000000001 6251085,500515.000000001 6251115,500495 6251135,500495 6251165,500505.000000001 6251175,500535.000000001 6251175,500555.000000002 6251195,500555.000000002 6251215)'
            ShortName = 'E2'
            Name = 'Haderup River'
            TopoID = 'model_cross'
            FlowDirection = 0
            BranchType = 2
            UpStreamConnectionType = 0
            UpStreamConnRiverNodeID = '00000000-0000-0000-0000-000000000000'
            UpStreamStorageID = '00000000-0000-0000-0000-000000000000'
            DownStreamConnectionType = 0
            DownStreamConnRiverNodeID = '49de0fa9-0e9b-4d74-9db3-f14ada7dc124'
            DownStreamStorageID = '00000000-0000-0000-0000-000000000000'
            UserDefinedChainageList = '(0,0)(244,10994)'
            [RiverNodeList]
               Touched = false
               DhiSEPfsListItemCount = 4
               [RiverNode_0]
                  Touched = false
                  ObjectID = '3468e458-acf4-4d15-a90f-9f0e340cbe3d'
                  Shape = 'POINT(498574.935296584 6246124.9784322)'
                  ShortName = 'N1'
                  BranchID = '867a0dbb-d602-4fc2-8941-5ae36cc4a714'
                  Chainage = 3517.464988744131
                  BranchID = '867a0dbb-d602-4fc2-8941-5ae36cc4a714'
                  Chainage = 3517.464988744131
                  RiverNodeType = 0
                  BifurcationNode = false
                  UpstreamBifurcationType = 0
                  MinorBranchID = '00000000-0000-0000-0000-000000000000'
                  HasMinFlowRequirement = false
                  HasFlowLoss = false
                  HasFlowCapacity = false
                  [UpstreamBifurcationTimeSeries]
                     Touched = false
                     FILE_NAME = ||
                     ITEM_COUNT = 0
                     ITEM_NUMBERS = 0
                  EndSect  // UpstreamBifurcationTimeSeries

                  [UpstreamBifurcationTable]
                     Touched = false
                     FILE_NAME = ||
                     ITEM_COUNT = 0
                     ITEM_NUMBERS = 0
                  EndSect  // UpstreamBifurcationTable

                  [MinFlowRequirementTimeSeries]
                     Touched = false
                     FILE_NAME = ||
                     ITEM_COUNT = 0
                     ITEM_NUMBERS = 0
                  EndSect  // MinFlowRequirementTimeSeries

                  [FlowLossDfsSelection]
                     Touched = false
                     FILE_NAME = ||
                     ITEM_COUNT = 0
                     ITEM_NUMBERS = 0
                  EndSect  // FlowLossDfsSelection

                  [FlowCapacityDfsSelection]
                     Touched = false
                     FILE_NAME = ||
                     ITEM_COUNT = 0
                     ITEM_NUMBERS = 0
                  EndSect  // FlowCapacityDfsSelection

               EndSect  // RiverNode_0

               [RiverNode_1]
                  Touched = false
                  ObjectID = 'a842c2a1-c404-4b20-a943-74c3a0a955bc'
                  Shape = 'POINT(499128.080350123 6246784.62052519)'
                  ShortName = 'N10'
                  BranchID = '867a0dbb-d602-4fc2-8941-5ae36cc4a714'
                  Chainage = 4639.0
                  BranchID = '867a0dbb-d602-4fc2-8941-5ae36cc4a714'
                  Chainage = 4639.0
                  RiverNodeType = 0
                  BifurcationNode = false
                  UpstreamBifurcationType = 0
                  MinorBranchID = '00000000-0000-0000-0000-000000000000'
                  HasMinFlowRequirement = false
                  HasFlowLoss = false
                  HasFlowCapacity = false
                  [UpstreamBifurcationTimeSeries]
                     Touched = false
                     FILE_NAME = ||
                     ITEM_COUNT = 0
                     ITEM_NUMBERS = 0
                  EndSect  // UpstreamBifurcationTimeSeries

                  [UpstreamBifurcationTable]
                     Touched = false
                     FILE_NAME = ||
                     ITEM_COUNT = 0
                     ITEM_NUMBERS = 0
                  EndSect  // UpstreamBifurcationTable

                  [MinFlowRequirementTimeSeries]
                     Touched = false
                     FILE_NAME = ||
                     ITEM_COUNT = 0
                     ITEM_NUMBERS = 0
                  EndSect  // MinFlowRequirementTimeSeries

                  [FlowLossDfsSelection]
                     Touched = false
                     FILE_NAME = ||
                     ITEM_COUNT = 0
                     ITEM_NUMBERS = 0
                  EndSect  // FlowLossDfsSelection

                  [FlowCapacityDfsSelection]
                     Touched = false
                     FILE_NAME = ||
                     ITEM_COUNT = 0
                     ITEM_NUMBERS = 0
                  EndSect  // FlowCapacityDfsSelection

               EndSect  // RiverNode_1

               [RiverNode_2]
                  Touched = false
                  ObjectID = '9dc3955b-9844-4048-a631-08738abc3524'
                  Shape = 'POINT(499128.303467072 6246784.95520061)'
                  ShortName = 'N5'
                  BranchID = '867a0dbb-d602-4fc2-8941-5ae36cc4a714'
                  Chainage = 4639.402237599546
                  BranchID = '867a0dbb-d602-4fc2-8941-5ae36cc4a714'
                  Chainage = 4639.402237599546
                  RiverNodeType = 0
                  BifurcationNode = false
                  UpstreamBifurcationType = 0
                  MinorBranchID = '00000000-0000-0000-0000-000000000000'
                  HasMinFlowRequirement = false
                  HasFlowLoss = false
                  HasFlowCapacity = false
                  [UpstreamBifurcationTimeSeries]
                     Touched = false
                     FILE_NAME = ||
                     ITEM_COUNT = 0
                     ITEM_NUMBERS = 0
                  EndSect  // UpstreamBifurcationTimeSeries

                  [UpstreamBifurcationTable]
                     Touched = false
                     FILE_NAME = ||
                     ITEM_COUNT = 0
                     ITEM_NUMBERS = 0
                  EndSect  // UpstreamBifurcationTable

                  [MinFlowRequirementTimeSeries]
                     Touched = false
                     FILE_NAME = ||
                     ITEM_COUNT = 0
                     ITEM_NUMBERS = 0
                  EndSect  // MinFlowRequirementTimeSeries

                  [FlowLossDfsSelection]
                     Touched = false
                     FILE_NAME = ||
                     ITEM_COUNT = 0
                     ITEM_NUMBERS = 0
                  EndSect  // FlowLossDfsSelection

                  [FlowCapacityDfsSelection]
                     Touched = false
                     FILE_NAME = ||
                     ITEM_COUNT = 0
                     ITEM_NUMBERS = 0
                  EndSect  // FlowCapacityDfsSelection

               EndSect  // RiverNode_2

               [RiverNode_3]
                  Touched = false
                  ObjectID = 'f087a393-d1bf-456e-8002-5253297ad99f'
                  Shape = 'POINT(500495 6251157.42834587)'
                  ShortName = 'N19'
                  BranchID = '867a0dbb-d602-4fc2-8941-5ae36cc4a714'
                  Chainage = 10894.0
                  BranchID = '867a0dbb-d602-4fc2-8941-5ae36cc4a714'
                  Chainage = 10894.0
                  RiverNodeType = 4
                  BifurcationNode = false
                  UpstreamBifurcationType = 0
                  MinorBranchID = '00000000-0000-0000-0000-000000000000'
                  HasMinFlowRequirement = false
                  HasFlowLoss = false
                  HasFlowCapacity = false
                  [UpstreamBifurcationTimeSeries]
                     Touched = false
                     FILE_NAME = ||
                     ITEM_COUNT = 0
                     ITEM_NUMBERS = 0
                  EndSect  // UpstreamBifurcationTimeSeries

                  [UpstreamBifurcationTable]
                     Touched = false
                     FILE_NAME = ||
                     ITEM_COUNT = 0
                     ITEM_NUMBERS = 0
                  EndSect  // UpstreamBifurcationTable

                  [MinFlowRequirementTimeSeries]
                     Touched = false
                     FILE_NAME = ||
                     ITEM_COUNT = 0
                     ITEM_NUMBERS = 0
                  EndSect  // MinFlowRequirementTimeSeries

                  [FlowLossDfsSelection]
                     Touched = false
                     FILE_NAME = ||
                     ITEM_COUNT = 0
                     ITEM_NUMBERS = 0
                  EndSect  // FlowLossDfsSelection

                  [FlowCapacityDfsSelection]
                     Touched = false
                     FILE_NAME = ||
                     ITEM_COUNT = 0
                     ITEM_NUMBERS = 0
                  EndSect  // FlowCapacityDfsSelection

               EndSect  // RiverNode_3

            EndSect  // RiverNodeList

            [ReachProperties]
               Touched = false
               Name = 'Haderup River'
               HasFlowLoss = false
               HasFlowCapacity = false
               HasMinFlowRequirement = false
               [FlowLossTimeSeries]
                  Touched = false
                  FILE_NAME = ||
                  ITEM_COUNT = 0
                  ITEM_NUMBERS = 0
               EndSect  // FlowLossTimeSeries

               [FlowCapacityTimeSeries]
                  Touched = false
                  FILE_NAME = ||
                  ITEM_COUNT = 0
                  ITEM_NUMBERS = 0
               EndSect  // FlowCapacityTimeSeries

               [MinFlowRequirementTimeSeries]
                  Touched = false
                  FILE_NAME = ||
                  ITEM_COUNT = 0
                  ITEM_NUMBERS = 0
               EndSect  // MinFlowRequirementTimeSeries

               [HydraulicParameters]
                  Touched = false
                  FlowRoutingMethod = 0
                  DelayK = 0.0
                  ShapeX = 0.0
                  WaterLevelMethod = 0
                  ManningN = 0.0
                  Width = 0.0
                  Slope = 0.0
                  ManningMaxDepth = 0.0
                  HasHeadLoss = false
                  [RatingCurveTable]
                     Touched = false
                     FILE_NAME = ||
                     ITEM_COUNT = 0
                     ITEM_NUMBERS = 0
                  EndSect  // RatingCurveTable

                  [HeadLossTable]
                     Touched = false
                     FILE_NAME = ||
                     ITEM_COUNT = 0
                     ITEM_NUMBERS = 0
                  EndSect  // HeadLossTable

               EndSect  // HydraulicParameters

            EndSect  // ReachProperties

            [LinkChannel]
               Touched = false
               Type = 0
               Datum = 0.0
               USInvert = 0.0
               DSInvert = 0.0
               Branch_XSect = ''
               TopoID_XSect = ''
               Chainage_XSect = 0.0
               DepthWidth = '<CLOB:0>'
               LevelWidth = '<CLOB:0>'
               ResisType = 0
               ResisValue = 20.0
               HLPosIn = 0.5
               HLPosOut = 1.0
               HLPosFO = 1.0
               HLPosAdd = 0.0
               HLNegIn = 0.5
               HLNegOut = 1.0
               HLNegFO = 1.0
               HLNegAdd = 0.0
               AllowRecalc = true
               NoQh = 25
               QH_Relations = '<CLOB:0>'
            EndSect  // LinkChannel

         EndSect  // Branch_0

         [Branch_1]
            Touched = false
            ObjectID = 'cb56540f-1acc-42f4-902e-78a0e398f38f'
            Shape = 'LINESTRING(501650.000000001 6235660,501595 6235725,501485 6235825,501445.000000002 6235835,501415.000000001 6235865,501344.999999999 6235905,501315.000000001 6235905,501275 6235955,501265 6235985,501185.000000001 6236065,501175.000000001 6236055,501095.000000001 6236065,500735.000000001 6236415,500735.000000001 6236545,500215.000000002 6237065,500215.000000002 6237085,500185.000000001 6237125,500185.000000001 6237155,500145 6237215,500155 6237255,500195.000000001 6237285,500185.000000001 6237315,500185.000000001 6237415,500195.000000001 6237435,500175.000000001 6237455,500165 6237585,500135 6237635,500145 6237685,500125 6237705,500135 6237715,500115.000000002 6237735,500115.000000002 6237775,500135 6237795,500145 6237835,500195.000000001 6237875,500255 6237835,500305.000000001 6237825,500375 6237785,500435.000000001 6237775,500465 6237755,500485 6237775,500485 6237805,500454.999999999 6237835,500405.000000001 6237925,500405.000000001 6237975,500435.000000001 6238015,500454.999999999 6238045,500495 6238055,500505.000000001 6238085,500445.000000002 6238155,500425.000000001 6238155,500395.000000001 6238185,500395.000000001 6238225,500355 6238275,500345 6238385,500305.000000001 6238425,500255 6238435,500235 6238455,500235 6238475,500205.000000001 6238505,500205.000000001 6238535,500155 6238585,500175.000000001 6238615,500145 6238655,500155 6238665,500145 6238685,500125 6238715,500105.000000002 6238725,500115.000000002 6238745,500095.000000001 6238765,500105.000000002 6238775,500085.000000001 6238795,500095.000000001 6238805,500065.000000001 6238845,500065.000000001 6238875,500055.000000001 6238885,500075.000000001 6238915,500045 6238955,500055.000000001 6238975,500055.000000001 6239455,500045 6239465,500045 6239525,499965.000000001 6239605,499955.000000001 6239605,499955.000000001 6239545,499925 6239535,499835.000000001 6239615,499825 6239605,499795 6239615,499775.000000002 6239625,499765.000000001 6239645,499745.000000001 6239645,499715 6239665,499725.000000001 6239675,499725.000000001 6239715,499715 6239725,499705 6239715,499685 6239745,499695 6239815,499705 6239815,499715 6239845,499685 6239875,499695 6239885,499665.000000002 6239905,499665.000000002 6239925,499635.000000001 6239955,499645.000000001 6239995,499605 6240045,499605 6240075,499625.000000001 6240095,499615.000000001 6240115,499625.000000001 6240155,499595 6240185,499605 6240205,499575 6240215,499575 6240225,499545.000000002 6240245,499545.000000002 6240275,499535.000000001 6240285,499545.000000002 6240335,499535.000000001 6240335,499525.000000001 6240355,499535.000000001 6240385,499455 6240445,499465 6240455,499465 6240535,499444.999999999 6240555,499465 6240565,499465 6240595,499475 6240605,499465 6240615,499475 6240635,499455 6240655,499455 6240685,499465 6240695,499455 6240705,499485 6240735,499475 6240755,499475 6240815,499465 6240825,499485 6240855,499475 6240865,499485 6240895,499465 6240945,499444.999999999 6240965,499444.999999999 6240995,499435.000000002 6241005,499455 6241105,499435.000000002 6241135,499305.000000001 6241145,499265 6241215,499265 6241235,499245 6241245,499224.999999999 6241285,499165.000000001 6241275,499155 6241295,499095.000000001 6241315,499095.000000001 6241365,499035 6241445,499005 6241505,498905 6241625,498885.000000002 6241665,498825 6241715,498825 6241755,498805 6241785,498805 6241835,498815 6241855,498774.999999999 6241875,498795 6241915,498774.999999999 6241965,498785 6241995,498785 6242085,498765.000000002 6242115,498765.000000002 6242595,498785 6242625,498785 6242675,498795 6242685,498795 6242955,498855.000000001 6243015,498845.000000001 6243045,498855.000000001 6243085,498845.000000001 6243095,498865.000000001 6243115,498875.000000002 6243225,498885.000000002 6243235,498885.000000002 6243315,498905 6243335,498915 6243425,498945.000000001 6243455,498935 6243485,498945.000000001 6243505,498965.000000001 6243525,498985.000000002 6243525,499025 6243565,499095.000000001 6243565,499115 6243545,499155 6243535,499175.000000001 6243555,499285.000000001 6243545,499345 6243585,499375 6243575,499465 6243575,499485 6243605,499505.000000001 6243605,499515.000000001 6243625,499545.000000002 6243625,499565 6243635,499575 6243655,499585 6243645,499605 6243655,499625.000000001 6243685,499615.000000001 6243695,499635.000000001 6243745,499725.000000001 6243765,499745.000000001 6243785,499745.000000001 6243805,499815 6243855,499825 6243875,499815 6243895,499855.000000001 6243935,499845.000000001 6243945,499865.000000001 6243965,499835.000000001 6244015,499845.000000001 6244075,499875.000000001 6244095,499855.000000001 6244125,499894.999999999 6244155,499945.000000001 6244155,500004.999999999 6244175,500065.000000001 6244235,500085.000000001 6244225,500095.000000001 6244235,500115.000000002 6244225,500125 6244235,500155 6244215,500175.000000001 6244245,500215.000000002 6244275,500215.000000002 6244285,500195.000000001 6244285,500185.000000001 6244305,500195.000000001 6244335,500225.000000002 6244355,500255 6244395,500225.000000002 6244455,500255 6244475,500275 6244465,500265 6244495,500275 6244505,500275 6244545,500225.000000002 6244595,500255 6244605,500255 6244625,500235 6244645,500205.000000001 6244645,500195.000000001 6244665,500205.000000001 6244675,500195.000000001 6244685,500215.000000002 6244715,500195.000000001 6244745,500205.000000001 6244755,500245 6244745,500255 6244755,500245 6244785,500215.000000002 6244795,500185.000000001 6244775,500185.000000001 6244805,500165 6244815,500085.000000001 6244905,500065.000000001 6244905,500045 6244925,500055.000000001 6244955,500045 6244965,500004.999999999 6244965,499955.000000001 6245005,499965.000000001 6245025,499955.000000001 6245035,499925 6245045,499915 6245035,499905 6245045,499905 6245065,499885.000000002 6245085,499915 6245125,499905 6245145,499935 6245165,499925 6245205,499905 6245215,499894.999999999 6245205,499865.000000001 6245205,499835.000000001 6245235,499805 6245245,499805 6245275,499785 6245305,499785 6245355,499805 6245405,499785 6245425,499765.000000001 6245415,499725.000000001 6245425,499715 6245415,499695 6245435,499685 6245465,499695 6245475,499655.000000002 6245515,499665.000000002 6245575,499625.000000001 6245595,499635.000000001 6245605,499625.000000001 6245645,499605 6245665,499595 6245655,499575 6245665,499575 6245695,499555.000000002 6245735,499565 6245745,499605 6245745,499625.000000001 6245785,499575 6245835,499575 6245865,499555.000000002 6245885,499555.000000002 6245925,499455 6246025,499455 6246065,499425.000000001 6246075,499395.000000001 6246105,499395.000000001 6246115,499455 6246105,499475 6246135,499435.000000002 6246175,499415.000000001 6246165,499405.000000001 6246185,499265 6246315,499265 6246345,499255 6246355,499265 6246375,499224.999999999 6246415,499224.999999999 6246445,499245 6246455,499224.999999999 6246495,499235 6246555,499195.000000001 6246655,499165.000000001 6246675,499185.000000001 6246685,499185.000000001 6246705,499165.000000001 6246725,499145 6246715)'
            ShortName = 'E3'
            Name = 'Grindeskov Creek'
            TopoID = 'model_cross'
            FlowDirection = 0
            BranchType = 2
            UpStreamConnectionType = 0
            UpStreamConnRiverNodeID = '00000000-0000-0000-0000-000000000000'
            UpStreamStorageID = '00000000-0000-0000-0000-000000000000'
            DownStreamConnectionType = 0
            DownStreamConnRiverNodeID = 'a842c2a1-c404-4b20-a943-74c3a0a955bc'
            DownStreamStorageID = '00000000-0000-0000-0000-000000000000'
            UserDefinedChainageList = '(0,0)(342,16290)'
            [RiverNodeList]
               Touched = false
               DhiSEPfsListItemCount = 1
               [RiverNode_0]
                  Touched = false
                  ObjectID = '87ac4d61-0ff0-4fd2-b8bf-69719743f372'
                  Shape = 'POINT(499170.82032455 6246671.11978363)'
                  ShortName = 'N20'
                  BranchID = 'cb56540f-1acc-42f4-902e-78a0e398f38f'
                  Chainage = 16190.0
                  BranchID = 'cb56540f-1acc-42f4-902e-78a0e398f38f'
                  Chainage = 16190.0
                  RiverNodeType = 4
                  BifurcationNode = false
                  UpstreamBifurcationType = 0
                  MinorBranchID = '00000000-0000-0000-0000-000000000000'
                  HasMinFlowRequirement = false
                  HasFlowLoss = false
                  HasFlowCapacity = false
                  [UpstreamBifurcationTimeSeries]
                     Touched = false
                     FILE_NAME = ||
                     ITEM_COUNT = 0
                     ITEM_NUMBERS = 0
                  EndSect  // UpstreamBifurcationTimeSeries

                  [UpstreamBifurcationTable]
                     Touched = false
                     FILE_NAME = ||
                     ITEM_COUNT = 0
                     ITEM_NUMBERS = 0
                  EndSect  // UpstreamBifurcationTable

                  [MinFlowRequirementTimeSeries]
                     Touched = false
                     FILE_NAME = ||
                     ITEM_COUNT = 0
                     ITEM_NUMBERS = 0
                  EndSect  // MinFlowRequirementTimeSeries

                  [FlowLossDfsSelection]
                     Touched = false
                     FILE_NAME = ||
                     ITEM_COUNT = 0
                     ITEM_NUMBERS = 0
                  EndSect  // FlowLossDfsSelection

                  [FlowCapacityDfsSelection]
                     Touched = false
                     FILE_NAME = ||
                     ITEM_COUNT = 0
                     ITEM_NUMBERS = 0
                  EndSect  // FlowCapacityDfsSelection

               EndSect  // RiverNode_0

            EndSect  // RiverNodeList

            [ReachProperties]
               Touched = false
               Name = 'Grindeskov Creek'
               HasFlowLoss = false
               HasFlowCapacity = false
               HasMinFlowRequirement = false
               [FlowLossTimeSeries]
                  Touched = false
                  FILE_NAME = ||
                  ITEM_COUNT = 0
                  ITEM_NUMBERS = 0
               EndSect  // FlowLossTimeSeries

               [FlowCapacityTimeSeries]
                  Touched = false
                  FILE_NAME = ||
                  ITEM_COUNT = 0
                  ITEM_NUMBERS = 0
               EndSect  // FlowCapacityTimeSeries

               [MinFlowRequirementTimeSeries]
                  Touched = false
                  FILE_NAME = ||
                  ITEM_COUNT = 0
                  ITEM_NUMBERS = 0
               EndSect  // MinFlowRequirementTimeSeries

               [HydraulicParameters]
                  Touched = false
                  FlowRoutingMethod = 0
                  DelayK = 0.0
                  ShapeX = 0.0
                  WaterLevelMethod = 0
                  ManningN = 0.0
                  Width = 0.0
                  Slope = 0.0
                  ManningMaxDepth = 0.0
                  HasHeadLoss = false
                  [RatingCurveTable]
                     Touched = false
                     FILE_NAME = ||
                     ITEM_COUNT = 0
                     ITEM_NUMBERS = 0
                  EndSect  // RatingCurveTable

                  [HeadLossTable]
                     Touched = false
                     FILE_NAME = ||
                     ITEM_COUNT = 0
                     ITEM_NUMBERS = 0
                  EndSect  // HeadLossTable

               EndSect  // HydraulicParameters

            EndSect  // ReachProperties

            [LinkChannel]
               Touched = false
               Type = 0
               Datum = 0.0
               USInvert = 0.0
               DSInvert = 0.0
               Branch_XSect = ''
               TopoID_XSect = ''
               Chainage_XSect = 0.0
               DepthWidth = '<CLOB:0>'
               LevelWidth = '<CLOB:0>'
               ResisType = 0
               ResisValue = 20.0
               HLPosIn = 0.5
               HLPosOut = 1.0
               HLPosFO = 1.0
               HLPosAdd = 0.0
               HLNegIn = 0.5
               HLNegOut = 1.0
               HLNegFO = 1.0
               HLNegAdd = 0.0
               AllowRecalc = true
               NoQh = 25
               QH_Relations = '<CLOB:0>'
            EndSect  // LinkChannel

         EndSect  // Branch_1

         [Branch_2]
            Touched = false
            ObjectID = 'b0e3a41d-a21e-4335-a15c-5219eaa08adb'
            Shape = 'LINESTRING(521830 6231400,521745 6231495,521695 6231535,521675 6231535,521645 6231555,521655 6231685,521635 6231705,521635 6231755,521595 6231785,521565 6231785,521485 6231885,521465 6231885,521425 6231915,521375 6231915,521335 6231955,521245 6231955,521195 6231905,521145 6231925,521115 6231895,520985 6231895,520955 6231865,520875 6231865,520835 6231905,520835 6231945,520875 6231995,520865 6232005,520895 6232015,520885 6232045,520895 6232065,520865 6232105,520865 6232135,520835 6232195,520835 6232235,520805 6232255,520795 6232365,520715 6232455,520685 6232515,520645 6232545,520605 6232595,520575 6232685,520525 6232735,520495 6232795,520455 6232825,520425 6232915,520425 6233005,520355 6233075,520295 6233085,520235 6233155,520235 6233205,520215 6233245,520215 6233275,520175 6233325,520165 6233355,520175 6233455,520205 6233505,520205 6233555,519905 6233855,519905 6233905,519885 6233915,519895 6233965,519875 6233985,519885 6233995,519865 6234035,519885 6234075,519885 6234125,519875 6234135,519855 6234125,519825 6234155,519775 6234155,519745 6234195,519705 6234195,519695 6234185,519615 6234195,519575 6234165,519515 6234155,519505 6234165,519455 6234165,519435 6234185,519425 6234175,519405 6234175,519375 6234195,519355 6234185,519345 6234205,519305 6234205,519285 6234185,519265 6234195,519225 6234185,519175 6234225,519145 6234235,519115 6234225,519075 6234265,519075 6234295,519095 6234315,519075 6234355,519085 6234365,519065 6234375,519075 6234385,519055 6234395,519035 6234425,518975 6234445,518995 6234465,518965 6234495,518965 6234545,518955 6234555,518965 6234585,518935 6234625,518905 6234635,518875 6234665,518815 6234665,518775 6234645,518765 6234625,518735 6234615,518585 6234615,518565 6234635,518455 6234635,518445 6234625,518255 6234635,518215 6234675,518205 6234665,518195 6234675,518155 6234665,518135 6234695,518105 6234715,518075 6234715,518065 6234705,518035 6234715,517995 6234705,517975 6234715,517915 6234785,517905 6234775,517825 6234835,517805 6234835,517795 6234865,517745 6234915,517705 6234925,517625 6234975,517535 6234995,517475 6234955,517425 6234955,517415 6234945,517405 6234955,517395 6234945,517345 6234955,517315 6234945,517285 6234965,517205 6234985,517095 6235055,517045 6235045,517025 6235075,517025 6235115,517015 6235125,517025 6235185,516975 6235275,516965 6235345,516815 6235515,516635 6235655,516615 6235655,516555 6235705,516495 6235725,516415 6235815,516405 6235805,516385 6235815,516365 6235845,516345 6235845,516325 6235885,516285 6235905,516235 6235905,516205 6235935,516175 6235945,516165 6235975,516145 6235995,516125 6235995,515995 6236115,515885 6236235,515865 6236225,515845 6236235,515845 6236265,515805 6236315,515805 6236345,515795 6236355,515745 6236355,515735 6236345,515685 6236355,515675 6236365,515685 6236405,515655 6236425,515625 6236465,515615 6236455,515605 6236475,515545 6236495,515515 6236535,515475 6236535,515445 6236575,515425 6236585,515395 6236575,515385 6236595,515415 6236615,515425 6236635,515395 6236655,515365 6236655,515305 6236755,515255 6236785,515155 6236785,515115 6236835,515085 6236835,515045 6236875,515015 6236885,515005 6236915,514875 6237035,514845 6237045,514815 6237085,514795 6237065,514755 6237065,514715 6237125,514665 6237165,514615 6237225,514595 6237285,514545 6237345,514495 6237385,514465 6237385,514375 6237475,514345 6237465,514345 6237475,514315 6237475,514285 6237505,514275 6237495,514225 6237495,514195 6237535,514155 6237545,514135 6237565,514095 6237565,514075 6237545,513985 6237615,513885 6237615,513835 6237655,513825 6237645,513815 6237655,513795 6237645,513695 6237645,513665 6237665,513605 6237675,513565 6237715,513575 6237725,513575 6237765,513545 6237785,513555 6237795,513545 6237815,513445 6237825,513385 6237865,513355 6237865,513325 6237895,513295 6237895,513295 6237915,513265 6237915,513255 6237935,513195 6237925,513165 6237955,513135 6237945,513105 6237955,513075 6237985,512995 6237965,512975 6237935,512955 6237935,512905 6237965,512855 6237965,512825 6237995,512785 6237995,512715 6237965,512685 6237965,512595 6237995,512555 6237995,512525 6238005,512475 6238055,512445 6238055,512425 6238025,512395 6238025,512355 6238045,512325 6238035,512315 6238065,512225 6238145,512215 6238135,512205 6238145,512195 6238135,512115 6238135,512105 6238125,512075 6238135,511995 6238205,511935 6238195,511905 6238235,511875 6238225,511855 6238245,511855 6238275,511815 6238275,511805 6238265,511785 6238285,511755 6238275,511715 6238325,511695 6238325,511665 6238355,511595 6238285,511545 6238315,511525 6238295,511505 6238305,511475 6238265,511455 6238275,511395 6238275)'
            ShortName = 'E5'
            Name = 'Haller River'
            TopoID = 'model_cross'
            FlowDirection = 0
            BranchType = 2
            UpStreamConnectionType = 0
            UpStreamConnRiverNodeID = '00000000-0000-0000-0000-000000000000'
            UpStreamStorageID = '00000000-0000-0000-0000-000000000000'
            DownStreamConnectionType = 0
            DownStreamConnRiverNodeID = '58f7a47d-0a0b-46d5-abae-31e484aa830b'
            DownStreamStorageID = '00000000-0000-0000-0000-000000000000'
            UserDefinedChainageList = '(0,0)(305,15473)'
            [RiverNodeList]
               Touched = false
               DhiSEPfsListItemCount = 1
               [RiverNode_0]
                  Touched = false
                  ObjectID = '1c0505bd-9ac5-43ce-986e-4e2c0e7598e3'
                  Shape = 'POINT(511485.585373866 6238279.11383182)'
                  ShortName = 'N21'
                  BranchID = 'b0e3a41d-a21e-4335-a15c-5219eaa08adb'
                  Chainage = 15373.0
                  BranchID = 'b0e3a41d-a21e-4335-a15c-5219eaa08adb'
                  Chainage = 15373.0
                  RiverNodeType = 4
                  BifurcationNode = false
                  UpstreamBifurcationType = 0
                  MinorBranchID = '00000000-0000-0000-0000-000000000000'
                  HasMinFlowRequirement = false
                  HasFlowLoss = false
                  HasFlowCapacity = false
                  [UpstreamBifurcationTimeSeries]
                     Touched = false
                     FILE_NAME = ||
                     ITEM_COUNT = 0
                     ITEM_NUMBERS = 0
                  EndSect  // UpstreamBifurcationTimeSeries

                  [UpstreamBifurcationTable]
                     Touched = false
                     FILE_NAME = ||
                     ITEM_COUNT = 0
                     ITEM_NUMBERS = 0
                  EndSect  // UpstreamBifurcationTable

                  [MinFlowRequirementTimeSeries]
                     Touched = false
                     FILE_NAME = ||
                     ITEM_COUNT = 0
                     ITEM_NUMBERS = 0
                  EndSect  // MinFlowRequirementTimeSeries

                  [FlowLossDfsSelection]
                     Touched = false
                     FILE_NAME = ||
                     ITEM_COUNT = 0
                     ITEM_NUMBERS = 0
                  EndSect  // FlowLossDfsSelection

                  [FlowCapacityDfsSelection]
                     Touched = false
                     FILE_NAME = ||
                     ITEM_COUNT = 0
                     ITEM_NUMBERS = 0
                  EndSect  // FlowCapacityDfsSelection

               EndSect  // RiverNode_0

            EndSect  // RiverNodeList

            [ReachProperties]
               Touched = false
               Name = 'Haller River'
               HasFlowLoss = false
               HasFlowCapacity = false
               HasMinFlowRequirement = false
               [FlowLossTimeSeries]
                  Touched = false
                  FILE_NAME = ||
                  ITEM_COUNT = 0
                  ITEM_NUMBERS = 0
               EndSect  // FlowLossTimeSeries

               [FlowCapacityTimeSeries]
                  Touched = false
                  FILE_NAME = ||
                  ITEM_COUNT = 0
                  ITEM_NUMBERS = 0
               EndSect  // FlowCapacityTimeSeries

               [MinFlowRequirementTimeSeries]
                  Touched = false
                  FILE_NAME = ||
                  ITEM_COUNT = 0
                  ITEM_NUMBERS = 0
               EndSect  // MinFlowRequirementTimeSeries

               [HydraulicParameters]
                  Touched = false
                  FlowRoutingMethod = 0
                  DelayK = 0.0
                  ShapeX = 0.0
                  WaterLevelMethod = 0
                  ManningN = 0.0
                  Width = 0.0
                  Slope = 0.0
                  ManningMaxDepth = 0.0
                  HasHeadLoss = false
                  [RatingCurveTable]
                     Touched = false
                     FILE_NAME = ||
                     ITEM_COUNT = 0
                     ITEM_NUMBERS = 0
                  EndSect  // RatingCurveTable

                  [HeadLossTable]
                     Touched = false
                     FILE_NAME = ||
                     ITEM_COUNT = 0
                     ITEM_NUMBERS = 0
                  EndSect  // HeadLossTable

               EndSect  // HydraulicParameters

            EndSect  // ReachProperties

            [LinkChannel]
               Touched = false
               Type = 0
               Datum = 0.0
               USInvert = 0.0
               DSInvert = 0.0
               Branch_XSect = ''
               TopoID_XSect = ''
               Chainage_XSect = 0.0
               DepthWidth = '<CLOB:0>'
               LevelWidth = '<CLOB:0>'
               ResisType = 0
               ResisValue = 20.0
               HLPosIn = 0.5
               HLPosOut = 1.0
               HLPosFO = 1.0
               HLPosAdd = 0.0
               HLNegIn = 0.5
               HLNegOut = 1.0
               HLNegFO = 1.0
               HLNegAdd = 0.0
               AllowRecalc = true
               NoQh = 25
               QH_Relations = '<CLOB:0>'
            EndSect  // LinkChannel

         EndSect  // Branch_2

         [Branch_3]
            Touched = false
            ObjectID = 'f19ceb0e-b667-481d-a194-b153794b657f'
            Shape = 'LINESTRING(516655 6223300,516655 6223335,516645 6223345,516645 6223395,516655 6223405,516635 6223415,516635 6223465,516615 6223485,516625 6223495,516615 6223505,516625 6223535,516605 6223565,516605 6223595,516585 6223615,516585 6223655,516565 6223685,516535 6223685,516495 6223705,516505 6223715,516495 6223725,516495 6223765,516465 6223815,516465 6223865,516485 6223905,516485 6223945,516535 6224015,516515 6224045,516515 6224115,516475 6224145,516475 6224175,516445 6224185,516455 6224205,516415 6224235,516405 6224255,516415 6224285,516395 6224305,516365 6224385,516335 6224415,516345 6224465,516305 6224535,516315 6224545,516295 6224565,516295 6224585,516275 6224595,516305 6224615,516305 6224625,516275 6224645,516275 6224665,516205 6224705,516205 6224735,516215 6224745,516185 6224755,516135 6224805,516075 6224875,516045 6224955,516005 6224985,516015 6225015,515995 6225075,515995 6225115,515965 6225135,515965 6225155,515935 6225175,515935 6225245,515925 6225255,515945 6225295,515885 6225365,515875 6225395,515895 6225425,515845 6225495,515855 6225535,515835 6225565,515845 6225595,515835 6225605,515835 6225665,515825 6225675,515825 6225745,515795 6225785,515805 6225835,515795 6225845,515775 6225835,515765 6225865,515735 6225885,515745 6225965,515765 6225985,515755 6225995,515715 6225975,515705 6225985,515715 6225995,515705 6226005,515735 6226035,515705 6226065,515705 6226115,515685 6226135,515695 6226145,515685 6226235,515725 6226255,515745 6226285,515805 6226335,515835 6226315,515865 6226315,515885 6226335,515905 6226315,515925 6226315,515955 6226335,515985 6226315,516035 6226335,516105 6226305,516125 6226325,516145 6226325,516155 6226345,516195 6226375,516235 6226385,516275 6226365,516285 6226385,516265 6226425,516285 6226445,516315 6226445,516325 6226455,516355 6226445,516375 6226475,516385 6226465,516455 6226465,516475 6226505,516515 6226515,516535 6226545,516545 6226535,516575 6226565,516595 6226565,516595 6226595,516645 6226575,516655 6226585,516665 6226635,516685 6226665,516655 6226705,516685 6226775,516665 6226785,516645 6226765,516625 6226795,516625 6226835,516685 6226905,516675 6226955,516695 6226985,516685 6226995,516675 6226985,516645 6227015,516575 6227125,516575 6227195,516565 6227215,516525 6227245,516545 6227305,516535 6227325,516585 6227385,516535 6227405,516505 6227435,516495 6227495,516475 6227505)'
            ShortName = 'E7'
            Name = 'Bording River'
            TopoID = 'model_cross'
            FlowDirection = 0
            BranchType = 2
            UpStreamConnectionType = 0
            UpStreamConnRiverNodeID = '00000000-0000-0000-0000-000000000000'
            UpStreamStorageID = '00000000-0000-0000-0000-000000000000'
            DownStreamConnectionType = 0
            DownStreamConnRiverNodeID = '4760a067-de59-4e73-ba11-359fbd93622f'
            DownStreamStorageID = '00000000-0000-0000-0000-000000000000'
            UserDefinedChainageList = '(0,0)(155,6196)'
            [RiverNodeList]
               Touched = false
               DhiSEPfsListItemCount = 1
               [RiverNode_0]
                  Touched = false
                  ObjectID = '843a0d8f-8425-4773-8e61-83f1b1209f7d'
                  Shape = 'POINT(516516.884690049 6227423.11530995)'
                  ShortName = 'N22'
                  BranchID = 'f19ceb0e-b667-481d-a194-b153794b657f'
                  Chainage = 6096.0
                  BranchID = 'f19ceb0e-b667-481d-a194-b153794b657f'
                  Chainage = 6096.0
                  RiverNodeType = 4
                  BifurcationNode = false
                  UpstreamBifurcationType = 0
                  MinorBranchID = '00000000-0000-0000-0000-000000000000'
                  HasMinFlowRequirement = false
                  HasFlowLoss = false
                  HasFlowCapacity = false
                  [UpstreamBifurcationTimeSeries]
                     Touched = false
                     FILE_NAME = ||
                     ITEM_COUNT = 0
                     ITEM_NUMBERS = 0
                  EndSect  // UpstreamBifurcationTimeSeries

                  [UpstreamBifurcationTable]
                     Touched = false
                     FILE_NAME = ||
                     ITEM_COUNT = 0
                     ITEM_NUMBERS = 0
                  EndSect  // UpstreamBifurcationTable

                  [MinFlowRequirementTimeSeries]
                     Touched = false
                     FILE_NAME = ||
                     ITEM_COUNT = 0
                     ITEM_NUMBERS = 0
                  EndSect  // MinFlowRequirementTimeSeries

                  [FlowLossDfsSelection]
                     Touched = false
                     FILE_NAME = ||
                     ITEM_COUNT = 0
                     ITEM_NUMBERS = 0
                  EndSect  // FlowLossDfsSelection

                  [FlowCapacityDfsSelection]
                     Touched = false
                     FILE_NAME = ||
                     ITEM_COUNT = 0
                     ITEM_NUMBERS = 0
                  EndSect  // FlowCapacityDfsSelection

               EndSect  // RiverNode_0

            EndSect  // RiverNodeList

            [ReachProperties]
               Touched = false
               Name = 'Bording River'
               HasFlowLoss = false
               HasFlowCapacity = false
               HasMinFlowRequirement = false
               [FlowLossTimeSeries]
                  Touched = false
                  FILE_NAME = ||
                  ITEM_COUNT = 0
                  ITEM_NUMBERS = 0
               EndSect  // FlowLossTimeSeries

               [FlowCapacityTimeSeries]
                  Touched = false
                  FILE_NAME = ||
                  ITEM_COUNT = 0
                  ITEM_NUMBERS = 0
               EndSect  // FlowCapacityTimeSeries

               [MinFlowRequirementTimeSeries]
                  Touched = false
                  FILE_NAME = ||
                  ITEM_COUNT = 0
                  ITEM_NUMBERS = 0
               EndSect  // MinFlowRequirementTimeSeries

               [HydraulicParameters]
                  Touched = false
                  FlowRoutingMethod = 0
                  DelayK = 0.0
                  ShapeX = 0.0
                  WaterLevelMethod = 0
                  ManningN = 0.0
                  Width = 0.0
                  Slope = 0.0
                  ManningMaxDepth = 0.0
                  HasHeadLoss = false
                  [RatingCurveTable]
                     Touched = false
                     FILE_NAME = ||
                     ITEM_COUNT = 0
                     ITEM_NUMBERS = 0
                  EndSect  // RatingCurveTable

                  [HeadLossTable]
                     Touched = false
                     FILE_NAME = ||
                     ITEM_COUNT = 0
                     ITEM_NUMBERS = 0
                  EndSect  // HeadLossTable

               EndSect  // HydraulicParameters

            EndSect  // ReachProperties

            [LinkChannel]
               Touched = false
               Type = 0
               Datum = 0.0
               USInvert = 0.0
               DSInvert = 0.0
               Branch_XSect = ''
               TopoID_XSect = ''
               Chainage_XSect = 0.0
               DepthWidth = '<CLOB:0>'
               LevelWidth = '<CLOB:0>'
               ResisType = 0
               ResisValue = 20.0
               HLPosIn = 0.5
               HLPosOut = 1.0
               HLPosFO = 1.0
               HLPosAdd = 0.0
               HLNegIn = 0.5
               HLNegOut = 1.0
               HLNegFO = 1.0
               HLNegAdd = 0.0
               AllowRecalc = true
               NoQh = 25
               QH_Relations = '<CLOB:0>'
            EndSect  // LinkChannel

         EndSect  // Branch_3

         [Branch_4]
            Touched = false
            ObjectID = '364a1eaa-079e-4bfe-bdc3-34289f78a4a8'
            Shape = 'LINESTRING(521175 6223720,521185.000000001 6223755,521185.000000001 6223915,521244.999999999 6223975,521244.999999999 6224025,521345.000000002 6224195,521335.000000001 6224215,521335.000000001 6224295,521465.000000002 6224435,521495 6224445,521495 6224465,521545.000000001 6224535,521525.000000001 6224595,521505 6224605,521515 6224615,521485 6224655,521455.000000002 6224675,521435.000000001 6224725,521425.000000001 6224765,521455.000000002 6224805,521415.000000001 6224845,521385 6224845,521335.000000001 6224885,521075.000000001 6225135,521055 6225135,520605 6225585,520585 6225575,520555.000000001 6225605,520465 6225755,520385 6225755,520215.000000001 6225925,520195.000000001 6225925,520195.000000001 6225935,520175 6225945,520145 6225945,520105.000000001 6225985,520085.000000001 6225985,520014.999999999 6226045,519975.000000001 6226095,519955.000000001 6226095,519865.000000001 6226155,519855.000000001 6226165,519865.000000001 6226185,519855.000000001 6226195,519805 6226205,519775.000000002 6226225,519745.000000001 6226225,519685 6226265,519615 6226265,519595 6226285,519564.999999999 6226285,519505.000000001 6226335,519475 6226375,519445.000000002 6226375,519405.000000001 6226395,519385 6226355,519355 6226345,519305.000000001 6226355,519285.000000001 6226345,519245 6226385,519085.000000001 6226385,519075.000000001 6226395,519055 6226375,518985.000000001 6226405,518935 6226385,518905 6226395,518855.000000001 6226365,518825 6226375,518795 6226355,518735.000000001 6226425,518735.000000001 6226455,518755.000000001 6226475,518705 6226495,518674.999999999 6226535,518655.000000001 6226525,518605 6226565,518595 6226555,518565 6226555,518535.000000001 6226605,518535.000000001 6226635,518485 6226645,518455 6226705,518435.000000002 6226715,518445.000000002 6226725,518405.000000001 6226765,518385 6226765,518335.000000002 6226805,518315.000000001 6226835,518285.000000001 6226845,518255 6226875,518175.000000001 6226885,518085.000000001 6226965,518025 6226985,518005 6227005,517985.000000001 6227005,517925 6227075,517905 6227055,517885.000000002 6227065,517865.000000001 6227055,517855.000000001 6227065,517865.000000001 6227075,517835.000000001 6227105,517815 6227095,517795 6227115,517664.999999999 6227145,517664.999999999 6227165,517575 6227235,517585 6227245,517535.000000001 6227335,517535.000000001 6227375,517525.000000001 6227375,517495.000000001 6227415,517465 6227415,517444.999999999 6227385,517435.000000002 6227385,517435.000000002 6227355,517405.000000001 6227345,517335 6227395,517315.000000001 6227405,517285.000000001 6227395,517255 6227425,517195.000000001 6227455,517175.000000001 6227445,517165.000000001 6227455,517115 6227445,517105.000000002 6227455,517095.000000002 6227435,517115 6227405,517105.000000002 6227395,517085.000000001 6227405,517025 6227375,516985.000000002 6227415,516955.000000001 6227435,516925 6227435,516865.000000001 6227485,516815 6227465,516805 6227485,516765.000000002 6227505,516745.000000001 6227535,516705 6227515,516695 6227495,516675 6227495,516645.000000001 6227475,516635.000000001 6227485,516615.000000001 6227465,516585 6227505,516555 6227515,516545.000000002 6227545,516505.000000001 6227535,516475 6227505,516445 6227535,516415.000000001 6227545,516405.000000001 6227535,516375.000000001 6227535,516355 6227565,516335 6227565,516315.000000002 6227585,516335 6227615,516324.999999999 6227625,516265.000000001 6227615,516205.000000002 6227675,516214.999999999 6227695,516195.000000001 6227715,516155.000000001 6227715,516135 6227735,516135 6227775,516155.000000001 6227815,516135 6227855,516135 6227885,516115 6227905,516025 6227925,515995 6227965,515995 6227995,516035 6228035,515995 6228065,516005 6228115,515985.000000002 6228125,515945.000000001 6228175,515915 6228175,515835.000000001 6228245,515825.000000001 6228265,515865.000000002 6228315,515835.000000001 6228345,515835.000000001 6228365,515825.000000001 6228365,515745.000000001 6228455,515705.000000001 6228445,515675 6228475,515615.000000001 6228495,515525.000000001 6228485,515515.000000001 6228495,515465 6228495,515435 6228515,515365 6228525,515335 6228545,515305.000000002 6228615,515225 6228585,515185.000000001 6228615,515155.000000001 6228615,515115 6228665,515065.000000001 6228655,515025 6228685,514995 6228725,514995 6228755,514984.999999999 6228765,514995 6228865,514865.000000002 6228965,514815.000000001 6229045,514815.000000001 6229085,514805 6229095,514765 6229095,514755.000000002 6229105,514765 6229115,514735.000000001 6229135,514735.000000001 6229155,514695 6229195,514645.000000002 6229215,514585 6229215,514575 6229225,514575 6229255,514525.000000002 6229295,514534.999999999 6229315,514565 6229315,514595.000000001 6229285,514625.000000001 6229325,514625.000000001 6229335,514585 6229365,514585 6229405,514575 6229415,514585 6229425,514575 6229435,514555 6229425,514525.000000002 6229455,514565 6229485,514565 6229515,514575 6229525,514585 6229515,514605.000000001 6229525,514555 6229595,514565 6229625,514545 6229655,514555 6229725,514495.000000001 6229765,514465 6229745,514435 6229765,514405.000000001 6229805,514385.000000001 6229805,514355 6229835,514314.999999999 6229915,514265.000000001 6229975,514225 6230005,514265.000000001 6230035,514275.000000001 6230055,514265.000000001 6230085,514295.000000001 6230115,514285.000000001 6230125,514235 6230105,514225 6230115,514235 6230145,514145.000000001 6230205,514145.000000001 6230235,514155.000000001 6230245,514135 6230265,514085.000000002 6230225,514065.000000001 6230265,514005 6230315,513965.000000002 6230365,513965.000000002 6230375,513995 6230395,513965.000000002 6230415,513945.000000001 6230415,513875 6230475,513855.000000002 6230455,513835.000000001 6230485,513815.000000001 6230485,513805.000000001 6230505,513725.000000001 6230505,513695.000000001 6230535,513665 6230535,513655 6230555,513625.000000001 6230555,513615.000000001 6230565,513565 6230555,513535 6230585,513525.000000002 6230585,513505.000000001 6230555,513435 6230615,513395.000000001 6230615,513365.000000001 6230655,513335 6230665,513335 6230705,513325 6230715,513315 6230715,513275.000000001 6230665,513245.000000001 6230665,513235 6230685,513205 6230705,513215 6230735,513185.000000002 6230745,513185.000000002 6230775,513165.000000001 6230825,513205 6230825,513215 6230835,513215 6230855,513185.000000002 6230885,513185.000000002 6230905,513235 6230945,513225 6230955,513235 6231005,513194.999999999 6231045,513175.000000001 6231045,513194.999999999 6231015,513155.000000001 6230985,513115 6230985,513135.000000001 6231025,513105 6231055,513084.999999999 6231065,513075.000000002 6231055,513065.000000001 6231065,513084.999999999 6231095,513105 6231095,513145.000000001 6231135,513145.000000001 6231155,513165.000000001 6231175,513125 6231195,513084.999999999 6231235,513084.999999999 6231255,513065.000000001 6231275,513035.000000001 6231275,513025.000000001 6231285,513045.000000001 6231305,513045.000000001 6231325,513025.000000001 6231345,513025.000000001 6231405,512965.000000002 6231455,512975 6231505,512965.000000002 6231515,512895 6231515,512855.000000002 6231485,512845.000000002 6231505,512805.000000001 6231535,512795 6231575,512825.000000001 6231595,512825.000000001 6231605,512805.000000001 6231625,512765 6231625,512725.000000001 6231655,512705.000000001 6231685,512705.000000001 6231705,512685 6231715,512625.000000002 6231785,512625.000000002 6231815,512675 6231875,512715.000000001 6231895,512725.000000001 6231915,512695.000000001 6231945,512665 6231895,512625.000000002 6231925,512595.000000001 6231925,512575.000000001 6231945,512595.000000001 6231975,512585.000000001 6232025,512524.999999999 6232085,512485.000000001 6232105,512485.000000001 6232145,512465.000000001 6232165,512455 6232155,512455 6232125,512435 6232105,512414.999999999 6232105,512345 6232155,512345 6232175,512395.000000001 6232205,512405.000000002 6232255,512375.000000001 6232285,512345 6232285,512335 6232295,512325 6232295,512285.000000001 6232245,512245.000000001 6232245,512215 6232275,512265.000000001 6232305,512255.000000001 6232315,512255.000000001 6232345,512235 6232375,512185.000000002 6232375,512165.000000001 6232395,512175.000000002 6232475,512095 6232565,512125 6232585,512125 6232605,512075.000000002 6232655,512055.000000001 6232655,511975 6232755,511995 6232795,511975 6232805,511964.999999999 6232825,511964.999999999 6232855,511975 6232865,511975 6232895,511964.999999999 6232905,511995 6232945,512015 6232955,512025.000000001 6232995,511985 6233025,511964.999999999 6233025,511945.000000001 6233045,511955.000000002 6233055,511945.000000001 6233075,511915.000000001 6233055,511895 6233065,511845.000000002 6233035,511815.000000001 6233035,511805.000000001 6233045,511825.000000001 6233075,511825.000000001 6233135,511815.000000001 6233145,511845.000000002 6233175,511845.000000002 6233205,511825.000000001 6233235,511865 6233265,511854.999999999 6233275,511865 6233295,511865 6233445,511885 6233465,511885 6233565,511845.000000002 6233605,511845.000000002 6233645,511854.999999999 6233655,511825.000000001 6233695,511835.000000001 6233715,511825.000000001 6233735,511845.000000002 6233755,511835.000000001 6233785,511845.000000002 6233795,511795.000000001 6233835,511795.000000001 6233855,511815.000000001 6233875,511815.000000001 6233905,511805.000000001 6233915,511815.000000001 6233925,511854.999999999 6233925,511875 6233945,511865 6234015,511905.000000001 6234055,511955.000000002 6234025,511985 6234035,511985 6234075,511975 6234085,511945.000000001 6234065,511925.000000001 6234085,511935.000000001 6234105,511964.999999999 6234105,512015 6234145,512045.000000001 6234105,512075.000000002 6234105,512085 6234125,512065.000000002 6234155,512075.000000002 6234165,512105 6234165,512135.000000001 6234135,512155.000000001 6234135,512165.000000001 6234155,512125 6234185,512125 6234215,512205 6234215,512215 6234225,512205 6234235,512205 6234265,512175.000000002 6234275,512145.000000001 6234315,512195 6234335,512195 6234345,512165.000000001 6234355,512145.000000001 6234385,512205 6234465,512225 6234575,512205 6234595,512165.000000001 6234585,512155.000000001 6234595,512155.000000001 6234645,512115 6234665,512115 6234695,512125 6234705,512145.000000001 6234685,512175.000000002 6234685,512195 6234705,512165.000000001 6234745,512195 6234795,512175.000000002 6234815,512175.000000002 6234865,512105 6234925,512135.000000001 6234975,512115 6235005,512125 6235015,512115 6235045,512115 6235125,512085 6235225,512095 6235235,512165.000000001 6235245,512195 6235275,512205 6235405,512235 6235435,512265.000000001 6235435,512285.000000001 6235395,512315 6235395,512335 6235455,512375.000000001 6235405,512405.000000002 6235435,512445 6235435,512485.000000001 6235475,512465.000000001 6235485,512465.000000001 6235515,512485.000000001 6235535,512495.000000001 6235585,512485.000000001 6235595,512445 6235555,512425 6235575,512405.000000002 6235575,512395.000000001 6235605,512455 6235645,512515.000000002 6235705,512505.000000001 6235735,512485.000000001 6235715,512405.000000002 6235715,512395.000000001 6235725,512405.000000002 6235745,512395.000000001 6235825,512405.000000002 6235835,512414.999999999 6235905,512435 6235925,512465.000000001 6235925,512475.000000001 6235935,512455 6235965,512435 6235965,512375.000000001 6236015,512395.000000001 6236065,512365.000000001 6236095,512365.000000001 6236115,512335 6236145,512305 6236135,512255.000000001 6236175,512255.000000001 6236195,512275.000000001 6236215,512305 6236215,512325 6236195,512335 6236205,512335 6236275,512315 6236325,512285.000000001 6236335,512285.000000001 6236365,512305 6236395,512295.000000002 6236405,512305 6236415,512365.000000001 6236415,512385.000000001 6236435,512385.000000001 6236465,512375.000000001 6236475,512385.000000001 6236485,512375.000000001 6236625,512315 6236665,512295.000000002 6236635,512255.000000001 6236655,512215 6236655,512175.000000002 6236695,512165.000000001 6236735,512085 6236815,512045.000000001 6236815,512035.000000001 6236825,512035.000000001 6236865,511995 6236915,511975 6236965,511985 6236975,511975 6236985,511975 6237055,511964.999999999 6237065,511975 6237095,511964.999999999 6237105,511985 6237175,511915.000000001 6237235,511905.000000001 6237295,511925.000000001 6237305,511925.000000001 6237335,511915.000000001 6237345,511905.000000001 6237335,511865 6237385,511845.000000002 6237395,511805.000000001 6237395,511745 6237375,511735.000000002 6237385,511745 6237405,511735.000000002 6237415,511735.000000002 6237445,511725.000000001 6237455,511715.000000001 6237445,511685.000000001 6237455,511645 6237495,511645 6237525,511615.000000002 6237545,511665 6237615,511635 6237665,511645 6237705,511625.000000002 6237735,511595.000000001 6237735,511605.000000001 6237775,511535 6237825,511575.000000001 6237875,511565 6237885,511535 6237875,511515.000000002 6237895,511505.000000002 6237885,511475.000000001 6237885,511455 6237905,511455 6237935,511435 6237955,511465.000000001 6238005,511515.000000002 6238055,511505.000000002 6238075,511475.000000001 6238095,511455 6238095,511435 6238075,511435 6238045,511425 6238035,511404.999999999 6238055,511395.000000002 6238075,511445 6238145,511455 6238205,511445 6238215,511404.999999999 6238215,511375.000000001 6238195,511355.000000001 6238205,511345.000000001 6238235,511355.000000001 6238245,511365.000000001 6238235,511395.000000002 6238275,511365.000000001 6238285,511325 6238245,511305 6238245,511255.000000001 6238275,511265.000000001 6238315,511315 6238385,511305 6238465,511255.000000001 6238515,511235.000000001 6238505,511215 6238525,511195 6238525,511155.000000001 6238475,511145.000000001 6238485,511105 6238485,511095 6238475,511085 6238485,511085 6238555,511055.000000001 6238625,511075 6238665,511075 6238705,511055.000000001 6238725,511015.000000001 6238725,511005 6238715,510995 6238725,510965 6238705,510945.000000002 6238745,510885 6238795,510885 6238815,510935.000000001 6238865,510955.000000002 6238865,510985 6238845,511005 6238855,511025.000000001 6238875,511025.000000001 6238925,511045.000000001 6238945,511015.000000001 6238985,510975 6238985,510965 6238995,510955.000000002 6238975,510925.000000001 6238955,510905.000000001 6238975,510885 6238965,510835.000000002 6239015,510835.000000002 6239035,510865 6239075,510905.000000001 6239075,510915.000000001 6239055,510955.000000002 6239095,510955.000000002 6239125,510925.000000001 6239175,510915.000000001 6239175,510875 6239225,510815.000000001 6239235,510775 6239205,510745 6239225,510725.000000002 6239255,510695.000000001 6239215,510655 6239215,510645 6239205,510615.000000002 6239255,510575.000000001 6239275,510575.000000001 6239305,510535 6239335,510525 6239415,510514.999999999 6239425,510505.000000002 6239415,510495.000000001 6239435,510465.000000001 6239435,510445 6239415,510415 6239415,510405 6239425,510375.000000001 6239405,510325 6239405,510315 6239385,510265.000000001 6239345,510245.000000001 6239365,510235.000000001 6239405,510285.000000002 6239455,510285.000000002 6239535,510265.000000001 6239565,510235.000000001 6239565,510215 6239555,510235.000000001 6239515,510205 6239495,510215 6239485,510215 6239455,510165.000000002 6239435,510135.000000001 6239465,510145.000000001 6239515,510095 6239565,510095 6239595,510115.000000001 6239605,510085 6239635,510064.999999999 6239635,510055.000000002 6239665,510075 6239695,510105 6239695,510115.000000001 6239685,510135.000000001 6239705,510145.000000001 6239755,510105 6239785,510035.000000001 6239785,510045.000000001 6239815,510035.000000001 6239865,510055.000000002 6239895,510055.000000002 6239915,510025.000000001 6239915,509925.000000001 6239935,509885 6239985,509875 6240025,509835.000000002 6240065,509835.000000002 6240095,509805.000000001 6240125,509785.000000001 6240125,509745 6240175,509615.000000002 6240165,509605.000000002 6240155,509585.000000001 6240165,509545 6240215,509535 6240215,509515 6240185,509495.000000002 6240185,509465.000000001 6240235,509415 6240235,509375.000000001 6240285,509425 6240355,509425 6240405,509394.999999999 6240445,509375.000000001 6240445,509295 6240395,509284.999999999 6240415,509305 6240475,509265.000000001 6240495,509255.000000001 6240515,509205 6240555,509155.000000001 6240555,509145.000000001 6240565,509155.000000001 6240585,509145.000000001 6240625,509165.000000002 6240655,509155.000000001 6240685,509075 6240615,509025.000000001 6240655,509025.000000001 6240675,509075 6240705,509075 6240765,509045.000000002 6240795,509025.000000001 6240805,508925.000000001 6240805,508895.000000001 6240775,508855 6240775,508845 6240785,508845 6240835,508865 6240885,508865 6240955,508834.999999999 6240985,508775.000000001 6241015,508755 6241055,508745 6241055,508705.000000001 6241005,508685.000000001 6241005,508655 6241035,508655 6241075,508675.000000001 6241095,508695.000000001 6241205,508665.000000001 6241215,508625 6241255,508605.000000002 6241265,508575.000000001 6241255,508555.000000001 6241275,508565.000000001 6241325,508575.000000001 6241325,508615 6241375,508615 6241415,508575.000000001 6241475,508555.000000001 6241475,508515 6241435,508485.000000001 6241435,508465.000000001 6241455,508455.000000001 6241475,508465.000000001 6241495,508465.000000001 6241575,508425 6241615,508365.000000001 6241625,508335.000000001 6241605,508295 6241555,508275.000000002 6241555,508255.000000001 6241575,508245.000000001 6241625,508225.000000001 6241645,508175 6241605,508115.000000001 6241615,508085 6241645,508054.999999999 6241655,508054.999999999 6241685,508075 6241725,508045.000000002 6241745,508005.000000001 6241715,507995.000000001 6241725,507995.000000001 6241765,508005.000000001 6241775,507995.000000001 6241785,507965 6241785,507905.000000001 6241755,507885.000000001 6241775,507915.000000001 6241825,507875 6241855,507855 6241855,507815.000000002 6241805,507765 6241845,507755 6241835,507765 6241805,507755 6241795,507685.000000001 6241845,507665.000000001 6241775,507635 6241815,507635 6241845,507645 6241855,507635 6241885,507585.000000001 6241825,507535 6241825,507525 6241835,507535 6241845,507525 6241865,507535 6241885,507505 6241925,507515 6241935,507505 6241945,507515 6241955,507545.000000001 6241935,507555.000000001 6241965,507515 6241985,507525 6242015,507515 6242075,507485.000000002 6242095,507455.000000001 6242055,507455.000000001 6242015,507445.000000001 6242005,507415 6241995,507395 6242015,507384.999999999 6242095,507405 6242115,507405 6242165,507425 6242195,507345.000000001 6242265,507365.000000001 6242285,507405 6242285,507435.000000001 6242305,507435.000000001 6242325,507405 6242375,507425 6242395,507435.000000001 6242385,507455.000000001 6242395,507475.000000001 6242495,507415 6242515,507355.000000001 6242515,507335.000000001 6242535,507345.000000001 6242575,507305 6242605,507285 6242605,507235.000000001 6242635,507235.000000001 6242665,507245.000000001 6242685,507275 6242705,507275 6242725,507265.000000002 6242735,507235.000000001 6242735,507185 6242785,507175 6242775,507165 6242785,507165 6242815,507245.000000001 6242895,507235.000000001 6242935,507185 6242985,507205 6243005,507245.000000001 6243005,507255.000000001 6243025,507175 6243095,507155.000000002 6243125,507175 6243155,507175 6243205,507205 6243225,507145.000000002 6243255,507085 6243225,507015.000000001 6243305,506995.000000001 6243305,506975 6243325,506975 6243335,507045.000000002 6243335,507055 6243365,506995.000000001 6243405,506925.000000002 6243405,506885.000000001 6243445,506885.000000001 6243465,506905.000000001 6243475,506925.000000002 6243505,506875.000000001 6243545,506865 6243595,506815.000000002 6243625,506795.000000001 6243615,506745 6243615,506725 6243625,506705.000000002 6243655,506705.000000002 6243705,506755 6243755,506785.000000001 6243765,506815.000000002 6243795,506815.000000002 6243815,506785.000000001 6243835,506735 6243795,506685.000000001 6243795,506655.000000001 6243825,506665.000000001 6243865,506685.000000001 6243885,506705.000000002 6243875,506715 6243895,506705.000000002 6243905,506675.000000001 6243905,506675.000000001 6243965,506645 6243995,506685.000000001 6244025,506715 6244025,506725 6244015,506755 6244075,506735 6244095,506685.000000001 6244095,506675.000000001 6244085,506635 6244105,506635 6244125,506675.000000001 6244155,506635 6244185,506645 6244195,506675.000000001 6244195,506645 6244235,506645 6244285,506655.000000001 6244305,506585.000000002 6244385,506525 6244425,506555.000000001 6244445,506605 6244435,506625 6244455,506585.000000002 6244495,506585.000000002 6244525,506575.000000001 6244535,506545.000000001 6244515,506535 6244525,506515 6244575,506555.000000001 6244605,506555.000000001 6244635,506575.000000001 6244675,506635 6244725,506605 6244745,506535 6244745,506525 6244755,506535 6244775,506535 6244865,506555.000000001 6244885,506555.000000001 6244945,506575.000000001 6244985,506575.000000001 6245015,506595.000000002 6245025,506625 6244995,506635 6245005,506635 6245025,506575.000000001 6245075,506595.000000002 6245105,506595.000000002 6245145,506585.000000002 6245155,506555.000000001 6245155,506505 6245195,506475.000000002 6245195,506445.000000001 6245175,506425 6245185,506415 6245225,506425 6245255,506455.000000001 6245285,506485.000000002 6245285,506545.000000001 6245245,506565.000000001 6245275,506535 6245305,506515 6245305,506475.000000002 6245335,506455.000000001 6245365,506455.000000001 6245405,506435.000000001 6245425,506395 6245395,506385 6245405,506395 6245435,506355.000000001 6245475,506355.000000001 6245495,506325.000000001 6245525,506295 6245525,506215.000000001 6245615,506225.000000001 6245625,506215.000000001 6245655,506165 6245695,506175 6245725,506205.000000001 6245725,506215.000000001 6245735,506205.000000001 6245825,506195 6245835,506185 6245815,506125.000000001 6245765,506115.000000001 6245775,506115.000000001 6245875,506125.000000001 6245905,506105.000000001 6245925,506035.000000002 6245945,506015.000000001 6245965,505935 6245965,505905.000000001 6245995,505945 6246045,505875.000000001 6246135,505925.000000002 6246165,505935 6246195,505935 6246245,505925.000000002 6246265,505915.000000002 6246275,505845 6246215,505815.000000002 6246205,505805.000000002 6246215,505775.000000001 6246215,505755 6246235,505745 6246325,505775.000000001 6246365,505755 6246385,505725 6246385,505704.999999999 6246405,505715 6246415,505715 6246445,505704.999999999 6246455,505675.000000001 6246455,505665.000000001 6246445,505655.000000001 6246455,505625 6246515,505575.000000001 6246575,505585.000000002 6246595,505615 6246605,505594.999999999 6246655,505535.000000001 6246705,505505 6246705,505495 6246715,505445.000000001 6246715,505415 6246685,505395 6246695,505395 6246735,505365.000000002 6246785,505435.000000001 6246895,505425.000000001 6246915,505385 6246915,505355.000000001 6246935,505325.000000001 6246935,505255.000000002 6246905,505235.000000001 6246945,505245.000000002 6247055,505215.000000001 6247085,505195 6247085,505135.000000002 6247035,505105.000000001 6247035,505065 6247015,505015.000000001 6247015,504985.000000001 6247085,504985.000000001 6247135,504975.000000001 6247145,504975.000000001 6247195,504985.000000001 6247215,504975.000000001 6247225,504924.999999999 6247215,504895.000000001 6247185,504885.000000001 6247145,504845 6247105,504805.000000002 6247095,504795.000000001 6247105,504805.000000002 6247165,504755.000000001 6247225,504765.000000001 6247245,504765.000000001 6247325,504775.000000001 6247335,504775.000000001 6247355,504755.000000001 6247385,504705 6247425,504655.000000001 6247425,504635 6247405,504635 6247375,504605 6247345,504575.000000002 6247365,504575.000000002 6247415,504585.000000002 6247435,504655.000000001 6247495,504705 6247495,504735 6247525,504735 6247545,504675.000000001 6247605,504745 6247625,504745 6247645,504775.000000001 6247675,504785.000000001 6247735,504765.000000001 6247745,504735 6247715,504715 6247725,504725 6247755,504715 6247765,504705 6247835,504655.000000001 6247875,504655.000000001 6247925,504625 6247965,504635 6247975,504635 6248035,504655.000000001 6248085,504655.000000001 6248105,504605 6248155,504605 6248215,504615 6248225,504635 6248355,504625 6248365,504585.000000002 6248355,504555.000000001 6248395,504505 6248425,504485 6248425,504465.000000002 6248445,504465.000000002 6248475,504415.000000001 6248515,504375 6248495,504355.000000002 6248505,504385 6248565,504364.999999999 6248585,504275 6248575,504235.000000001 6248555,504175 6248555,504165 6248565,504245.000000002 6248645,504225.000000001 6248675,504135.000000002 6248685,504085.000000001 6248725,504085.000000001 6248735,504115.000000001 6248755,504115.000000001 6248775,504045 6248825,504075 6248885,504065 6248935,504025.000000002 6248955,503975.000000001 6248875,503955 6248875,503925 6248905,503925 6248935,503895.000000001 6249005,503895.000000001 6249055,503885.000000001 6249055,503905.000000002 6249085,503905.000000002 6249115,503855 6249155,503855 6249175,503905.000000002 6249215,503925 6249255,503875.000000001 6249285,503835 6249285,503825 6249275,503795.000000002 6249315,503775.000000001 6249315,503755.000000001 6249335,503765.000000001 6249345,503755.000000001 6249375,503785.000000001 6249415,503785.000000001 6249435,503765.000000001 6249445,503725 6249495,503785.000000001 6249555,503795.000000002 6249595,503765.000000001 6249615,503745.000000001 6249575,503694.999999999 6249545,503655.000000001 6249565,503635.000000001 6249595,503655.000000001 6249625,503715 6249655,503735 6249685,503735 6249705,503665.000000001 6249725,503585 6249725,503525.000000001 6249745,503515 6249755,503545.000000001 6249805,503485 6249865,503475 6249895,503485 6249915,503465.000000002 6249935,503405 6249945,503395 6249885,503375 6249865,503305.000000001 6249905,503265 6249945,503255 6249995,503215.000000001 6250045,503125.000000002 6250095,503105.000000001 6250095,503075.000000001 6250125,503065 6250155,503075.000000001 6250285,503045 6250315,503024.999999999 6250315,502985.000000001 6250275,502985.000000001 6250265,503035 6250225,503024.999999999 6250205,502955 6250175,502925 6250205,502895.000000001 6250265,502845 6250315,502845 6250375,502855.000000001 6250385,502845 6250415,502815 6250405,502745.000000001 6250325,502725 6250325,502675.000000002 6250395,502675.000000002 6250445,502665.000000001 6250455,502635.000000001 6250455,502625 6250445,502625 6250355,502605 6250335,502585 6250335,502565.000000002 6250355,502565.000000002 6250405,502585 6250435,502585 6250525,502525.000000001 6250585,502495 6250595,502475 6250575,502425.000000001 6250575,502415.000000001 6250565,502385 6250565,502365 6250585,502305.000000001 6250595,502285 6250615,502305.000000001 6250645,502305.000000001 6250705,502265 6250755,502255 6250755,502235.000000002 6250725,502235.000000002 6250685,502185.000000001 6250655,502185.000000001 6250635,502145 6250595,502145 6250575,502125.000000002 6250565,502105.000000001 6250615,502105.000000001 6250645,502145 6250685,502125.000000002 6250705,502105.000000001 6250715,502085.000000001 6250705,502035 6250705,502015.000000002 6250715,501955 6250785,501935 6250775,501915 6250785,501885.000000001 6250755,501855.000000001 6250755,501835 6250765,501775.000000001 6250835,501705 6250865,501675.000000002 6250865,501625.000000001 6250835,501615 6250865,501645.000000001 6250895,501655.000000001 6250925,501635.000000001 6250945,501575 6250945,501545.000000001 6250975,501545.000000001 6251005,501575 6251045,501575 6251085,501465 6251145,501415.000000001 6251145,501355 6251105,501325.000000001 6251135,501315.000000001 6251185,501255 6251245,501255 6251285,501225.000000002 6251315,501195.000000001 6251305,501185.000000001 6251315,501155 6251295,501155 6251255,501045 6251145,501015 6251135,500985.000000001 6251145,500945 6251245,500915 6251275,500765.000000001 6251275,500725 6251295,500655.000000001 6251305,500615.000000001 6251275,500605 6251225,500585 6251205,500555.000000002 6251215,500515.000000001 6251265,500485 6251395,500445.000000002 6251445,500405.000000001 6251445,500325.000000001 6251405,500295.000000001 6251425,500285.000000001 6251445,500285.000000001 6251515,500295.000000001 6251525,500365 6251525,500375 6251535,500375 6251575,500345 6251615,500275 6251615,500265 6251605,500195.000000001 6251615,500115.000000002 6251645,500065.000000001 6251695,500065.000000001 6251715,500045 6251745,500045 6251885,500035 6251895,500035 6251925,500004.999999999 6251975,499995.000000002 6252025,499965.000000001 6252055,499965.000000001 6252075,500025 6252125,500015 6252135,500025 6252145,499945.000000001 6252275,499925 6252275,499894.999999999 6252255,499875.000000001 6252275,499875.000000001 6252325,499885.000000002 6252345,499925 6252385,499945.000000001 6252385,499965.000000001 6252405,499955.000000001 6252415,499975.000000001 6252435,499965.000000001 6252455,499965.000000001 6252515,499985.000000001 6252545,500065.000000001 6252615,500035 6252625,499995.000000002 6252665,499975.000000001 6252695,499975.000000001 6252725,499885.000000002 6252815,499925 6252865,499925 6252895,499905 6252915,499855.000000001 6252915,499815 6252955,499785 6253015,499785 6253085,499775.000000002 6253105,499765.000000001 6253115,499725.000000001 6253095,499705 6253105,499725.000000001 6253145,499765.000000001 6253185,499765.000000001 6253205,499785 6253235,499735.000000001 6253255,499695 6253295,499695 6253315,499725.000000001 6253355,499745.000000001 6253365,499745.000000001 6253445,499755.000000001 6253455,499745.000000001 6253465,499755.000000001 6253495,499735.000000001 6253565,499675 6253635,499675 6253705,499705 6253735,499725.000000001 6253715,499765.000000001 6253705,499805 6253755,499805 6253785,499815 6253795,499815 6253895,499825 6253905,499825 6253955,499815 6253965,499825 6254015,499805 6254035,499855.000000001 6254065,499885.000000002 6254065,499925 6254035,499955.000000001 6254065,499965.000000001 6254125,499985.000000001 6254145,499925 6254215,499835.000000001 6254205,499815 6254225,499815 6254245,499865.000000001 6254305,499894.999999999 6254305,499905 6254315,499915 6254305,499935 6254325,499925 6254365,499975.000000001 6254405,500095.000000001 6254425,500115.000000002 6254445,500075.000000001 6254495,500085.000000001 6254525,500075.000000001 6254535,500075.000000001 6254575,500085.000000001 6254585,500085.000000001 6254635,500125 6254695,500135 6254745,500165 6254795,500165 6254865,500145 6254935,500125 6254955,500135 6255105,500115.000000002 6255175,500095.000000001 6255205,500125 6255295,500125 6255335,500105.000000002 6255375,500105.000000002 6255465,500035 6255515,500035 6255565,500055.000000001 6255625,499995.000000002 6255665,499995.000000002 6255705,499965.000000001 6255735,499925 6255755,499845.000000001 6255755,499805 6255735,499755.000000001 6255735,499745.000000001 6255745,499745.000000001 6255775,499695 6255845,499675 6255905,499675 6255975,499665.000000002 6255985,499555.000000002 6255995,499465 6256075,499435.000000002 6256085,499334.999999999 6256075,499305.000000001 6256105,499285.000000001 6256135,499285.000000001 6256165,499315.000000001 6256225,499245 6256275,499245 6256295,499265 6256315,499265 6256355,499285.000000001 6256385,499275.000000001 6256415,499245 6256445,499224.999999999 6256435,499185.000000001 6256445,499135 6256485,499135 6256505,499085.000000001 6256575,499075.000000001 6256645,499055.000000001 6256665,499045 6256655,499015 6256665,498985.000000002 6256695,498995.000000002 6256715,498985.000000002 6256725,499015 6256785,499085.000000001 6256855,499105.000000002 6256895,499105.000000002 6256935,499085.000000001 6256945,499005 6257035,499045 6257075,499075.000000001 6257075,499135 6257105,499165.000000001 6257135,499165.000000001 6257155,499095.000000001 6257205,499075.000000001 6257205,499025 6257255,499025 6257275,499045 6257285,499085.000000001 6257335,499085.000000001 6257355,499065.000000001 6257375,499065.000000001 6257405,499045 6257445,499045 6257515,499035 6257525,499025 6257595,499005 6257615,499005 6257735,498995.000000002 6257745,498995.000000002 6257815,499015 6257845,499005 6257855,499005 6257905,498955.000000001 6257955,498955.000000001 6257995,499055.000000001 6258095,499065.000000001 6258125,499045 6258135,499015 6258335,498965.000000001 6258385,498965.000000001 6258425,498975.000000001 6258435,498965.000000001 6258445,498965.000000001 6258535,498935 6258595,498925 6258655,498935 6258665,498945.000000001 6258655,498965.000000001 6258685,498965.000000001 6258795,498985.000000002 6258835,498945.000000001 6258955,498995.000000002 6259025,499035 6259055,499065.000000001 6259045,499105.000000002 6259065,499115 6259055,499155 6259055,499185.000000001 6259075,499195.000000001 6259065,499224.999999999 6259085,499235 6259075,499245 6259085,499275.000000001 6259085,499315.000000001 6259115,499315.000000001 6259135,499334.999999999 6259165,499334.999999999 6259195,499355 6259225,499355 6259255,499405.000000001 6259325,499425.000000001 6259455,499475 6259515,499455 6259635,499485 6259655,499495 6259675,499485 6259695,499515.000000001 6259725,499505.000000001 6259745,499575 6259795,499585 6259815,499585 6259865,499625.000000001 6260000)'
            ShortName = 'E9'
            Name = 'Karup River'
            TopoID = 'model_cross'
            FlowDirection = 0
            BranchType = 0
            UpStreamConnectionType = 0
            UpStreamConnRiverNodeID = '00000000-0000-0000-0000-000000000000'
            UpStreamStorageID = '00000000-0000-0000-0000-000000000000'
            DownStreamConnectionType = 0
            DownStreamConnRiverNodeID = '00000000-0000-0000-0000-000000000000'
            DownStreamStorageID = '00000000-0000-0000-0000-000000000000'
            UserDefinedChainageList = '(0,0)(1582,70454)'
            [RiverNodeList]
               Touched = false
               DhiSEPfsListItemCount = 19
               [RiverNode_0]
                  Touched = false
                  ObjectID = '4760a067-de59-4e73-ba11-359fbd93622f'
                  Shape = 'POINT(516476.377170445 6227506.37717045)'
                  ShortName = 'N27'
                  BranchID = '364a1eaa-079e-4bfe-bdc3-34289f78a4a8'
                  Chainage = 8060.0
                  BranchID = '364a1eaa-079e-4bfe-bdc3-34289f78a4a8'
                  Chainage = 8060.0
                  RiverNodeType = 0
                  BifurcationNode = false
                  UpstreamBifurcationType = 0
                  MinorBranchID = '00000000-0000-0000-0000-000000000000'
                  HasMinFlowRequirement = false
                  HasFlowLoss = false
                  HasFlowCapacity = false
                  [UpstreamBifurcationTimeSeries]
                     Touched = false
                     FILE_NAME = ||
                     ITEM_COUNT = 0
                     ITEM_NUMBERS = 0
                  EndSect  // UpstreamBifurcationTimeSeries

                  [UpstreamBifurcationTable]
                     Touched = false
                     FILE_NAME = ||
                     ITEM_COUNT = 0
                     ITEM_NUMBERS = 0
                  EndSect  // UpstreamBifurcationTable

                  [MinFlowRequirementTimeSeries]
                     Touched = false
                     FILE_NAME = ||
                     ITEM_COUNT = 0
                     ITEM_NUMBERS = 0
                  EndSect  // MinFlowRequirementTimeSeries

                  [FlowLossDfsSelection]
                     Touched = false
                     FILE_NAME = ||
                     ITEM_COUNT = 0
                     ITEM_NUMBERS = 0
                  EndSect  // FlowLossDfsSelection

                  [FlowCapacityDfsSelection]
                     Touched = false
                     FILE_NAME = ||
                     ITEM_COUNT = 0
                     ITEM_NUMBERS = 0
                  EndSect  // FlowCapacityDfsSelection

               EndSect  // RiverNode_0

               [RiverNode_1]
                  Touched = false
                  ObjectID = '3aab469d-19b4-4780-a398-7bea2ed57a0a'
                  Shape = 'POINT(516476.283509054 6227506.28350905)'
                  ShortName = 'N18'
                  BranchID = '364a1eaa-079e-4bfe-bdc3-34289f78a4a8'
                  Chainage = 8060.132457736811
                  BranchID = '364a1eaa-079e-4bfe-bdc3-34289f78a4a8'
                  Chainage = 8060.132457736811
                  RiverNodeType = 0
                  BifurcationNode = false
                  UpstreamBifurcationType = 0
                  MinorBranchID = '00000000-0000-0000-0000-000000000000'
                  HasMinFlowRequirement = false
                  HasFlowLoss = false
                  HasFlowCapacity = false
                  [UpstreamBifurcationTimeSeries]
                     Touched = false
                     FILE_NAME = ||
                     ITEM_COUNT = 0
                     ITEM_NUMBERS = 0
                  EndSect  // UpstreamBifurcationTimeSeries

                  [UpstreamBifurcationTable]
                     Touched = false
                     FILE_NAME = ||
                     ITEM_COUNT = 0
                     ITEM_NUMBERS = 0
                  EndSect  // UpstreamBifurcationTable

                  [MinFlowRequirementTimeSeries]
                     Touched = false
                     FILE_NAME = ||
                     ITEM_COUNT = 0
                     ITEM_NUMBERS = 0
                  EndSect  // MinFlowRequirementTimeSeries

                  [FlowLossDfsSelection]
                     Touched = false
                     FILE_NAME = ||
                     ITEM_COUNT = 0
                     ITEM_NUMBERS = 0
                  EndSect  // FlowLossDfsSelection

                  [FlowCapacityDfsSelection]
                     Touched = false
                     FILE_NAME = ||
                     ITEM_COUNT = 0
                     ITEM_NUMBERS = 0
                  EndSect  // FlowCapacityDfsSelection

               EndSect  // RiverNode_1

               [RiverNode_2]
                  Touched = false
                  ObjectID = '9d5748c9-6922-4e10-bbf9-066145799efd'
                  Shape = 'POINT(516453.149190811 6227526.85080919)'
                  ShortName = 'N7'
                  BranchID = '364a1eaa-079e-4bfe-bdc3-34289f78a4a8'
                  Chainage = 8092.849454606008
                  BranchID = '364a1eaa-079e-4bfe-bdc3-34289f78a4a8'
                  Chainage = 8092.849454606008
                  RiverNodeType = 0
                  BifurcationNode = false
                  UpstreamBifurcationType = 0
                  MinorBranchID = '00000000-0000-0000-0000-000000000000'
                  HasMinFlowRequirement = false
                  HasFlowLoss = false
                  HasFlowCapacity = false
                  [UpstreamBifurcationTimeSeries]
                     Touched = false
                     FILE_NAME = ||
                     ITEM_COUNT = 0
                     ITEM_NUMBERS = 0
                  EndSect  // UpstreamBifurcationTimeSeries

                  [UpstreamBifurcationTable]
                     Touched = false
                     FILE_NAME = ||
                     ITEM_COUNT = 0
                     ITEM_NUMBERS = 0
                  EndSect  // UpstreamBifurcationTable

                  [MinFlowRequirementTimeSeries]
                     Touched = false
                     FILE_NAME = ||
                     ITEM_COUNT = 0
                     ITEM_NUMBERS = 0
                  EndSect  // MinFlowRequirementTimeSeries

                  [FlowLossDfsSelection]
                     Touched = false
                     FILE_NAME = ||
                     ITEM_COUNT = 0
                     ITEM_NUMBERS = 0
                  EndSect  // FlowLossDfsSelection

                  [FlowCapacityDfsSelection]
                     Touched = false
                     FILE_NAME = ||
                     ITEM_COUNT = 0
                     ITEM_NUMBERS = 0
                  EndSect  // FlowCapacityDfsSelection

               EndSect  // RiverNode_2

               [RiverNode_3]
                  Touched = false
                  ObjectID = 'b94115a3-6254-4e6e-b4db-583672fe20b8'
                  Shape = 'POINT(516453.042739566 6227526.95726044)'
                  ShortName = 'N12'
                  BranchID = '364a1eaa-079e-4bfe-bdc3-34289f78a4a8'
                  Chainage = 8093.0
                  BranchID = '364a1eaa-079e-4bfe-bdc3-34289f78a4a8'
                  Chainage = 8093.0
                  RiverNodeType = 0
                  BifurcationNode = false
                  UpstreamBifurcationType = 0
                  MinorBranchID = '00000000-0000-0000-0000-000000000000'
                  HasMinFlowRequirement = false
                  HasFlowLoss = false
                  HasFlowCapacity = false
                  [UpstreamBifurcationTimeSeries]
                     Touched = false
                     FILE_NAME = ||
                     ITEM_COUNT = 0
                     ITEM_NUMBERS = 0
                  EndSect  // UpstreamBifurcationTimeSeries

                  [UpstreamBifurcationTable]
                     Touched = false
                     FILE_NAME = ||
                     ITEM_COUNT = 0
                     ITEM_NUMBERS = 0
                  EndSect  // UpstreamBifurcationTable

                  [MinFlowRequirementTimeSeries]
                     Touched = false
                     FILE_NAME = ||
                     ITEM_COUNT = 0
                     ITEM_NUMBERS = 0
                  EndSect  // MinFlowRequirementTimeSeries

                  [FlowLossDfsSelection]
                     Touched = false
                     FILE_NAME = ||
                     ITEM_COUNT = 0
                     ITEM_NUMBERS = 0
                  EndSect  // FlowLossDfsSelection

                  [FlowCapacityDfsSelection]
                     Touched = false
                     FILE_NAME = ||
                     ITEM_COUNT = 0
                     ITEM_NUMBERS = 0
                  EndSect  // FlowCapacityDfsSelection

               EndSect  // RiverNode_3

               [RiverNode_4]
                  Touched = false
                  ObjectID = '58f7a47d-0a0b-46d5-abae-31e484aa830b'
                  Shape = 'POINT(511391.018878365 6238269.69183782)'
                  ShortName = 'N31'
                  BranchID = '364a1eaa-079e-4bfe-bdc3-34289f78a4a8'
                  Chainage = 27600.0
                  BranchID = '364a1eaa-079e-4bfe-bdc3-34289f78a4a8'
                  Chainage = 27600.0
                  RiverNodeType = 0
                  BifurcationNode = false
                  UpstreamBifurcationType = 0
                  MinorBranchID = '00000000-0000-0000-0000-000000000000'
                  HasMinFlowRequirement = false
                  HasFlowLoss = false
                  HasFlowCapacity = false
                  [UpstreamBifurcationTimeSeries]
                     Touched = false
                     FILE_NAME = ||
                     ITEM_COUNT = 0
                     ITEM_NUMBERS = 0
                  EndSect  // UpstreamBifurcationTimeSeries

                  [UpstreamBifurcationTable]
                     Touched = false
                     FILE_NAME = ||
                     ITEM_COUNT = 0
                     ITEM_NUMBERS = 0
                  EndSect  // UpstreamBifurcationTable

                  [MinFlowRequirementTimeSeries]
                     Touched = false
                     FILE_NAME = ||
                     ITEM_COUNT = 0
                     ITEM_NUMBERS = 0
                  EndSect  // MinFlowRequirementTimeSeries

                  [FlowLossDfsSelection]
                     Touched = false
                     FILE_NAME = ||
                     ITEM_COUNT = 0
                     ITEM_NUMBERS = 0
                  EndSect  // FlowLossDfsSelection

                  [FlowCapacityDfsSelection]
                     Touched = false
                     FILE_NAME = ||
                     ITEM_COUNT = 0
                     ITEM_NUMBERS = 0
                  EndSect  // FlowCapacityDfsSelection

               EndSect  // RiverNode_4

               [RiverNode_5]
                  Touched = false
                  ObjectID = '20ef8348-dbf4-48b0-ae86-0fa46363286a'
                  Shape = 'POINT(511391.378828895 6238270.17177186)'
                  ShortName = 'N30'
                  BranchID = '364a1eaa-079e-4bfe-bdc3-34289f78a4a8'
                  Chainage = 27600.59991993828
                  BranchID = '364a1eaa-079e-4bfe-bdc3-34289f78a4a8'
                  Chainage = 27600.59991993828
                  RiverNodeType = 0
                  BifurcationNode = false
                  UpstreamBifurcationType = 0
                  MinorBranchID = '00000000-0000-0000-0000-000000000000'
                  HasMinFlowRequirement = false
                  HasFlowLoss = false
                  HasFlowCapacity = false
                  [UpstreamBifurcationTimeSeries]
                     Touched = false
                     FILE_NAME = ||
                     ITEM_COUNT = 0
                     ITEM_NUMBERS = 0
                  EndSect  // UpstreamBifurcationTimeSeries

                  [UpstreamBifurcationTable]
                     Touched = false
                     FILE_NAME = ||
                     ITEM_COUNT = 0
                     ITEM_NUMBERS = 0
                  EndSect  // UpstreamBifurcationTable

                  [MinFlowRequirementTimeSeries]
                     Touched = false
                     FILE_NAME = ||
                     ITEM_COUNT = 0
                     ITEM_NUMBERS = 0
                  EndSect  // MinFlowRequirementTimeSeries

                  [FlowLossDfsSelection]
                     Touched = false
                     FILE_NAME = ||
                     ITEM_COUNT = 0
                     ITEM_NUMBERS = 0
                  EndSect  // FlowLossDfsSelection

                  [FlowCapacityDfsSelection]
                     Touched = false
                     FILE_NAME = ||
                     ITEM_COUNT = 0
                     ITEM_NUMBERS = 0
                  EndSect  // FlowCapacityDfsSelection

               EndSect  // RiverNode_5

               [RiverNode_6]
                  Touched = false
                  ObjectID = '22dedb97-0b21-41eb-828a-245604698bc5'
                  Shape = 'POINT(511264.668224599 6238313.6728984)'
                  ShortName = 'N11'
                  BranchID = '364a1eaa-079e-4bfe-bdc3-34289f78a4a8'
                  Chainage = 27813.0
                  BranchID = '364a1eaa-079e-4bfe-bdc3-34289f78a4a8'
                  Chainage = 27813.0
                  RiverNodeType = 0
                  BifurcationNode = false
                  UpstreamBifurcationType = 0
                  MinorBranchID = '00000000-0000-0000-0000-000000000000'
                  HasMinFlowRequirement = false
                  HasFlowLoss = false
                  HasFlowCapacity = false
                  [UpstreamBifurcationTimeSeries]
                     Touched = false
                     FILE_NAME = ||
                     ITEM_COUNT = 0
                     ITEM_NUMBERS = 0
                  EndSect  // UpstreamBifurcationTimeSeries

                  [UpstreamBifurcationTable]
                     Touched = false
                     FILE_NAME = ||
                     ITEM_COUNT = 0
                     ITEM_NUMBERS = 0
                  EndSect  // UpstreamBifurcationTable

                  [MinFlowRequirementTimeSeries]
                     Touched = false
                     FILE_NAME = ||
                     ITEM_COUNT = 0
                     ITEM_NUMBERS = 0
                  EndSect  // MinFlowRequirementTimeSeries

                  [FlowLossDfsSelection]
                     Touched = false
                     FILE_NAME = ||
                     ITEM_COUNT = 0
                     ITEM_NUMBERS = 0
                  EndSect  // FlowLossDfsSelection

                  [FlowCapacityDfsSelection]
                     Touched = false
                     FILE_NAME = ||
                     ITEM_COUNT = 0
                     ITEM_NUMBERS = 0
                  EndSect  // FlowCapacityDfsSelection

               EndSect  // RiverNode_6

               [RiverNode_7]
                  Touched = false
                  ObjectID = '71a8b13e-6806-4253-a14b-8ca22c8f3f13'
                  Shape = 'POINT(511264.697050417 6238313.78820167)'
                  ShortName = 'N6'
                  BranchID = '364a1eaa-079e-4bfe-bdc3-34289f78a4a8'
                  Chainage = 27813.11885236207
                  BranchID = '364a1eaa-079e-4bfe-bdc3-34289f78a4a8'
                  Chainage = 27813.11885236207
                  RiverNodeType = 0
                  BifurcationNode = false
                  UpstreamBifurcationType = 0
                  MinorBranchID = '00000000-0000-0000-0000-000000000000'
                  HasMinFlowRequirement = false
                  HasFlowLoss = false
                  HasFlowCapacity = false
                  [UpstreamBifurcationTimeSeries]
                     Touched = false
                     FILE_NAME = ||
                     ITEM_COUNT = 0
                     ITEM_NUMBERS = 0
                  EndSect  // UpstreamBifurcationTimeSeries

                  [UpstreamBifurcationTable]
                     Touched = false
                     FILE_NAME = ||
                     ITEM_COUNT = 0
                     ITEM_NUMBERS = 0
                  EndSect  // UpstreamBifurcationTable

                  [MinFlowRequirementTimeSeries]
                     Touched = false
                     FILE_NAME = ||
                     ITEM_COUNT = 0
                     ITEM_NUMBERS = 0
                  EndSect  // MinFlowRequirementTimeSeries

                  [FlowLossDfsSelection]
                     Touched = false
                     FILE_NAME = ||
                     ITEM_COUNT = 0
                     ITEM_NUMBERS = 0
                  EndSect  // FlowLossDfsSelection

                  [FlowCapacityDfsSelection]
                     Touched = false
                     FILE_NAME = ||
                     ITEM_COUNT = 0
                     ITEM_NUMBERS = 0
                  EndSect  // FlowCapacityDfsSelection

               EndSect  // RiverNode_7

               [RiverNode_8]
                  Touched = false
                  ObjectID = '90a5681a-25ea-4f92-b713-79f4c7497243'
                  Shape = 'POINT(510055.000000002 6239911.38269247)'
                  ShortName = 'N16'
                  BranchID = '364a1eaa-079e-4bfe-bdc3-34289f78a4a8'
                  Chainage = 31754.775426934
                  BranchID = '364a1eaa-079e-4bfe-bdc3-34289f78a4a8'
                  Chainage = 31754.775426934
                  RiverNodeType = 0
                  BifurcationNode = false
                  UpstreamBifurcationType = 0
                  MinorBranchID = '00000000-0000-0000-0000-000000000000'
                  HasMinFlowRequirement = false
                  HasFlowLoss = false
                  HasFlowCapacity = false
                  [UpstreamBifurcationTimeSeries]
                     Touched = false
                     FILE_NAME = ||
                     ITEM_COUNT = 0
                     ITEM_NUMBERS = 0
                  EndSect  // UpstreamBifurcationTimeSeries

                  [UpstreamBifurcationTable]
                     Touched = false
                     FILE_NAME = ||
                     ITEM_COUNT = 0
                     ITEM_NUMBERS = 0
                  EndSect  // UpstreamBifurcationTable

                  [MinFlowRequirementTimeSeries]
                     Touched = false
                     FILE_NAME = ||
                     ITEM_COUNT = 0
                     ITEM_NUMBERS = 0
                  EndSect  // MinFlowRequirementTimeSeries

                  [FlowLossDfsSelection]
                     Touched = false
                     FILE_NAME = ||
                     ITEM_COUNT = 0
                     ITEM_NUMBERS = 0
                  EndSect  // FlowLossDfsSelection

                  [FlowCapacityDfsSelection]
                     Touched = false
                     FILE_NAME = ||
                     ITEM_COUNT = 0
                     ITEM_NUMBERS = 0
                  EndSect  // FlowCapacityDfsSelection

               EndSect  // RiverNode_8

               [RiverNode_9]
                  Touched = false
                  ObjectID = 'a5f81c5b-a8c0-4c43-bf27-b6486a9624eb'
                  Shape = 'POINT(510055.000000002 6239911.60726465)'
                  ShortName = 'N29'
                  BranchID = '364a1eaa-079e-4bfe-bdc3-34289f78a4a8'
                  Chainage = 31755.0
                  BranchID = '364a1eaa-079e-4bfe-bdc3-34289f78a4a8'
                  Chainage = 31755.0
                  RiverNodeType = 0
                  BifurcationNode = false
                  UpstreamBifurcationType = 0
                  MinorBranchID = '00000000-0000-0000-0000-000000000000'
                  HasMinFlowRequirement = false
                  HasFlowLoss = false
                  HasFlowCapacity = false
                  [UpstreamBifurcationTimeSeries]
                     Touched = false
                     FILE_NAME = ||
                     ITEM_COUNT = 0
                     ITEM_NUMBERS = 0
                  EndSect  // UpstreamBifurcationTimeSeries

                  [UpstreamBifurcationTable]
                     Touched = false
                     FILE_NAME = ||
                     ITEM_COUNT = 0
                     ITEM_NUMBERS = 0
                  EndSect  // UpstreamBifurcationTable

                  [MinFlowRequirementTimeSeries]
                     Touched = false
                     FILE_NAME = ||
                     ITEM_COUNT = 0
                     ITEM_NUMBERS = 0
                  EndSect  // MinFlowRequirementTimeSeries

                  [FlowLossDfsSelection]
                     Touched = false
                     FILE_NAME = ||
                     ITEM_COUNT = 0
                     ITEM_NUMBERS = 0
                  EndSect  // FlowLossDfsSelection

                  [FlowCapacityDfsSelection]
                     Touched = false
                     FILE_NAME = ||
                     ITEM_COUNT = 0
                     ITEM_NUMBERS = 0
                  EndSect  // FlowCapacityDfsSelection

               EndSect  // RiverNode_9

               [RiverNode_10]
                  Touched = false
                  ObjectID = 'edbad807-9e26-4555-8386-74ef67dc7d5e'
                  Shape = 'POINT(509375.000000001 6240285)'
                  ShortName = 'N15'
                  BranchID = '364a1eaa-079e-4bfe-bdc3-34289f78a4a8'
                  Chainage = 32677.9796704502
                  BranchID = '364a1eaa-079e-4bfe-bdc3-34289f78a4a8'
                  Chainage = 32677.9796704502
                  RiverNodeType = 0
                  BifurcationNode = false
                  UpstreamBifurcationType = 0
                  MinorBranchID = '00000000-0000-0000-0000-000000000000'
                  HasMinFlowRequirement = false
                  HasFlowLoss = false
                  HasFlowCapacity = false
                  [UpstreamBifurcationTimeSeries]
                     Touched = false
                     FILE_NAME = ||
                     ITEM_COUNT = 0
                     ITEM_NUMBERS = 0
                  EndSect  // UpstreamBifurcationTimeSeries

                  [UpstreamBifurcationTable]
                     Touched = false
                     FILE_NAME = ||
                     ITEM_COUNT = 0
                     ITEM_NUMBERS = 0
                  EndSect  // UpstreamBifurcationTable

                  [MinFlowRequirementTimeSeries]
                     Touched = false
                     FILE_NAME = ||
                     ITEM_COUNT = 0
                     ITEM_NUMBERS = 0
                  EndSect  // MinFlowRequirementTimeSeries

                  [FlowLossDfsSelection]
                     Touched = false
                     FILE_NAME = ||
                     ITEM_COUNT = 0
                     ITEM_NUMBERS = 0
                  EndSect  // FlowLossDfsSelection

                  [FlowCapacityDfsSelection]
                     Touched = false
                     FILE_NAME = ||
                     ITEM_COUNT = 0
                     ITEM_NUMBERS = 0
                  EndSect  // FlowCapacityDfsSelection

               EndSect  // RiverNode_10

               [RiverNode_11]
                  Touched = false
                  ObjectID = '3815520e-1b29-432b-a909-cb1fd3de1bf9'
                  Shape = 'POINT(501297.661419046 6251202.33858095)'
                  ShortName = 'N13'
                  BranchID = '364a1eaa-079e-4bfe-bdc3-34289f78a4a8'
                  Chainage = 56851.16005479253
                  BranchID = '364a1eaa-079e-4bfe-bdc3-34289f78a4a8'
                  Chainage = 56851.16005479253
                  RiverNodeType = 0
                  BifurcationNode = false
                  UpstreamBifurcationType = 0
                  MinorBranchID = '00000000-0000-0000-0000-000000000000'
                  HasMinFlowRequirement = false
                  HasFlowLoss = false
                  HasFlowCapacity = false
                  [UpstreamBifurcationTimeSeries]
                     Touched = false
                     FILE_NAME = ||
                     ITEM_COUNT = 0
                     ITEM_NUMBERS = 0
                  EndSect  // UpstreamBifurcationTimeSeries

                  [UpstreamBifurcationTable]
                     Touched = false
                     FILE_NAME = ||
                     ITEM_COUNT = 0
                     ITEM_NUMBERS = 0
                  EndSect  // UpstreamBifurcationTable

                  [MinFlowRequirementTimeSeries]
                     Touched = false
                     FILE_NAME = ||
                     ITEM_COUNT = 0
                     ITEM_NUMBERS = 0
                  EndSect  // MinFlowRequirementTimeSeries

                  [FlowLossDfsSelection]
                     Touched = false
                     FILE_NAME = ||
                     ITEM_COUNT = 0
                     ITEM_NUMBERS = 0
                  EndSect  // FlowLossDfsSelection

                  [FlowCapacityDfsSelection]
                     Touched = false
                     FILE_NAME = ||
                     ITEM_COUNT = 0
                     ITEM_NUMBERS = 0
                  EndSect  // FlowCapacityDfsSelection

               EndSect  // RiverNode_11

               [RiverNode_12]
                  Touched = false
                  ObjectID = 'ea05ed00-c361-4fdc-8360-f00509ce5308'
                  Shape = 'POINT(501192.266326087 6251307.73367391)'
                  ShortName = 'N17'
                  BranchID = '364a1eaa-079e-4bfe-bdc3-34289f78a4a8'
                  Chainage = 57053.9288579803
                  BranchID = '364a1eaa-079e-4bfe-bdc3-34289f78a4a8'
                  Chainage = 57053.9288579803
                  RiverNodeType = 0
                  BifurcationNode = false
                  UpstreamBifurcationType = 0
                  MinorBranchID = '00000000-0000-0000-0000-000000000000'
                  HasMinFlowRequirement = false
                  HasFlowLoss = false
                  HasFlowCapacity = false
                  [UpstreamBifurcationTimeSeries]
                     Touched = false
                     FILE_NAME = ||
                     ITEM_COUNT = 0
                     ITEM_NUMBERS = 0
                  EndSect  // UpstreamBifurcationTimeSeries

                  [UpstreamBifurcationTable]
                     Touched = false
                     FILE_NAME = ||
                     ITEM_COUNT = 0
                     ITEM_NUMBERS = 0
                  EndSect  // UpstreamBifurcationTable

                  [MinFlowRequirementTimeSeries]
                     Touched = false
                     FILE_NAME = ||
                     ITEM_COUNT = 0
                     ITEM_NUMBERS = 0
                  EndSect  // MinFlowRequirementTimeSeries

                  [FlowLossDfsSelection]
                     Touched = false
                     FILE_NAME = ||
                     ITEM_COUNT = 0
                     ITEM_NUMBERS = 0
                  EndSect  // FlowLossDfsSelection

                  [FlowCapacityDfsSelection]
                     Touched = false
                     FILE_NAME = ||
                     ITEM_COUNT = 0
                     ITEM_NUMBERS = 0
                  EndSect  // FlowCapacityDfsSelection

               EndSect  // RiverNode_12

               [RiverNode_13]
                  Touched = false
                  ObjectID = 'e712a28f-f897-4542-8236-cd3692a34bf4'
                  Shape = 'POINT(501192.216021283 6251307.78397872)'
                  ShortName = 'N28'
                  BranchID = '364a1eaa-079e-4bfe-bdc3-34289f78a4a8'
                  Chainage = 57054.0
                  BranchID = '364a1eaa-079e-4bfe-bdc3-34289f78a4a8'
                  Chainage = 57054.0
                  RiverNodeType = 0
                  BifurcationNode = false
                  UpstreamBifurcationType = 0
                  MinorBranchID = '00000000-0000-0000-0000-000000000000'
                  HasMinFlowRequirement = false
                  HasFlowLoss = false
                  HasFlowCapacity = false
                  [UpstreamBifurcationTimeSeries]
                     Touched = false
                     FILE_NAME = ||
                     ITEM_COUNT = 0
                     ITEM_NUMBERS = 0
                  EndSect  // UpstreamBifurcationTimeSeries

                  [UpstreamBifurcationTable]
                     Touched = false
                     FILE_NAME = ||
                     ITEM_COUNT = 0
                     ITEM_NUMBERS = 0
                  EndSect  // UpstreamBifurcationTable

                  [MinFlowRequirementTimeSeries]
                     Touched = false
                     FILE_NAME = ||
                     ITEM_COUNT = 0
                     ITEM_NUMBERS = 0
                  EndSect  // MinFlowRequirementTimeSeries

                  [FlowLossDfsSelection]
                     Touched = false
                     FILE_NAME = ||
                     ITEM_COUNT = 0
                     ITEM_NUMBERS = 0
                  EndSect  // FlowLossDfsSelection

                  [FlowCapacityDfsSelection]
                     Touched = false
                     FILE_NAME = ||
                     ITEM_COUNT = 0
                     ITEM_NUMBERS = 0
                  EndSect  // FlowCapacityDfsSelection

               EndSect  // RiverNode_13

               [RiverNode_14]
                  Touched = false
                  ObjectID = 'f009739d-a901-4f90-9b13-905dec864de3'
                  Shape = 'POINT(501025.983812414 6251138.6612708)'
                  ShortName = 'N14'
                  BranchID = '364a1eaa-079e-4bfe-bdc3-34289f78a4a8'
                  Chainage = 57315.86986404567
                  BranchID = '364a1eaa-079e-4bfe-bdc3-34289f78a4a8'
                  Chainage = 57315.86986404567
                  RiverNodeType = 0
                  BifurcationNode = false
                  UpstreamBifurcationType = 0
                  MinorBranchID = '00000000-0000-0000-0000-000000000000'
                  HasMinFlowRequirement = false
                  HasFlowLoss = false
                  HasFlowCapacity = false
                  [UpstreamBifurcationTimeSeries]
                     Touched = false
                     FILE_NAME = ||
                     ITEM_COUNT = 0
                     ITEM_NUMBERS = 0
                  EndSect  // UpstreamBifurcationTimeSeries

                  [UpstreamBifurcationTable]
                     Touched = false
                     FILE_NAME = ||
                     ITEM_COUNT = 0
                     ITEM_NUMBERS = 0
                  EndSect  // UpstreamBifurcationTable

                  [MinFlowRequirementTimeSeries]
                     Touched = false
                     FILE_NAME = ||
                     ITEM_COUNT = 0
                     ITEM_NUMBERS = 0
                  EndSect  // MinFlowRequirementTimeSeries

                  [FlowLossDfsSelection]
                     Touched = false
                     FILE_NAME = ||
                     ITEM_COUNT = 0
                     ITEM_NUMBERS = 0
                  EndSect  // FlowLossDfsSelection

                  [FlowCapacityDfsSelection]
                     Touched = false
                     FILE_NAME = ||
                     ITEM_COUNT = 0
                     ITEM_NUMBERS = 0
                  EndSect  // FlowCapacityDfsSelection

               EndSect  // RiverNode_14

               [RiverNode_15]
                  Touched = false
                  ObjectID = '150144c6-c9e0-45a5-b8c7-080de320d563'
                  Shape = 'POINT(500663.547350871 6251303.77894988)'
                  ShortName = 'N9'
                  BranchID = '364a1eaa-079e-4bfe-bdc3-34289f78a4a8'
                  Chainage = 57766.0
                  BranchID = '364a1eaa-079e-4bfe-bdc3-34289f78a4a8'
                  Chainage = 57766.0
                  RiverNodeType = 0
                  BifurcationNode = false
                  UpstreamBifurcationType = 0
                  MinorBranchID = '00000000-0000-0000-0000-000000000000'
                  HasMinFlowRequirement = false
                  HasFlowLoss = false
                  HasFlowCapacity = false
                  [UpstreamBifurcationTimeSeries]
                     Touched = false
                     FILE_NAME = ||
                     ITEM_COUNT = 0
                     ITEM_NUMBERS = 0
                  EndSect  // UpstreamBifurcationTimeSeries

                  [UpstreamBifurcationTable]
                     Touched = false
                     FILE_NAME = ||
                     ITEM_COUNT = 0
                     ITEM_NUMBERS = 0
                  EndSect  // UpstreamBifurcationTable

                  [MinFlowRequirementTimeSeries]
                     Touched = false
                     FILE_NAME = ||
                     ITEM_COUNT = 0
                     ITEM_NUMBERS = 0
                  EndSect  // MinFlowRequirementTimeSeries

                  [FlowLossDfsSelection]
                     Touched = false
                     FILE_NAME = ||
                     ITEM_COUNT = 0
                     ITEM_NUMBERS = 0
                  EndSect  // FlowLossDfsSelection

                  [FlowCapacityDfsSelection]
                     Touched = false
                     FILE_NAME = ||
                     ITEM_COUNT = 0
                     ITEM_NUMBERS = 0
                  EndSect  // FlowCapacityDfsSelection

               EndSect  // RiverNode_15

               [RiverNode_16]
                  Touched = false
                  ObjectID = '979a798a-f16d-4924-8ee3-9e034c0913c7'
                  Shape = 'POINT(500663.11751942 6251303.84035437)'
                  ShortName = 'N4'
                  BranchID = '364a1eaa-079e-4bfe-bdc3-34289f78a4a8'
                  Chainage = 57766.43419706274
                  BranchID = '364a1eaa-079e-4bfe-bdc3-34289f78a4a8'
                  Chainage = 57766.43419706274
                  RiverNodeType = 0
                  BifurcationNode = false
                  UpstreamBifurcationType = 0
                  MinorBranchID = '00000000-0000-0000-0000-000000000000'
                  HasMinFlowRequirement = false
                  HasFlowLoss = false
                  HasFlowCapacity = false
                  [UpstreamBifurcationTimeSeries]
                     Touched = false
                     FILE_NAME = ||
                     ITEM_COUNT = 0
                     ITEM_NUMBERS = 0
                  EndSect  // UpstreamBifurcationTimeSeries

                  [UpstreamBifurcationTable]
                     Touched = false
                     FILE_NAME = ||
                     ITEM_COUNT = 0
                     ITEM_NUMBERS = 0
                  EndSect  // UpstreamBifurcationTable

                  [MinFlowRequirementTimeSeries]
                     Touched = false
                     FILE_NAME = ||
                     ITEM_COUNT = 0
                     ITEM_NUMBERS = 0
                  EndSect  // MinFlowRequirementTimeSeries

                  [FlowLossDfsSelection]
                     Touched = false
                     FILE_NAME = ||
                     ITEM_COUNT = 0
                     ITEM_NUMBERS = 0
                  EndSect  // FlowLossDfsSelection

                  [FlowCapacityDfsSelection]
                     Touched = false
                     FILE_NAME = ||
                     ITEM_COUNT = 0
                     ITEM_NUMBERS = 0
                  EndSect  // FlowCapacityDfsSelection

               EndSect  // RiverNode_16

               [RiverNode_17]
                  Touched = false
                  ObjectID = '90331e2e-236c-4f09-b6a4-f165780fcfd4'
                  Shape = 'POINT(500551.077097176 6251219.90362853)'
                  ShortName = 'N25'
                  BranchID = '364a1eaa-079e-4bfe-bdc3-34289f78a4a8'
                  Chainage = 57941.81177968122
                  BranchID = '364a1eaa-079e-4bfe-bdc3-34289f78a4a8'
                  Chainage = 57941.81177968122
                  RiverNodeType = 0
                  BifurcationNode = false
                  UpstreamBifurcationType = 0
                  MinorBranchID = '00000000-0000-0000-0000-000000000000'
                  HasMinFlowRequirement = false
                  HasFlowLoss = false
                  HasFlowCapacity = false
                  [UpstreamBifurcationTimeSeries]
                     Touched = false
                     FILE_NAME = ||
                     ITEM_COUNT = 0
                     ITEM_NUMBERS = 0
                  EndSect  // UpstreamBifurcationTimeSeries

                  [UpstreamBifurcationTable]
                     Touched = false
                     FILE_NAME = ||
                     ITEM_COUNT = 0
                     ITEM_NUMBERS = 0
                  EndSect  // UpstreamBifurcationTable

                  [MinFlowRequirementTimeSeries]
                     Touched = false
                     FILE_NAME = ||
                     ITEM_COUNT = 0
                     ITEM_NUMBERS = 0
                  EndSect  // MinFlowRequirementTimeSeries

                  [FlowLossDfsSelection]
                     Touched = false
                     FILE_NAME = ||
                     ITEM_COUNT = 0
                     ITEM_NUMBERS = 0
                  EndSect  // FlowLossDfsSelection

                  [FlowCapacityDfsSelection]
                     Touched = false
                     FILE_NAME = ||
                     ITEM_COUNT = 0
                     ITEM_NUMBERS = 0
                  EndSect  // FlowCapacityDfsSelection

               EndSect  // RiverNode_17

               [RiverNode_18]
                  Touched = false
                  ObjectID = '49de0fa9-0e9b-4d74-9db3-f14ada7dc124'
                  Shape = 'POINT(500550.959517343 6251220.05060332)'
                  ShortName = 'N26'
                  BranchID = '364a1eaa-079e-4bfe-bdc3-34289f78a4a8'
                  Chainage = 57942.0
                  BranchID = '364a1eaa-079e-4bfe-bdc3-34289f78a4a8'
                  Chainage = 57942.0
                  RiverNodeType = 0
                  BifurcationNode = false
                  UpstreamBifurcationType = 0
                  MinorBranchID = '00000000-0000-0000-0000-000000000000'
                  HasMinFlowRequirement = false
                  HasFlowLoss = false
                  HasFlowCapacity = false
                  [UpstreamBifurcationTimeSeries]
                     Touched = false
                     FILE_NAME = ||
                     ITEM_COUNT = 0
                     ITEM_NUMBERS = 0
                  EndSect  // UpstreamBifurcationTimeSeries

                  [UpstreamBifurcationTable]
                     Touched = false
                     FILE_NAME = ||
                     ITEM_COUNT = 0
                     ITEM_NUMBERS = 0
                  EndSect  // UpstreamBifurcationTable

                  [MinFlowRequirementTimeSeries]
                     Touched = false
                     FILE_NAME = ||
                     ITEM_COUNT = 0
                     ITEM_NUMBERS = 0
                  EndSect  // MinFlowRequirementTimeSeries

                  [FlowLossDfsSelection]
                     Touched = false
                     FILE_NAME = ||
                     ITEM_COUNT = 0
                     ITEM_NUMBERS = 0
                  EndSect  // FlowLossDfsSelection

                  [FlowCapacityDfsSelection]
                     Touched = false
                     FILE_NAME = ||
                     ITEM_COUNT = 0
                     ITEM_NUMBERS = 0
                  EndSect  // FlowCapacityDfsSelection

               EndSect  // RiverNode_18

            EndSect  // RiverNodeList

            [ReachProperties]
               Touched = false
               Name = 'Karup River'
               HasFlowLoss = false
               HasFlowCapacity = false
               HasMinFlowRequirement = false
               [FlowLossTimeSeries]
                  Touched = false
                  FILE_NAME = ||
                  ITEM_COUNT = 0
                  ITEM_NUMBERS = 0
               EndSect  // FlowLossTimeSeries

               [FlowCapacityTimeSeries]
                  Touched = false
                  FILE_NAME = ||
                  ITEM_COUNT = 0
                  ITEM_NUMBERS = 0
               EndSect  // FlowCapacityTimeSeries

               [MinFlowRequirementTimeSeries]
                  Touched = false
                  FILE_NAME = ||
                  ITEM_COUNT = 0
                  ITEM_NUMBERS = 0
               EndSect  // MinFlowRequirementTimeSeries

               [HydraulicParameters]
                  Touched = false
                  FlowRoutingMethod = 0
                  DelayK = 0.0
                  ShapeX = 0.0
                  WaterLevelMethod = 0
                  ManningN = 0.0
                  Width = 0.0
                  Slope = 0.0
                  ManningMaxDepth = 0.0
                  HasHeadLoss = false
                  [RatingCurveTable]
                     Touched = false
                     FILE_NAME = ||
                     ITEM_COUNT = 0
                     ITEM_NUMBERS = 0
                  EndSect  // RatingCurveTable

                  [HeadLossTable]
                     Touched = false
                     FILE_NAME = ||
                     ITEM_COUNT = 0
                     ITEM_NUMBERS = 0
                  EndSect  // HeadLossTable

               EndSect  // HydraulicParameters

            EndSect  // ReachProperties

            [LinkChannel]
               Touched = false
               Type = 0
               Datum = 0.0
               USInvert = 0.0
               DSInvert = 0.0
               Branch_XSect = ''
               TopoID_XSect = ''
               Chainage_XSect = 0.0
               DepthWidth = '<CLOB:0>'
               LevelWidth = '<CLOB:0>'
               ResisType = 0
               ResisValue = 20.0
               HLPosIn = 0.5
               HLPosOut = 1.0
               HLPosFO = 1.0
               HLPosAdd = 0.0
               HLNegIn = 0.5
               HLNegOut = 1.0
               HLNegFO = 1.0
               HLNegAdd = 0.0
               AllowRecalc = true
               NoQh = 25
               QH_Relations = '<CLOB:0>'
            EndSect  // LinkChannel

         EndSect  // Branch_4

         [Branch_5]
            Touched = false
            ObjectID = 'dd9bad12-8915-46fe-9ab9-7c2dd18157ff'
            Shape = 'LINESTRING(519664.999999942 6242890.00001388,519664.999999942 6242975.00001388,519594.999999942 6243045.00001387,519564.999999942 6243035.00001388,519514.999999942 6243095.00001388,519524.999999942 6243105.00001388,519524.999999942 6243205.00001388,519434.999999942 6243305.00001388,519404.999999943 6243325.00001388,519384.999999943 6243325.00001388,519214.999999943 6243155.00001388,519204.999999943 6243065.00001387,519114.999999943 6242975.00001387,519104.999999943 6242945.00001387,519064.999999943 6242895.00001387,519064.999999943 6242815.00001387,519034.999999944 6242775.00001387,519034.999999944 6242745.00001387,519024.999999944 6242735.00001387,519024.999999944 6242525.00001387,519044.999999944 6242495.00001387,519044.999999944 6242325.00001386,518804.999999944 6242085.00001385,518744.999999945 6242085.00001386,518734.999999945 6242075.00001386,518644.999999945 6242065.00001386,518604.999999945 6242025.00001386,518564.999999945 6242005.00001385,518084.999999947 6242005.00001386,517964.999999947 6241965.00001386,517634.999999948 6241635.00001385,517604.999999948 6241615.00001385,517584.999999948 6241615.00001385,517334.999999949 6241365.00001384,517274.999999949 6241245.00001384,516984.99999995 6240955.00001383,516914.99999995 6240915.00001383,516864.99999995 6240865.00001383,516874.99999995 6240805.00001383,516794.999999951 6240735.00001383,516694.999999951 6240695.00001383,516594.999999951 6240675.00001383,516544.999999951 6240625.00001383,516524.999999952 6240635.00001383,516424.999999952 6240585.00001383,516394.999999952 6240585.00001383,516324.999999952 6240555.00001382,516314.999999952 6240565.00001383,516284.999999952 6240535.00001382,516274.999999952 6240545.00001382,516214.999999952 6240525.00001382,515964.999999953 6240525.00001383,515954.999999953 6240535.00001383,515864.999999953 6240535.00001383,515794.999999953 6240485.00001382,515774.999999954 6240485.00001383,515674.999999954 6240405.00001382,515644.999999954 6240405.00001382,515594.999999954 6240375.00001382,515504.999999954 6240375.00001382,515474.999999954 6240355.00001382,515454.999999954 6240355.00001382,515424.999999955 6240325.00001382,515434.999999954 6240315.00001382,515384.999999955 6240275.00001382,515304.999999955 6240275.00001382,515204.999999955 6240225.00001382,515154.999999955 6240175.00001382,515104.999999955 6240145.00001381,515054.999999956 6240155.00001382,515034.999999956 6240125.00001382,514914.999999956 6240125.00001382,514864.999999956 6240085.00001382,514844.999999956 6240085.00001382,514814.999999956 6240125.00001382,514764.999999957 6240105.00001381,514754.999999957 6240125.00001382,514734.999999957 6240125.00001382,514714.999999957 6240155.00001381,514684.999999957 6240175.00001381,514654.999999957 6240175.00001382,514614.999999957 6240205.00001382,514554.999999957 6240205.00001382,514534.999999957 6240215.00001382,514524.999999957 6240195.00001382,514484.999999957 6240165.00001382,514454.999999958 6240175.00001382,514424.999999958 6240165.00001382,514404.999999958 6240145.00001382,514414.999999958 6240135.00001381,514404.999999958 6240115.00001381,514364.999999958 6240115.00001381,514314.999999958 6240155.00001382,514284.999999958 6240155.00001382,514184.999999958 6240215.00001382,514134.999999959 6240215.00001382,514084.999999959 6240295.00001382,514044.999999959 6240265.00001382,514004.999999959 6240295.00001382,513974.999999959 6240255.00001382,513904.999999959 6240315.00001382,513844.999999959 6240295.00001382,513784.99999996 6240295.00001382,513754.99999996 6240275.00001382,513724.99999996 6240315.00001382,513704.99999996 6240315.00001382,513694.99999996 6240295.00001382,513614.99999996 6240225.00001382,513474.99999996 6240225.00001382,513444.99999996 6240255.00001382,513434.99999996 6240255.00001382,513434.99999996 6240245.00001382,513384.999999961 6240245.00001382,513304.999999961 6240215.00001382,513274.999999961 6240215.00001382,513184.999999961 6240145.00001382,513154.999999961 6240155.00001382,513124.999999961 6240105.00001382,513044.999999962 6240145.00001382,513014.999999962 6240145.00001382,512964.999999962 6240105.00001382,512944.999999962 6240125.00001382,512904.999999962 6240095.00001382,512864.999999962 6240095.00001381,512854.999999962 6240075.00001382,512804.999999962 6240065.00001382,512774.999999962 6240035.00001381,512764.999999963 6240045.00001381,512654.999999963 6240055.00001382,512574.999999963 6240125.00001382,512494.999999963 6240125.00001382,512464.999999963 6240145.00001382,512424.999999963 6240145.00001382,512394.999999963 6240175.00001382,512344.999999964 6240175.00001382,512334.999999964 6240185.00001382,512304.999999964 6240175.00001381,512284.999999964 6240195.00001382,512234.999999964 6240205.00001382,512144.999999964 6240255.00001382,512124.999999964 6240255.00001382,512084.999999964 6240215.00001381,512034.999999964 6240215.00001382,512024.999999965 6240225.00001382,512034.999999964 6240245.00001381,512014.999999964 6240265.00001382,511994.999999965 6240265.00001382,511964.999999965 6240235.00001382,511924.999999965 6240255.00001382,511874.999999965 6240245.00001382,511864.999999965 6240255.00001382,511884.999999965 6240275.00001382,511874.999999965 6240295.00001381,511864.999999965 6240285.00001382,511834.999999965 6240285.00001382,511824.999999965 6240295.00001382,511654.999999966 6240305.00001382,511604.999999966 6240325.00001382,511584.999999966 6240285.00001382,511604.999999966 6240245.00001382,511594.999999966 6240235.00001382,511564.999999966 6240235.00001382,511544.999999966 6240265.00001382,511378.783918201 6240267.79810659,511173.976240556 6240174.07255573,510927.512764057 6240094.23227461,510767.832201818 6240115.06017404,510556.081891024 6240069.93305862,510434.585811059 6240017.86331007,510274.905248821 6239990.0927775,510156.880485427 6239972.73619465,510066.626254574 6239920.66645645)'
            ShortName = 'E18'
            Name = 'Aaresvad Creek'
            TopoID = 'model_cross'
            FlowDirection = 0
            BranchType = 2
            UpStreamConnectionType = 0
            UpStreamConnRiverNodeID = '00000000-0000-0000-0000-000000000000'
            UpStreamStorageID = '00000000-0000-0000-0000-000000000000'
            DownStreamConnectionType = 0
            DownStreamConnRiverNodeID = 'a5f81c5b-a8c0-4c43-bf27-b6486a9624eb'
            DownStreamStorageID = '00000000-0000-0000-0000-000000000000'
            UserDefinedChainageList = '(0,0)(171,11083)'
            [RiverNodeList]
               Touched = false
               DhiSEPfsListItemCount = 1
               [RiverNode_0]
                  Touched = false
                  ObjectID = '23963155-42fb-476f-90f0-6fe5b440ab82'
                  Shape = 'POINT(510166.16623739 6239974.10174641)'
                  ShortName = 'N24'
                  BranchID = 'dd9bad12-8915-46fe-9ab9-7c2dd18157ff'
                  Chainage = 10983.0
                  BranchID = 'dd9bad12-8915-46fe-9ab9-7c2dd18157ff'
                  Chainage = 10983.0
                  RiverNodeType = 4
                  BifurcationNode = false
                  UpstreamBifurcationType = 0
                  MinorBranchID = '00000000-0000-0000-0000-000000000000'
                  HasMinFlowRequirement = false
                  HasFlowLoss = false
                  HasFlowCapacity = false
                  [UpstreamBifurcationTimeSeries]
                     Touched = false
                     FILE_NAME = ||
                     ITEM_COUNT = 0
                     ITEM_NUMBERS = 0
                  EndSect  // UpstreamBifurcationTimeSeries

                  [UpstreamBifurcationTable]
                     Touched = false
                     FILE_NAME = ||
                     ITEM_COUNT = 0
                     ITEM_NUMBERS = 0
                  EndSect  // UpstreamBifurcationTable

                  [MinFlowRequirementTimeSeries]
                     Touched = false
                     FILE_NAME = ||
                     ITEM_COUNT = 0
                     ITEM_NUMBERS = 0
                  EndSect  // MinFlowRequirementTimeSeries

                  [FlowLossDfsSelection]
                     Touched = false
                     FILE_NAME = ||
                     ITEM_COUNT = 0
                     ITEM_NUMBERS = 0
                  EndSect  // FlowLossDfsSelection

                  [FlowCapacityDfsSelection]
                     Touched = false
                     FILE_NAME = ||
                     ITEM_COUNT = 0
                     ITEM_NUMBERS = 0
                  EndSect  // FlowCapacityDfsSelection

               EndSect  // RiverNode_0

            EndSect  // RiverNodeList

            [ReachProperties]
               Touched = false
               Name = 'Aaresvad Creek'
               HasFlowLoss = false
               HasFlowCapacity = false
               HasMinFlowRequirement = false
               [FlowLossTimeSeries]
                  Touched = false
                  FILE_NAME = ||
                  ITEM_COUNT = 0
                  ITEM_NUMBERS = 0
               EndSect  // FlowLossTimeSeries

               [FlowCapacityTimeSeries]
                  Touched = false
                  FILE_NAME = ||
                  ITEM_COUNT = 0
                  ITEM_NUMBERS = 0
               EndSect  // FlowCapacityTimeSeries

               [MinFlowRequirementTimeSeries]
                  Touched = false
                  FILE_NAME = ||
                  ITEM_COUNT = 0
                  ITEM_NUMBERS = 0
               EndSect  // MinFlowRequirementTimeSeries

               [HydraulicParameters]
                  Touched = false
                  FlowRoutingMethod = 0
                  DelayK = 0.0
                  ShapeX = 0.0
                  WaterLevelMethod = 0
                  ManningN = 0.0
                  Width = 0.0
                  Slope = 0.0
                  ManningMaxDepth = 0.0
                  HasHeadLoss = false
                  [RatingCurveTable]
                     Touched = false
                     FILE_NAME = ||
                     ITEM_COUNT = 0
                     ITEM_NUMBERS = 0
                  EndSect  // RatingCurveTable

                  [HeadLossTable]
                     Touched = false
                     FILE_NAME = ||
                     ITEM_COUNT = 0
                     ITEM_NUMBERS = 0
                  EndSect  // HeadLossTable

               EndSect  // HydraulicParameters

            EndSect  // ReachProperties

            [LinkChannel]
               Touched = false
               Type = 0
               Datum = 0.0
               USInvert = 0.0
               DSInvert = 0.0
               Branch_XSect = ''
               TopoID_XSect = ''
               Chainage_XSect = 0.0
               DepthWidth = '<CLOB:0>'
               LevelWidth = '<CLOB:0>'
               ResisType = 0
               ResisValue = 20.0
               HLPosIn = 0.5
               HLPosOut = 1.0
               HLPosFO = 1.0
               HLPosAdd = 0.0
               HLNegIn = 0.5
               HLNegOut = 1.0
               HLNegFO = 1.0
               HLNegAdd = 0.0
               AllowRecalc = true
               NoQh = 25
               QH_Relations = '<CLOB:0>'
            EndSect  // LinkChannel

         EndSect  // Branch_5

      EndSect  // Branches

      [UserDefinedChainageVertex]
         Touched = false
         [PointSymboloy]
            Touched = false
            ShowSymbol = true
            LabelVisible = false
            FontSize = 9
            FontStyle = 0
            FontColor = -16777216
            SymbolField = ''
            SymbolFieldTypeCode = 0
            UseCustomColor = false
            LabelField = 'X'
            SymbolScope = 0
            SymbolExpression = ''
            SymbologyType = 0
            [SpecifiedSymbols]
               Count = 0
            EndSect  // SpecifiedSymbols

            [GraduatedSizeRange]
               SizeFrom = 1
               SizeTo = 20
            EndSect  // GraduatedSizeRange

            [GraduatedColorRamp]
               Invert = false
               ColorRamp = '-16777216:0;-1:100'
            EndSect  // GraduatedColorRamp

            SymbolStyle = 0
            PointSymbolFillColor = -16776961
            PointOutlineColor = -16777216
            PointSize = 6
            PointOutlineWidth = 1
            PointStyle = 0
            BitmapName = ''
         EndSect  // PointSymboloy

      EndSect  // UserDefinedChainageVertex

      [RiverNodeView]
         [PointSymboloy]
            Touched = false
            ShowSymbol = true
            LabelVisible = false
            FontSize = 9
            FontStyle = 0
            FontColor = -16777216
            SymbolField = 'RiverNodeType'
            SymbolFieldTypeCode = 9
            UseCustomColor = false
            LabelField = 'Name'
            SymbolScope = 0
            SymbolExpression = ''
            SymbologyType = 3
            [SpecifiedSymbols]
               Count = 12
               [SpecifiedSymbolElem_0]
                  ClassifyType = 3
                  Label = 'RiverNodeType: Regular'
                  Value = 'Regular'
                  IsOthersStyle = false
                  BitmapName = ''
                  FillColor = -16776961
                  OutlineColor = -16776961
                  PointSize = 6
                  OutlineThickness = 1
                  PointSymbolType = 0
                  SymbolStyle = 0
               EndSect  // SpecifiedSymbolElem_0

               [SpecifiedSymbolElem_1]
                  ClassifyType = 3
                  Label = 'RiverNodeType: Catchment'
                  Value = 'Catchment'
                  IsOthersStyle = false
                  BitmapName = ''
                  FillColor = -8372224
                  OutlineColor = -8372224
                  PointSize = 6
                  OutlineThickness = 1
                  PointSymbolType = 0
                  SymbolStyle = 0
               EndSect  // SpecifiedSymbolElem_1

               [SpecifiedSymbolElem_2]
                  ClassifyType = 3
                  Label = 'RiverNodeType: CatchmentPriority'
                  Value = 'CatchmentPriority'
                  IsOthersStyle = false
                  BitmapName = ''
                  FillColor = -4177920
                  OutlineColor = -4177920
                  PointSize = 6
                  OutlineThickness = 1
                  PointSymbolType = 0
                  SymbolStyle = 0
               EndSect  // SpecifiedSymbolElem_2

               [SpecifiedSymbolElem_3]
                  ClassifyType = 3
                  Label = 'RiverNodeType: CatchmentRoutingMethod'
                  Value = 'CatchmentRoutingMethod'
                  IsOthersStyle = false
                  BitmapName = ''
                  FillColor = -4177920
                  OutlineColor = -4177920
                  PointSize = 6
                  OutlineThickness = 1
                  PointSymbolType = 0
                  SymbolStyle = 0
               EndSect  // SpecifiedSymbolElem_3

               [SpecifiedSymbolElem_4]
                  ClassifyType = 3
                  Label = 'RiverNodeType: CatchmentRoutingMethodPriority'
                  Value = 'CatchmentRoutingMethodPriority'
                  IsOthersStyle = false
                  BitmapName = ''
                  FillColor = -4177920
                  OutlineColor = -4177920
                  PointSize = 6
                  OutlineThickness = 1
                  PointSymbolType = 0
                  SymbolStyle = 0
               EndSect  // SpecifiedSymbolElem_4

               [SpecifiedSymbolElem_5]
                  ClassifyType = 3
                  Label = 'RiverNodeType: RoutingMethodPriority'
                  Value = 'RoutingMethodPriority'
                  IsOthersStyle = false
                  BitmapName = ''
                  FillColor = -23296
                  OutlineColor = -23296
                  PointSize = 6
                  OutlineThickness = 1
                  PointSymbolType = 0
                  SymbolStyle = 0
               EndSect  // SpecifiedSymbolElem_5

               [SpecifiedSymbolElem_6]
                  ClassifyType = 3
                  Label = 'RiverNodeType: Reservoir'
                  Value = 'Reservoir'
                  IsOthersStyle = false
                  BitmapName = 'reservoir'
                  FillColor = -23296
                  OutlineColor = -23296
                  PointSize = 6
                  OutlineThickness = 1
                  PointSymbolType = 1
                  SymbolStyle = 1
               EndSect  // SpecifiedSymbolElem_6

               [SpecifiedSymbolElem_7]
                  ClassifyType = 3
                  Label = 'RiverNodeType: ReservoirCatchment'
                  Value = 'ReservoirCatchment'
                  IsOthersStyle = false
                  BitmapName = 'reservoir_catchment'
                  FillColor = -23296
                  OutlineColor = -23296
                  PointSize = 6
                  OutlineThickness = 1
                  PointSymbolType = 1
                  SymbolStyle = 1
               EndSect  // SpecifiedSymbolElem_7

               [SpecifiedSymbolElem_8]
                  ClassifyType = 3
                  Label = 'RiverNodeType: Priority'
                  Value = 'Priority'
                  IsOthersStyle = false
                  BitmapName = ''
                  FillColor = -32768
                  OutlineColor = -32768
                  PointSize = 6
                  OutlineThickness = 1
                  PointSymbolType = 0
                  SymbolStyle = 0
               EndSect  // SpecifiedSymbolElem_8

               [SpecifiedSymbolElem_9]
                  ClassifyType = 3
                  Label = 'RiverNodeType: RoutingMethod'
                  Value = 'RoutingMethod'
                  IsOthersStyle = false
                  BitmapName = ''
                  FillColor = -16744448
                  OutlineColor = -16744448
                  PointSize = 6
                  OutlineThickness = 1
                  PointSymbolType = 0
                  SymbolStyle = 0
               EndSect  // SpecifiedSymbolElem_9

               [SpecifiedSymbolElem_10]
                  ClassifyType = 3
                  Label = 'RiverNodeType: Reservoir, RoutingMethod'
                  Value = 'Reservoir, RoutingMethod'
                  IsOthersStyle = false
                  BitmapName = 'reservoir'
                  FillColor = -23296
                  OutlineColor = -23296
                  PointSize = 6
                  OutlineThickness = 1
                  PointSymbolType = 1
                  SymbolStyle = 1
               EndSect  // SpecifiedSymbolElem_10

               [SpecifiedSymbolElem_11]
                  ClassifyType = 3
                  Label = 'RiverNodeType: Other'
                  Value = 'Other'
                  IsOthersStyle = false
                  BitmapName = ''
                  FillColor = -16727872
                  OutlineColor = -16727872
                  PointSize = 6
                  OutlineThickness = 1
                  PointSymbolType = 0
                  SymbolStyle = 0
               EndSect  // SpecifiedSymbolElem_11

            EndSect  // SpecifiedSymbols

            [GraduatedSizeRange]
               SizeFrom = 1
               SizeTo = 20
            EndSect  // GraduatedSizeRange

            [GraduatedColorRamp]
               Invert = false
               ColorRamp = '-16777216:0;-1:100'
            EndSect  // GraduatedColorRamp

            SymbolStyle = 0
            PointSymbolFillColor = -23296
            PointOutlineColor = -23296
            PointSize = 6
            PointOutlineWidth = 1
            PointStyle = 0
            BitmapName = ''
         EndSect  // PointSymboloy

      EndSect  // RiverNodeView

      [RiverNetworkConnection]
         Touched = false
         DhiSEPfsListItemCount = 5
         [PolylineSymbology]
            Touched = false
            ShowSymbol = true
            LabelVisible = false
            FontSize = 9
            FontStyle = 0
            FontColor = -16777216
            SymbolField = ''
            SymbolFieldTypeCode = 0
            UseCustomColor = false
            LabelField = 'StartBranchName'
            SymbolScope = 0
            SymbolExpression = ''
            SymbologyType = 0
            [SpecifiedSymbols]
               Count = 0
            EndSect  // SpecifiedSymbols

            [GraduatedThicknessRange]
               SizeFrom = 1
               SizeTo = 20
            EndSect  // GraduatedThicknessRange

            [GraduatedColorRamp]
               Invert = false
               ColorRamp = '-16777216:0;-1:100'
            EndSect  // GraduatedColorRamp

            PolylineSymbolColor = -65536
            PolylineThickness = 1
            PolylineType = 0
            DrawDirectionArrow = true
            ArrowPosition = 0
         EndSect  // PolylineSymbology

      EndSect  // RiverNetworkConnection

      [KinematicRoutingMethodList]
         Touched = true
         DhiSEPfsListItemCount = 5
         [KinematicRoutingMethod_0]
            Touched = false
            ObjectID = '98ae62cc-05db-4289-aa10-8b8cfac2a7de'
            BranchID = '867a0dbb-d602-4fc2-8941-5ae36cc4a714'
            RiverNodeID = 'f087a393-d1bf-456e-8002-5253297ad99f'
            RoutingID = 'Method 1'
            FlowRoutingMethod = 0
            DelayK = 0.0
            ShapeX = 0.0
            WaterLevelMethod = 2
            ManningN = 0.0
            Width = 0.0
            Slope = 0.0
            ManningMaxDepth = 0.0
            [QHRelations]
               Count = 0
            EndSect  // QHRelations

            [RatingCurveTable]
               Touched = false
               FILE_NAME = ||
               ITEM_COUNT = 0
               ITEM_NUMBERS = 0
            EndSect  // RatingCurveTable

         EndSect  // KinematicRoutingMethod_0

         [KinematicRoutingMethod_1]
            Touched = false
            ObjectID = '1c95b9a8-0f58-4780-8481-593b8c076c14'
            BranchID = 'cb56540f-1acc-42f4-902e-78a0e398f38f'
            RiverNodeID = '87ac4d61-0ff0-4fd2-b8bf-69719743f372'
            RoutingID = 'Method 2'
            FlowRoutingMethod = 0
            DelayK = 0.0
            ShapeX = 0.0
            WaterLevelMethod = 2
            ManningN = 0.0
            Width = 0.0
            Slope = 0.0
            ManningMaxDepth = 0.0
            [QHRelations]
               Count = 0
            EndSect  // QHRelations

            [RatingCurveTable]
               Touched = false
               FILE_NAME = ||
               ITEM_COUNT = 0
               ITEM_NUMBERS = 0
            EndSect  // RatingCurveTable

         EndSect  // KinematicRoutingMethod_1

         [KinematicRoutingMethod_2]
            Touched = false
            ObjectID = 'a5e77209-42e9-444f-bd3f-f68860d805fd'
            BranchID = 'b0e3a41d-a21e-4335-a15c-5219eaa08adb'
            RiverNodeID = '1c0505bd-9ac5-43ce-986e-4e2c0e7598e3'
            RoutingID = 'Method 3'
            FlowRoutingMethod = 0
            DelayK = 0.0
            ShapeX = 0.0
            WaterLevelMethod = 2
            ManningN = 0.0
            Width = 0.0
            Slope = 0.0
            ManningMaxDepth = 0.0
            [QHRelations]
               Count = 0
            EndSect  // QHRelations

            [RatingCurveTable]
               Touched = false
               FILE_NAME = ||
               ITEM_COUNT = 0
               ITEM_NUMBERS = 0
            EndSect  // RatingCurveTable

         EndSect  // KinematicRoutingMethod_2

         [KinematicRoutingMethod_3]
            Touched = false
            ObjectID = 'efc3a526-8682-4404-8666-839116ea1347'
            BranchID = 'f19ceb0e-b667-481d-a194-b153794b657f'
            RiverNodeID = '843a0d8f-8425-4773-8e61-83f1b1209f7d'
            RoutingID = 'Method 4'
            FlowRoutingMethod = 0
            DelayK = 0.0
            ShapeX = 0.0
            WaterLevelMethod = 2
            ManningN = 0.0
            Width = 0.0
            Slope = 0.0
            ManningMaxDepth = 0.0
            [QHRelations]
               Count = 0
            EndSect  // QHRelations

            [RatingCurveTable]
               Touched = false
               FILE_NAME = ||
               ITEM_COUNT = 0
               ITEM_NUMBERS = 0
            EndSect  // RatingCurveTable

         EndSect  // KinematicRoutingMethod_3

         [KinematicRoutingMethod_4]
            Touched = false
            ObjectID = '5ed01eab-2a13-4397-a409-38dd3ed864d7'
            BranchID = 'dd9bad12-8915-46fe-9ab9-7c2dd18157ff'
            RiverNodeID = '23963155-42fb-476f-90f0-6fe5b440ab82'
            RoutingID = 'Method 6'
            FlowRoutingMethod = 0
            DelayK = 0.0
            ShapeX = 0.0
            WaterLevelMethod = 2
            ManningN = 0.0
            Width = 0.0
            Slope = 0.0
            ManningMaxDepth = 0.0
            [QHRelations]
               Count = 0
            EndSect  // QHRelations

            [RatingCurveTable]
               Touched = false
               FILE_NAME = ||
               ITEM_COUNT = 0
               ITEM_NUMBERS = 0
            EndSect  // RatingCurveTable

         EndSect  // KinematicRoutingMethod_4

      EndSect  // KinematicRoutingMethodList

      [AlignmentLines]
         Touched = true
         DhiSEPfsListItemCount = 0
         [PolylineSymbology]
            Touched = false
            ShowSymbol = true
            LabelVisible = false
            FontSize = 9
            FontStyle = 0
            FontColor = -16777216
            SymbolField = 'Type'
            SymbolFieldTypeCode = 9
            UseCustomColor = false
            LabelField = 'Type'
            SymbolScope = 0
            SymbolExpression = ''
            SymbologyType = 3
            [SpecifiedSymbols]
               Count = 4
               [SpecifiedSymbolElem_0]
                  ClassifyType = 3
                  Label = 'LeftExtent alignment line'
                  Value = 'LeftExtent'
                  IsOthersStyle = false
                  PolylineSymbolColor = -16777216
                  PolylineThickness = 2
                  PolylineType = 4
                  DrawDirectionArrow = true
                  ArrowPosition = 0
               EndSect  // SpecifiedSymbolElem_0

               [SpecifiedSymbolElem_1]
                  ClassifyType = 3
                  Label = 'LeftBank alignment line'
                  Value = 'LeftBank'
                  IsOthersStyle = false
                  PolylineSymbolColor = -16776961
                  PolylineThickness = 2
                  PolylineType = 4
                  DrawDirectionArrow = true
                  ArrowPosition = 0
               EndSect  // SpecifiedSymbolElem_1

               [SpecifiedSymbolElem_2]
                  ClassifyType = 3
                  Label = 'RightBank alignment line'
                  Value = 'RightBank'
                  IsOthersStyle = false
                  PolylineSymbolColor = -16744448
                  PolylineThickness = 2
                  PolylineType = 4
                  DrawDirectionArrow = true
                  ArrowPosition = 0
               EndSect  // SpecifiedSymbolElem_2

               [SpecifiedSymbolElem_3]
                  ClassifyType = 3
                  Label = 'RightExtent alignment line'
                  Value = 'RightExtent'
                  IsOthersStyle = false
                  PolylineSymbolColor = -65536
                  PolylineThickness = 2
                  PolylineType = 4
                  DrawDirectionArrow = true
                  ArrowPosition = 0
               EndSect  // SpecifiedSymbolElem_3

            EndSect  // SpecifiedSymbols

            [GraduatedThicknessRange]
               SizeFrom = 1
               SizeTo = 20
            EndSect  // GraduatedThicknessRange

            [GraduatedColorRamp]
               Invert = false
               ColorRamp = '-16777216:0;-1:100'
            EndSect  // GraduatedColorRamp

            PolylineSymbolColor = -23296
            PolylineThickness = 1
            PolylineType = 0
            DrawDirectionArrow = false
            ArrowPosition = 1
         EndSect  // PolylineSymbology

      EndSect  // AlignmentLines

      [MH_Cross_Sections]
         Touched = true
         CrossSectionsFileName = |.\karup1.xns11|
         [PolylineSymbology]
            Touched = false
            ShowSymbol = true
            LabelVisible = false
            FontSize = 9
            FontStyle = 0
            FontColor = -16777216
            SymbolField = 'BranchName'
            SymbolFieldTypeCode = 18
            UseCustomColor = false
            LabelField = 'BranchName'
            SymbolScope = 0
            SymbolExpression = ''
            SymbologyType = 0
            [SpecifiedSymbols]
               Count = 0
            EndSect  // SpecifiedSymbols

            [GraduatedThicknessRange]
               SizeFrom = 1
               SizeTo = 20
            EndSect  // GraduatedThicknessRange

            [GraduatedColorRamp]
               Invert = false
               ColorRamp = '-16777216:0;-1:100'
            EndSect  // GraduatedColorRamp

            PolylineSymbolColor = -16777216
            PolylineThickness = 4
            PolylineType = 0
            DrawDirectionArrow = false
            ArrowPosition = 0
         EndSect  // PolylineSymbology

      EndSect  // MH_Cross_Sections

      [CrossSectionMapSpanLineSymbology]
         Touched = true
         ObjectID = 'e7169970-b70c-4db1-81f3-8b6faa4b595b'
         [PolylineSymbology]
            Touched = false
            ShowSymbol = true
            LabelVisible = false
            FontSize = 9
            FontStyle = 0
            FontColor = -16777216
            SymbolField = 'BranchName'
            SymbolFieldTypeCode = 18
            UseCustomColor = false
            LabelField = 'BranchName'
            SymbolScope = 0
            SymbolExpression = ''
            SymbologyType = 0
            [SpecifiedSymbols]
               Count = 0
            EndSect  // SpecifiedSymbols

            [GraduatedThicknessRange]
               SizeFrom = 1
               SizeTo = 20
            EndSect  // GraduatedThicknessRange

            [GraduatedColorRamp]
               Invert = false
               ColorRamp = '-16777216:0;-1:100'
            EndSect  // GraduatedColorRamp

            PolylineSymbolColor = -65536
            PolylineThickness = 3
            PolylineType = 0
            DrawDirectionArrow = false
            ArrowPosition = 2
         EndSect  // PolylineSymbology

      EndSect  // CrossSectionMapSpanLineSymbology

      [Structure]
         Touched = true
         [Weirs]
            Touched = false
            DhiSEPfsListItemCount = 0
            [PointSymboloy]
               Touched = false
               ShowSymbol = true
               LabelVisible = false
               FontSize = 9
               FontStyle = 0
               FontColor = -16777216
               SymbolField = 'AttributeType'
               SymbolFieldTypeCode = 9
               UseCustomColor = false
               LabelField = 'ID'
               SymbolScope = 0
               SymbolExpression = ''
               SymbologyType = 0
               [SpecifiedSymbols]
                  Count = 0
               EndSect  // SpecifiedSymbols

               [GraduatedSizeRange]
                  SizeFrom = 1
                  SizeTo = 20
               EndSect  // GraduatedSizeRange

               [GraduatedColorRamp]
                  Invert = false
                  ColorRamp = '-16777216:0;-1:100'
               EndSect  // GraduatedColorRamp

               SymbolStyle = 0
               PointSymbolFillColor = 16777215
               PointOutlineColor = -16776961
               PointSize = 10
               PointOutlineWidth = 1
               PointStyle = 1
               BitmapName = ''
            EndSect  // PointSymboloy

         EndSect  // Weirs

         [Culverts]
            Touched = false
            DhiSEPfsListItemCount = 0
            [PointSymboloy]
               Touched = false
               ShowSymbol = true
               LabelVisible = false
               FontSize = 9
               FontStyle = 0
               FontColor = -16777216
               SymbolField = ''
               SymbolFieldTypeCode = 0
               UseCustomColor = false
               LabelField = 'ID'
               SymbolScope = 0
               SymbolExpression = ''
               SymbologyType = 0
               [SpecifiedSymbols]
                  Count = 0
               EndSect  // SpecifiedSymbols

               [GraduatedSizeRange]
                  SizeFrom = 1
                  SizeTo = 20
               EndSect  // GraduatedSizeRange

               [GraduatedColorRamp]
                  Invert = false
                  ColorRamp = '-16777216:0;-1:100'
               EndSect  // GraduatedColorRamp

               SymbolStyle = 0
               PointSymbolFillColor = 16777215
               PointOutlineColor = -16777216
               PointSize = 10
               PointOutlineWidth = 1
               PointStyle = 1
               BitmapName = ''
            EndSect  // PointSymboloy

         EndSect  // Culverts

         [Bridges]
            Touched = false
            DhiSEPfsListItemCount = 0
            [PointSymboloy]
               Touched = false
               ShowSymbol = true
               LabelVisible = false
               FontSize = 9
               FontStyle = 0
               FontColor = -16777216
               SymbolField = ''
               SymbolFieldTypeCode = 0
               UseCustomColor = false
               LabelField = 'ID'
               SymbolScope = 0
               SymbolExpression = ''
               SymbologyType = 0
               [SpecifiedSymbols]
                  Count = 0
               EndSect  // SpecifiedSymbols

               [GraduatedSizeRange]
                  SizeFrom = 1
                  SizeTo = 20
               EndSect  // GraduatedSizeRange

               [GraduatedColorRamp]
                  Invert = false
                  ColorRamp = '-16777216:0;-1:100'
               EndSect  // GraduatedColorRamp

               SymbolStyle = 0
               PointSymbolFillColor = 16777215
               PointOutlineColor = -16728064
               PointSize = 10
               PointOutlineWidth = 1
               PointStyle = 1
               BitmapName = ''
            EndSect  // PointSymboloy

         EndSect  // Bridges

         [Pumps]
            Touched = false
            DhiSEPfsListItemCount = 0
            [PointSymboloy]
               Touched = false
               ShowSymbol = true
               LabelVisible = false
               FontSize = 9
               FontStyle = 0
               FontColor = -16777216
               SymbolField = ''
               SymbolFieldTypeCode = 0
               UseCustomColor = false
               LabelField = 'ID'
               SymbolScope = 0
               SymbolExpression = ''
               SymbologyType = 0
               [SpecifiedSymbols]
                  Count = 0
               EndSect  // SpecifiedSymbols

               [GraduatedSizeRange]
                  SizeFrom = 1
                  SizeTo = 20
               EndSect  // GraduatedSizeRange

               [GraduatedColorRamp]
                  Invert = false
                  ColorRamp = '-16777216:0;-1:100'
               EndSect  // GraduatedColorRamp

               SymbolStyle = 0
               PointSymbolFillColor = 16777215
               PointOutlineColor = -16728064
               PointSize = 10
               PointOutlineWidth = 1
               PointStyle = 1
               BitmapName = ''
            EndSect  // PointSymboloy

         EndSect  // Pumps

         [Gates]
            Touched = true
            DhiSEPfsListItemCount = 0
            [PointSymboloy]
               Touched = false
               ShowSymbol = true
               LabelVisible = false
               FontSize = 9
               FontStyle = 0
               FontColor = -16777216
               SymbolField = ''
               SymbolFieldTypeCode = 0
               UseCustomColor = false
               LabelField = 'ID'
               SymbolScope = 0
               SymbolExpression = ''
               SymbologyType = 0
               [SpecifiedSymbols]
                  Count = 0
               EndSect  // SpecifiedSymbols

               [GraduatedSizeRange]
                  SizeFrom = 1
                  SizeTo = 20
               EndSect  // GraduatedSizeRange

               [GraduatedColorRamp]
                  Invert = false
                  ColorRamp = '-16777216:0;-1:100'
               EndSect  // GraduatedColorRamp

               SymbolStyle = 0
               PointSymbolFillColor = 16777215
               PointOutlineColor = -65536
               PointSize = 10
               PointOutlineWidth = 1
               PointStyle = 1
               BitmapName = ''
            EndSect  // PointSymboloy

         EndSect  // Gates

         [DirectDischarges]
            Touched = false
            DhiSEPfsListItemCount = 0
            [PointSymboloy]
               Touched = false
               ShowSymbol = true
               LabelVisible = false
               FontSize = 9
               FontStyle = 0
               FontColor = -16777216
               SymbolField = ''
               SymbolFieldTypeCode = 0
               UseCustomColor = false
               LabelField = 'ID'
               SymbolScope = 0
               SymbolExpression = ''
               SymbologyType = 0
               [SpecifiedSymbols]
                  Count = 0
               EndSect  // SpecifiedSymbols

               [GraduatedSizeRange]
                  SizeFrom = 1
                  SizeTo = 20
               EndSect  // GraduatedSizeRange

               [GraduatedColorRamp]
                  Invert = false
                  ColorRamp = '-16777216:0;-1:100'
               EndSect  // GraduatedColorRamp

               SymbolStyle = 0
               PointSymbolFillColor = 16777215
               PointOutlineColor = -16751616
               PointSize = 10
               PointOutlineWidth = 1
               PointStyle = 1
               BitmapName = ''
            EndSect  // PointSymboloy

         EndSect  // DirectDischarges

         [Dambreaks]
            Touched = false
            DhiSEPfsListItemCount = 0
            [PointSymboloy]
               Touched = false
               ShowSymbol = true
               LabelVisible = false
               FontSize = 9
               FontStyle = 0
               FontColor = -16777216
               SymbolField = ''
               SymbolFieldTypeCode = 0
               UseCustomColor = false
               LabelField = 'ID'
               SymbolScope = 0
               SymbolExpression = ''
               SymbologyType = 0
               [SpecifiedSymbols]
                  Count = 0
               EndSect  // SpecifiedSymbols

               [GraduatedSizeRange]
                  SizeFrom = 1
                  SizeTo = 20
               EndSect  // GraduatedSizeRange

               [GraduatedColorRamp]
                  Invert = false
                  ColorRamp = '-16777216:0;-1:100'
               EndSect  // GraduatedColorRamp

               SymbolStyle = 0
               PointSymbolFillColor = 16777215
               PointOutlineColor = -16181
               PointSize = 10
               PointOutlineWidth = 1
               PointStyle = 1
               BitmapName = ''
            EndSect  // PointSymboloy

         EndSect  // Dambreaks

         [EnergyLosses]
            Touched = false
            DhiSEPfsListItemCount = 0
            [PointSymboloy]
               Touched = false
               ShowSymbol = true
               LabelVisible = false
               FontSize = 9
               FontStyle = 0
               FontColor = -16777216
               SymbolField = ''
               SymbolFieldTypeCode = 0
               UseCustomColor = false
               LabelField = 'ID'
               SymbolScope = 0
               SymbolExpression = ''
               SymbologyType = 0
               [SpecifiedSymbols]
                  Count = 0
               EndSect  // SpecifiedSymbols

               [GraduatedSizeRange]
                  SizeFrom = 1
                  SizeTo = 20
               EndSect  // GraduatedSizeRange

               [GraduatedColorRamp]
                  Invert = false
                  ColorRamp = '-16777216:0;-1:100'
               EndSect  // GraduatedColorRamp

               SymbolStyle = 0
               PointSymbolFillColor = 16777215
               PointOutlineColor = -7278960
               PointSize = 10
               PointOutlineWidth = 1
               PointStyle = 1
               BitmapName = ''
            EndSect  // PointSymboloy

         EndSect  // EnergyLosses

         [Tabulated]
            Touched = true
            DhiSEPfsListItemCount = 0
            [PointSymboloy]
               Touched = false
               ShowSymbol = true
               LabelVisible = false
               FontSize = 9
               FontStyle = 0
               FontColor = -16777216
               SymbolField = ''
               SymbolFieldTypeCode = 0
               UseCustomColor = false
               LabelField = 'ID'
               SymbolScope = 0
               SymbolExpression = ''
               SymbologyType = 0
               [SpecifiedSymbols]
                  Count = 0
               EndSect  // SpecifiedSymbols

               [GraduatedSizeRange]
                  SizeFrom = 1
                  SizeTo = 20
               EndSect  // GraduatedSizeRange

               [GraduatedColorRamp]
                  Invert = false
                  ColorRamp = '-16777216:0;-1:100'
               EndSect  // GraduatedColorRamp

               SymbolStyle = 0
               PointSymbolFillColor = 16777215
               PointOutlineColor = -32768
               PointSize = 10
               PointOutlineWidth = 1
               PointStyle = 1
               BitmapName = ''
            EndSect  // PointSymboloy

         EndSect  // Tabulated

      EndSect  // Structure

      [Control]
         Touched = false
         [Sensors]
            Touched = false
            DhiSEPfsListItemCount = 0
         EndSect  // Sensors

         [Variables]
            Touched = false
            DhiSEPfsListItemCount = 0
         EndSect  // Variables

         [PIDParameterList]
            Touched = false
            DhiSEPfsListItemCount = 0
         EndSect  // PIDParameterList

         [ControlRules]
            Touched = false
            DhiSEPfsListItemCount = 0
         EndSect  // ControlRules

      EndSect  // Control

      [Storages]
         Touched = false
         DhiSEPfsListItemCount = 0
         [PointSymboloy]
            Touched = false
            ShowSymbol = true
            LabelVisible = false
            FontSize = 9
            FontStyle = 0
            FontColor = -16777216
            SymbolField = ''
            SymbolFieldTypeCode = 0
            UseCustomColor = false
            LabelField = 'StorageType'
            SymbolScope = 0
            SymbolExpression = ''
            SymbologyType = 0
            [SpecifiedSymbols]
               Count = 0
            EndSect  // SpecifiedSymbols

            [GraduatedSizeRange]
               SizeFrom = 1
               SizeTo = 20
            EndSect  // GraduatedSizeRange

            [GraduatedColorRamp]
               Invert = false
               ColorRamp = '-16777216:0;-1:100'
            EndSect  // GraduatedColorRamp

            SymbolStyle = 1
            PointSymbolFillColor = -65536
            PointOutlineColor = -65536
            PointSize = 6
            PointOutlineWidth = 1
            PointStyle = 0
            BitmapName = 'storage'
         EndSect  // PointSymboloy

      EndSect  // Storages

      [StorageConnections]
         Touched = false
         DhiSEPfsListItemCount = 0
         [PolylineSymbology]
            Touched = false
            ShowSymbol = true
            LabelVisible = false
            FontSize = 9
            FontStyle = 0
            FontColor = -16777216
            SymbolField = ''
            SymbolFieldTypeCode = 0
            UseCustomColor = false
            LabelField = 'StorageName'
            SymbolScope = 0
            SymbolExpression = ''
            SymbologyType = 0
            [SpecifiedSymbols]
               Count = 0
            EndSect  // SpecifiedSymbols

            [GraduatedThicknessRange]
               SizeFrom = 1
               SizeTo = 20
            EndSect  // GraduatedThicknessRange

            [GraduatedColorRamp]
               Invert = false
               ColorRamp = '-16777216:0;-1:100'
            EndSect  // GraduatedColorRamp

            PolylineSymbolColor = -9216
            PolylineThickness = 1
            PolylineType = 0
            DrawDirectionArrow = false
            ArrowPosition = 0
         EndSect  // PolylineSymbology

      EndSect  // StorageConnections

      [ADDecoupledSimulation]
         Touched = false
         ObjectID = '01faf661-1bf8-4400-9ebe-f6d1a93d0162'
         DecoupleAD_HD = false
         HD_ResultFile = ||
      EndSect  // ADDecoupledSimulation

      [RouteTraceLineSymbologyPfs]
         Touched = false
         ObjectID = '141d9f49-3bec-4bcb-b491-f83c033db863'
         [PolylineSymbology]
            Touched = false
            ShowSymbol = true
            LabelVisible = false
            FontSize = 9
            FontStyle = 0
            FontColor = -16777216
            SymbolField = ''
            SymbolFieldTypeCode = 0
            UseCustomColor = false
            LabelField = ''
            SymbolScope = 0
            SymbolExpression = ''
            SymbologyType = 0
            [SpecifiedSymbols]
               Count = 0
            EndSect  // SpecifiedSymbols

            [GraduatedThicknessRange]
               SizeFrom = 1
               SizeTo = 20
            EndSect  // GraduatedThicknessRange

            [GraduatedColorRamp]
               Invert = false
               ColorRamp = '-8388480:0;-16776961:20;-16734554:40;-16711936:60;-256:80;-65536:100'
            EndSect  // GraduatedColorRamp

            PolylineSymbolColor = -23296
            PolylineThickness = 4
            PolylineType = 0
            DrawDirectionArrow = false
            ArrowPosition = 1
         EndSect  // PolylineSymbology

      EndSect  // RouteTraceLineSymbologyPfs

      [RemoteFlowControlSymbology]
         Touched = false
         ObjectID = '224e087d-c965-4942-ad82-b1a0be9b8116'
         [PolylineSymbology]
            Touched = false
            ShowSymbol = true
            LabelVisible = false
            FontSize = 9
            FontStyle = 0
            FontColor = -16777216
            SymbolField = ''
            SymbolFieldTypeCode = 0
            UseCustomColor = false
            LabelField = 'Name'
            SymbolScope = 0
            SymbolExpression = ''
            SymbologyType = 0
            [SpecifiedSymbols]
               Count = 0
            EndSect  // SpecifiedSymbols

            [GraduatedThicknessRange]
               SizeFrom = 1
               SizeTo = 20
            EndSect  // GraduatedThicknessRange

            [GraduatedColorRamp]
               Invert = false
               ColorRamp = '-16777216:0;-1:100'
            EndSect  // GraduatedColorRamp

            PolylineSymbolColor = -32768
            PolylineThickness = 1
            PolylineType = 0
            DrawDirectionArrow = true
            ArrowPosition = 0
         EndSect  // PolylineSymbology

      EndSect  // RemoteFlowControlSymbology

   EndSect  // MH_River_Network

   [CatchmentGroupPfs]
      Touched = false
      [MH_Catchment]
         Touched = false
         DhiSEPfsListItemCount = 0
         [PolygonSymbology]
            Touched = false
            ShowSymbol = true
            LabelVisible = false
            FontSize = 9
            FontStyle = 0
            FontColor = -16777216
            SymbolField = 'GWModelType'
            SymbolFieldTypeCode = 9
            UseCustomColor = false
            LabelField = 'Name'
            SymbolScope = 0
            SymbolExpression = ''
            SymbologyType = 0
            [SpecifiedSymbols]
               Count = 0
            EndSect  // SpecifiedSymbols

            [GraduatedColorRamp]
               Invert = false
               ColorRamp = '-16777216:0;-1:100'
            EndSect  // GraduatedColorRamp

            PolygonFillColor = -8000
            PolygonOutlineColor = -8372224
            PolygonTransparency = 50
            PolygonThickness = 2
            PolygonOutlineStyle = 0
         EndSect  // PolygonSymbology

      EndSect  // MH_Catchment

      [MH_CombinedCatchment]
         Touched = false
         DhiSEPfsListItemCount = 0
      EndSect  // MH_CombinedCatchment

      [RiverLinks]
         Touched = false
         DhiSEPfsListItemCount = 0
         [PolylineSymbology]
            Touched = false
            ShowSymbol = true
            LabelVisible = false
            FontSize = 9
            FontStyle = 0
            FontColor = -16777216
            SymbolField = ''
            SymbolFieldTypeCode = 0
            UseCustomColor = false
            LabelField = 'AreaType'
            SymbolScope = 0
            SymbolExpression = ''
            SymbologyType = 0
            [SpecifiedSymbols]
               Count = 0
            EndSect  // SpecifiedSymbols

            [GraduatedThicknessRange]
               SizeFrom = 1
               SizeTo = 20
            EndSect  // GraduatedThicknessRange

            [GraduatedColorRamp]
               Invert = false
               ColorRamp = '-16777216:0;-1:100'
            EndSect  // GraduatedColorRamp

            PolylineSymbolColor = -16751616
            PolylineThickness = 3
            PolylineType = 0
            DrawDirectionArrow = false
            ArrowPosition = 0
         EndSect  // PolylineSymbology

      EndSect  // RiverLinks

      [CatchmentConnectionList]
         Touched = false
         DhiSEPfsListItemCount = 0
         [PolylineSymbology]
            Touched = false
            ShowSymbol = true
            LabelVisible = false
            FontSize = 9
            FontStyle = 0
            FontColor = -16777216
            SymbolField = ''
            SymbolFieldTypeCode = 0
            UseCustomColor = false
            LabelField = 'ConnectionType'
            SymbolScope = 0
            SymbolExpression = ''
            SymbologyType = 0
            [SpecifiedSymbols]
               Count = 0
            EndSect  // SpecifiedSymbols

            [GraduatedThicknessRange]
               SizeFrom = 1
               SizeTo = 20
            EndSect  // GraduatedThicknessRange

            [GraduatedColorRamp]
               Invert = false
               ColorRamp = '-16777216:0;-1:100'
            EndSect  // GraduatedColorRamp

            PolylineSymbolColor = -16744448
            PolylineThickness = 1
            PolylineType = 0
            DrawDirectionArrow = false
            ArrowPosition = 1
         EndSect  // PolylineSymbology

      EndSect  // CatchmentConnectionList

      [DecoupledSimulation]
         Touched = false
         ObjectID = '89bb3be6-ed70-453a-9692-0bd44e3de380'
         DecoupleRR_HD = false
         RR_ResultFile = ||
      EndSect  // DecoupledSimulation

      [HotstartFiles]
         Touched = false
         ObjectID = '9c6ea991-4395-445f-af0e-d451857a24e1'
         UseHotstartFiles = false
         HotstartList = '<CLOB:0>'
      EndSect  // HotstartFiles

   EndSect  // CatchmentGroupPfs

   [MH_HDParameters]
      Touched = true
      [MH_Bed_Resistance]
         Touched = true
         DhiSEPfsListItemCount = 0
         GlobalApproach = 0
         GlobalZoneNumber = 3
         LocalZoneNumber = 3
         GlobalFormula = 0
         GlobalResistanceNumber = 30.0
         GlobalZone1 = 30.0
         GlobalZone2 = 30.0
         GlobalZone3 = 30.0
         GlobalZone4 = 30.0
         GlobalZone5 = 30.0
         GlobalZone6 = 30.0
         GlobalZone7 = 30.0
         GlobalZone8 = 30.0
         GlobalZone9 = 30.0
         GlobalZone10 = 30.0
         [PointSymboloy]
            Touched = false
            ShowSymbol = true
            LabelVisible = false
            FontSize = 9
            FontStyle = 0
            FontColor = -16777216
            SymbolField = ''
            SymbolFieldTypeCode = 0
            UseCustomColor = false
            LabelField = 'Name'
            SymbolScope = 0
            SymbolExpression = ''
            SymbologyType = 0
            [SpecifiedSymbols]
               Count = 0
            EndSect  // SpecifiedSymbols

            [GraduatedSizeRange]
               SizeFrom = 1
               SizeTo = 20
            EndSect  // GraduatedSizeRange

            [GraduatedColorRamp]
               Invert = false
               ColorRamp = '-16777216:0;-1:100'
            EndSect  // GraduatedColorRamp

            SymbolStyle = 0
            PointSymbolFillColor = -16728064
            PointOutlineColor = -16744448
            PointSize = 9
            PointOutlineWidth = 1
            PointStyle = 2
            BitmapName = ''
         EndSect  // PointSymboloy

      EndSect  // MH_Bed_Resistance

      [HDZoneSeparatorList]
         Touched = false
         DhiSEPfsListItemCount = 0
         GlobalZoneSeparatorNumber = 3
         GlobalZoneSeparatorType = 0
         GlobalZone1to2 = 0.0
         GlobalZone2to3 = 0.0
         GlobalZone3to4 = 0.0
         GlobalZone4to5 = 0.0
         GlobalZone5to6 = 0.0
         GlobalZone6to7 = 0.0
         GlobalZone7to8 = 0.0
         GlobalZone8to9 = 0.0
         GlobalZone9to10 = 0.0
      EndSect  // HDZoneSeparatorList

      [HDBedResistanceFactorList]
         Touched = false
         DhiSEPfsListItemCount = 0
         IncludeBedResistanceFactor = false
         FactorType = 1
         FactorValue = 0.0
         [BedResistanceFactorTS]
            Touched = false
            FILE_NAME = ||
            ITEM_COUNT = 0
            ITEM_NUMBERS = 0
         EndSect  // BedResistanceFactorTS

      EndSect  // HDBedResistanceFactorList

   EndSect  // MH_HDParameters

   [MH_Advection_Dispersion]
      Touched = false
      [MH_AD_Components]
         Touched = false
         DhiSEPfsListItemCount = 0
      EndSect  // MH_AD_Components

      [MH_AD_Dispersions]
         Touched = false
         DhiSEPfsListItemCount = 0
         DispersionFactor = 0.0
         Exp = 0.0
         MinDispCoef = 0.0
         MaxDispCoef = 100.0
         [PointSymboloy]
            Touched = false
            ShowSymbol = true
            LabelVisible = false
            FontSize = 9
            FontStyle = 0
            FontColor = -16777216
            SymbolField = ''
            SymbolFieldTypeCode = 0
            UseCustomColor = false
            LabelField = 'DispFactor'
            SymbolScope = 0
            SymbolExpression = ''
            SymbologyType = 0
            [SpecifiedSymbols]
               Count = 0
            EndSect  // SpecifiedSymbols

            [GraduatedSizeRange]
               SizeFrom = 1
               SizeTo = 20
            EndSect  // GraduatedSizeRange

            [GraduatedColorRamp]
               Invert = false
               ColorRamp = '-16777216:0;-1:100'
            EndSect  // GraduatedColorRamp

            SymbolStyle = 0
            PointSymbolFillColor = -65536
            PointOutlineColor = -16744448
            PointSize = 9
            PointOutlineWidth = 1
            PointStyle = 2
            BitmapName = ''
         EndSect  // PointSymboloy

      EndSect  // MH_AD_Dispersions

      [MH_AD_Decays]
         Touched = false
         DhiSEPfsListItemCount = 0
         [GlobalValues]
            Count = 0
         EndSect  // GlobalValues

      EndSect  // MH_AD_Decays

   EndSect  // MH_Advection_Dispersion

   [WaterUserGroupPfs]
      Touched = false
      [MH_Water_Users]
         Touched = false
         DhiSEPfsListItemCount = 0
         [PointSymboloy]
            Touched = false
            ShowSymbol = true
            LabelVisible = false
            FontSize = 9
            FontStyle = 0
            FontColor = -16777216
            SymbolField = 'WaterUserType'
            SymbolFieldTypeCode = 9
            UseCustomColor = false
            LabelField = 'Name'
            SymbolScope = 0
            SymbolExpression = ''
            SymbologyType = 3
            [SpecifiedSymbols]
               Count = 2
               [SpecifiedSymbolElem_0]
                  ClassifyType = 3
                  Label = 'RegularUser'
                  Value = 'RegularUser'
                  IsOthersStyle = false
                  BitmapName = 'wateruser'
                  FillColor = -23296
                  OutlineColor = -23296
                  PointSize = 6
                  OutlineThickness = 1
                  PointSymbolType = 1
                  SymbolStyle = 1
               EndSect  // SpecifiedSymbolElem_0

               [SpecifiedSymbolElem_1]
                  ClassifyType = 3
                  Label = 'IrrigationUser'
                  Value = 'IrrigationUser'
                  IsOthersStyle = false
                  BitmapName = 'irriuser'
                  FillColor = -23296
                  OutlineColor = -23296
                  PointSize = 6
                  OutlineThickness = 1
                  PointSymbolType = 1
                  SymbolStyle = 1
               EndSect  // SpecifiedSymbolElem_1

            EndSect  // SpecifiedSymbols

            [GraduatedSizeRange]
               SizeFrom = 1
               SizeTo = 20
            EndSect  // GraduatedSizeRange

            [GraduatedColorRamp]
               Invert = false
               ColorRamp = '-16777216:0;-1:100'
            EndSect  // GraduatedColorRamp

            SymbolStyle = 0
            PointSymbolFillColor = -16776961
            PointOutlineColor = -16776961
            PointSize = 6
            PointOutlineWidth = 2
            PointStyle = 0
            BitmapName = 'wateruser'
         EndSect  // PointSymboloy

      EndSect  // MH_Water_Users

      [SupplyConnectionSymbology]
         Touched = false
         ObjectID = '52ff0248-8e37-4928-9843-c0ff39937297'
         [PolylineSymbology]
            Touched = false
            ShowSymbol = true
            LabelVisible = false
            FontSize = 9
            FontStyle = 0
            FontColor = -16777216
            SymbolField = ''
            SymbolFieldTypeCode = 0
            UseCustomColor = false
            LabelField = 'Name'
            SymbolScope = 0
            SymbolExpression = ''
            SymbologyType = 0
            [SpecifiedSymbols]
               Count = 0
            EndSect  // SpecifiedSymbols

            [GraduatedThicknessRange]
               SizeFrom = 1
               SizeTo = 20
            EndSect  // GraduatedThicknessRange

            [GraduatedColorRamp]
               Invert = false
               ColorRamp = '-16777216:0;-1:100'
            EndSect  // GraduatedColorRamp

            PolylineSymbolColor = -32768
            PolylineThickness = 1
            PolylineType = 0
            DrawDirectionArrow = true
            ArrowPosition = 0
         EndSect  // PolylineSymbology

      EndSect  // SupplyConnectionSymbology

      [ReturnFlowConnection]
         Touched = false
         ObjectID = 'ce0458d0-2da9-4351-87b4-6fb25c9297fd'
         [PolylineSymbology]
            Touched = false
            ShowSymbol = true
            LabelVisible = false
            FontSize = 9
            FontStyle = 0
            FontColor = -16777216
            SymbolField = ''
            SymbolFieldTypeCode = 0
            UseCustomColor = false
            LabelField = 'Name'
            SymbolScope = 0
            SymbolExpression = ''
            SymbologyType = 0
            [SpecifiedSymbols]
               Count = 0
            EndSect  // SpecifiedSymbols

            [GraduatedThicknessRange]
               SizeFrom = 1
               SizeTo = 20
            EndSect  // GraduatedThicknessRange

            [GraduatedColorRamp]
               Invert = false
               ColorRamp = '-16777216:0;-1:100'
            EndSect  // GraduatedColorRamp

            PolylineSymbolColor = -32768
            PolylineThickness = 1
            PolylineType = 0
            DrawDirectionArrow = true
            ArrowPosition = 0
         EndSect  // PolylineSymbology

      EndSect  // ReturnFlowConnection

      [IrrigationDataPfs]
         Touched = false
         [IrrigationMethodListPfs]
            Touched = false
            DhiSEPfsListItemCount = 0
         EndSect  // IrrigationMethodListPfs

         [CropListPfs]
            Touched = false
            DhiSEPfsListItemCount = 0
         EndSect  // CropListPfs

         [SoilRunoffListPfs]
            Touched = false
            DhiSEPfsListItemCount = 0
         EndSect  // SoilRunoffListPfs

      EndSect  // IrrigationDataPfs

   EndSect  // WaterUserGroupPfs

   [ReservoirGroupPfs]
      Touched = false
      [MH_Reservoirs]
         Touched = false
         DhiSEPfsListItemCount = 0
         [PointSymboloy]
            Touched = false
            ShowSymbol = true
            LabelVisible = false
            FontSize = 9
            FontStyle = 0
            FontColor = -16777216
            SymbolField = ''
            SymbolFieldTypeCode = 0
            UseCustomColor = false
            LabelField = 'Identifier'
            SymbolScope = 0
            SymbolExpression = ''
            SymbologyType = 0
            [SpecifiedSymbols]
               Count = 0
            EndSect  // SpecifiedSymbols

            [GraduatedSizeRange]
               SizeFrom = 1
               SizeTo = 20
            EndSect  // GraduatedSizeRange

            [GraduatedColorRamp]
               Invert = false
               ColorRamp = '-16777216:0;-1:100'
            EndSect  // GraduatedColorRamp

            SymbolStyle = 1
            PointSymbolFillColor = -65536
            PointOutlineColor = -65536
            PointSize = 6
            PointOutlineWidth = 1
            PointStyle = 0
            BitmapName = 'reservoir'
         EndSect  // PointSymboloy

      EndSect  // MH_Reservoirs

   EndSect  // ReservoirGroupPfs

   [HydroPowerGroupPfs]
      Touched = false
      [MH_Hydro_Power]
         Touched = false
         DhiSEPfsListItemCount = 0
         [PointSymboloy]
            Touched = false
            ShowSymbol = true
            LabelVisible = false
            FontSize = 9
            FontStyle = 0
            FontColor = -16777216
            SymbolField = ''
            SymbolFieldTypeCode = 0
            UseCustomColor = false
            LabelField = 'Name'
            SymbolScope = 0
            SymbolExpression = ''
            SymbologyType = 0
            [SpecifiedSymbols]
               Count = 0
            EndSect  // SpecifiedSymbols

            [GraduatedSizeRange]
               SizeFrom = 1
               SizeTo = 20
            EndSect  // GraduatedSizeRange

            [GraduatedColorRamp]
               Invert = false
               ColorRamp = '-16777216:0;-1:100'
            EndSect  // GraduatedColorRamp

            SymbolStyle = 1
            PointSymbolFillColor = -16776961
            PointOutlineColor = -16776961
            PointSize = 6
            PointOutlineWidth = 2
            PointStyle = 0
            BitmapName = 'hydropower'
         EndSect  // PointSymboloy

      EndSect  // MH_Hydro_Power

   EndSect  // HydroPowerGroupPfs

   [CalibrationPlotGroup]
      Touched = false
      [CalibrationPlot]
         Touched = false
         DhiSEPfsListItemCount = 0
      EndSect  // CalibrationPlot

   EndSect  // CalibrationPlotGroup

   [SedimentTransportGroupPfs]
      Touched = false
      [ReservoirSedimentation]
         Touched = false
         Density = 2650.0
         Porosity = 0.4
         [SedimentFractionList]
            Touched = false
            DhiSEPfsListItemCount = 0
         EndSect  // SedimentFractionList

      EndSect  // ReservoirSedimentation

   EndSect  // SedimentTransportGroupPfs

   [WQBasinGroupPfs]
      Touched = false
      [WQBasinPfs]
         Touched = false
         Clob = '<CLOB:0>'
      EndSect  // WQBasinPfs

   EndSect  // WQBasinGroupPfs

   [WQRiverGroupPfs]
      Touched = false
      [WQRiverPfs]
         Touched = false
         Clob = '<CLOB:0>'
      EndSect  // WQRiverPfs

   EndSect  // WQRiverGroupPfs

   [MHR_Sediment_Transport]
      Touched = false
      [Sediment_Transport_GeneralParameters]
         Touched = false
         NoFrac = 0
         MorphUpdate = true
         MaxConc = 50000.0
         SkinModel = 0
         Egiazaroff = false
         KinVisc = 1e-06
         d90d50 = 2.0
      EndSect  // Sediment_Transport_GeneralParameters

      [SedimentFractionsDefinitionsList]
         Touched = false
         DhiSEPfsListItemCount = 0
      EndSect  // SedimentFractionsDefinitionsList

      [MHR_Sediment_Transport_BedParameter]
         Touched = false
         Layout = 1
         GlobalFactor = 0.083
         GlobalMin = 1.0
         GlobalMax = 1.0
         MorphMethod = 1
         [ActiveLayerThicknessLocalValueList]
            Touched = false
            DhiSEPfsListItemCount = 0
         EndSect  // ActiveLayerThicknessLocalValueList

         [MorphologicalLocalValueList]
            Touched = false
            DhiSEPfsListItemCount = 0
         EndSect  // MorphologicalLocalValueList

      EndSect  // MHR_Sediment_Transport_BedParameter

      [SedimentTransportPassiveBranchesList]
         Touched = false
         DhiSEPfsListItemCount = 0
         [Sediment_Transport_PassiveBranchesGeneralParameters]
            Touched = false
            Include = false
         EndSect  // Sediment_Transport_PassiveBranchesGeneralParameters

      EndSect  // SedimentTransportPassiveBranchesList

      [NonScouringBedLevel]
         Touched = false
         DhiSEPfsListItemCount = 0
         Include = false
         GlobalUnlimited = false
         GlobalLevel = 0.0
      EndSect  // NonScouringBedLevel

   EndSect  // MHR_Sediment_Transport

   [BoundaryConditionsPfs]
      Touched = true
      [Boundary]
         Touched = true
         DhiSEPfsListItemCount = 7
         [PolylineSymbology]
            Touched = false
            ShowSymbol = true
            LabelVisible = false
            FontSize = 9
            FontStyle = 0
            FontColor = -16777216
            SymbolField = 'BoundaryType'
            SymbolFieldTypeCode = 9
            UseCustomColor = false
            LabelField = 'BoundaryType'
            SymbolScope = 0
            SymbolExpression = ''
            SymbologyType = 3
            [SpecifiedSymbols]
               Count = 8
               [SpecifiedSymbolElem_0]
                  ClassifyType = 3
                  Label = 'WaterLevel'
                  Value = 'WaterLevel'
                  IsOthersStyle = false
                  PolylineSymbolColor = -5952982
                  PolylineThickness = 5
                  PolylineType = 0
                  DrawDirectionArrow = false
                  ArrowPosition = 0
               EndSect  // SpecifiedSymbolElem_0

               [SpecifiedSymbolElem_1]
                  ClassifyType = 3
                  Label = 'Closed'
                  Value = 'Closed'
                  IsOthersStyle = false
                  PolylineSymbolColor = -29696
                  PolylineThickness = 5
                  PolylineType = 0
                  DrawDirectionArrow = false
                  ArrowPosition = 0
               EndSect  // SpecifiedSymbolElem_1

               [SpecifiedSymbolElem_2]
                  ClassifyType = 3
                  Label = 'QHRelation'
                  Value = 'QHRelation'
                  IsOthersStyle = false
                  PolylineSymbolColor = -16777152
                  PolylineThickness = 5
                  PolylineType = 0
                  DrawDirectionArrow = false
                  ArrowPosition = 0
               EndSect  // SpecifiedSymbolElem_2

               [SpecifiedSymbolElem_3]
                  ClassifyType = 3
                  Label = 'FreeOutflow'
                  Value = 'FreeOutflow'
                  IsOthersStyle = false
                  PolylineSymbolColor = -8372096
                  PolylineThickness = 5
                  PolylineType = 0
                  DrawDirectionArrow = false
                  ArrowPosition = 0
               EndSect  // SpecifiedSymbolElem_3

               [SpecifiedSymbolElem_4]
                  ClassifyType = 3
                  Label = 'Runoff'
                  Value = 'Runoff'
                  IsOthersStyle = false
                  PolylineSymbolColor = -8355712
                  PolylineThickness = 5
                  PolylineType = 0
                  DrawDirectionArrow = false
                  ArrowPosition = 0
               EndSect  // SpecifiedSymbolElem_4

               [SpecifiedSymbolElem_5]
                  ClassifyType = 3
                  Label = 'Discharge'
                  Value = 'Discharge'
                  IsOthersStyle = false
                  PolylineSymbolColor = -4194304
                  PolylineThickness = 5
                  PolylineType = 0
                  DrawDirectionArrow = false
                  ArrowPosition = 0
               EndSect  // SpecifiedSymbolElem_5

               [SpecifiedSymbolElem_6]
                  ClassifyType = 3
                  Label = 'Rainfall'
                  Value = 'Rainfall'
                  IsOthersStyle = false
                  PolylineSymbolColor = -4145152
                  PolylineThickness = 5
                  PolylineType = 0
                  DrawDirectionArrow = false
                  ArrowPosition = 0
               EndSect  // SpecifiedSymbolElem_6

               [SpecifiedSymbolElem_7]
                  ClassifyType = 3
                  Label = 'Evaporation'
                  Value = 'Evaporation'
                  IsOthersStyle = false
                  PolylineSymbolColor = -4144960
                  PolylineThickness = 5
                  PolylineType = 0
                  DrawDirectionArrow = false
                  ArrowPosition = 0
               EndSect  // SpecifiedSymbolElem_7

            EndSect  // SpecifiedSymbols

            [GraduatedThicknessRange]
               SizeFrom = 1
               SizeTo = 20
            EndSect  // GraduatedThicknessRange

            [GraduatedColorRamp]
               Invert = false
               ColorRamp = '-16777216:0;-1:100'
            EndSect  // GraduatedColorRamp

            PolylineSymbolColor = -5952982
            PolylineThickness = 5
            PolylineType = 0
            DrawDirectionArrow = false
            ArrowPosition = 0
         EndSect  // PolylineSymbology

         [Boundary_0]
            Touched = false
            ObjectID = 'f4f998c5-e926-4006-bfe9-28c4e83406c1'
            Shape = 'LINESTRING(521175 6223720,521175 6223720)'
            ShortName = ''
            BranchID = '364a1eaa-079e-4bfe-bdc3-34289f78a4a8'
            Chainage = 0.0
            IsSpan = false
            ToChainage = 0.0
            Name = 'Boundary 1'
            BoundaryType = 1
            LocationType = 0
            StorageID = '00000000-0000-0000-0000-000000000000'
            CatchmentID = '00000000-0000-0000-0000-000000000000'
            RunoffFlowType = 0
            HDInclude = true
            HDInputType = 1
            HDScale = 1.0
            HDConstant = 0.0
            ADInclude = true
            UseMixing = false
            MixingCoef = 0.0
            STInclude = true
            STBoundaryType = 1
            STInputType = 0
            STScale = 1.0
            STChange = 0.0
            [HDTS]
               Touched = false
               FILE_NAME = |.\karup.dfs0|
               ITEM_COUNT = 1
               ITEM_NUMBERS = 1
            EndSect  // HDTS

            [HDDFS2]
               Touched = false
               FILE_NAME = ||
               ITEM_COUNT = 0
               ITEM_NUMBERS = 0
            EndSect  // HDDFS2

            [STTS]
               Touched = false
               FILE_NAME = ||
               ITEM_COUNT = 0
               ITEM_NUMBERS = 0
            EndSect  // STTS

            [ADBoundary]
               Touched = false
               DhiSEPfsListItemCount = 0
            EndSect  // ADBoundary

            [QHBoundary]
               Touched = false
               DhiSEPfsListItemCount = 0
            EndSect  // QHBoundary

            [STBoundary]
               Touched = false
               DhiSEPfsListItemCount = 0
            EndSect  // STBoundary

         EndSect  // Boundary_0

         [Boundary_1]
            Touched = false
            ObjectID = '21a3d32f-ee6a-47bc-b1a0-5e325c67e162'
            Shape = 'LINESTRING(499625.000000001 6260000,499585 6259865,499585 6259815,499575 6259795,499505.000000001 6259745,499515.000000001 6259725,499485 6259695,499495 6259675,499485 6259655,499455 6259635,499475 6259515,499425.000000001 6259455,499405.000000001 6259325,499355 6259255,499355 6259225,499334.999999999 6259195,499334.999999999 6259165,499315.000000001 6259135,499315.000000001 6259115,499275.000000001 6259085,499245 6259085,499235 6259075,499224.999999999 6259085,499195.000000001 6259065,499185.000000001 6259075,499155 6259055,499115 6259055,499105.000000002 6259065,499065.000000001 6259045,499035 6259055,498995.000000002 6259025,498945.000000001 6258955,498985.000000002 6258835,498965.000000001 6258795,498965.000000001 6258685,498945.000000001 6258655,498935 6258665,498925 6258655,498935 6258595,498965.000000001 6258535,498965.000000001 6258445,498975.000000001 6258435,498965.000000001 6258425,498965.000000001 6258385,499015 6258335,499045 6258135,499065.000000001 6258125,499055.000000001 6258095,498955.000000001 6257995,498955.000000001 6257955,499005 6257905,499005 6257855,499015 6257845,498995.000000002 6257815,498995.000000002 6257745,499005 6257735,499005 6257615,499025 6257595,499035 6257525,499045 6257515,499045 6257445,499065.000000001 6257405,499065.000000001 6257375,499085.000000001 6257355,499085.000000001 6257335,499045 6257285,499025 6257275,499025 6257255,499075.000000001 6257205,499095.000000001 6257205,499165.000000001 6257155,499165.000000001 6257135,499135 6257105,499075.000000001 6257075,499045 6257075,499005 6257035,499085.000000001 6256945,499105.000000002 6256935,499105.000000002 6256895,499085.000000001 6256855,499015 6256785,498985.000000002 6256725,498995.000000002 6256715,498985.000000002 6256695,499015 6256665,499045 6256655,499055.000000001 6256665,499075.000000001 6256645,499085.000000001 6256575,499135 6256505,499135 6256485,499185.000000001 6256445,499224.999999999 6256435,499245 6256445,499275.000000001 6256415,499285.000000001 6256385,499265 6256355,499265 6256315,499245 6256295,499245 6256275,499315.000000001 6256225,499285.000000001 6256165,499285.000000001 6256135,499305.000000001 6256105,499334.999999999 6256075,499435.000000002 6256085,499465 6256075,499555.000000002 6255995,499665.000000002 6255985,499675 6255975,499675 6255905,499695 6255845,499745.000000001 6255775,499745.000000001 6255745,499755.000000001 6255735,499805 6255735,499845.000000001 6255755,499925 6255755,499965.000000001 6255735,499995.000000002 6255705,499995.000000002 6255665,500055.000000001 6255625,500035 6255565,500035 6255515,500105.000000002 6255465,500105.000000002 6255375,500125 6255335,500125 6255295,500095.000000001 6255205,500115.000000002 6255175,500135 6255105,500125 6254955,500145 6254935,500165 6254865,500165 6254795,500135 6254745,500125 6254695,500085.000000001 6254635,500085.000000001 6254585,500075.000000001 6254575,500075.000000001 6254535,500085.000000001 6254525,500075.000000001 6254495,500115.000000002 6254445,500095.000000001 6254425,499975.000000001 6254405,499925 6254365,499935 6254325,499915 6254305,499905 6254315,499894.999999999 6254305,499865.000000001 6254305,499815 6254245,499815 6254225,499835.000000001 6254205,499925 6254215,499985.000000001 6254145,499965.000000001 6254125,499955.000000001 6254065,499925 6254035,499885.000000002 6254065,499855.000000001 6254065,499805 6254035,499825 6254015,499815 6253965,499825 6253955,499825 6253905,499815 6253895,499815 6253795,499805 6253785,499805 6253755,499765.000000001 6253705,499725.000000001 6253715,499705 6253735,499675 6253705,499675 6253635,499735.000000001 6253565,499755.000000001 6253495,499745.000000001 6253465,499755.000000001 6253455,499745.000000001 6253445,499745.000000001 6253365,499725.000000001 6253355,499695 6253315,499695 6253295,499735.000000001 6253255,499785 6253235,499765.000000001 6253205,499765.000000001 6253185,499725.000000001 6253145,499705 6253105,499725.000000001 6253095,499765.000000001 6253115,499775.000000002 6253105,499785 6253085,499785 6253015,499815 6252955,499855.000000001 6252915,499905 6252915,499925 6252895,499925 6252865,499885.000000002 6252815,499975.000000001 6252725,499975.000000001 6252695,499995.000000002 6252665,500035 6252625,500065.000000001 6252615,499985.000000001 6252545,499965.000000001 6252515,499965.000000001 6252455,499975.000000001 6252435,499955.000000001 6252415,499965.000000001 6252405,499945.000000001 6252385,499925 6252385,499885.000000002 6252345,499875.000000001 6252325,499875.000000001 6252275,499894.999999999 6252255,499925 6252275,499945.000000001 6252275,500025 6252145,500015 6252135,500025 6252125,499965.000000001 6252075,499965.000000001 6252055,499995.000000002 6252025,500004.999999999 6251975,500035 6251925,500035 6251895,500045 6251885,500045 6251745,500065.000000001 6251715,500065.000000001 6251695,500115.000000002 6251645,500195.000000001 6251615,500265 6251605,500275 6251615,500345 6251615,500375 6251575,500375 6251535,500365 6251525,500295.000000001 6251525,500285.000000001 6251515,500285.000000001 6251445,500295.000000001 6251425,500325.000000001 6251405,500405.000000001 6251445,500445.000000002 6251445,500485 6251395,500515.000000001 6251265,500555.000000002 6251215,500585 6251205,500605 6251225,500615.000000001 6251275,500655.000000001 6251305,500725 6251295,500765.000000001 6251275,500915 6251275,500945 6251245,500985.000000001 6251145,501015 6251135,501045 6251145,501155 6251255,501155 6251295,501185.000000001 6251315,501195.000000001 6251305,501225.000000002 6251315,501255 6251285,501255 6251245,501315.000000001 6251185,501325.000000001 6251135,501355 6251105,501415.000000001 6251145,501465 6251145,501575 6251085,501575 6251045,501545.000000001 6251005,501545.000000001 6250975,501575 6250945,501635.000000001 6250945,501655.000000001 6250925,501645.000000001 6250895,501615 6250865,501625.000000001 6250835,501675.000000002 6250865,501705 6250865,501775.000000001 6250835,501835 6250765,501855.000000001 6250755,501885.000000001 6250755,501915 6250785,501935 6250775,501955 6250785,502015.000000002 6250715,502035 6250705,502085.000000001 6250705,502105.000000001 6250715,502125.000000002 6250705,502145 6250685,502105.000000001 6250645,502105.000000001 6250615,502125.000000002 6250565,502145 6250575,502145 6250595,502185.000000001 6250635,502185.000000001 6250655,502235.000000002 6250685,502235.000000002 6250725,502255 6250755,502265 6250755,502305.000000001 6250705,502305.000000001 6250645,502285 6250615,502305.000000001 6250595,502365 6250585,502385 6250565,502415.000000001 6250565,502425.000000001 6250575,502475 6250575,502495 6250595,502525.000000001 6250585,502585 6250525,502585 6250435,502565.000000002 6250405,502565.000000002 6250355,502585 6250335,502605 6250335,502625 6250355,502625 6250445,502635.000000001 6250455,502665.000000001 6250455,502675.000000002 6250445,502675.000000002 6250395,502725 6250325,502745.000000001 6250325,502815 6250405,502845 6250415,502855.000000001 6250385,502845 6250375,502845 6250315,502895.000000001 6250265,502925 6250205,502955 6250175,503024.999999999 6250205,503035 6250225,502985.000000001 6250265,502985.000000001 6250275,503024.999999999 6250315,503045 6250315,503075.000000001 6250285,503065 6250155,503075.000000001 6250125,503105.000000001 6250095,503125.000000002 6250095,503215.000000001 6250045,503255 6249995,503265 6249945,503305.000000001 6249905,503375 6249865,503395 6249885,503405 6249945,503465.000000002 6249935,503485 6249915,503475 6249895,503485 6249865,503545.000000001 6249805,503515 6249755,503525.000000001 6249745,503585 6249725,503665.000000001 6249725,503735 6249705,503735 6249685,503715 6249655,503655.000000001 6249625,503635.000000001 6249595,503655.000000001 6249565,503694.999999999 6249545,503745.000000001 6249575,503765.000000001 6249615,503795.000000002 6249595,503785.000000001 6249555,503725 6249495,503765.000000001 6249445,503785.000000001 6249435,503785.000000001 6249415,503755.000000001 6249375,503765.000000001 6249345,503755.000000001 6249335,503775.000000001 6249315,503795.000000002 6249315,503825 6249275,503835 6249285,503875.000000001 6249285,503925 6249255,503905.000000002 6249215,503855 6249175,503855 6249155,503905.000000002 6249115,503905.000000002 6249085,503885.000000001 6249055,503895.000000001 6249055,503895.000000001 6249005,503925 6248935,503925 6248905,503955 6248875,503975.000000001 6248875,504025.000000002 6248955,504065 6248935,504075 6248885,504045 6248825,504115.000000001 6248775,504115.000000001 6248755,504085.000000001 6248735,504085.000000001 6248725,504135.000000002 6248685,504225.000000001 6248675,504245.000000002 6248645,504165 6248565,504175 6248555,504235.000000001 6248555,504275 6248575,504364.999999999 6248585,504385 6248565,504355.000000002 6248505,504375 6248495,504415.000000001 6248515,504465.000000002 6248475,504465.000000002 6248445,504485 6248425,504505 6248425,504555.000000001 6248395,504585.000000002 6248355,504625 6248365,504635 6248355,504615 6248225,504605 6248215,504605 6248155,504655.000000001 6248105,504655.000000001 6248085,504635 6248035,504635 6247975,504625 6247965,504655.000000001 6247925,504655.000000001 6247875,504705 6247835,504715 6247765,504725 6247755,504715 6247725,504735 6247715,504765.000000001 6247745,504785.000000001 6247735,504775.000000001 6247675,504745 6247645,504745 6247625,504675.000000001 6247605,504735 6247545,504735 6247525,504705 6247495,504655.000000001 6247495,504585.000000002 6247435,504575.000000002 6247415,504575.000000002 6247365,504605 6247345,504635 6247375,504635 6247405,504655.000000001 6247425,504705 6247425,504755.000000001 6247385,504775.000000001 6247355,504775.000000001 6247335,504765.000000001 6247325,504765.000000001 6247245,504755.000000001 6247225,504805.000000002 6247165,504795.000000001 6247105,504805.000000002 6247095,504845 6247105,504885.000000001 6247145,504895.000000001 6247185,504924.999999999 6247215,504975.000000001 6247225,504985.000000001 6247215,504975.000000001 6247195,504975.000000001 6247145,504985.000000001 6247135,504985.000000001 6247085,505015.000000001 6247015,505065 6247015,505105.000000001 6247035,505135.000000002 6247035,505195 6247085,505215.000000001 6247085,505245.000000002 6247055,505235.000000001 6246945,505255.000000002 6246905,505325.000000001 6246935,505355.000000001 6246935,505385 6246915,505425.000000001 6246915,505435.000000001 6246895,505365.000000002 6246785,505395 6246735,505395 6246695,505415 6246685,505445.000000001 6246715,505495 6246715,505505 6246705,505535.000000001 6246705,505594.999999999 6246655,505615 6246605,505585.000000002 6246595,505575.000000001 6246575,505625 6246515,505655.000000001 6246455,505665.000000001 6246445,505675.000000001 6246455,505704.999999999 6246455,505715 6246445,505715 6246415,505704.999999999 6246405,505725 6246385,505755 6246385,505775.000000001 6246365,505745 6246325,505755 6246235,505775.000000001 6246215,505805.000000002 6246215,505815.000000002 6246205,505845 6246215,505915.000000002 6246275,505925.000000002 6246265,505935 6246245,505935 6246195,505925.000000002 6246165,505875.000000001 6246135,505945 6246045,505905.000000001 6245995,505935 6245965,506015.000000001 6245965,506035.000000002 6245945,506105.000000001 6245925,506125.000000001 6245905,506115.000000001 6245875,506115.000000001 6245775,506125.000000001 6245765,506185 6245815,506195 6245835,506205.000000001 6245825,506215.000000001 6245735,506205.000000001 6245725,506175 6245725,506165 6245695,506215.000000001 6245655,506225.000000001 6245625,506215.000000001 6245615,506295 6245525,506325.000000001 6245525,506355.000000001 6245495,506355.000000001 6245475,506395 6245435,506385 6245405,506395 6245395,506435.000000001 6245425,506455.000000001 6245405,506455.000000001 6245365,506475.000000002 6245335,506515 6245305,506535 6245305,506565.000000001 6245275,506545.000000001 6245245,506485.000000002 6245285,506455.000000001 6245285,506425 6245255,506415 6245225,506425 6245185,506445.000000001 6245175,506475.000000002 6245195,506505 6245195,506555.000000001 6245155,506585.000000002 6245155,506595.000000002 6245145,506595.000000002 6245105,506575.000000001 6245075,506635 6245025,506635 6245005,506625 6244995,506595.000000002 6245025,506575.000000001 6245015,506575.000000001 6244985,506555.000000001 6244945,506555.000000001 6244885,506535 6244865,506535 6244775,506525 6244755,506535 6244745,506605 6244745,506635 6244725,506575.000000001 6244675,506555.000000001 6244635,506555.000000001 6244605,506515 6244575,506535 6244525,506545.000000001 6244515,506575.000000001 6244535,506585.000000002 6244525,506585.000000002 6244495,506625 6244455,506605 6244435,506555.000000001 6244445,506525 6244425,506585.000000002 6244385,506655.000000001 6244305,506645 6244285,506645 6244235,506675.000000001 6244195,506645 6244195,506635 6244185,506675.000000001 6244155,506635 6244125,506635 6244105,506675.000000001 6244085,506685.000000001 6244095,506735 6244095,506755 6244075,506725 6244015,506715 6244025,506685.000000001 6244025,506645 6243995,506675.000000001 6243965,506675.000000001 6243905,506705.000000002 6243905,506715 6243895,506705.000000002 6243875,506685.000000001 6243885,506665.000000001 6243865,506655.000000001 6243825,506685.000000001 6243795,506735 6243795,506785.000000001 6243835,506815.000000002 6243815,506815.000000002 6243795,506785.000000001 6243765,506755 6243755,506705.000000002 6243705,506705.000000002 6243655,506725 6243625,506745 6243615,506795.000000001 6243615,506815.000000002 6243625,506865 6243595,506875.000000001 6243545,506925.000000002 6243505,506905.000000001 6243475,506885.000000001 6243465,506885.000000001 6243445,506925.000000002 6243405,506995.000000001 6243405,507055 6243365,507045.000000002 6243335,506975 6243335,506975 6243325,506995.000000001 6243305,507015.000000001 6243305,507085 6243225,507145.000000002 6243255,507205 6243225,507175 6243205,507175 6243155,507155.000000002 6243125,507175 6243095,507255.000000001 6243025,507245.000000001 6243005,507205 6243005,507185 6242985,507235.000000001 6242935,507245.000000001 6242895,507165 6242815,507165 6242785,507175 6242775,507185 6242785,507235.000000001 6242735,507265.000000002 6242735,507275 6242725,507275 6242705,507245.000000001 6242685,507235.000000001 6242665,507235.000000001 6242635,507285 6242605,507305 6242605,507345.000000001 6242575,507335.000000001 6242535,507355.000000001 6242515,507415 6242515,507475.000000001 6242495,507455.000000001 6242395,507435.000000001 6242385,507425 6242395,507405 6242375,507435.000000001 6242325,507435.000000001 6242305,507405 6242285,507365.000000001 6242285,507345.000000001 6242265,507425 6242195,507405 6242165,507405 6242115,507384.999999999 6242095,507395 6242015,507415 6241995,507445.000000001 6242005,507455.000000001 6242015,507455.000000001 6242055,507485.000000002 6242095,507515 6242075,507525 6242015,507515 6241985,507555.000000001 6241965,507545.000000001 6241935,507515 6241955,507505 6241945,507515 6241935,507505 6241925,507535 6241885,507525 6241865,507535 6241845,507525 6241835,507535 6241825,507585.000000001 6241825,507635 6241885,507645 6241855,507635 6241845,507635 6241815,507665.000000001 6241775,507685.000000001 6241845,507755 6241795,507765 6241805,507755 6241835,507765 6241845,507815.000000002 6241805,507855 6241855,507875 6241855,507915.000000001 6241825,507885.000000001 6241775,507905.000000001 6241755,507965 6241785,507995.000000001 6241785,508005.000000001 6241775,507995.000000001 6241765,507995.000000001 6241725,508005.000000001 6241715,508045.000000002 6241745,508075 6241725,508054.999999999 6241685,508054.999999999 6241655,508085 6241645,508115.000000001 6241615,508175 6241605,508225.000000001 6241645,508245.000000001 6241625,508255.000000001 6241575,508275.000000002 6241555,508295 6241555,508335.000000001 6241605,508365.000000001 6241625,508425 6241615,508465.000000001 6241575,508465.000000001 6241495,508455.000000001 6241475,508465.000000001 6241455,508485.000000001 6241435,508515 6241435,508555.000000001 6241475,508575.000000001 6241475,508615 6241415,508615 6241375,508575.000000001 6241325,508565.000000001 6241325,508555.000000001 6241275,508575.000000001 6241255,508605.000000002 6241265,508625 6241255,508665.000000001 6241215,508695.000000001 6241205,508675.000000001 6241095,508655 6241075,508655 6241035,508685.000000001 6241005,508705.000000001 6241005,508745 6241055,508755 6241055,508775.000000001 6241015,508834.999999999 6240985,508865 6240955,508865 6240885,508845 6240835,508845 6240785,508855 6240775,508895.000000001 6240775,508925.000000001 6240805,509025.000000001 6240805,509045.000000002 6240795,509075 6240765,509075 6240705,509025.000000001 6240675,509025.000000001 6240655,509075 6240615,509155.000000001 6240685,509165.000000002 6240655,509145.000000001 6240625,509155.000000001 6240585,509145.000000001 6240565,509155.000000001 6240555,509205 6240555,509255.000000001 6240515,509265.000000001 6240495,509305 6240475,509284.999999999 6240415,509295 6240395,509375.000000001 6240445,509394.999999999 6240445,509425 6240405,509425 6240355,509375.000000001 6240285,509415 6240235,509465.000000001 6240235,509495.000000002 6240185,509515 6240185,509535 6240215,509545 6240215,509585.000000001 6240165,509605.000000002 6240155,509615.000000002 6240165,509745 6240175,509785.000000001 6240125,509805.000000001 6240125,509835.000000002 6240095,509835.000000002 6240065,509875 6240025,509885 6239985,509925.000000001 6239935,510025.000000001 6239915,510055.000000002 6239915,510055.000000002 6239895,510035.000000001 6239865,510045.000000001 6239815,510035.000000001 6239785,510105 6239785,510145.000000001 6239755,510135.000000001 6239705,510115.000000001 6239685,510105 6239695,510075 6239695,510055.000000002 6239665,510064.999999999 6239635,510085 6239635,510115.000000001 6239605,510095 6239595,510095 6239565,510145.000000001 6239515,510135.000000001 6239465,510165.000000002 6239435,510215 6239455,510215 6239485,510205 6239495,510235.000000001 6239515,510215 6239555,510235.000000001 6239565,510265.000000001 6239565,510285.000000002 6239535,510285.000000002 6239455,510235.000000001 6239405,510245.000000001 6239365,510265.000000001 6239345,510315 6239385,510325 6239405,510375.000000001 6239405,510405 6239425,510415 6239415,510445 6239415,510465.000000001 6239435,510495.000000001 6239435,510505.000000002 6239415,510514.999999999 6239425,510525 6239415,510535 6239335,510575.000000001 6239305,510575.000000001 6239275,510615.000000002 6239255,510645 6239205,510655 6239215,510695.000000001 6239215,510725.000000002 6239255,510745 6239225,510775 6239205,510815.000000001 6239235,510875 6239225,510915.000000001 6239175,510925.000000001 6239175,510955.000000002 6239125,510955.000000002 6239095,510915.000000001 6239055,510905.000000001 6239075,510865 6239075,510835.000000002 6239035,510835.000000002 6239015,510885 6238965,510905.000000001 6238975,510925.000000001 6238955,510955.000000002 6238975,510965 6238995,510975 6238985,511015.000000001 6238985,511045.000000001 6238945,511025.000000001 6238925,511025.000000001 6238875,511005 6238855,510985 6238845,510955.000000002 6238865,510935.000000001 6238865,510885 6238815,510885 6238795,510945.000000002 6238745,510965 6238705,510995 6238725,511005 6238715,511015.000000001 6238725,511055.000000001 6238725,511075 6238705,511075 6238665,511055.000000001 6238625,511085 6238555,511085 6238485,511095 6238475,511105 6238485,511145.000000001 6238485,511155.000000001 6238475,511195 6238525,511215 6238525,511235.000000001 6238505,511255.000000001 6238515,511305 6238465,511315 6238385,511265.000000001 6238315,511255.000000001 6238275,511305 6238245,511325 6238245,511365.000000001 6238285,511395.000000002 6238275,511365.000000001 6238235,511355.000000001 6238245,511345.000000001 6238235,511355.000000001 6238205,511375.000000001 6238195,511404.999999999 6238215,511445 6238215,511455 6238205,511445 6238145,511395.000000002 6238075,511404.999999999 6238055,511425 6238035,511435 6238045,511435 6238075,511455 6238095,511475.000000001 6238095,511505.000000002 6238075,511515.000000002 6238055,511465.000000001 6238005,511435 6237955,511455 6237935,511455 6237905,511475.000000001 6237885,511505.000000002 6237885,511515.000000002 6237895,511535 6237875,511565 6237885,511575.000000001 6237875,511535 6237825,511605.000000001 6237775,511595.000000001 6237735,511625.000000002 6237735,511645 6237705,511635 6237665,511665 6237615,511615.000000002 6237545,511645 6237525,511645 6237495,511685.000000001 6237455,511715.000000001 6237445,511725.000000001 6237455,511735.000000002 6237445,511735.000000002 6237415,511745 6237405,511735.000000002 6237385,511745 6237375,511805.000000001 6237395,511845.000000002 6237395,511865 6237385,511905.000000001 6237335,511915.000000001 6237345,511925.000000001 6237335,511925.000000001 6237305,511905.000000001 6237295,511915.000000001 6237235,511985 6237175,511964.999999999 6237105,511975 6237095,511964.999999999 6237065,511975 6237055,511975 6236985,511985 6236975,511975 6236965,511995 6236915,512035.000000001 6236865,512035.000000001 6236825,512045.000000001 6236815,512085 6236815,512165.000000001 6236735,512175.000000002 6236695,512215 6236655,512255.000000001 6236655,512295.000000002 6236635,512315 6236665,512375.000000001 6236625,512385.000000001 6236485,512375.000000001 6236475,512385.000000001 6236465,512385.000000001 6236435,512365.000000001 6236415,512305 6236415,512295.000000002 6236405,512305 6236395,512285.000000001 6236365,512285.000000001 6236335,512315 6236325,512335 6236275,512335 6236205,512325 6236195,512305 6236215,512275.000000001 6236215,512255.000000001 6236195,512255.000000001 6236175,512305 6236135,512335 6236145,512365.000000001 6236115,512365.000000001 6236095,512395.000000001 6236065,512375.000000001 6236015,512435 6235965,512455 6235965,512475.000000001 6235935,512465.000000001 6235925,512435 6235925,512414.999999999 6235905,512405.000000002 6235835,512395.000000001 6235825,512405.000000002 6235745,512395.000000001 6235725,512405.000000002 6235715,512485.000000001 6235715,512505.000000001 6235735,512515.000000002 6235705,512455 6235645,512395.000000001 6235605,512405.000000002 6235575,512425 6235575,512445 6235555,512485.000000001 6235595,512495.000000001 6235585,512485.000000001 6235535,512465.000000001 6235515,512465.000000001 6235485,512485.000000001 6235475,512445 6235435,512405.000000002 6235435,512375.000000001 6235405,512335 6235455,512315 6235395,512285.000000001 6235395,512265.000000001 6235435,512235 6235435,512205 6235405,512195 6235275,512165.000000001 6235245,512095 6235235,512085 6235225,512115 6235125,512115 6235045,512125 6235015,512115 6235005,512135.000000001 6234975,512105 6234925,512175.000000002 6234865,512175.000000002 6234815,512195 6234795,512165.000000001 6234745,512195 6234705,512175.000000002 6234685,512145.000000001 6234685,512125 6234705,512115 6234695,512115 6234665,512155.000000001 6234645,512155.000000001 6234595,512165.000000001 6234585,512205 6234595,512225 6234575,512205 6234465,512145.000000001 6234385,512165.000000001 6234355,512195 6234345,512195 6234335,512145.000000001 6234315,512175.000000002 6234275,512205 6234265,512205 6234235,512215 6234225,512205 6234215,512125 6234215,512125 6234185,512165.000000001 6234155,512155.000000001 6234135,512135.000000001 6234135,512105 6234165,512075.000000002 6234165,512065.000000002 6234155,512085 6234125,512075.000000002 6234105,512045.000000001 6234105,512015 6234145,511964.999999999 6234105,511935.000000001 6234105,511925.000000001 6234085,511945.000000001 6234065,511975 6234085,511985 6234075,511985 6234035,511955.000000002 6234025,511905.000000001 6234055,511865 6234015,511875 6233945,511854.999999999 6233925,511815.000000001 6233925,511805.000000001 6233915,511815.000000001 6233905,511815.000000001 6233875,511795.000000001 6233855,511795.000000001 6233835,511845.000000002 6233795,511835.000000001 6233785,511845.000000002 6233755,511825.000000001 6233735,511835.000000001 6233715,511825.000000001 6233695,511854.999999999 6233655,511845.000000002 6233645,511845.000000002 6233605,511885 6233565,511885 6233465,511865 6233445,511865 6233295,511854.999999999 6233275,511865 6233265,511825.000000001 6233235,511845.000000002 6233205,511845.000000002 6233175,511815.000000001 6233145,511825.000000001 6233135,511825.000000001 6233075,511805.000000001 6233045,511815.000000001 6233035,511845.000000002 6233035,511895 6233065,511915.000000001 6233055,511945.000000001 6233075,511955.000000002 6233055,511945.000000001 6233045,511964.999999999 6233025,511985 6233025,512025.000000001 6232995,512015 6232955,511995 6232945,511964.999999999 6232905,511975 6232895,511975 6232865,511964.999999999 6232855,511964.999999999 6232825,511975 6232805,511995 6232795,511975 6232755,512055.000000001 6232655,512075.000000002 6232655,512125 6232605,512125 6232585,512095 6232565,512175.000000002 6232475,512165.000000001 6232395,512185.000000002 6232375,512235 6232375,512255.000000001 6232345,512255.000000001 6232315,512265.000000001 6232305,512215 6232275,512245.000000001 6232245,512285.000000001 6232245,512325 6232295,512335 6232295,512345 6232285,512375.000000001 6232285,512405.000000002 6232255,512395.000000001 6232205,512345 6232175,512345 6232155,512414.999999999 6232105,512435 6232105,512455 6232125,512455 6232155,512465.000000001 6232165,512485.000000001 6232145,512485.000000001 6232105,512524.999999999 6232085,512585.000000001 6232025,512595.000000001 6231975,512575.000000001 6231945,512595.000000001 6231925,512625.000000002 6231925,512665 6231895,512695.000000001 6231945,512725.000000001 6231915,512715.000000001 6231895,512675 6231875,512625.000000002 6231815,512625.000000002 6231785,512685 6231715,512705.000000001 6231705,512705.000000001 6231685,512725.000000001 6231655,512765 6231625,512805.000000001 6231625,512825.000000001 6231605,512825.000000001 6231595,512795 6231575,512805.000000001 6231535,512845.000000002 6231505,512855.000000002 6231485,512895 6231515,512965.000000002 6231515,512975 6231505,512965.000000002 6231455,513025.000000001 6231405,513025.000000001 6231345,513045.000000001 6231325,513045.000000001 6231305,513025.000000001 6231285,513035.000000001 6231275,513065.000000001 6231275,513084.999999999 6231255,513084.999999999 6231235,513125 6231195,513165.000000001 6231175,513145.000000001 6231155,513145.000000001 6231135,513105 6231095,513084.999999999 6231095,513065.000000001 6231065,513075.000000002 6231055,513084.999999999 6231065,513105 6231055,513135.000000001 6231025,513115 6230985,513155.000000001 6230985,513194.999999999 6231015,513175.000000001 6231045,513194.999999999 6231045,513235 6231005,513225 6230955,513235 6230945,513185.000000002 6230905,513185.000000002 6230885,513215 6230855,513215 6230835,513205 6230825,513165.000000001 6230825,513185.000000002 6230775,513185.000000002 6230745,513215 6230735,513205 6230705,513235 6230685,513245.000000001 6230665,513275.000000001 6230665,513315 6230715,513325 6230715,513335 6230705,513335 6230665,513365.000000001 6230655,513395.000000001 6230615,513435 6230615,513505.000000001 6230555,513525.000000002 6230585,513535 6230585,513565 6230555,513615.000000001 6230565,513625.000000001 6230555,513655 6230555,513665 6230535,513695.000000001 6230535,513725.000000001 6230505,513805.000000001 6230505,513815.000000001 6230485,513835.000000001 6230485,513855.000000002 6230455,513875 6230475,513945.000000001 6230415,513965.000000002 6230415,513995 6230395,513965.000000002 6230375,513965.000000002 6230365,514005 6230315,514065.000000001 6230265,514085.000000002 6230225,514135 6230265,514155.000000001 6230245,514145.000000001 6230235,514145.000000001 6230205,514235 6230145,514225 6230115,514235 6230105,514285.000000001 6230125,514295.000000001 6230115,514265.000000001 6230085,514275.000000001 6230055,514265.000000001 6230035,514225 6230005,514265.000000001 6229975,514314.999999999 6229915,514355 6229835,514385.000000001 6229805,514405.000000001 6229805,514435 6229765,514465 6229745,514495.000000001 6229765,514555 6229725,514545 6229655,514565 6229625,514555 6229595,514605.000000001 6229525,514585 6229515,514575 6229525,514565 6229515,514565 6229485,514525.000000002 6229455,514555 6229425,514575 6229435,514585 6229425,514575 6229415,514585 6229405,514585 6229365,514625.000000001 6229335,514625.000000001 6229325,514595.000000001 6229285,514565 6229315,514534.999999999 6229315,514525.000000002 6229295,514575 6229255,514575 6229225,514585 6229215,514645.000000002 6229215,514695 6229195,514735.000000001 6229155,514735.000000001 6229135,514765 6229115,514755.000000002 6229105,514765 6229095,514805 6229095,514815.000000001 6229085,514815.000000001 6229045,514865.000000002 6228965,514995 6228865,514984.999999999 6228765,514995 6228755,514995 6228725,515025 6228685,515065.000000001 6228655,515115 6228665,515155.000000001 6228615,515185.000000001 6228615,515225 6228585,515305.000000002 6228615,515335 6228545,515365 6228525,515435 6228515,515465 6228495,515515.000000001 6228495,515525.000000001 6228485,515615.000000001 6228495,515675 6228475,515705.000000001 6228445,515745.000000001 6228455,515825.000000001 6228365,515835.000000001 6228365,515835.000000001 6228345,515865.000000002 6228315,515825.000000001 6228265,515835.000000001 6228245,515915 6228175,515945.000000001 6228175,515985.000000002 6228125,516005 6228115,515995 6228065,516035 6228035,515995 6227995,515995 6227965,516025 6227925,516115 6227905,516135 6227885,516135 6227855,516155.000000001 6227815,516135 6227775,516135 6227735,516155.000000001 6227715,516195.000000001 6227715,516214.999999999 6227695,516205.000000002 6227675,516265.000000001 6227615,516324.999999999 6227625,516335 6227615,516315.000000002 6227585,516335 6227565,516355 6227565,516375.000000001 6227535,516405.000000001 6227535,516415.000000001 6227545,516445 6227535,516475 6227505,516505.000000001 6227535,516545.000000002 6227545,516555 6227515,516585 6227505,516615.000000001 6227465,516635.000000001 6227485,516645.000000001 6227475,516675 6227495,516695 6227495,516705 6227515,516745.000000001 6227535,516765.000000002 6227505,516805 6227485,516815 6227465,516865.000000001 6227485,516925 6227435,516955.000000001 6227435,516985.000000002 6227415,517025 6227375,517085.000000001 6227405,517105.000000002 6227395,517115 6227405,517095.000000002 6227435,517105.000000002 6227455,517115 6227445,517165.000000001 6227455,517175.000000001 6227445,517195.000000001 6227455,517255 6227425,517285.000000001 6227395,517315.000000001 6227405,517335 6227395,517405.000000001 6227345,517435.000000002 6227355,517435.000000002 6227385,517444.999999999 6227385,517465 6227415,517495.000000001 6227415,517525.000000001 6227375,517535.000000001 6227375,517535.000000001 6227335,517585 6227245,517575 6227235,517664.999999999 6227165,517664.999999999 6227145,517795 6227115,517815 6227095,517835.000000001 6227105,517865.000000001 6227075,517855.000000001 6227065,517865.000000001 6227055,517885.000000002 6227065,517905 6227055,517925 6227075,517985.000000001 6227005,518005 6227005,518025 6226985,518085.000000001 6226965,518175.000000001 6226885,518255 6226875,518285.000000001 6226845,518315.000000001 6226835,518335.000000002 6226805,518385 6226765,518405.000000001 6226765,518445.000000002 6226725,518435.000000002 6226715,518455 6226705,518485 6226645,518535.000000001 6226635,518535.000000001 6226605,518565 6226555,518595 6226555,518605 6226565,518655.000000001 6226525,518674.999999999 6226535,518705 6226495,518755.000000001 6226475,518735.000000001 6226455,518735.000000001 6226425,518795 6226355,518825 6226375,518855.000000001 6226365,518905 6226395,518935 6226385,518985.000000001 6226405,519055 6226375,519075.000000001 6226395,519085.000000001 6226385,519245 6226385,519285.000000001 6226345,519305.000000001 6226355,519355 6226345,519385 6226355,519405.000000001 6226395,519445.000000002 6226375,519475 6226375,519505.000000001 6226335,519564.999999999 6226285,519595 6226285,519615 6226265,519685 6226265,519745.000000001 6226225,519775.000000002 6226225,519805 6226205,519855.000000001 6226195,519865.000000001 6226185,519855.000000001 6226165,519865.000000001 6226155,519955.000000001 6226095,519975.000000001 6226095,520014.999999999 6226045,520085.000000001 6225985,520105.000000001 6225985,520145 6225945,520175 6225945,520195.000000001 6225935,520195.000000001 6225925,520215.000000001 6225925,520385 6225755,520465 6225755,520555.000000001 6225605,520585 6225575,520605 6225585,521055 6225135,521075.000000001 6225135,521335.000000001 6224885,521385 6224845,521415.000000001 6224845,521455.000000002 6224805,521425.000000001 6224765,521435.000000001 6224725,521455.000000002 6224675,521485 6224655,521515 6224615,521505 6224605,521525.000000001 6224595,521545.000000001 6224535,521495 6224465,521495 6224445,521465.000000002 6224435,521335.000000001 6224295,521335.000000001 6224215,521345.000000002 6224195,521244.999999999 6224025,521244.999999999 6223975,521185.000000001 6223915,521185.000000001 6223755,521175 6223720)'
            ShortName = ''
            BranchID = '364a1eaa-079e-4bfe-bdc3-34289f78a4a8'
            Chainage = 70454.0
            IsSpan = false
            ToChainage = 70454.0
            Name = 'Boundary 2'
            BoundaryType = 2
            LocationType = 0
            StorageID = '00000000-0000-0000-0000-000000000000'
            CatchmentID = '00000000-0000-0000-0000-000000000000'
            RunoffFlowType = 0
            HDInclude = true
            HDInputType = 1
            HDScale = 1.0
            HDConstant = 0.0
            ADInclude = true
            UseMixing = false
            MixingCoef = 0.0
            STInclude = true
            STBoundaryType = 1
            STInputType = 0
            STScale = 1.0
            STChange = 0.0
            [HDTS]
               Touched = false
               FILE_NAME = |.\Model inputs\Timeseries\karup.dfs0|
               ITEM_COUNT = 1
               ITEM_NUMBERS = 2
            EndSect  // HDTS

            [HDDFS2]
               Touched = false
               FILE_NAME = ||
               ITEM_COUNT = 0
               ITEM_NUMBERS = 0
            EndSect  // HDDFS2

            [STTS]
               Touched = false
               FILE_NAME = ||
               ITEM_COUNT = 0
               ITEM_NUMBERS = 0
            EndSect  // STTS

            [ADBoundary]
               Touched = false
               DhiSEPfsListItemCount = 0
            EndSect  // ADBoundary

            [QHBoundary]
               Touched = false
               DhiSEPfsListItemCount = 50
               [QHBoundary_0]
                  Touched = false
                  ObjectID = '8c069106-397f-4e35-bf94-ce9bdb04a63d'
                  Q = 0.0
                  H = 1.907
               EndSect  // QHBoundary_0

               [QHBoundary_1]
                  Touched = false
                  ObjectID = 'b0ba7c11-ffa5-4557-ab6b-ecab4fc7f345'
                  Q = 0.002636142746625875
                  H = 1.990530612244898
               EndSect  // QHBoundary_1

               [QHBoundary_2]
                  Touched = false
                  ObjectID = '13071eb8-7bf0-442b-a188-25c141b7fe7a'
                  Q = 0.01673846307652908
                  H = 2.074061224489796
               EndSect  // QHBoundary_2

               [QHBoundary_3]
                  Touched = false
                  ObjectID = '68205935-9287-4eaa-9490-f36b978d5441'
                  Q = 0.04935058094260899
                  H = 2.157591836734694
               EndSect  // QHBoundary_3

               [QHBoundary_4]
                  Touched = false
                  ObjectID = '9d4bfa77-9476-4168-bdb2-10170137514d'
                  Q = 0.1062826155840524
                  H = 2.241122448979592
               EndSect  // QHBoundary_4

               [QHBoundary_5]
                  Touched = false
                  ObjectID = 'f57c2ad2-debe-4e43-ae92-8e8789cbe70c'
                  Q = 0.1927032037898816
                  H = 2.32465306122449
               EndSect  // QHBoundary_5

               [QHBoundary_6]
                  Touched = false
                  ObjectID = 'd8db93e3-3101-4d10-90a5-9517fd1c285d'
                  Q = 0.3136695551138605
                  H = 2.408183673469388
               EndSect  // QHBoundary_6

               [QHBoundary_7]
                  Touched = false
                  ObjectID = '7c758bd7-6747-4727-b1c1-41ba8f0aa3b6'
                  Q = 0.497431689951042
                  H = 2.491714285714286
               EndSect  // QHBoundary_7

               [QHBoundary_8]
                  Touched = false
                  ObjectID = '7b4aea65-006b-4127-a807-1d2b450814eb'
                  Q = 0.7528277168979661
                  H = 2.575244897959184
               EndSect  // QHBoundary_8

               [QHBoundary_9]
                  Touched = false
                  ObjectID = '718ec326-bd30-4723-8977-5034e32ccdfa'
                  Q = 1.068225498060234
                  H = 2.658775510204082
               EndSect  // QHBoundary_9

               [QHBoundary_10]
                  Touched = false
                  ObjectID = 'a1011748-d564-493d-bdb6-47afaea6ee92'
                  Q = 1.439632180881086
                  H = 2.74230612244898
               EndSect  // QHBoundary_10

               [QHBoundary_11]
                  Touched = false
                  ObjectID = 'a64560c0-3471-4aa1-827b-da574d4d3f42'
                  Q = 1.865044547303813
                  H = 2.825836734693878
               EndSect  // QHBoundary_11

               [QHBoundary_12]
                  Touched = false
                  ObjectID = '0af1a068-c42f-4b14-b90d-6e36638871f7'
                  Q = 2.343316570620082
                  H = 2.909367346938776
               EndSect  // QHBoundary_12

               [QHBoundary_13]
                  Touched = false
                  ObjectID = '57a61ec0-2aec-4166-9a31-11120f8075bf'
                  Q = 2.873776630181222
                  H = 2.992897959183674
               EndSect  // QHBoundary_13

               [QHBoundary_14]
                  Touched = false
                  ObjectID = '97f9e2fa-40c0-48a2-869b-680af03e94c8'
                  Q = 3.456052180967478
                  H = 3.076428571428571
               EndSect  // QHBoundary_14

               [QHBoundary_15]
                  Touched = false
                  ObjectID = 'ecd4b993-87ec-4bfe-ac67-3e3e4d25b339'
                  Q = 4.089974669081608
                  H = 3.159959183673469
               EndSect  // QHBoundary_15

               [QHBoundary_16]
                  Touched = false
                  ObjectID = 'ec5a4754-458e-4678-b7b0-3ea714be0c36'
                  Q = 4.775522159231556
                  H = 3.243489795918367
               EndSect  // QHBoundary_16

               [QHBoundary_17]
                  Touched = false
                  ObjectID = '4c503b47-ff17-4d07-af13-fcea2e9203f6'
                  Q = 5.51278209920029
                  H = 3.327020408163265
               EndSect  // QHBoundary_17

               [QHBoundary_18]
                  Touched = false
                  ObjectID = '77649dd6-af34-4220-a582-8b03939b3b3d'
                  Q = 6.301925843533926
                  H = 3.410551020408163
               EndSect  // QHBoundary_18

               [QHBoundary_19]
                  Touched = false
                  ObjectID = 'c8cae311-b518-4716-91f6-bcc15c39e8a4'
                  Q = 7.14319051165415
                  H = 3.494081632653061
               EndSect  // QHBoundary_19

               [QHBoundary_20]
                  Touched = false
                  ObjectID = 'c83f7c59-3104-40d1-9899-41f07ee115ab'
                  Q = 8.036865657007619
                  H = 3.577612244897959
               EndSect  // QHBoundary_20

               [QHBoundary_21]
                  Touched = false
                  ObjectID = 'dbe1e356-14a0-4e50-b2bc-db527d84f3ce'
                  Q = 8.983539357746148
                  H = 3.661142857142857
               EndSect  // QHBoundary_21

               [QHBoundary_22]
                  Touched = false
                  ObjectID = '5c8b7413-b57e-494d-9572-af41fa02447f'
                  Q = 9.982630046559768
                  H = 3.744673469387755
               EndSect  // QHBoundary_22

               [QHBoundary_23]
                  Touched = false
                  ObjectID = 'c82613ed-6577-4cd6-9606-ee820d472236'
                  Q = 11.03243382386407
                  H = 3.828204081632653
               EndSect  // QHBoundary_23

               [QHBoundary_24]
                  Touched = false
                  ObjectID = '578916c8-b041-4d44-aa69-561a3a0b15d5'
                  Q = 12.13185474157922
                  H = 3.911734693877551
               EndSect  // QHBoundary_24

               [QHBoundary_25]
                  Touched = false
                  ObjectID = '23c5d37b-a454-4fb9-9f07-7da5437a8ffd'
                  Q = 13.28007117091258
                  H = 3.995265306122449
               EndSect  // QHBoundary_25

               [QHBoundary_26]
                  Touched = false
                  ObjectID = 'a6ec247f-95f2-47a7-a0f9-e6545f4f8d37'
                  Q = 14.47642348433896
                  H = 4.078795918367347
               EndSect  // QHBoundary_26

               [QHBoundary_27]
                  Touched = false
                  ObjectID = '66fcd831-32df-4314-9a20-624decb0c32b'
                  Q = 15.72036286874707
                  H = 4.162326530612244
               EndSect  // QHBoundary_27

               [QHBoundary_28]
                  Touched = false
                  ObjectID = 'e45c7aa4-4331-4017-b85c-405eb3b88aaf'
                  Q = 17.01142267456844
                  H = 4.245857142857142
               EndSect  // QHBoundary_28

               [QHBoundary_29]
                  Touched = false
                  ObjectID = '7efe34b4-ac80-4142-a5d8-326f0a0674d2'
                  Q = 18.34920038391039
                  H = 4.32938775510204
               EndSect  // QHBoundary_29

               [QHBoundary_30]
                  Touched = false
                  ObjectID = '4a605ea2-a1c2-4e7c-ab91-8acd98d6ca1f'
                  Q = 19.73334534608634
                  H = 4.412918367346938
               EndSect  // QHBoundary_30

               [QHBoundary_31]
                  Touched = false
                  ObjectID = 'cb528e34-71aa-4cf8-a7a9-48f3a2171ba8'
                  Q = 21.16354996009659
                  H = 4.496448979591836
               EndSect  // QHBoundary_31

               [QHBoundary_32]
                  Touched = false
                  ObjectID = 'd8821fc8-834c-402e-b9cc-18cbcb6a3ebd'
                  Q = 22.63954306608262
                  H = 4.579979591836734
               EndSect  // QHBoundary_32

               [QHBoundary_33]
                  Touched = false
                  ObjectID = 'fa9ba8ba-fa90-4905-9d91-c07e3b407410'
                  Q = 24.16108483008095
                  H = 4.663510204081632
               EndSect  // QHBoundary_33

               [QHBoundary_34]
                  Touched = false
                  ObjectID = '9f182d79-df86-4053-a10b-7729e5694de1'
                  Q = 25.72796268186904
                  H = 4.74704081632653
               EndSect  // QHBoundary_34

               [QHBoundary_35]
                  Touched = false
                  ObjectID = 'c62f7bc6-ff0e-4b51-a68a-586683b9e7a8'
                  Q = 27.33998802135855
                  H = 4.830571428571428
               EndSect  // QHBoundary_35

               [QHBoundary_36]
                  Touched = false
                  ObjectID = 'c4643fd4-f443-4280-90e7-f84e5601f131'
                  Q = 28.99699350196978
                  H = 4.914102040816326
               EndSect  // QHBoundary_36

               [QHBoundary_37]
                  Touched = false
                  ObjectID = 'e73b41c3-a6a1-44f4-b2cf-c6f2a487b586'
                  Q = 30.6988307575481
                  H = 4.997632653061224
               EndSect  // QHBoundary_37

               [QHBoundary_38]
                  Touched = false
                  ObjectID = '6b35c21c-06cc-4013-8b65-d8f5e1d84ad6'
                  Q = 32.44536847715934
                  H = 5.081163265306122
               EndSect  // QHBoundary_38

               [QHBoundary_39]
                  Touched = false
                  ObjectID = '882943dc-118e-44e3-a6ce-265c038cb998'
                  Q = 34.23649075745642
                  H = 5.16469387755102
               EndSect  // QHBoundary_39

               [QHBoundary_40]
                  Touched = false
                  ObjectID = 'ed278bbd-e18c-4be2-85bc-f66cc359c927'
                  Q = 36.07209567982975
                  H = 5.248224489795918
               EndSect  // QHBoundary_40

               [QHBoundary_41]
                  Touched = false
                  ObjectID = '7aa61e89-28f0-4982-a4a5-dfe4aa70fb84'
                  Q = 37.95209407195667
                  H = 5.331755102040816
               EndSect  // QHBoundary_41

               [QHBoundary_42]
                  Touched = false
                  ObjectID = '4e469cfe-c8d3-4ec8-9047-cd04fab9da3d'
                  Q = 39.87640842234445
                  H = 5.415285714285714
               EndSect  // QHBoundary_42

               [QHBoundary_43]
                  Touched = false
                  ObjectID = '41eb6140-3978-4490-9361-f015ad3714de'
                  Q = 41.84497192308481
                  H = 5.498816326530612
               EndSect  // QHBoundary_43

               [QHBoundary_44]
                  Touched = false
                  ObjectID = '772dda34-77eb-4a6d-83b1-4674fc9bd18c'
                  Q = 43.85772762100849
                  H = 5.58234693877551
               EndSect  // QHBoundary_44

               [QHBoundary_45]
                  Touched = false
                  ObjectID = '1c9ec2e0-aa50-4d2f-bf9c-af23eef07736'
                  Q = 45.91462766122566
                  H = 5.665877551020408
               EndSect  // QHBoundary_45

               [QHBoundary_46]
                  Touched = false
                  ObjectID = '7bc2c2d8-ce3c-4c3b-84d0-420c0f7284da'
                  Q = 48.01563260995849
                  H = 5.749408163265306
               EndSect  // QHBoundary_46

               [QHBoundary_47]
                  Touched = false
                  ObjectID = 'fe077791-a7d3-491f-8cfb-97eb083f1e36'
                  Q = 50.16071084587838
                  H = 5.832938775510204
               EndSect  // QHBoundary_47

               [QHBoundary_48]
                  Touched = false
                  ObjectID = '8bf6782b-6eb4-45e8-9564-1a72bf78c5f4'
                  Q = 52.34983801096373
                  H = 5.916469387755102
               EndSect  // QHBoundary_48

               [QHBoundary_49]
                  Touched = false
                  ObjectID = 'db132635-ec68-42fe-b755-939aa663e270'
                  Q = 54.58299651336304
                  H = 6.0
               EndSect  // QHBoundary_49

            EndSect  // QHBoundary

            [STBoundary]
               Touched = false
               DhiSEPfsListItemCount = 0
            EndSect  // STBoundary

         EndSect  // Boundary_1

         [Boundary_2]
            Touched = false
            ObjectID = '6285a2a1-9673-4845-8c9f-ae357211abfc'
            Shape = 'LINESTRING(496755.000000002 6243880,496755.000000002 6243880)'
            ShortName = ''
            BranchID = '867a0dbb-d602-4fc2-8941-5ae36cc4a714'
            Chainage = 0.0
            IsSpan = false
            ToChainage = 0.0
            Name = 'Boundary 3'
            BoundaryType = 1
            LocationType = 0
            StorageID = '00000000-0000-0000-0000-000000000000'
            CatchmentID = '00000000-0000-0000-0000-000000000000'
            RunoffFlowType = 0
            HDInclude = true
            HDInputType = 1
            HDScale = 1.0
            HDConstant = 0.0
            ADInclude = true
            UseMixing = false
            MixingCoef = 0.0
            STInclude = true
            STBoundaryType = 1
            STInputType = 0
            STScale = 1.0
            STChange = 0.0
            [HDTS]
               Touched = false
               FILE_NAME = |.\karup.dfs0|
               ITEM_COUNT = 1
               ITEM_NUMBERS = 1
            EndSect  // HDTS

            [HDDFS2]
               Touched = false
               FILE_NAME = ||
               ITEM_COUNT = 0
               ITEM_NUMBERS = 0
            EndSect  // HDDFS2

            [STTS]
               Touched = false
               FILE_NAME = ||
               ITEM_COUNT = 0
               ITEM_NUMBERS = 0
            EndSect  // STTS

            [ADBoundary]
               Touched = false
               DhiSEPfsListItemCount = 0
            EndSect  // ADBoundary

            [QHBoundary]
               Touched = false
               DhiSEPfsListItemCount = 0
            EndSect  // QHBoundary

            [STBoundary]
               Touched = false
               DhiSEPfsListItemCount = 0
            EndSect  // STBoundary

         EndSect  // Boundary_2

         [Boundary_3]
            Touched = false
            ObjectID = '722a576c-0264-4654-b43e-a8e413ec2c24'
            Shape = 'LINESTRING(501650.000000001 6235660,501650.000000001 6235660)'
            ShortName = ''
            BranchID = 'cb56540f-1acc-42f4-902e-78a0e398f38f'
            Chainage = 0.0
            IsSpan = false
            ToChainage = 0.0
            Name = 'Boundary 4'
            BoundaryType = 1
            LocationType = 0
            StorageID = '00000000-0000-0000-0000-000000000000'
            CatchmentID = '00000000-0000-0000-0000-000000000000'
            RunoffFlowType = 0
            HDInclude = true
            HDInputType = 1
            HDScale = 1.0
            HDConstant = 0.0
            ADInclude = true
            UseMixing = false
            MixingCoef = 0.0
            STInclude = true
            STBoundaryType = 1
            STInputType = 0
            STScale = 1.0
            STChange = 0.0
            [HDTS]
               Touched = false
               FILE_NAME = |.\karup.dfs0|
               ITEM_COUNT = 1
               ITEM_NUMBERS = 1
            EndSect  // HDTS

            [HDDFS2]
               Touched = false
               FILE_NAME = ||
               ITEM_COUNT = 0
               ITEM_NUMBERS = 0
            EndSect  // HDDFS2

            [STTS]
               Touched = false
               FILE_NAME = ||
               ITEM_COUNT = 0
               ITEM_NUMBERS = 0
            EndSect  // STTS

            [ADBoundary]
               Touched = false
               DhiSEPfsListItemCount = 0
            EndSect  // ADBoundary

            [QHBoundary]
               Touched = false
               DhiSEPfsListItemCount = 0
            EndSect  // QHBoundary

            [STBoundary]
               Touched = false
               DhiSEPfsListItemCount = 0
            EndSect  // STBoundary

         EndSect  // Boundary_3

         [Boundary_4]
            Touched = false
            ObjectID = '13d2657f-12e1-48e0-9478-c8ece098713d'
            Shape = 'LINESTRING(521830 6231400,521830 6231400)'
            ShortName = ''
            BranchID = 'b0e3a41d-a21e-4335-a15c-5219eaa08adb'
            Chainage = 0.0
            IsSpan = false
            ToChainage = 0.0
            Name = 'Boundary 5'
            BoundaryType = 1
            LocationType = 0
            StorageID = '00000000-0000-0000-0000-000000000000'
            CatchmentID = '00000000-0000-0000-0000-000000000000'
            RunoffFlowType = 0
            HDInclude = true
            HDInputType = 1
            HDScale = 1.0
            HDConstant = 0.0
            ADInclude = true
            UseMixing = false
            MixingCoef = 0.0
            STInclude = true
            STBoundaryType = 1
            STInputType = 0
            STScale = 1.0
            STChange = 0.0
            [HDTS]
               Touched = false
               FILE_NAME = |.\karup.dfs0|
               ITEM_COUNT = 1
               ITEM_NUMBERS = 1
            EndSect  // HDTS

            [HDDFS2]
               Touched = false
               FILE_NAME = ||
               ITEM_COUNT = 0
               ITEM_NUMBERS = 0
            EndSect  // HDDFS2

            [STTS]
               Touched = false
               FILE_NAME = ||
               ITEM_COUNT = 0
               ITEM_NUMBERS = 0
            EndSect  // STTS

            [ADBoundary]
               Touched = false
               DhiSEPfsListItemCount = 0
            EndSect  // ADBoundary

            [QHBoundary]
               Touched = false
               DhiSEPfsListItemCount = 0
            EndSect  // QHBoundary

            [STBoundary]
               Touched = false
               DhiSEPfsListItemCount = 0
            EndSect  // STBoundary

         EndSect  // Boundary_4

         [Boundary_5]
            Touched = false
            ObjectID = '5327c627-4bc4-4c57-98d8-a86affc21077'
            Shape = 'LINESTRING(516655 6223300,516655 6223300)'
            ShortName = ''
            BranchID = 'f19ceb0e-b667-481d-a194-b153794b657f'
            Chainage = 0.0
            IsSpan = false
            ToChainage = 0.0
            Name = 'Boundary 6'
            BoundaryType = 1
            LocationType = 0
            StorageID = '00000000-0000-0000-0000-000000000000'
            CatchmentID = '00000000-0000-0000-0000-000000000000'
            RunoffFlowType = 0
            HDInclude = true
            HDInputType = 1
            HDScale = 1.0
            HDConstant = 0.0
            ADInclude = true
            UseMixing = false
            MixingCoef = 0.0
            STInclude = true
            STBoundaryType = 1
            STInputType = 0
            STScale = 1.0
            STChange = 0.0
            [HDTS]
               Touched = false
               FILE_NAME = |.\karup.dfs0|
               ITEM_COUNT = 1
               ITEM_NUMBERS = 1
            EndSect  // HDTS

            [HDDFS2]
               Touched = false
               FILE_NAME = ||
               ITEM_COUNT = 0
               ITEM_NUMBERS = 0
            EndSect  // HDDFS2

            [STTS]
               Touched = false
               FILE_NAME = ||
               ITEM_COUNT = 0
               ITEM_NUMBERS = 0
            EndSect  // STTS

            [ADBoundary]
               Touched = false
               DhiSEPfsListItemCount = 0
            EndSect  // ADBoundary

            [QHBoundary]
               Touched = false
               DhiSEPfsListItemCount = 0
            EndSect  // QHBoundary

            [STBoundary]
               Touched = false
               DhiSEPfsListItemCount = 0
            EndSect  // STBoundary

         EndSect  // Boundary_5

         [Boundary_6]
            Touched = false
            ObjectID = 'fa23a6bb-3ff9-4541-97f5-135487fc0325'
            Shape = 'LINESTRING(519664.999999942 6242890.00001388,519664.999999942 6242890.00001388)'
            ShortName = ''
            BranchID = 'dd9bad12-8915-46fe-9ab9-7c2dd18157ff'
            Chainage = 0.0
            IsSpan = false
            ToChainage = 0.0
            Name = 'Boundary 8'
            BoundaryType = 1
            LocationType = 0
            StorageID = '00000000-0000-0000-0000-000000000000'
            CatchmentID = '00000000-0000-0000-0000-000000000000'
            RunoffFlowType = 0
            HDInclude = true
            HDInputType = 1
            HDScale = 1.0
            HDConstant = 0.0
            ADInclude = true
            UseMixing = false
            MixingCoef = 0.0
            STInclude = true
            STBoundaryType = 1
            STInputType = 0
            STScale = 1.0
            STChange = 0.0
            [HDTS]
               Touched = false
               FILE_NAME = |.\karup.dfs0|
               ITEM_COUNT = 1
               ITEM_NUMBERS = 1
            EndSect  // HDTS

            [HDDFS2]
               Touched = false
               FILE_NAME = ||
               ITEM_COUNT = 0
               ITEM_NUMBERS = 0
            EndSect  // HDDFS2

            [STTS]
               Touched = false
               FILE_NAME = ||
               ITEM_COUNT = 0
               ITEM_NUMBERS = 0
            EndSect  // STTS

            [ADBoundary]
               Touched = false
               DhiSEPfsListItemCount = 0
            EndSect  // ADBoundary

            [QHBoundary]
               Touched = false
               DhiSEPfsListItemCount = 0
            EndSect  // QHBoundary

            [STBoundary]
               Touched = false
               DhiSEPfsListItemCount = 0
            EndSect  // STBoundary

         EndSect  // Boundary_6

      EndSect  // Boundary

      [MH_Wind_Friction]
         Touched = false
         DhiSEPfsListItemCount = 0
         GlobalWindScalingFactor = 1.0
         [PointSymboloy]
            Touched = false
            ShowSymbol = true
            LabelVisible = false
            FontSize = 9
            FontStyle = 0
            FontColor = -16777216
            SymbolField = ''
            SymbolFieldTypeCode = 0
            UseCustomColor = false
            LabelField = 'WindScalingFactor'
            SymbolScope = 0
            SymbolExpression = ''
            SymbologyType = 0
            [SpecifiedSymbols]
               Count = 0
            EndSect  // SpecifiedSymbols

            [GraduatedSizeRange]
               SizeFrom = 1
               SizeTo = 20
            EndSect  // GraduatedSizeRange

            [GraduatedColorRamp]
               Invert = false
               ColorRamp = '-16777216:0;-1:100'
            EndSect  // GraduatedColorRamp

            SymbolStyle = 0
            PointSymbolFillColor = -1
            PointOutlineColor = -16728064
            PointSize = 11
            PointOutlineWidth = 2
            PointStyle = 5
            BitmapName = ''
         EndSect  // PointSymboloy

      EndSect  // MH_Wind_Friction

      [MH_Wind_Field]
         Touched = false
         ObjectID = '36958a19-f3c2-4142-86ce-95ae7f3cc6d5'
         IncludeWindShearStress = false
         WindDirectionType = 1
         WindDirectionValue = 0.0
         WindVelocityType = 1
         WindVelocityValue = 0.0
         [WindDirectionTS]
            Touched = false
            FILE_NAME = ||
            ITEM_COUNT = 0
            ITEM_NUMBERS = 0
         EndSect  // WindDirectionTS

         [WindVelocityTS]
            Touched = false
            FILE_NAME = ||
            ITEM_COUNT = 0
            ITEM_NUMBERS = 0
         EndSect  // WindVelocityTS

         [HDWindDirectionList]
            Touched = false
            DhiSEPfsListItemCount = 0
         EndSect  // HDWindDirectionList

         [HDWindVelocityList]
            Touched = false
            DhiSEPfsListItemCount = 0
         EndSect  // HDWindVelocityList

      EndSect  // MH_Wind_Field

      [GroundWaterLeakage]
         Touched = true
         DhiSEPfsListItemCount = 0
         IncludeGWLeakage = false
         GWHeadType = 0
         GWHeadValue = 0.0
         LeakageCoeff = 0.0
         [GWHeadTS]
            Touched = false
            FILE_NAME = ||
            ITEM_COUNT = 0
            ITEM_NUMBERS = 0
         EndSect  // GWHeadTS

         [GWHeadDFS2]
            Touched = false
            FILE_NAME = ||
            ITEM_COUNT = 0
            ITEM_NUMBERS = 0
         EndSect  // GWHeadDFS2

         [PointSymboloy]
            Touched = false
            ShowSymbol = true
            LabelVisible = false
            FontSize = 9
            FontStyle = 0
            FontColor = -16777216
            SymbolField = ''
            SymbolFieldTypeCode = 0
            UseCustomColor = false
            LabelField = 'LeakageCoeff'
            SymbolScope = 0
            SymbolExpression = ''
            SymbologyType = 0
            [SpecifiedSymbols]
               Count = 0
            EndSect  // SpecifiedSymbols

            [GraduatedSizeRange]
               SizeFrom = 1
               SizeTo = 20
            EndSect  // GraduatedSizeRange

            [GraduatedColorRamp]
               Invert = false
               ColorRamp = '-16777216:0;-1:100'
            EndSect  // GraduatedColorRamp

            SymbolStyle = 0
            PointSymbolFillColor = -65536
            PointOutlineColor = -65536
            PointSize = 6
            PointOutlineWidth = 1
            PointStyle = 0
            BitmapName = ''
         EndSect  // PointSymboloy

      EndSect  // GroundWaterLeakage

      [MSheLinks]
         Touched = true
         DhiSEPfsListItemCount = 6
         IncludeMSheCoupling = true
         [PolylineSymbology]
            Touched = false
            ShowSymbol = true
            LabelVisible = false
            FontSize = 9
            FontStyle = 0
            FontColor = -16777216
            SymbolField = ''
            SymbolFieldTypeCode = 0
            UseCustomColor = false
            LabelField = 'Conductance'
            SymbolScope = 0
            SymbolExpression = ''
            SymbologyType = 0
            [SpecifiedSymbols]
               Count = 0
            EndSect  // SpecifiedSymbols

            [GraduatedThicknessRange]
               SizeFrom = 1
               SizeTo = 20
            EndSect  // GraduatedThicknessRange

            [GraduatedColorRamp]
               Invert = false
               ColorRamp = '-16777216:0;-1:100'
            EndSect  // GraduatedColorRamp

            PolylineSymbolColor = -16777216
            PolylineThickness = 5
            PolylineType = 0
            DrawDirectionArrow = false
            ArrowPosition = 2
         EndSect  // PolylineSymbology

         [MSheLink_0]
            Touched = false
            ObjectID = '9573bc10-9315-4dd6-a04b-c058c616b7e3'
            Shape = 'LINESTRING(496755.000000002 6243880,496764.999999999 6243915,496785 6243935,496785 6244225,496764.999999999 6244265,496764.999999999 6244305,496835.000000001 6244355,496905 6244365,496945.000000001 6244405,496975.000000002 6244415,497025 6244475,497045.000000001 6244465,497075.000000001 6244495,497045.000000001 6244535,497065.000000001 6244575,497145 6244665,497175.000000001 6244655,497195.000000001 6244675,497185.000000001 6244705,497215 6244745,497215 6244755,497195.000000001 6244765,497195.000000001 6244795,497215 6244825,497185.000000001 6244865,497185.000000001 6244955,497165.000000001 6244975,497155.000000001 6245025,497195.000000001 6245085,497195.000000001 6245135,497215 6245155,497245 6245245,497245 6245295,497275.000000001 6245335,497275.000000001 6245405,497324.999999999 6245475,497455 6245585,497525.000000001 6245615,497555 6245615,497575 6245635,497625.000000001 6245645,497745.000000001 6245715,497815 6245735,497845.000000001 6245765,497925 6245755,497935.000000001 6245775,497965.000000001 6245795,497994.999999999 6245775,498035 6245795,498065.000000001 6245795,498125 6245855,498145 6245855,498195.000000001 6245915,498325.000000002 6245995,498375 6246005,498425.000000001 6245985,498455 6246015,498455 6246035,498545.000000002 6246115,498575 6246125,498625.000000001 6246195,498645.000000001 6246185,498664.999999999 6246205,498725.000000001 6246205,498735.000000001 6246215,498795 6246195,498805 6246205,498795 6246215,498915 6246335,498915 6246375,498965.000000001 6246395,498985.000000002 6246425,498975.000000001 6246455,498995.000000002 6246475,499005 6246465,499025 6246475,499035 6246465,499145 6246565,499135 6246575,499145 6246605,499115 6246635,499125 6246645,499125 6246685,499145 6246715,499115 6246765,499135 6246795,499135 6246815,499165.000000001 6246835,499165.000000001 6246855,499195.000000001 6246895,499195.000000001 6246915,499224.999999999 6246965,499224.999999999 6247005,499255 6247035,499295.000000001 6247045,499425.000000001 6247205,499425.000000001 6247235,499455 6247295,499455 6247375,499465 6247385,499455 6247395,499455 6247435,499444.999999999 6247435,499495 6247495,499515.000000001 6247475,499545.000000002 6247495,499545.000000002 6247535,499525.000000001 6247555,499525.000000001 6247595,499515.000000001 6247605,499545.000000002 6247645,499545.000000002 6247695,499555.000000002 6247705,499555.000000002 6247785,499545.000000002 6247795,499545.000000002 6247865,499535.000000001 6247875,499585 6247925,499585 6247945,499635.000000001 6247975,499605 6247995,499605 6248025,499575 6248065,499575 6248115,499605 6248125,499615.000000001 6248215,499645.000000001 6248255,499635.000000001 6248295,499615.000000001 6248315,499625.000000001 6248325,499625.000000001 6248365,499645.000000001 6248385,499635.000000001 6248405,499645.000000001 6248455,499665.000000002 6248475,499655.000000002 6248485,499655.000000002 6248515,499695 6248535,499715 6248525,499725.000000001 6248535,499725.000000001 6248565,499745.000000001 6248585,499795 6248595,499815 6248615,499815 6248625,499785 6248645,499815 6248695,499835.000000001 6248685,499865.000000001 6248695,499855.000000001 6248715,499815 6248745,499825 6248765,499855.000000001 6248785,499835.000000001 6248815,499845.000000001 6248835,499915 6248865,499915 6248875,499885.000000002 6248895,499894.999999999 6248915,499885.000000002 6248945,499945.000000001 6248985,500015 6248975,500035 6248995,500085.000000001 6249005,500155 6249065,500115.000000002 6249085,500125 6249105,500205.000000001 6249095,500255 6249135,500295.000000001 6249115,500315.000000001 6249135,500325.000000001 6249125,500355 6249135,500395.000000001 6249165,500405.000000001 6249225,500454.999999999 6249255,500475 6249235,500495 6249265,500525.000000001 6249285,500555.000000002 6249335,500555.000000002 6249355,500595 6249375,500575 6249415,500585 6249425,500575 6249445,500555.000000002 6249455,500555.000000002 6249475,500485 6249555,500465 6249605,500465 6249635,500495 6249655,500495 6249695,500515.000000001 6249715,500515.000000001 6249755,500475 6249805,500475 6249855,500485 6249865,500475 6249875,500515.000000001 6249895,500515.000000001 6249905,500485 6249925,500495 6249955,500485 6249975,500505.000000001 6250005,500495 6250035,500505.000000001 6250065,500535.000000001 6250105,500525.000000001 6250125,500564.999999999 6250175,500555.000000002 6250185,500555.000000002 6250245,500564.999999999 6250255,500555.000000002 6250265,500665.000000002 6250365,500665.000000002 6250385,500695 6250425,500695 6250475,500705 6250485,500685 6250505,500665.000000002 6250495,500655.000000001 6250505,500655.000000001 6250535,500615.000000001 6250575,500615.000000001 6250635,500625.000000001 6250645,500665.000000002 6250645,500695 6250625,500715 6250645,500695 6250665,500674.999999999 6250665,500655.000000001 6250705,500655.000000001 6250765,500674.999999999 6250785,500674.999999999 6250925,500625.000000001 6250965,500585 6251005,500585 6251025,500515.000000001 6251085,500515.000000001 6251115,500495 6251135,500495 6251165,500505.000000001 6251175,500535.000000001 6251175,500555.000000002 6251195,500555.000000002 6251215)'
            ShortName = ''
            BranchID = '867a0dbb-d602-4fc2-8941-5ae36cc4a714'
            Chainage = 0.0
            IsSpan = true
            ToChainage = 10994.0
            Conductance = 2
            LeakageCoef = __riv_HaderupRiver_LeakageCoef__
            LineResExc = 0
            WeirCoef = 1.838
            WeirExpCoef = 1.5
            MinHeight = 0.1
            OverbankSpill = true
            MinFlowArea = 0.0
            FloodArea = 0
            FloodCode = 0.0
            BedTopo = 1
            BedLeakage = 1
         EndSect  // MSheLink_0

         [MSheLink_1]
            Touched = false
            ObjectID = '55f181a0-51ae-49c7-8115-ad7ae5c01daf'
            Shape = 'LINESTRING(501650.000000001 6235660,501595 6235725,501485 6235825,501445.000000002 6235835,501415.000000001 6235865,501344.999999999 6235905,501315.000000001 6235905,501275 6235955,501265 6235985,501185.000000001 6236065,501175.000000001 6236055,501095.000000001 6236065,500735.000000001 6236415,500735.000000001 6236545,500215.000000002 6237065,500215.000000002 6237085,500185.000000001 6237125,500185.000000001 6237155,500145 6237215,500155 6237255,500195.000000001 6237285,500185.000000001 6237315,500185.000000001 6237415,500195.000000001 6237435,500175.000000001 6237455,500165 6237585,500135 6237635,500145 6237685,500125 6237705,500135 6237715,500115.000000002 6237735,500115.000000002 6237775,500135 6237795,500145 6237835,500195.000000001 6237875,500255 6237835,500305.000000001 6237825,500375 6237785,500435.000000001 6237775,500465 6237755,500485 6237775,500485 6237805,500454.999999999 6237835,500405.000000001 6237925,500405.000000001 6237975,500435.000000001 6238015,500454.999999999 6238045,500495 6238055,500505.000000001 6238085,500445.000000002 6238155,500425.000000001 6238155,500395.000000001 6238185,500395.000000001 6238225,500355 6238275,500345 6238385,500305.000000001 6238425,500255 6238435,500235 6238455,500235 6238475,500205.000000001 6238505,500205.000000001 6238535,500155 6238585,500175.000000001 6238615,500145 6238655,500155 6238665,500145 6238685,500125 6238715,500105.000000002 6238725,500115.000000002 6238745,500095.000000001 6238765,500105.000000002 6238775,500085.000000001 6238795,500095.000000001 6238805,500065.000000001 6238845,500065.000000001 6238875,500055.000000001 6238885,500075.000000001 6238915,500045 6238955,500055.000000001 6238975,500055.000000001 6239455,500045 6239465,500045 6239525,499965.000000001 6239605,499955.000000001 6239605,499955.000000001 6239545,499925 6239535,499835.000000001 6239615,499825 6239605,499795 6239615,499775.000000002 6239625,499765.000000001 6239645,499745.000000001 6239645,499715 6239665,499725.000000001 6239675,499725.000000001 6239715,499715 6239725,499705 6239715,499685 6239745,499695 6239815,499705 6239815,499715 6239845,499685 6239875,499695 6239885,499665.000000002 6239905,499665.000000002 6239925,499635.000000001 6239955,499645.000000001 6239995,499605 6240045,499605 6240075,499625.000000001 6240095,499615.000000001 6240115,499625.000000001 6240155,499595 6240185,499605 6240205,499575 6240215,499575 6240225,499545.000000002 6240245,499545.000000002 6240275,499535.000000001 6240285,499545.000000002 6240335,499535.000000001 6240335,499525.000000001 6240355,499535.000000001 6240385,499455 6240445,499465 6240455,499465 6240535,499444.999999999 6240555,499465 6240565,499465 6240595,499475 6240605,499465 6240615,499475 6240635,499455 6240655,499455 6240685,499465 6240695,499455 6240705,499485 6240735,499475 6240755,499475 6240815,499465 6240825,499485 6240855,499475 6240865,499485 6240895,499465 6240945,499444.999999999 6240965,499444.999999999 6240995,499435.000000002 6241005,499455 6241105,499435.000000002 6241135,499305.000000001 6241145,499265 6241215,499265 6241235,499245 6241245,499224.999999999 6241285,499165.000000001 6241275,499155 6241295,499095.000000001 6241315,499095.000000001 6241365,499035 6241445,499005 6241505,498905 6241625,498885.000000002 6241665,498825 6241715,498825 6241755,498805 6241785,498805 6241835,498815 6241855,498774.999999999 6241875,498795 6241915,498774.999999999 6241965,498785 6241995,498785 6242085,498765.000000002 6242115,498765.000000002 6242595,498785 6242625,498785 6242675,498795 6242685,498795 6242955,498855.000000001 6243015,498845.000000001 6243045,498855.000000001 6243085,498845.000000001 6243095,498865.000000001 6243115,498875.000000002 6243225,498885.000000002 6243235,498885.000000002 6243315,498905 6243335,498915 6243425,498945.000000001 6243455,498935 6243485,498945.000000001 6243505,498965.000000001 6243525,498985.000000002 6243525,499025 6243565,499095.000000001 6243565,499115 6243545,499155 6243535,499175.000000001 6243555,499285.000000001 6243545,499345 6243585,499375 6243575,499465 6243575,499485 6243605,499505.000000001 6243605,499515.000000001 6243625,499545.000000002 6243625,499565 6243635,499575 6243655,499585 6243645,499605 6243655,499625.000000001 6243685,499615.000000001 6243695,499635.000000001 6243745,499725.000000001 6243765,499745.000000001 6243785,499745.000000001 6243805,499815 6243855,499825 6243875,499815 6243895,499855.000000001 6243935,499845.000000001 6243945,499865.000000001 6243965,499835.000000001 6244015,499845.000000001 6244075,499875.000000001 6244095,499855.000000001 6244125,499894.999999999 6244155,499945.000000001 6244155,500004.999999999 6244175,500065.000000001 6244235,500085.000000001 6244225,500095.000000001 6244235,500115.000000002 6244225,500125 6244235,500155 6244215,500175.000000001 6244245,500215.000000002 6244275,500215.000000002 6244285,500195.000000001 6244285,500185.000000001 6244305,500195.000000001 6244335,500225.000000002 6244355,500255 6244395,500225.000000002 6244455,500255 6244475,500275 6244465,500265 6244495,500275 6244505,500275 6244545,500225.000000002 6244595,500255 6244605,500255 6244625,500235 6244645,500205.000000001 6244645,500195.000000001 6244665,500205.000000001 6244675,500195.000000001 6244685,500215.000000002 6244715,500195.000000001 6244745,500205.000000001 6244755,500245 6244745,500255 6244755,500245 6244785,500215.000000002 6244795,500185.000000001 6244775,500185.000000001 6244805,500165 6244815,500085.000000001 6244905,500065.000000001 6244905,500045 6244925,500055.000000001 6244955,500045 6244965,500004.999999999 6244965,499955.000000001 6245005,499965.000000001 6245025,499955.000000001 6245035,499925 6245045,499915 6245035,499905 6245045,499905 6245065,499885.000000002 6245085,499915 6245125,499905 6245145,499935 6245165,499925 6245205,499905 6245215,499894.999999999 6245205,499865.000000001 6245205,499835.000000001 6245235,499805 6245245,499805 6245275,499785 6245305,499785 6245355,499805 6245405,499785 6245425,499765.000000001 6245415,499725.000000001 6245425,499715 6245415,499695 6245435,499685 6245465,499695 6245475,499655.000000002 6245515,499665.000000002 6245575,499625.000000001 6245595,499635.000000001 6245605,499625.000000001 6245645,499605 6245665,499595 6245655,499575 6245665,499575 6245695,499555.000000002 6245735,499565 6245745,499605 6245745,499625.000000001 6245785,499575 6245835,499575 6245865,499555.000000002 6245885,499555.000000002 6245925,499455 6246025,499455 6246065,499425.000000001 6246075,499395.000000001 6246105,499395.000000001 6246115,499455 6246105,499475 6246135,499435.000000002 6246175,499415.000000001 6246165,499405.000000001 6246185,499265 6246315,499265 6246345,499255 6246355,499265 6246375,499224.999999999 6246415,499224.999999999 6246445,499245 6246455,499224.999999999 6246495,499235 6246555,499195.000000001 6246655,499165.000000001 6246675,499185.000000001 6246685,499185.000000001 6246705,499165.000000001 6246725,499145 6246715)'
            ShortName = ''
            BranchID = 'cb56540f-1acc-42f4-902e-78a0e398f38f'
            Chainage = 0.0
            IsSpan = true
            ToChainage = 16290.0
            Conductance = 2
            LeakageCoef = __riv_GrindeskovCreek_LeakageCoef__
            LineResExc = 0
            WeirCoef = 1.838
            WeirExpCoef = 1.5
            MinHeight = 0.1
            OverbankSpill = true
            MinFlowArea = 0.0
            FloodArea = 0
            FloodCode = 0.0
            BedTopo = 1
            BedLeakage = 1
         EndSect  // MSheLink_1

         [MSheLink_2]
            Touched = false
            ObjectID = '440685e0-bdf1-4a0a-aad4-a428daf56126'
            Shape = 'LINESTRING(521830 6231400,521745 6231495,521695 6231535,521675 6231535,521645 6231555,521655 6231685,521635 6231705,521635 6231755,521595 6231785,521565 6231785,521485 6231885,521465 6231885,521425 6231915,521375 6231915,521335 6231955,521245 6231955,521195 6231905,521145 6231925,521115 6231895,520985 6231895,520955 6231865,520875 6231865,520835 6231905,520835 6231945,520875 6231995,520865 6232005,520895 6232015,520885 6232045,520895 6232065,520865 6232105,520865 6232135,520835 6232195,520835 6232235,520805 6232255,520795 6232365,520715 6232455,520685 6232515,520645 6232545,520605 6232595,520575 6232685,520525 6232735,520495 6232795,520455 6232825,520425 6232915,520425 6233005,520355 6233075,520295 6233085,520235 6233155,520235 6233205,520215 6233245,520215 6233275,520175 6233325,520165 6233355,520175 6233455,520205 6233505,520205 6233555,519905 6233855,519905 6233905,519885 6233915,519895 6233965,519875 6233985,519885 6233995,519865 6234035,519885 6234075,519885 6234125,519875 6234135,519855 6234125,519825 6234155,519775 6234155,519745 6234195,519705 6234195,519695 6234185,519615 6234195,519575 6234165,519515 6234155,519505 6234165,519455 6234165,519435 6234185,519425 6234175,519405 6234175,519375 6234195,519355 6234185,519345 6234205,519305 6234205,519285 6234185,519265 6234195,519225 6234185,519175 6234225,519145 6234235,519115 6234225,519075 6234265,519075 6234295,519095 6234315,519075 6234355,519085 6234365,519065 6234375,519075 6234385,519055 6234395,519035 6234425,518975 6234445,518995 6234465,518965 6234495,518965 6234545,518955 6234555,518965 6234585,518935 6234625,518905 6234635,518875 6234665,518815 6234665,518775 6234645,518765 6234625,518735 6234615,518585 6234615,518565 6234635,518455 6234635,518445 6234625,518255 6234635,518215 6234675,518205 6234665,518195 6234675,518155 6234665,518135 6234695,518105 6234715,518075 6234715,518065 6234705,518035 6234715,517995 6234705,517975 6234715,517915 6234785,517905 6234775,517825 6234835,517805 6234835,517795 6234865,517745 6234915,517705 6234925,517625 6234975,517535 6234995,517475 6234955,517425 6234955,517415 6234945,517405 6234955,517395 6234945,517345 6234955,517315 6234945,517285 6234965,517205 6234985,517095 6235055,517045 6235045,517025 6235075,517025 6235115,517015 6235125,517025 6235185,516975 6235275,516965 6235345,516815 6235515,516635 6235655,516615 6235655,516555 6235705,516495 6235725,516415 6235815,516405 6235805,516385 6235815,516365 6235845,516345 6235845,516325 6235885,516285 6235905,516235 6235905,516205 6235935,516175 6235945,516165 6235975,516145 6235995,516125 6235995,515995 6236115,515885 6236235,515865 6236225,515845 6236235,515845 6236265,515805 6236315,515805 6236345,515795 6236355,515745 6236355,515735 6236345,515685 6236355,515675 6236365,515685 6236405,515655 6236425,515625 6236465,515615 6236455,515605 6236475,515545 6236495,515515 6236535,515475 6236535,515445 6236575,515425 6236585,515395 6236575,515385 6236595,515415 6236615,515425 6236635,515395 6236655,515365 6236655,515305 6236755,515255 6236785,515155 6236785,515115 6236835,515085 6236835,515045 6236875,515015 6236885,515005 6236915,514875 6237035,514845 6237045,514815 6237085,514795 6237065,514755 6237065,514715 6237125,514665 6237165,514615 6237225,514595 6237285,514545 6237345,514495 6237385,514465 6237385,514375 6237475,514345 6237465,514345 6237475,514315 6237475,514285 6237505,514275 6237495,514225 6237495,514195 6237535,514155 6237545,514135 6237565,514095 6237565,514075 6237545,513985 6237615,513885 6237615,513835 6237655,513825 6237645,513815 6237655,513795 6237645,513695 6237645,513665 6237665,513605 6237675,513565 6237715,513575 6237725,513575 6237765,513545 6237785,513555 6237795,513545 6237815,513445 6237825,513385 6237865,513355 6237865,513325 6237895,513295 6237895,513295 6237915,513265 6237915,513255 6237935,513195 6237925,513165 6237955,513135 6237945,513105 6237955,513075 6237985,512995 6237965,512975 6237935,512955 6237935,512905 6237965,512855 6237965,512825 6237995,512785 6237995,512715 6237965,512685 6237965,512595 6237995,512555 6237995,512525 6238005,512475 6238055,512445 6238055,512425 6238025,512395 6238025,512355 6238045,512325 6238035,512315 6238065,512225 6238145,512215 6238135,512205 6238145,512195 6238135,512115 6238135,512105 6238125,512075 6238135,511995 6238205,511935 6238195,511905 6238235,511875 6238225,511855 6238245,511855 6238275,511815 6238275,511805 6238265,511785 6238285,511755 6238275,511715 6238325,511695 6238325,511665 6238355,511595 6238285,511545 6238315,511525 6238295,511505 6238305,511475 6238265,511455 6238275,511395 6238275)'
            ShortName = ''
            BranchID = 'b0e3a41d-a21e-4335-a15c-5219eaa08adb'
            Chainage = 0.0
            IsSpan = true
            ToChainage = 15473.0
            Conductance = 2
            LeakageCoef = __riv_HallerRiver_LeakageCoef__
            LineResExc = 0
            WeirCoef = 1.838
            WeirExpCoef = 1.5
            MinHeight = 0.1
            OverbankSpill = true
            MinFlowArea = 0.0
            FloodArea = 0
            FloodCode = 0.0
            BedTopo = 1
            BedLeakage = 1
         EndSect  // MSheLink_2

         [MSheLink_3]
            Touched = false
            ObjectID = '2ac63241-bf5e-4ecc-88e6-b55086eaf1ef'
            Shape = 'LINESTRING(516655 6223300,516655 6223335,516645 6223345,516645 6223395,516655 6223405,516635 6223415,516635 6223465,516615 6223485,516625 6223495,516615 6223505,516625 6223535,516605 6223565,516605 6223595,516585 6223615,516585 6223655,516565 6223685,516535 6223685,516495 6223705,516505 6223715,516495 6223725,516495 6223765,516465 6223815,516465 6223865,516485 6223905,516485 6223945,516535 6224015,516515 6224045,516515 6224115,516475 6224145,516475 6224175,516445 6224185,516455 6224205,516415 6224235,516405 6224255,516415 6224285,516395 6224305,516365 6224385,516335 6224415,516345 6224465,516305 6224535,516315 6224545,516295 6224565,516295 6224585,516275 6224595,516305 6224615,516305 6224625,516275 6224645,516275 6224665,516205 6224705,516205 6224735,516215 6224745,516185 6224755,516135 6224805,516075 6224875,516045 6224955,516005 6224985,516015 6225015,515995 6225075,515995 6225115,515965 6225135,515965 6225155,515935 6225175,515935 6225245,515925 6225255,515945 6225295,515885 6225365,515875 6225395,515895 6225425,515845 6225495,515855 6225535,515835 6225565,515845 6225595,515835 6225605,515835 6225665,515825 6225675,515825 6225745,515795 6225785,515805 6225835,515795 6225845,515775 6225835,515765 6225865,515735 6225885,515745 6225965,515765 6225985,515755 6225995,515715 6225975,515705 6225985,515715 6225995,515705 6226005,515735 6226035,515705 6226065,515705 6226115,515685 6226135,515695 6226145,515685 6226235,515725 6226255,515745 6226285,515805 6226335,515835 6226315,515865 6226315,515885 6226335,515905 6226315,515925 6226315,515955 6226335,515985 6226315,516035 6226335,516105 6226305,516125 6226325,516145 6226325,516155 6226345,516195 6226375,516235 6226385,516275 6226365,516285 6226385,516265 6226425,516285 6226445,516315 6226445,516325 6226455,516355 6226445,516375 6226475,516385 6226465,516455 6226465,516475 6226505,516515 6226515,516535 6226545,516545 6226535,516575 6226565,516595 6226565,516595 6226595,516645 6226575,516655 6226585,516665 6226635,516685 6226665,516655 6226705,516685 6226775,516665 6226785,516645 6226765,516625 6226795,516625 6226835,516685 6226905,516675 6226955,516695 6226985,516685 6226995,516675 6226985,516645 6227015,516575 6227125,516575 6227195,516565 6227215,516525 6227245,516545 6227305,516535 6227325,516585 6227385,516535 6227405,516505 6227435,516495 6227495,516475 6227505)'
            ShortName = ''
            BranchID = 'f19ceb0e-b667-481d-a194-b153794b657f'
            Chainage = 0.0
            IsSpan = true
            ToChainage = 6196.0
            Conductance = 2
            LeakageCoef = __riv_BordingRiver_LeakageCoef__
            LineResExc = 0
            WeirCoef = 1.838
            WeirExpCoef = 1.5
            MinHeight = 0.1
            OverbankSpill = true
            MinFlowArea = 0.0
            FloodArea = 0
            FloodCode = 0.0
            BedTopo = 1
            BedLeakage = 1
         EndSect  // MSheLink_3

         [MSheLink_4]
            Touched = false
            ObjectID = '9ecfc1fe-0a59-4d2f-b04f-7451ddfbc56b'
            Shape = 'LINESTRING(521175 6223720,521185.000000001 6223755,521185.000000001 6223915,521244.999999999 6223975,521244.999999999 6224025,521345.000000002 6224195,521335.000000001 6224215,521335.000000001 6224295,521465.000000002 6224435,521495 6224445,521495 6224465,521545.000000001 6224535,521525.000000001 6224595,521505 6224605,521515 6224615,521485 6224655,521455.000000002 6224675,521435.000000001 6224725,521425.000000001 6224765,521455.000000002 6224805,521415.000000001 6224845,521385 6224845,521335.000000001 6224885,521075.000000001 6225135,521055 6225135,520605 6225585,520585 6225575,520555.000000001 6225605,520465 6225755,520385 6225755,520215.000000001 6225925,520195.000000001 6225925,520195.000000001 6225935,520175 6225945,520145 6225945,520105.000000001 6225985,520085.000000001 6225985,520014.999999999 6226045,519975.000000001 6226095,519955.000000001 6226095,519865.000000001 6226155,519855.000000001 6226165,519865.000000001 6226185,519855.000000001 6226195,519805 6226205,519775.000000002 6226225,519745.000000001 6226225,519685 6226265,519615 6226265,519595 6226285,519564.999999999 6226285,519505.000000001 6226335,519475 6226375,519445.000000002 6226375,519405.000000001 6226395,519385 6226355,519355 6226345,519305.000000001 6226355,519285.000000001 6226345,519245 6226385,519085.000000001 6226385,519075.000000001 6226395,519055 6226375,518985.000000001 6226405,518935 6226385,518905 6226395,518855.000000001 6226365,518825 6226375,518795 6226355,518735.000000001 6226425,518735.000000001 6226455,518755.000000001 6226475,518705 6226495,518674.999999999 6226535,518655.000000001 6226525,518605 6226565,518595 6226555,518565 6226555,518535.000000001 6226605,518535.000000001 6226635,518485 6226645,518455 6226705,518435.000000002 6226715,518445.000000002 6226725,518405.000000001 6226765,518385 6226765,518335.000000002 6226805,518315.000000001 6226835,518285.000000001 6226845,518255 6226875,518175.000000001 6226885,518085.000000001 6226965,518025 6226985,518005 6227005,517985.000000001 6227005,517925 6227075,517905 6227055,517885.000000002 6227065,517865.000000001 6227055,517855.000000001 6227065,517865.000000001 6227075,517835.000000001 6227105,517815 6227095,517795 6227115,517664.999999999 6227145,517664.999999999 6227165,517575 6227235,517585 6227245,517535.000000001 6227335,517535.000000001 6227375,517525.000000001 6227375,517495.000000001 6227415,517465 6227415,517444.999999999 6227385,517435.000000002 6227385,517435.000000002 6227355,517405.000000001 6227345,517335 6227395,517315.000000001 6227405,517285.000000001 6227395,517255 6227425,517195.000000001 6227455,517175.000000001 6227445,517165.000000001 6227455,517115 6227445,517105.000000002 6227455,517095.000000002 6227435,517115 6227405,517105.000000002 6227395,517085.000000001 6227405,517025 6227375,516985.000000002 6227415,516955.000000001 6227435,516925 6227435,516865.000000001 6227485,516815 6227465,516805 6227485,516765.000000002 6227505,516745.000000001 6227535,516705 6227515,516695 6227495,516675 6227495,516645.000000001 6227475,516635.000000001 6227485,516615.000000001 6227465,516585 6227505,516555 6227515,516545.000000002 6227545,516505.000000001 6227535,516475 6227505,516445 6227535,516415.000000001 6227545,516405.000000001 6227535,516375.000000001 6227535,516355 6227565,516335 6227565,516315.000000002 6227585,516335 6227615,516324.999999999 6227625,516265.000000001 6227615,516205.000000002 6227675,516214.999999999 6227695,516195.000000001 6227715,516155.000000001 6227715,516135 6227735,516135 6227775,516155.000000001 6227815,516135 6227855,516135 6227885,516115 6227905,516025 6227925,515995 6227965,515995 6227995,516035 6228035,515995 6228065,516005 6228115,515985.000000002 6228125,515945.000000001 6228175,515915 6228175,515835.000000001 6228245,515825.000000001 6228265,515865.000000002 6228315,515835.000000001 6228345,515835.000000001 6228365,515825.000000001 6228365,515745.000000001 6228455,515705.000000001 6228445,515675 6228475,515615.000000001 6228495,515525.000000001 6228485,515515.000000001 6228495,515465 6228495,515435 6228515,515365 6228525,515335 6228545,515305.000000002 6228615,515225 6228585,515185.000000001 6228615,515155.000000001 6228615,515115 6228665,515065.000000001 6228655,515025 6228685,514995 6228725,514995 6228755,514984.999999999 6228765,514995 6228865,514865.000000002 6228965,514815.000000001 6229045,514815.000000001 6229085,514805 6229095,514765 6229095,514755.000000002 6229105,514765 6229115,514735.000000001 6229135,514735.000000001 6229155,514695 6229195,514645.000000002 6229215,514585 6229215,514575 6229225,514575 6229255,514525.000000002 6229295,514534.999999999 6229315,514565 6229315,514595.000000001 6229285,514625.000000001 6229325,514625.000000001 6229335,514585 6229365,514585 6229405,514575 6229415,514585 6229425,514575 6229435,514555 6229425,514525.000000002 6229455,514565 6229485,514565 6229515,514575 6229525,514585 6229515,514605.000000001 6229525,514555 6229595,514565 6229625,514545 6229655,514555 6229725,514495.000000001 6229765,514465 6229745,514435 6229765,514405.000000001 6229805,514385.000000001 6229805,514355 6229835,514314.999999999 6229915,514265.000000001 6229975,514225 6230005,514265.000000001 6230035,514275.000000001 6230055,514265.000000001 6230085,514295.000000001 6230115,514285.000000001 6230125,514235 6230105,514225 6230115,514235 6230145,514145.000000001 6230205,514145.000000001 6230235,514155.000000001 6230245,514135 6230265,514085.000000002 6230225,514065.000000001 6230265,514005 6230315,513965.000000002 6230365,513965.000000002 6230375,513995 6230395,513965.000000002 6230415,513945.000000001 6230415,513875 6230475,513855.000000002 6230455,513835.000000001 6230485,513815.000000001 6230485,513805.000000001 6230505,513725.000000001 6230505,513695.000000001 6230535,513665 6230535,513655 6230555,513625.000000001 6230555,513615.000000001 6230565,513565 6230555,513535 6230585,513525.000000002 6230585,513505.000000001 6230555,513435 6230615,513395.000000001 6230615,513365.000000001 6230655,513335 6230665,513335 6230705,513325 6230715,513315 6230715,513275.000000001 6230665,513245.000000001 6230665,513235 6230685,513205 6230705,513215 6230735,513185.000000002 6230745,513185.000000002 6230775,513165.000000001 6230825,513205 6230825,513215 6230835,513215 6230855,513185.000000002 6230885,513185.000000002 6230905,513235 6230945,513225 6230955,513235 6231005,513194.999999999 6231045,513175.000000001 6231045,513194.999999999 6231015,513155.000000001 6230985,513115 6230985,513135.000000001 6231025,513105 6231055,513084.999999999 6231065,513075.000000002 6231055,513065.000000001 6231065,513084.999999999 6231095,513105 6231095,513145.000000001 6231135,513145.000000001 6231155,513165.000000001 6231175,513125 6231195,513084.999999999 6231235,513084.999999999 6231255,513065.000000001 6231275,513035.000000001 6231275,513025.000000001 6231285,513045.000000001 6231305,513045.000000001 6231325,513025.000000001 6231345,513025.000000001 6231405,512965.000000002 6231455,512975 6231505,512965.000000002 6231515,512895 6231515,512855.000000002 6231485,512845.000000002 6231505,512805.000000001 6231535,512795 6231575,512825.000000001 6231595,512825.000000001 6231605,512805.000000001 6231625,512765 6231625,512725.000000001 6231655,512705.000000001 6231685,512705.000000001 6231705,512685 6231715,512625.000000002 6231785,512625.000000002 6231815,512675 6231875,512715.000000001 6231895,512725.000000001 6231915,512695.000000001 6231945,512665 6231895,512625.000000002 6231925,512595.000000001 6231925,512575.000000001 6231945,512595.000000001 6231975,512585.000000001 6232025,512524.999999999 6232085,512485.000000001 6232105,512485.000000001 6232145,512465.000000001 6232165,512455 6232155,512455 6232125,512435 6232105,512414.999999999 6232105,512345 6232155,512345 6232175,512395.000000001 6232205,512405.000000002 6232255,512375.000000001 6232285,512345 6232285,512335 6232295,512325 6232295,512285.000000001 6232245,512245.000000001 6232245,512215 6232275,512265.000000001 6232305,512255.000000001 6232315,512255.000000001 6232345,512235 6232375,512185.000000002 6232375,512165.000000001 6232395,512175.000000002 6232475,512095 6232565,512125 6232585,512125 6232605,512075.000000002 6232655,512055.000000001 6232655,511975 6232755,511995 6232795,511975 6232805,511964.999999999 6232825,511964.999999999 6232855,511975 6232865,511975 6232895,511964.999999999 6232905,511995 6232945,512015 6232955,512025.000000001 6232995,511985 6233025,511964.999999999 6233025,511945.000000001 6233045,511955.000000002 6233055,511945.000000001 6233075,511915.000000001 6233055,511895 6233065,511845.000000002 6233035,511815.000000001 6233035,511805.000000001 6233045,511825.000000001 6233075,511825.000000001 6233135,511815.000000001 6233145,511845.000000002 6233175,511845.000000002 6233205,511825.000000001 6233235,511865 6233265,511854.999999999 6233275,511865 6233295,511865 6233445,511885 6233465,511885 6233565,511845.000000002 6233605,511845.000000002 6233645,511854.999999999 6233655,511825.000000001 6233695,511835.000000001 6233715,511825.000000001 6233735,511845.000000002 6233755,511835.000000001 6233785,511845.000000002 6233795,511795.000000001 6233835,511795.000000001 6233855,511815.000000001 6233875,511815.000000001 6233905,511805.000000001 6233915,511815.000000001 6233925,511854.999999999 6233925,511875 6233945,511865 6234015,511905.000000001 6234055,511955.000000002 6234025,511985 6234035,511985 6234075,511975 6234085,511945.000000001 6234065,511925.000000001 6234085,511935.000000001 6234105,511964.999999999 6234105,512015 6234145,512045.000000001 6234105,512075.000000002 6234105,512085 6234125,512065.000000002 6234155,512075.000000002 6234165,512105 6234165,512135.000000001 6234135,512155.000000001 6234135,512165.000000001 6234155,512125 6234185,512125 6234215,512205 6234215,512215 6234225,512205 6234235,512205 6234265,512175.000000002 6234275,512145.000000001 6234315,512195 6234335,512195 6234345,512165.000000001 6234355,512145.000000001 6234385,512205 6234465,512225 6234575,512205 6234595,512165.000000001 6234585,512155.000000001 6234595,512155.000000001 6234645,512115 6234665,512115 6234695,512125 6234705,512145.000000001 6234685,512175.000000002 6234685,512195 6234705,512165.000000001 6234745,512195 6234795,512175.000000002 6234815,512175.000000002 6234865,512105 6234925,512135.000000001 6234975,512115 6235005,512125 6235015,512115 6235045,512115 6235125,512085 6235225,512095 6235235,512165.000000001 6235245,512195 6235275,512205 6235405,512235 6235435,512265.000000001 6235435,512285.000000001 6235395,512315 6235395,512335 6235455,512375.000000001 6235405,512405.000000002 6235435,512445 6235435,512485.000000001 6235475,512465.000000001 6235485,512465.000000001 6235515,512485.000000001 6235535,512495.000000001 6235585,512485.000000001 6235595,512445 6235555,512425 6235575,512405.000000002 6235575,512395.000000001 6235605,512455 6235645,512515.000000002 6235705,512505.000000001 6235735,512485.000000001 6235715,512405.000000002 6235715,512395.000000001 6235725,512405.000000002 6235745,512395.000000001 6235825,512405.000000002 6235835,512414.999999999 6235905,512435 6235925,512465.000000001 6235925,512475.000000001 6235935,512455 6235965,512435 6235965,512375.000000001 6236015,512395.000000001 6236065,512365.000000001 6236095,512365.000000001 6236115,512335 6236145,512305 6236135,512255.000000001 6236175,512255.000000001 6236195,512275.000000001 6236215,512305 6236215,512325 6236195,512335 6236205,512335 6236275,512315 6236325,512285.000000001 6236335,512285.000000001 6236365,512305 6236395,512295.000000002 6236405,512305 6236415,512365.000000001 6236415,512385.000000001 6236435,512385.000000001 6236465,512375.000000001 6236475,512385.000000001 6236485,512375.000000001 6236625,512315 6236665,512295.000000002 6236635,512255.000000001 6236655,512215 6236655,512175.000000002 6236695,512165.000000001 6236735,512085 6236815,512045.000000001 6236815,512035.000000001 6236825,512035.000000001 6236865,511995 6236915,511975 6236965,511985 6236975,511975 6236985,511975 6237055,511964.999999999 6237065,511975 6237095,511964.999999999 6237105,511985 6237175,511915.000000001 6237235,511905.000000001 6237295,511925.000000001 6237305,511925.000000001 6237335,511915.000000001 6237345,511905.000000001 6237335,511865 6237385,511845.000000002 6237395,511805.000000001 6237395,511745 6237375,511735.000000002 6237385,511745 6237405,511735.000000002 6237415,511735.000000002 6237445,511725.000000001 6237455,511715.000000001 6237445,511685.000000001 6237455,511645 6237495,511645 6237525,511615.000000002 6237545,511665 6237615,511635 6237665,511645 6237705,511625.000000002 6237735,511595.000000001 6237735,511605.000000001 6237775,511535 6237825,511575.000000001 6237875,511565 6237885,511535 6237875,511515.000000002 6237895,511505.000000002 6237885,511475.000000001 6237885,511455 6237905,511455 6237935,511435 6237955,511465.000000001 6238005,511515.000000002 6238055,511505.000000002 6238075,511475.000000001 6238095,511455 6238095,511435 6238075,511435 6238045,511425 6238035,511404.999999999 6238055,511395.000000002 6238075,511445 6238145,511455 6238205,511445 6238215,511404.999999999 6238215,511375.000000001 6238195,511355.000000001 6238205,511345.000000001 6238235,511355.000000001 6238245,511365.000000001 6238235,511395.000000002 6238275,511365.000000001 6238285,511325 6238245,511305 6238245,511255.000000001 6238275,511265.000000001 6238315,511315 6238385,511305 6238465,511255.000000001 6238515,511235.000000001 6238505,511215 6238525,511195 6238525,511155.000000001 6238475,511145.000000001 6238485,511105 6238485,511095 6238475,511085 6238485,511085 6238555,511055.000000001 6238625,511075 6238665,511075 6238705,511055.000000001 6238725,511015.000000001 6238725,511005 6238715,510995 6238725,510965 6238705,510945.000000002 6238745,510885 6238795,510885 6238815,510935.000000001 6238865,510955.000000002 6238865,510985 6238845,511005 6238855,511025.000000001 6238875,511025.000000001 6238925,511045.000000001 6238945,511015.000000001 6238985,510975 6238985,510965 6238995,510955.000000002 6238975,510925.000000001 6238955,510905.000000001 6238975,510885 6238965,510835.000000002 6239015,510835.000000002 6239035,510865 6239075,510905.000000001 6239075,510915.000000001 6239055,510955.000000002 6239095,510955.000000002 6239125,510925.000000001 6239175,510915.000000001 6239175,510875 6239225,510815.000000001 6239235,510775 6239205,510745 6239225,510725.000000002 6239255,510695.000000001 6239215,510655 6239215,510645 6239205,510615.000000002 6239255,510575.000000001 6239275,510575.000000001 6239305,510535 6239335,510525 6239415,510514.999999999 6239425,510505.000000002 6239415,510495.000000001 6239435,510465.000000001 6239435,510445 6239415,510415 6239415,510405 6239425,510375.000000001 6239405,510325 6239405,510315 6239385,510265.000000001 6239345,510245.000000001 6239365,510235.000000001 6239405,510285.000000002 6239455,510285.000000002 6239535,510265.000000001 6239565,510235.000000001 6239565,510215 6239555,510235.000000001 6239515,510205 6239495,510215 6239485,510215 6239455,510165.000000002 6239435,510135.000000001 6239465,510145.000000001 6239515,510095 6239565,510095 6239595,510115.000000001 6239605,510085 6239635,510064.999999999 6239635,510055.000000002 6239665,510075 6239695,510105 6239695,510115.000000001 6239685,510135.000000001 6239705,510145.000000001 6239755,510105 6239785,510035.000000001 6239785,510045.000000001 6239815,510035.000000001 6239865,510055.000000002 6239895,510055.000000002 6239915,510025.000000001 6239915,509925.000000001 6239935,509885 6239985,509875 6240025,509835.000000002 6240065,509835.000000002 6240095,509805.000000001 6240125,509785.000000001 6240125,509745 6240175,509615.000000002 6240165,509605.000000002 6240155,509585.000000001 6240165,509545 6240215,509535 6240215,509515 6240185,509495.000000002 6240185,509465.000000001 6240235,509415 6240235,509375.000000001 6240285,509425 6240355,509425 6240405,509394.999999999 6240445,509375.000000001 6240445,509295 6240395,509284.999999999 6240415,509305 6240475,509265.000000001 6240495,509255.000000001 6240515,509205 6240555,509155.000000001 6240555,509145.000000001 6240565,509155.000000001 6240585,509145.000000001 6240625,509165.000000002 6240655,509155.000000001 6240685,509075 6240615,509025.000000001 6240655,509025.000000001 6240675,509075 6240705,509075 6240765,509045.000000002 6240795,509025.000000001 6240805,508925.000000001 6240805,508895.000000001 6240775,508855 6240775,508845 6240785,508845 6240835,508865 6240885,508865 6240955,508834.999999999 6240985,508775.000000001 6241015,508755 6241055,508745 6241055,508705.000000001 6241005,508685.000000001 6241005,508655 6241035,508655 6241075,508675.000000001 6241095,508695.000000001 6241205,508665.000000001 6241215,508625 6241255,508605.000000002 6241265,508575.000000001 6241255,508555.000000001 6241275,508565.000000001 6241325,508575.000000001 6241325,508615 6241375,508615 6241415,508575.000000001 6241475,508555.000000001 6241475,508515 6241435,508485.000000001 6241435,508465.000000001 6241455,508455.000000001 6241475,508465.000000001 6241495,508465.000000001 6241575,508425 6241615,508365.000000001 6241625,508335.000000001 6241605,508295 6241555,508275.000000002 6241555,508255.000000001 6241575,508245.000000001 6241625,508225.000000001 6241645,508175 6241605,508115.000000001 6241615,508085 6241645,508054.999999999 6241655,508054.999999999 6241685,508075 6241725,508045.000000002 6241745,508005.000000001 6241715,507995.000000001 6241725,507995.000000001 6241765,508005.000000001 6241775,507995.000000001 6241785,507965 6241785,507905.000000001 6241755,507885.000000001 6241775,507915.000000001 6241825,507875 6241855,507855 6241855,507815.000000002 6241805,507765 6241845,507755 6241835,507765 6241805,507755 6241795,507685.000000001 6241845,507665.000000001 6241775,507635 6241815,507635 6241845,507645 6241855,507635 6241885,507585.000000001 6241825,507535 6241825,507525 6241835,507535 6241845,507525 6241865,507535 6241885,507505 6241925,507515 6241935,507505 6241945,507515 6241955,507545.000000001 6241935,507555.000000001 6241965,507515 6241985,507525 6242015,507515 6242075,507485.000000002 6242095,507455.000000001 6242055,507455.000000001 6242015,507445.000000001 6242005,507415 6241995,507395 6242015,507384.999999999 6242095,507405 6242115,507405 6242165,507425 6242195,507345.000000001 6242265,507365.000000001 6242285,507405 6242285,507435.000000001 6242305,507435.000000001 6242325,507405 6242375,507425 6242395,507435.000000001 6242385,507455.000000001 6242395,507475.000000001 6242495,507415 6242515,507355.000000001 6242515,507335.000000001 6242535,507345.000000001 6242575,507305 6242605,507285 6242605,507235.000000001 6242635,507235.000000001 6242665,507245.000000001 6242685,507275 6242705,507275 6242725,507265.000000002 6242735,507235.000000001 6242735,507185 6242785,507175 6242775,507165 6242785,507165 6242815,507245.000000001 6242895,507235.000000001 6242935,507185 6242985,507205 6243005,507245.000000001 6243005,507255.000000001 6243025,507175 6243095,507155.000000002 6243125,507175 6243155,507175 6243205,507205 6243225,507145.000000002 6243255,507085 6243225,507015.000000001 6243305,506995.000000001 6243305,506975 6243325,506975 6243335,507045.000000002 6243335,507055 6243365,506995.000000001 6243405,506925.000000002 6243405,506885.000000001 6243445,506885.000000001 6243465,506905.000000001 6243475,506925.000000002 6243505,506875.000000001 6243545,506865 6243595,506815.000000002 6243625,506795.000000001 6243615,506745 6243615,506725 6243625,506705.000000002 6243655,506705.000000002 6243705,506755 6243755,506785.000000001 6243765,506815.000000002 6243795,506815.000000002 6243815,506785.000000001 6243835,506735 6243795,506685.000000001 6243795,506655.000000001 6243825,506665.000000001 6243865,506685.000000001 6243885,506705.000000002 6243875,506715 6243895,506705.000000002 6243905,506675.000000001 6243905,506675.000000001 6243965,506645 6243995,506685.000000001 6244025,506715 6244025,506725 6244015,506755 6244075,506735 6244095,506685.000000001 6244095,506675.000000001 6244085,506635 6244105,506635 6244125,506675.000000001 6244155,506635 6244185,506645 6244195,506675.000000001 6244195,506645 6244235,506645 6244285,506655.000000001 6244305,506585.000000002 6244385,506525 6244425,506555.000000001 6244445,506605 6244435,506625 6244455,506585.000000002 6244495,506585.000000002 6244525,506575.000000001 6244535,506545.000000001 6244515,506535 6244525,506515 6244575,506555.000000001 6244605,506555.000000001 6244635,506575.000000001 6244675,506635 6244725,506605 6244745,506535 6244745,506525 6244755,506535 6244775,506535 6244865,506555.000000001 6244885,506555.000000001 6244945,506575.000000001 6244985,506575.000000001 6245015,506595.000000002 6245025,506625 6244995,506635 6245005,506635 6245025,506575.000000001 6245075,506595.000000002 6245105,506595.000000002 6245145,506585.000000002 6245155,506555.000000001 6245155,506505 6245195,506475.000000002 6245195,506445.000000001 6245175,506425 6245185,506415 6245225,506425 6245255,506455.000000001 6245285,506485.000000002 6245285,506545.000000001 6245245,506565.000000001 6245275,506535 6245305,506515 6245305,506475.000000002 6245335,506455.000000001 6245365,506455.000000001 6245405,506435.000000001 6245425,506395 6245395,506385 6245405,506395 6245435,506355.000000001 6245475,506355.000000001 6245495,506325.000000001 6245525,506295 6245525,506215.000000001 6245615,506225.000000001 6245625,506215.000000001 6245655,506165 6245695,506175 6245725,506205.000000001 6245725,506215.000000001 6245735,506205.000000001 6245825,506195 6245835,506185 6245815,506125.000000001 6245765,506115.000000001 6245775,506115.000000001 6245875,506125.000000001 6245905,506105.000000001 6245925,506035.000000002 6245945,506015.000000001 6245965,505935 6245965,505905.000000001 6245995,505945 6246045,505875.000000001 6246135,505925.000000002 6246165,505935 6246195,505935 6246245,505925.000000002 6246265,505915.000000002 6246275,505845 6246215,505815.000000002 6246205,505805.000000002 6246215,505775.000000001 6246215,505755 6246235,505745 6246325,505775.000000001 6246365,505755 6246385,505725 6246385,505704.999999999 6246405,505715 6246415,505715 6246445,505704.999999999 6246455,505675.000000001 6246455,505665.000000001 6246445,505655.000000001 6246455,505625 6246515,505575.000000001 6246575,505585.000000002 6246595,505615 6246605,505594.999999999 6246655,505535.000000001 6246705,505505 6246705,505495 6246715,505445.000000001 6246715,505415 6246685,505395 6246695,505395 6246735,505365.000000002 6246785,505435.000000001 6246895,505425.000000001 6246915,505385 6246915,505355.000000001 6246935,505325.000000001 6246935,505255.000000002 6246905,505235.000000001 6246945,505245.000000002 6247055,505215.000000001 6247085,505195 6247085,505135.000000002 6247035,505105.000000001 6247035,505065 6247015,505015.000000001 6247015,504985.000000001 6247085,504985.000000001 6247135,504975.000000001 6247145,504975.000000001 6247195,504985.000000001 6247215,504975.000000001 6247225,504924.999999999 6247215,504895.000000001 6247185,504885.000000001 6247145,504845 6247105,504805.000000002 6247095,504795.000000001 6247105,504805.000000002 6247165,504755.000000001 6247225,504765.000000001 6247245,504765.000000001 6247325,504775.000000001 6247335,504775.000000001 6247355,504755.000000001 6247385,504705 6247425,504655.000000001 6247425,504635 6247405,504635 6247375,504605 6247345,504575.000000002 6247365,504575.000000002 6247415,504585.000000002 6247435,504655.000000001 6247495,504705 6247495,504735 6247525,504735 6247545,504675.000000001 6247605,504745 6247625,504745 6247645,504775.000000001 6247675,504785.000000001 6247735,504765.000000001 6247745,504735 6247715,504715 6247725,504725 6247755,504715 6247765,504705 6247835,504655.000000001 6247875,504655.000000001 6247925,504625 6247965,504635 6247975,504635 6248035,504655.000000001 6248085,504655.000000001 6248105,504605 6248155,504605 6248215,504615 6248225,504635 6248355,504625 6248365,504585.000000002 6248355,504555.000000001 6248395,504505 6248425,504485 6248425,504465.000000002 6248445,504465.000000002 6248475,504415.000000001 6248515,504375 6248495,504355.000000002 6248505,504385 6248565,504364.999999999 6248585,504275 6248575,504235.000000001 6248555,504175 6248555,504165 6248565,504245.000000002 6248645,504225.000000001 6248675,504135.000000002 6248685,504085.000000001 6248725,504085.000000001 6248735,504115.000000001 6248755,504115.000000001 6248775,504045 6248825,504075 6248885,504065 6248935,504025.000000002 6248955,503975.000000001 6248875,503955 6248875,503925 6248905,503925 6248935,503895.000000001 6249005,503895.000000001 6249055,503885.000000001 6249055,503905.000000002 6249085,503905.000000002 6249115,503855 6249155,503855 6249175,503905.000000002 6249215,503925 6249255,503875.000000001 6249285,503835 6249285,503825 6249275,503795.000000002 6249315,503775.000000001 6249315,503755.000000001 6249335,503765.000000001 6249345,503755.000000001 6249375,503785.000000001 6249415,503785.000000001 6249435,503765.000000001 6249445,503725 6249495,503785.000000001 6249555,503795.000000002 6249595,503765.000000001 6249615,503745.000000001 6249575,503694.999999999 6249545,503655.000000001 6249565,503635.000000001 6249595,503655.000000001 6249625,503715 6249655,503735 6249685,503735 6249705,503665.000000001 6249725,503585 6249725,503525.000000001 6249745,503515 6249755,503545.000000001 6249805,503485 6249865,503475 6249895,503485 6249915,503465.000000002 6249935,503405 6249945,503395 6249885,503375 6249865,503305.000000001 6249905,503265 6249945,503255 6249995,503215.000000001 6250045,503125.000000002 6250095,503105.000000001 6250095,503075.000000001 6250125,503065 6250155,503075.000000001 6250285,503045 6250315,503024.999999999 6250315,502985.000000001 6250275,502985.000000001 6250265,503035 6250225,503024.999999999 6250205,502955 6250175,502925 6250205,502895.000000001 6250265,502845 6250315,502845 6250375,502855.000000001 6250385,502845 6250415,502815 6250405,502745.000000001 6250325,502725 6250325,502675.000000002 6250395,502675.000000002 6250445,502665.000000001 6250455,502635.000000001 6250455,502625 6250445,502625 6250355,502605 6250335,502585 6250335,502565.000000002 6250355,502565.000000002 6250405,502585 6250435,502585 6250525,502525.000000001 6250585,502495 6250595,502475 6250575,502425.000000001 6250575,502415.000000001 6250565,502385 6250565,502365 6250585,502305.000000001 6250595,502285 6250615,502305.000000001 6250645,502305.000000001 6250705,502265 6250755,502255 6250755,502235.000000002 6250725,502235.000000002 6250685,502185.000000001 6250655,502185.000000001 6250635,502145 6250595,502145 6250575,502125.000000002 6250565,502105.000000001 6250615,502105.000000001 6250645,502145 6250685,502125.000000002 6250705,502105.000000001 6250715,502085.000000001 6250705,502035 6250705,502015.000000002 6250715,501955 6250785,501935 6250775,501915 6250785,501885.000000001 6250755,501855.000000001 6250755,501835 6250765,501775.000000001 6250835,501705 6250865,501675.000000002 6250865,501625.000000001 6250835,501615 6250865,501645.000000001 6250895,501655.000000001 6250925,501635.000000001 6250945,501575 6250945,501545.000000001 6250975,501545.000000001 6251005,501575 6251045,501575 6251085,501465 6251145,501415.000000001 6251145,501355 6251105,501325.000000001 6251135,501315.000000001 6251185,501255 6251245,501255 6251285,501225.000000002 6251315,501195.000000001 6251305,501185.000000001 6251315,501155 6251295,501155 6251255,501045 6251145,501015 6251135,500985.000000001 6251145,500945 6251245,500915 6251275,500765.000000001 6251275,500725 6251295,500655.000000001 6251305,500615.000000001 6251275,500605 6251225,500585 6251205,500555.000000002 6251215,500515.000000001 6251265,500485 6251395,500445.000000002 6251445,500405.000000001 6251445,500325.000000001 6251405,500295.000000001 6251425,500285.000000001 6251445,500285.000000001 6251515,500295.000000001 6251525,500365 6251525,500375 6251535,500375 6251575,500345 6251615,500275 6251615,500265 6251605,500195.000000001 6251615,500115.000000002 6251645,500065.000000001 6251695,500065.000000001 6251715,500045 6251745,500045 6251885,500035 6251895,500035 6251925,500004.999999999 6251975,499995.000000002 6252025,499965.000000001 6252055,499965.000000001 6252075,500025 6252125,500015 6252135,500025 6252145,499945.000000001 6252275,499925 6252275,499894.999999999 6252255,499875.000000001 6252275,499875.000000001 6252325,499885.000000002 6252345,499925 6252385,499945.000000001 6252385,499965.000000001 6252405,499955.000000001 6252415,499975.000000001 6252435,499965.000000001 6252455,499965.000000001 6252515,499985.000000001 6252545,500065.000000001 6252615,500035 6252625,499995.000000002 6252665,499975.000000001 6252695,499975.000000001 6252725,499885.000000002 6252815,499925 6252865,499925 6252895,499905 6252915,499855.000000001 6252915,499815 6252955,499785 6253015,499785 6253085,499775.000000002 6253105,499765.000000001 6253115,499725.000000001 6253095,499705 6253105,499725.000000001 6253145,499765.000000001 6253185,499765.000000001 6253205,499785 6253235,499735.000000001 6253255,499695 6253295,499695 6253315,499725.000000001 6253355,499745.000000001 6253365,499745.000000001 6253445,499755.000000001 6253455,499745.000000001 6253465,499755.000000001 6253495,499735.000000001 6253565,499675 6253635,499675 6253705,499705 6253735,499725.000000001 6253715,499765.000000001 6253705,499805 6253755,499805 6253785,499815 6253795,499815 6253895,499825 6253905,499825 6253955,499815 6253965,499825 6254015,499805 6254035,499855.000000001 6254065,499885.000000002 6254065,499925 6254035,499955.000000001 6254065,499965.000000001 6254125,499985.000000001 6254145,499925 6254215,499835.000000001 6254205,499815 6254225,499815 6254245,499865.000000001 6254305,499894.999999999 6254305,499905 6254315,499915 6254305,499935 6254325,499925 6254365,499975.000000001 6254405,500095.000000001 6254425,500115.000000002 6254445,500075.000000001 6254495,500085.000000001 6254525,500075.000000001 6254535,500075.000000001 6254575,500085.000000001 6254585,500085.000000001 6254635,500125 6254695,500135 6254745,500165 6254795,500165 6254865,500145 6254935,500125 6254955,500135 6255105,500115.000000002 6255175,500095.000000001 6255205,500125 6255295,500125 6255335,500105.000000002 6255375,500105.000000002 6255465,500035 6255515,500035 6255565,500055.000000001 6255625,499995.000000002 6255665,499995.000000002 6255705,499965.000000001 6255735,499925 6255755,499845.000000001 6255755,499805 6255735,499755.000000001 6255735,499745.000000001 6255745,499745.000000001 6255775,499695 6255845,499675 6255905,499675 6255975,499665.000000002 6255985,499555.000000002 6255995,499465 6256075,499435.000000002 6256085,499334.999999999 6256075,499305.000000001 6256105,499285.000000001 6256135,499285.000000001 6256165,499315.000000001 6256225,499245 6256275,499245 6256295,499265 6256315,499265 6256355,499285.000000001 6256385,499275.000000001 6256415,499245 6256445,499224.999999999 6256435,499185.000000001 6256445,499135 6256485,499135 6256505,499085.000000001 6256575,499075.000000001 6256645,499055.000000001 6256665,499045 6256655,499015 6256665,498985.000000002 6256695,498995.000000002 6256715,498985.000000002 6256725,499015 6256785,499085.000000001 6256855,499105.000000002 6256895,499105.000000002 6256935,499085.000000001 6256945,499005 6257035,499045 6257075,499075.000000001 6257075,499135 6257105,499165.000000001 6257135,499165.000000001 6257155,499095.000000001 6257205,499075.000000001 6257205,499025 6257255,499025 6257275,499045 6257285,499085.000000001 6257335,499085.000000001 6257355,499065.000000001 6257375,499065.000000001 6257405,499045 6257445,499045 6257515,499035 6257525,499025 6257595,499005 6257615,499005 6257735,498995.000000002 6257745,498995.000000002 6257815,499015 6257845,499005 6257855,499005 6257905,498955.000000001 6257955,498955.000000001 6257995,499055.000000001 6258095,499065.000000001 6258125,499045 6258135,499015 6258335,498965.000000001 6258385,498965.000000001 6258425,498975.000000001 6258435,498965.000000001 6258445,498965.000000001 6258535,498935 6258595,498925 6258655,498935 6258665,498945.000000001 6258655,498965.000000001 6258685,498965.000000001 6258795,498985.000000002 6258835,498945.000000001 6258955,498995.000000002 6259025,499035 6259055,499065.000000001 6259045,499105.000000002 6259065,499115 6259055,499155 6259055,499185.000000001 6259075,499195.000000001 6259065,499224.999999999 6259085,499235 6259075,499245 6259085,499275.000000001 6259085,499315.000000001 6259115,499315.000000001 6259135,499334.999999999 6259165,499334.999999999 6259195,499355 6259225,499355 6259255,499405.000000001 6259325,499425.000000001 6259455,499475 6259515,499455 6259635,499485 6259655,499495 6259675,499485 6259695,499515.000000001 6259725,499505.000000001 6259745,499575 6259795,499585 6259815,499585 6259865,499625.000000001 6260000)'
            ShortName = ''
            BranchID = '364a1eaa-079e-4bfe-bdc3-34289f78a4a8'
            Chainage = 0.0
            IsSpan = true
            ToChainage = 70454.0
            Conductance = 2
            LeakageCoef = __riv_KarupRiver_LeakageCoef__
            LineResExc = 0
            WeirCoef = 1.838
            WeirExpCoef = 1.5
            MinHeight = 0.1
            OverbankSpill = true
            MinFlowArea = 0.0
            FloodArea = 0
            FloodCode = 0.0
            BedTopo = 1
            BedLeakage = 1
         EndSect  // MSheLink_4

         [MSheLink_5]
            Touched = false
            ObjectID = 'fd5e54a7-f15a-4da3-9054-b01c639dab32'
            Shape = 'LINESTRING(519664.999999942 6242890.00001388,519664.999999942 6242975.00001388,519594.999999942 6243045.00001387,519564.999999942 6243035.00001388,519514.999999942 6243095.00001388,519524.999999942 6243105.00001388,519524.999999942 6243205.00001388,519434.999999942 6243305.00001388,519404.999999943 6243325.00001388,519384.999999943 6243325.00001388,519214.999999943 6243155.00001388,519204.999999943 6243065.00001387,519114.999999943 6242975.00001387,519104.999999943 6242945.00001387,519064.999999943 6242895.00001387,519064.999999943 6242815.00001387,519034.999999944 6242775.00001387,519034.999999944 6242745.00001387,519024.999999944 6242735.00001387,519024.999999944 6242525.00001387,519044.999999944 6242495.00001387,519044.999999944 6242325.00001386,518804.999999944 6242085.00001385,518744.999999945 6242085.00001386,518734.999999945 6242075.00001386,518644.999999945 6242065.00001386,518604.999999945 6242025.00001386,518564.999999945 6242005.00001385,518084.999999947 6242005.00001386,517964.999999947 6241965.00001386,517634.999999948 6241635.00001385,517604.999999948 6241615.00001385,517584.999999948 6241615.00001385,517334.999999949 6241365.00001384,517274.999999949 6241245.00001384,516984.99999995 6240955.00001383,516914.99999995 6240915.00001383,516864.99999995 6240865.00001383,516874.99999995 6240805.00001383,516794.999999951 6240735.00001383,516694.999999951 6240695.00001383,516594.999999951 6240675.00001383,516544.999999951 6240625.00001383,516524.999999952 6240635.00001383,516424.999999952 6240585.00001383,516394.999999952 6240585.00001383,516324.999999952 6240555.00001382,516314.999999952 6240565.00001383,516284.999999952 6240535.00001382,516274.999999952 6240545.00001382,516214.999999952 6240525.00001382,515964.999999953 6240525.00001383,515954.999999953 6240535.00001383,515864.999999953 6240535.00001383,515794.999999953 6240485.00001382,515774.999999954 6240485.00001383,515674.999999954 6240405.00001382,515644.999999954 6240405.00001382,515594.999999954 6240375.00001382,515504.999999954 6240375.00001382,515474.999999954 6240355.00001382,515454.999999954 6240355.00001382,515424.999999955 6240325.00001382,515434.999999954 6240315.00001382,515384.999999955 6240275.00001382,515304.999999955 6240275.00001382,515204.999999955 6240225.00001382,515154.999999955 6240175.00001382,515104.999999955 6240145.00001381,515054.999999956 6240155.00001382,515034.999999956 6240125.00001382,514914.999999956 6240125.00001382,514864.999999956 6240085.00001382,514844.999999956 6240085.00001382,514814.999999956 6240125.00001382,514764.999999957 6240105.00001381,514754.999999957 6240125.00001382,514734.999999957 6240125.00001382,514714.999999957 6240155.00001381,514684.999999957 6240175.00001381,514654.999999957 6240175.00001382,514614.999999957 6240205.00001382,514554.999999957 6240205.00001382,514534.999999957 6240215.00001382,514524.999999957 6240195.00001382,514484.999999957 6240165.00001382,514454.999999958 6240175.00001382,514424.999999958 6240165.00001382,514404.999999958 6240145.00001382,514414.999999958 6240135.00001381,514404.999999958 6240115.00001381,514364.999999958 6240115.00001381,514314.999999958 6240155.00001382,514284.999999958 6240155.00001382,514184.999999958 6240215.00001382,514134.999999959 6240215.00001382,514084.999999959 6240295.00001382,514044.999999959 6240265.00001382,514004.999999959 6240295.00001382,513974.999999959 6240255.00001382,513904.999999959 6240315.00001382,513844.999999959 6240295.00001382,513784.99999996 6240295.00001382,513754.99999996 6240275.00001382,513724.99999996 6240315.00001382,513704.99999996 6240315.00001382,513694.99999996 6240295.00001382,513614.99999996 6240225.00001382,513474.99999996 6240225.00001382,513444.99999996 6240255.00001382,513434.99999996 6240255.00001382,513434.99999996 6240245.00001382,513384.999999961 6240245.00001382,513304.999999961 6240215.00001382,513274.999999961 6240215.00001382,513184.999999961 6240145.00001382,513154.999999961 6240155.00001382,513124.999999961 6240105.00001382,513044.999999962 6240145.00001382,513014.999999962 6240145.00001382,512964.999999962 6240105.00001382,512944.999999962 6240125.00001382,512904.999999962 6240095.00001382,512864.999999962 6240095.00001381,512854.999999962 6240075.00001382,512804.999999962 6240065.00001382,512774.999999962 6240035.00001381,512764.999999963 6240045.00001381,512654.999999963 6240055.00001382,512574.999999963 6240125.00001382,512494.999999963 6240125.00001382,512464.999999963 6240145.00001382,512424.999999963 6240145.00001382,512394.999999963 6240175.00001382,512344.999999964 6240175.00001382,512334.999999964 6240185.00001382,512304.999999964 6240175.00001381,512284.999999964 6240195.00001382,512234.999999964 6240205.00001382,512144.999999964 6240255.00001382,512124.999999964 6240255.00001382,512084.999999964 6240215.00001381,512034.999999964 6240215.00001382,512024.999999965 6240225.00001382,512034.999999964 6240245.00001381,512014.999999964 6240265.00001382,511994.999999965 6240265.00001382,511964.999999965 6240235.00001382,511924.999999965 6240255.00001382,511874.999999965 6240245.00001382,511864.999999965 6240255.00001382,511884.999999965 6240275.00001382,511874.999999965 6240295.00001381,511864.999999965 6240285.00001382,511834.999999965 6240285.00001382,511824.999999965 6240295.00001382,511654.999999966 6240305.00001382,511604.999999966 6240325.00001382,511584.999999966 6240285.00001382,511604.999999966 6240245.00001382,511594.999999966 6240235.00001382,511564.999999966 6240235.00001382,511544.999999966 6240265.00001382,511378.783918201 6240267.79810659,511173.976240556 6240174.07255573,510927.512764057 6240094.23227461,510767.832201818 6240115.06017404,510556.081891024 6240069.93305862,510434.585811059 6240017.86331007,510274.905248821 6239990.0927775,510156.880485427 6239972.73619465,510066.626254574 6239920.66645645)'
            ShortName = ''
            BranchID = 'dd9bad12-8915-46fe-9ab9-7c2dd18157ff'
            Chainage = 0.0
            IsSpan = true
            ToChainage = 11083.0
            Conductance = 2
            LeakageCoef = __riv_LeakageCoef__
            LineResExc = 0
            WeirCoef = 1.838
            WeirExpCoef = 1.5
            MinHeight = 0.1
            OverbankSpill = true
            MinFlowArea = 0.0
            FloodArea = 0
            FloodCode = 0.0
            BedTopo = 1
            BedLeakage = 1
         EndSect  // MSheLink_5

      EndSect  // MSheLinks

   EndSect  // BoundaryConditionsPfs

   [InitialConditionsGroupPfs]
      Touched = false
      [MH_InitialCondition_State_File]
         Touched = false
         UseState = false
         FolderPath = ||
         UseSimStart = true
         DateTime = '2021 01 01 00:00:00'
      EndSect  // MH_InitialCondition_State_File

      [MH_Initial_Conditions]
         Touched = true
         DhiSEPfsListItemCount = 0
         GlobalValueType = 1
         GlobalLevelType = 1
         GlobalWaterLevel = 0.1
         GlobalDischargeType = 0
         GlobalDischarge = 0.0
         UseHotStartSolution = true
         UseLocalValue = false
         UseStorageLocalValue = true
         [HotStartFiles]
            [HotStartFile_1]
               Filename = |.\Karup_HS.res1d|
               UseSimStart = true
               HotstartDate = '2000 01 01 00:00:00'
            EndSect  // HotStartFile_1

         EndSect  // HotStartFiles

         [LocalStorageValues]
         EndSect  // LocalStorageValues

         [PointSymboloy]
            Touched = false
            ShowSymbol = true
            LabelVisible = false
            FontSize = 9
            FontStyle = 0
            FontColor = -16777216
            SymbolField = ''
            SymbolFieldTypeCode = 0
            UseCustomColor = false
            LabelField = 'WaterLevel'
            SymbolScope = 0
            SymbolExpression = ''
            SymbologyType = 0
            [SpecifiedSymbols]
               Count = 0
            EndSect  // SpecifiedSymbols

            [GraduatedSizeRange]
               SizeFrom = 1
               SizeTo = 20
            EndSect  // GraduatedSizeRange

            [GraduatedColorRamp]
               Invert = false
               ColorRamp = '-16777216:0;-1:100'
            EndSect  // GraduatedColorRamp

            SymbolStyle = 0
            PointSymbolFillColor = -4144897
            PointOutlineColor = -16776961
            PointSize = 9
            PointOutlineWidth = 1
            PointStyle = 2
            BitmapName = ''
         EndSect  // PointSymboloy

      EndSect  // MH_Initial_Conditions

      [MH_AD_Initial_Conditions]
         Touched = false
         DhiSEPfsListItemCount = 0
         [GlobalValues]
            Count = 0
         EndSect  // GlobalValues

         [HotStartFiles]
            UseHotStartSolution = false
            Count = 0
         EndSect  // HotStartFiles

      EndSect  // MH_AD_Initial_Conditions

      [STInitialCondition]
         Touched = false
         [ThicknessGlobal]
            Touched = false
            ObjectID = '373fffd4-1f93-4b8f-92d5-8bfa963a71d7'
            BranchID = '00000000-0000-0000-0000-000000000000'
            Chainage = 0.0
            ActiveThick = 1.0
            PassiveThick = 1.0
            UsePassiveThick = true
            [STInitialConditionThicknessPercentageList]
               Touched = false
               DhiSEPfsListItemCount = 0
            EndSect  // STInitialConditionThicknessPercentageList

         EndSect  // ThicknessGlobal

         [STInitialConditionConcentrationLocalValueList]
            Touched = false
            DhiSEPfsListItemCount = 0
         EndSect  // STInitialConditionConcentrationLocalValueList

         [STInitialConditionThicknessLocalValueList]
            Touched = false
            DhiSEPfsListItemCount = 0
         EndSect  // STInitialConditionThicknessLocalValueList

      EndSect  // STInitialCondition

   EndSect  // InitialConditionsGroupPfs

   [DataAssimilationGroupPfs]
      Touched = false
      [DAGeneralParameters]
         Touched = false
         DataAssimitionMode = 0
         FirstUpdateStep = 0
         EnsembleSize = 200
         TOF = '1980 07 01 00:00:00'
         ForecastType = 0
      EndSect  // DAGeneralParameters

      [DAUpdateParameterList]
         Touched = false
         DhiSEPfsListItemCount = 0
         [PointSymboloy]
            Touched = false
            ShowSymbol = true
            LabelVisible = false
            FontSize = 9
            FontStyle = 0
            FontColor = -16777216
            SymbolField = ''
            SymbolFieldTypeCode = 0
            UseCustomColor = false
            LabelField = 'Name'
            SymbolScope = 0
            SymbolExpression = ''
            SymbologyType = 0
            [SpecifiedSymbols]
               Count = 0
            EndSect  // SpecifiedSymbols

            [GraduatedSizeRange]
               SizeFrom = 1
               SizeTo = 20
            EndSect  // GraduatedSizeRange

            [GraduatedColorRamp]
               Invert = false
               ColorRamp = '-16777216:0;-1:100'
            EndSect  // GraduatedColorRamp

            SymbolStyle = 0
            PointSymbolFillColor = -65536
            PointOutlineColor = -65536
            PointSize = 6
            PointOutlineWidth = 1
            PointStyle = 0
            BitmapName = ''
         EndSect  // PointSymboloy

      EndSect  // DAUpdateParameterList

      [DAEquationList]
         Touched = false
         DhiSEPfsListItemCount = 0
      EndSect  // DAEquationList

      [DAPerturbationParameterList]
         Touched = false
         DhiSEPfsListItemCount = 0
      EndSect  // DAPerturbationParameterList

      [DAStandardDeviationList]
         Touched = false
         DhiSEPfsListItemCount = 0
      EndSect  // DAStandardDeviationList

      [DAObservationDefinitions]
         Touched = false
      EndSect  // DAObservationDefinitions

      [DAInputPerturbations]
         Touched = false
      EndSect  // DAInputPerturbations

      [DAHotstartFiles]
         Touched = false
         GenerateHotStart = false
         UseHotstart = false
         HDResultFile = ||
         ADResultFile = ||
         HDResultFile = ||
         RRResultFile = ||
         ADBndResultFile = ||
         HDBndResultFile = ||
         RRBndResultFile = ||
      EndSect  // DAHotstartFiles

   EndSect  // DataAssimilationGroupPfs

   [UserDefinedVariablesGroupPfs]
      Touched = false
      [VariableDefinitionList]
         Touched = false
         DhiSEPfsListItemCount = 0
      EndSect  // VariableDefinitionList

   EndSect  // UserDefinedVariablesGroupPfs

   [ControlRulesGroupPfs]
      Touched = false
      [Sensors]
         Touched = false
         DhiSEPfsListItemCount = 0
      EndSect  // Sensors

   EndSect  // ControlRulesGroupPfs

   [ResultSpecificationsGroupPfs]
      Touched = false
      [RiverResult]
         Touched = true
         UseDefaultNames = false
         ResultsFileName = 'obsResults.res1d'
         ResultFrequency = 24
         ResultUnit = 2
         ADResultsFileName = ''
         ADResultFrequency = 1
         ADResultUnit = 0
         RRResultsFileName = ''
         RRResultFrequency = 1
         RRResultUnit = 0
         WQResultsFileName = ''
         STResultsFileName = ''
         STResultFrequency = 1
         STResultUnit = 0
      EndSect  // RiverResult

      [WaterManagementResult]
         Touched = false
         UseDefaultNames = true
         ResultFile_RR = ''
         ResultFile_MB = ''
         CreateRunoffHotstartFiles = false
      EndSect  // WaterManagementResult

      [MH_RR_Additional_Results]
         Touched = false
         RRaddConf = false
         RRaddCorr = false
         RRaddDev = false
         RRaddGain = false
         RRaddPercent = '<CLOB:0>'
      EndSect  // MH_RR_Additional_Results

      [MH_HD_Additional_Results]
         Touched = false
         Velocity = false
         VelocityStruct = false
         Discharge = false
         DischargeStruct = false
         FlowAreaStruct = false
         VariablesControl = false
         WLSlope = false
         FlowArea = false
         FlowWidth = false
         Radius = false
         Resistance = false
         Conveyance = false
         Froude = false
         FloodAreaGrid = false
         FloodAreaTot = false
         VolumeGrid = false
         VolumeTot = false
         MassErrGrid = false
         MassErrTot = false
         AccMassErrTot = false
         TimeStep = false
         NRJLevel = false
         NRJLevelSlope = false
         TotalShearStress = false
         HDaddDev = false
         HDaddCorr = false
         HDaddGain = false
         HDaddConf = false
         HDaddPercent = '<CLOB:0>'
      EndSect  // MH_HD_Additional_Results

      [MH_AD_Additional_Results]
         Touched = false
         TotalMassNo = false
         GridMassNo = false
         TotalMassErrNo = false
         TotalAccMassErrNo = false
         GridMassErrNo = false
         GridAccMassErrNo = false
         TotalOrderDecay = false
         TotalAccOrderDecNo = false
         GridOrderDecay = false
         GridAccOrderDecNo = false
         ADaddDev = false
         ADaddCorr = false
         ADaddGain = false
         ADaddConf = false
         ADaddPercent = '<CLOB:0>'
      EndSect  // MH_AD_Additional_Results

      [MH_ST_Additional_Results]
         Touched = false
         BedLevelChange = false
         TotalShearStress = false
         SkinShearStress = false
         d50 = false
         d90 = false
         GeometricMeanDiameter = false
         BedLoadIOF = false
         SuspendedLoadIOF = false
         TotalLoadIOF = false
         Concentration = false
         TotalLayerThickness = false
         LayerThicknessTotalActive = false
         LayerThicknessTotalPassive = false
         TotalThickness = false
         ActiveLayerThickness = false
         PassiveLayerThickness = false
         TotalMass = false
         ActiveLayerMass = false
         PassiveLayerMass = false
         ActiveLayerDistribution = false
         PassiveLayerDistribution = false
         SedimentConcentration = false
         BedLoadFractional = false
         SuspendedLoadFractional = false
         TotalLoadFractional = false
      EndSect  // MH_ST_Additional_Results

      [MH_Result_State_File]
         Touched = false
         SaveState = false
         DefaultFolder = true
         FolderPath = |..\Result\karup_v1.mhydro - State Files\|
         DefaultName = true
         FileName = 'StateFile_Simulation 1.state1d'
         Frequency = 10000
         Unit = 0
      EndSect  // MH_Result_State_File

      [MH_Result_Decoupling]
         Touched = false
         SaveState = false
         DefaultFolder = true
         FolderPath = |..\Result\karup_v1.mhydro - Result Files\|
         DefaultName = true
         FileName = 'HDdecoupling.res1d'
         Frequency = 1
         Unit = 0
      EndSect  // MH_Result_Decoupling

      [MapResult]
         Touched = false
         DhiSEPfsListItemCount = 0
         MapGeneration = false
         DEMInput = false
         ApplyDEM = false
         MapAdditionalFloodedAreas = false
         MapAdditionalFloodedAreasFilename = ||
         [MapResultDEMItemList]
            Touched = false
            DhiSEPfsListItemCount = 0
         EndSect  // MapResultDEMItemList

      EndSect  // MapResult

      [TimeSeriesOutputList]
         Touched = false
         DhiSEPfsListItemCount = 0
      EndSect  // TimeSeriesOutputList

   EndSect  // ResultSpecificationsGroupPfs

   [LoadBasinPfs]
      Touched = false
      Clob = '<CLOB:0>'
   EndSect  // LoadBasinPfs

   [ResultSymbologyGroup]
      Touched = false
      ObjectID = 'ec9b2a04-59aa-4345-b510-93bf67796bda'
      [MBBranch]
         Touched = false
         [PolylineSymbology]
            Touched = false
            ShowSymbol = true
            LabelVisible = false
            FontSize = 9
            FontStyle = 0
            FontColor = -16777216
            SymbolField = ''
            SymbolFieldTypeCode = 0
            UseCustomColor = false
            LabelField = 'Name'
            SymbolScope = 0
            SymbolExpression = ''
            SymbologyType = 0
            [SpecifiedSymbols]
               Count = 0
            EndSect  // SpecifiedSymbols

            [GraduatedThicknessRange]
               SizeFrom = 1
               SizeTo = 20
            EndSect  // GraduatedThicknessRange

            [GraduatedColorRamp]
               Invert = false
               ColorRamp = '-16777216:0;-1:100'
            EndSect  // GraduatedColorRamp

            PolylineSymbolColor = -16776961
            PolylineThickness = 2
            PolylineType = 0
            DrawDirectionArrow = true
            ArrowPosition = 0
         EndSect  // PolylineSymbology

      EndSect  // MBBranch

      [MBNode]
         Touched = false
         [PointSymboloy]
            Touched = false
            ShowSymbol = true
            LabelVisible = false
            FontSize = 9
            FontStyle = 0
            FontColor = -16777216
            SymbolField = 'Symbol'
            SymbolFieldTypeCode = 9
            UseCustomColor = false
            LabelField = 'Name'
            SymbolScope = 0
            SymbolExpression = ''
            SymbologyType = 3
            [SpecifiedSymbols]
               Count = 5
               [SpecifiedSymbolElem_0]
                  ClassifyType = 3
                  Label = 'Node: RIVER_NODE'
                  Value = 'RIVER_NODE'
                  IsOthersStyle = false
                  BitmapName = ''
                  FillColor = -32768
                  OutlineColor = -65536
                  PointSize = 6
                  OutlineThickness = 1
                  PointSymbolType = 0
                  SymbolStyle = 0
               EndSect  // SpecifiedSymbolElem_0

               [SpecifiedSymbolElem_1]
                  ClassifyType = 3
                  Label = 'Node: WATERUSER_NODE'
                  Value = 'WATERUSER_NODE'
                  IsOthersStyle = false
                  BitmapName = 'wateruser'
                  FillColor = -23296
                  OutlineColor = -23296
                  PointSize = 6
                  OutlineThickness = 1
                  PointSymbolType = 1
                  SymbolStyle = 1
               EndSect  // SpecifiedSymbolElem_1

               [SpecifiedSymbolElem_2]
                  ClassifyType = 3
                  Label = 'Node: WATERUSER_IRRIGATION_NODE'
                  Value = 'WATERUSER_IRRIGATION_NODE'
                  IsOthersStyle = false
                  BitmapName = 'irriuser'
                  FillColor = -23296
                  OutlineColor = -23296
                  PointSize = 6
                  OutlineThickness = 1
                  PointSymbolType = 1
                  SymbolStyle = 1
               EndSect  // SpecifiedSymbolElem_2

               [SpecifiedSymbolElem_3]
                  ClassifyType = 3
                  Label = 'Node: HYDROPOWER_NODE'
                  Value = 'HYDROPOWER_NODE'
                  IsOthersStyle = false
                  BitmapName = 'hydropower'
                  FillColor = -23296
                  OutlineColor = -23296
                  PointSize = 6
                  OutlineThickness = 1
                  PointSymbolType = 1
                  SymbolStyle = 1
               EndSect  // SpecifiedSymbolElem_3

               [SpecifiedSymbolElem_4]
                  ClassifyType = 3
                  Label = 'Node: RESERVOIR_NODE'
                  Value = 'RESERVOIR_NODE'
                  IsOthersStyle = false
                  BitmapName = 'reservoir'
                  FillColor = -23296
                  OutlineColor = -23296
                  PointSize = 6
                  OutlineThickness = 1
                  PointSymbolType = 1
                  SymbolStyle = 1
               EndSect  // SpecifiedSymbolElem_4

            EndSect  // SpecifiedSymbols

            [GraduatedSizeRange]
               SizeFrom = 1
               SizeTo = 20
            EndSect  // GraduatedSizeRange

            [GraduatedColorRamp]
               Invert = false
               ColorRamp = '-16777216:0;-1:100'
            EndSect  // GraduatedColorRamp

            SymbolStyle = 0
            PointSymbolFillColor = -65536
            PointOutlineColor = -65536
            PointSize = 6
            PointOutlineWidth = 0
            PointStyle = 0
            BitmapName = ''
         EndSect  // PointSymboloy

      EndSect  // MBNode

      [MBCatchment]
         Touched = false
         [PolygonSymbology]
            Touched = false
            ShowSymbol = true
            LabelVisible = false
            FontSize = 9
            FontStyle = 0
            FontColor = -16777216
            SymbolField = ''
            SymbolFieldTypeCode = 0
            UseCustomColor = false
            LabelField = 'Name'
            SymbolScope = 0
            SymbolExpression = ''
            SymbologyType = 0
            [SpecifiedSymbols]
               Count = 0
            EndSect  // SpecifiedSymbols

            [GraduatedColorRamp]
               Invert = false
               ColorRamp = '-16777216:0;-1:100'
            EndSect  // GraduatedColorRamp

            PolygonFillColor = -8000
            PolygonOutlineColor = -8372224
            PolygonTransparency = 50
            PolygonThickness = 2
            PolygonOutlineStyle = 0
         EndSect  // PolygonSymbology

      EndSect  // MBCatchment

      [RiverReach]
         Touched = false
         [PolylineSymbology]
            Touched = false
            ShowSymbol = true
            LabelVisible = false
            FontSize = 9
            FontStyle = 0
            FontColor = -16777216
            SymbolField = ''
            SymbolFieldTypeCode = 0
            UseCustomColor = false
            LabelField = 'Name'
            SymbolScope = 0
            SymbolExpression = ''
            SymbologyType = 0
            [SpecifiedSymbols]
               Count = 0
            EndSect  // SpecifiedSymbols

            [GraduatedThicknessRange]
               SizeFrom = 1
               SizeTo = 20
            EndSect  // GraduatedThicknessRange

            [GraduatedColorRamp]
               Invert = false
               ColorRamp = '-16777216:0;-1:100'
            EndSect  // GraduatedColorRamp

            PolylineSymbolColor = -16776961
            PolylineThickness = 2
            PolylineType = 0
            DrawDirectionArrow = true
            ArrowPosition = 0
         EndSect  // PolylineSymbology

      EndSect  // RiverReach

      [RiverGridPoint]
         Touched = false
         [PointSymboloy]
            Touched = false
            ShowSymbol = true
            LabelVisible = false
            FontSize = 9
            FontStyle = 0
            FontColor = -16777216
            SymbolField = 'GridPointType'
            SymbolFieldTypeCode = 9
            UseCustomColor = false
            LabelField = 'GridPointType'
            SymbolScope = 0
            SymbolExpression = ''
            SymbologyType = 3
            [SpecifiedSymbols]
               Count = 2
               [SpecifiedSymbolElem_0]
                  ClassifyType = 3
                  Label = 'Grid point: QPoint'
                  Value = 'QPoint'
                  IsOthersStyle = false
                  BitmapName = ''
                  FillColor = -65536
                  OutlineColor = -65536
                  PointSize = 6
                  OutlineThickness = 1
                  PointSymbolType = 0
                  SymbolStyle = 0
               EndSect  // SpecifiedSymbolElem_0

               [SpecifiedSymbolElem_1]
                  ClassifyType = 3
                  Label = 'Grid point: HPoint'
                  Value = 'HPoint'
                  IsOthersStyle = false
                  BitmapName = ''
                  FillColor = -16776961
                  OutlineColor = -16776961
                  PointSize = 6
                  OutlineThickness = 1
                  PointSymbolType = 0
                  SymbolStyle = 0
               EndSect  // SpecifiedSymbolElem_1

            EndSect  // SpecifiedSymbols

            [GraduatedSizeRange]
               SizeFrom = 1
               SizeTo = 20
            EndSect  // GraduatedSizeRange

            [GraduatedColorRamp]
               Invert = false
               ColorRamp = '-16777216:0;-1:100'
            EndSect  // GraduatedColorRamp

            SymbolStyle = 0
            PointSymbolFillColor = -65536
            PointOutlineColor = -23296
            PointSize = 6
            PointOutlineWidth = 0
            PointStyle = 0
            BitmapName = ''
         EndSect  // PointSymboloy

      EndSect  // RiverGridPoint

      [RiverCatchment]
         Touched = false
         [PolygonSymbology]
            Touched = false
            ShowSymbol = true
            LabelVisible = false
            FontSize = 9
            FontStyle = 0
            FontColor = -16777216
            SymbolField = ''
            SymbolFieldTypeCode = 0
            UseCustomColor = false
            LabelField = 'ID'
            SymbolScope = 0
            SymbolExpression = ''
            SymbologyType = 0
            [SpecifiedSymbols]
               Count = 0
            EndSect  // SpecifiedSymbols

            [GraduatedColorRamp]
               Invert = false
               ColorRamp = '-16777216:0;-1:100'
            EndSect  // GraduatedColorRamp

            PolygonFillColor = -8000
            PolygonOutlineColor = -8372224
            PolygonTransparency = 50
            PolygonThickness = 2
            PolygonOutlineStyle = 0
         EndSect  // PolygonSymbology

      EndSect  // RiverCatchment

   EndSect  // ResultSymbologyGroup

   [D0Counter]
      Touched = false
      Seed = 32
   EndSect  // D0Counter

   [D1Counter]
      Touched = false
      Seed = 27
   EndSect  // D1Counter

   [D2Counter]
      Touched = false
      Seed = 0
   EndSect  // D2Counter

   [TSPlot]
      Touched = false
      DhiSEPfsListItemCount = 0
   EndSect  // TSPlot

EndSect  // MIKEHYDRO

[SYSTEM]
   ResultRootFolder = |..\Result|
   UseCustomResultFolder = false
   CustomResultFolder = ||
EndSect  // SYSTEM

