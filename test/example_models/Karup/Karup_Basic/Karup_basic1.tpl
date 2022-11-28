// Created     : 2022-11-22 13:17:14
// DLL         : C:\Program Files (x86)\DHI\MIKE Zero\2022\bin\x64\pfs2004.dll
// Version     : 20.1.0.16132

[MIKESHE_FLOWMODEL]
   [FlowModelDocVersion]
      Touched = 0
      IsDataUsedInSetup = 1
      Version = 21
   EndSect  // FlowModelDocVersion

   [ViewSettings]
      Touched = 0
      IsDataUsedInSetup = 1
      ShowValidationIcons = 1
      DefaultZoomDataAreaUndefined = 0
      DefaultZoomDataArea_X0 = 494079.0
      DefaultZoomDataArea_Y0 = 6220000.0
      DefaultZoomDataArea_X1 = 526579.0
      DefaultZoomDataArea_Y1 = 6261000.0
      MaxZoomDataAreaUndefined = 0
      MaxZoomDataArea_X0 = 494079.0
      MaxZoomDataArea_Y0 = 6220000.0
      MaxZoomDataArea_X1 = 526579.0
      MaxZoomDataArea_Y1 = 6261000.0
   EndSect  // ViewSettings

   [Overlays]
      UseModelDomain = 1
      [Foreground]
         Touched = 1
         IsDataUsedInSetup = 1
         MzSEPfsListItemCount = 2
         NumberOfLayers = 2
         [OverlayItem_1]
            Touched = 1
            IsDataUsedInSetup = 1
            Type = 3
            [OverlayBMP]
               Touched = 1
               IsDataUsedInSetup = 1
               Filename = ||
               BMP_X0 = 0.0
               BMP_X1 = 10000.0
               BMP_Y0 = 0.0
               BMP_Y1 = 10000.0
               BMP_TransparentColor = 16777215
               BMP_DisplayStyle = 0
               Display = 1
            EndSect  // OverlayBMP

            [OverlayGrid]
               Touched = 1
               IsDataUsedInSetup = 1
               Transparency = 2
               Display = 1
               [DFS_2D_DATA_FILE]
                  Touched = 1
                  IsDataUsedInSetup = 0
                  FILE_NAME = ||
                  ITEM_COUNT = 1
                  ITEM_NUMBERS = 1
               EndSect  // DFS_2D_DATA_FILE

            EndSect  // OverlayGrid

            [OverlayShape]
               Touched = 1
               IsDataUsedInSetup = 1
               Filename = |.\Model Inputs\GIS Data\catchment.shp|
               ItemDescr = 'OBJECTID'
               ShapeAxisUnit = 1000
               PointSize = 1
               PointStyle = 0
               PointType = 7
               PointColorR = 0
               PointColorG = 0
               PointColorB = 0
               PointTextColorR = 0
               PointTextColorG = 0
               PointTextColorB = 0
               LineThickness = 0.3
               LineStyle = 0
               PolygonStyle = 0
               LineColorR = 0
               LineColorG = 0
               LineColorB = 0
               LineTextColorR = 0
               LineTextColorG = 0
               LineTextColorB = 0
               LineTextColorOption = 0
               ShowLineText = 0
               PointTextBackground = 1
               LineTextBackground = 1
               PointTextColorOption = 0
               ShowPointText = 0
               Display = 1
            EndSect  // OverlayShape

            [OverlayRiver]
               Touched = 1
               IsDataUsedInSetup = 1
               SourceM11NwkType = 0
               M11NwkFilename_Specified = ||
               Display = 1
            EndSect  // OverlayRiver

            [OverlayWell]
               Touched = 1
               IsDataUsedInSetup = 1
               WellFilename = ||
               Display = 1
               Lables = 0
               SourceWellType = 0
            EndSect  // OverlayWell

         EndSect  // OverlayItem_1

         [OverlayItem_2]
            Touched = 1
            IsDataUsedInSetup = 1
            Type = 1
            [OverlayBMP]
               Touched = 1
               IsDataUsedInSetup = 1
               Filename = |.\Model Inputs\Maps\map.bmp|
               BMP_X0 = 484935.0
               BMP_X1 = 552440.0
               BMP_Y0 = 6220029.0
               BMP_Y1 = 6264854.0
               BMP_TransparentColor = 16777215
               BMP_DisplayStyle = 2
               Display = 1
            EndSect  // OverlayBMP

            [OverlayGrid]
               Touched = 1
               IsDataUsedInSetup = 1
               Transparency = 2
               Display = 1
               [DFS_2D_DATA_FILE]
                  Touched = 1
                  IsDataUsedInSetup = 0
                  FILE_NAME = ||
                  ITEM_COUNT = 1
                  ITEM_NUMBERS = 1
               EndSect  // DFS_2D_DATA_FILE

            EndSect  // OverlayGrid

            [OverlayShape]
               Touched = 1
               IsDataUsedInSetup = 1
               Filename = ||
               ItemDescr = ''
               ShapeAxisUnit = 1000
               PointSize = 1
               PointStyle = 0
               PointType = 7
               PointColorR = 0
               PointColorG = 0
               PointColorB = 0
               PointTextColorR = 0
               PointTextColorG = 0
               PointTextColorB = 0
               LineThickness = 0.3
               LineStyle = 0
               PolygonStyle = 0
               LineColorR = 0
               LineColorG = 0
               LineColorB = 0
               LineTextColorR = 0
               LineTextColorG = 0
               LineTextColorB = 0
               LineTextColorOption = 0
               ShowLineText = 0
               PointTextBackground = 1
               LineTextBackground = 1
               PointTextColorOption = 0
               ShowPointText = 0
               Display = 1
            EndSect  // OverlayShape

            [OverlayRiver]
               Touched = 1
               IsDataUsedInSetup = 1
               SourceM11NwkType = 0
               M11NwkFilename_Specified = ||
               Display = 1
            EndSect  // OverlayRiver

            [OverlayWell]
               Touched = 1
               IsDataUsedInSetup = 1
               WellFilename = ||
               Display = 1
               Lables = 0
               SourceWellType = 0
            EndSect  // OverlayWell

         EndSect  // OverlayItem_2

      EndSect  // Foreground

      [Background]
         Touched = 0
         IsDataUsedInSetup = 1
         MzSEPfsListItemCount = 0
         NumberOfLayers = 0
      EndSect  // Background

      [Current_Layer]
         Touched = 1
         IsDataUsedInSetup = 1
         [Grid]
            Touched = 0
            IsDataUsedInSetup = 1
            TransparencyVal = 0.5
         EndSect  // Grid

      EndSect  // Current_Layer

   EndSect  // Overlays

   [SimSpec]
      Touched = 1
      IsDataUsedInSetup = 1
      [ModelComp]
         Touched = 1
         IsDataUsedInSetup = 1
         ET = 1
         OL = 1
         SZ = 1
         UZ = 1
         WM = 1
         River = 0
         WQ = 0
         Plugins = 0
         ADPTRadio = 0
         UZ_ModelType = 0
         SZ_ModelType = 0
         OL_ModelType = 0
         UseCurrentWmSimulation = 1
         FilenameSheRes = ||
      EndSect  // ModelComp

      [SimTitle]
         Touched = 1
         IsDataUsedInSetup = 1
         Title = ''
         Description = ''
      EndSect  // SimTitle

      [SimulationPeriod]
         Touched = 1
         IsDataUsedInSetup = 1
         HotStart = 0
         HotStartResultFile = ||
         HotStartDate = -1, -1, -1, -1, -1
         HotStartDateIndex = 0
         SimStartFromHotStartDate = 0
         SIMSTART = 2003, 1, 1, 0, 0
         SIMEND = 2007, 12, 31, 0, 0
      EndSect  // SimulationPeriod

      [CompControlParaTimeStep]
         Touched = 1
         IsDataUsedInSetup = 1
         InitialTimeStep = 2
         MaxAllowedOLTimeStep = 0.25
         MaxAllowedUZTimeStep = 2
         MaxAllowedSZTimeStep = 2
         IncrementRate = 0.05
         MaxPrecDepthPerTimeStep = 10
         MaxInfiltDepthPerTimeStep  = 10
         PrecThresholdRate = 0.1
      EndSect  // CompControlParaTimeStep

      [CompControlParaOL]
         Touched = 1
         IsDataUsedInSetup = 1
         SolverOption = 1
         MaxNoOfIter = 200
         MaxHeadChange = 0.0001
         MaxResidualError = 0.0001
         RelaxFactor = 0.9
         MaxCourant_Explicit = 0.8
         WaterDepthThreshold = 0.0001
         OLFlowReductionGradientThreshold = 0.0001
         OLRiverExchangeOption = 0
         WeirFlowReductionDepthThreshold = 0.1
         Multicell = 0
         MulticellFactor = 2
         IgnoreBankOl2River = 1
      EndSect  // CompControlParaOL

      [CompControlParaUZ]
         Touched = 1
         IsDataUsedInSetup = 1
         MaxWaterBalanceError = 0.03
         MaxNoOfIter = 250
         IterStopCriteria = 0.002
         CouplingCriteria = 0.001
      EndSect  // CompControlParaUZ

      [CompControlParaSZ]
         Touched = 1
         IsDataUsedInSetup = 1
         SolverOption = 0
         [CompControlParaSZPCGTrans]
            Touched = 1
            IsDataUsedInSetup = 1
            MaxNoOfIter = 100
            GradualDrainActivation = 1
            MaxHeadChange = 0.005
            HorizontalConductanceAveraging = 1
            MaxResidualError = 0.0005
            SatThicknessThreshold = 0.05
            UnderRelaxFactor = 0.99
            UnderRelaxation = 0
         EndSect  // CompControlParaSZPCGTrans

         [CompControlParaSZPCGSteady]
            Touched = 1
            IsDataUsedInSetup = 0
            MaxNoOfIter = 1000
            GradualDrainActivation = 1
            MaxHeadChange = 0.001
            HorizontalConductanceAveraging = 1
            MaxResidualError = 1e-05
            SatThicknessThreshold = 0.05
            UnderRelaxFactor = 0.2
            UnderRelaxation = 1
         EndSect  // CompControlParaSZPCGSteady

         [CompControlParaSZSOR]
            Touched = 1
            IsDataUsedInSetup = 0
            MaxNoOfIter = 200
            MaxHeadChange = 0.001
            MaxResidualError = 0.0001
            SatThicknessThreshold = 0.05
            OverRelaxFactor = 1.3
         EndSect  // CompControlParaSZSOR

         [CompControlParaRivEx]
            Touched = 1
            IsDataUsedInSetup = 0
            MaxFractionHPointVolume = 0.9
         EndSect  // CompControlParaRivEx

      EndSect  // CompControlParaSZ

   EndSect  // SimSpec

   [Plugins]
      Touched = 1
      IsDataUsedInSetup = 0
      PyResolve = 1
      PyPath = ||
      [PluginFileList]
         Touched = 1
         IsDataUsedInSetup = 0
         MzSEPfsListItemCount = 1
         NumberOfPluginFiles = 1
         [PluginFile_1]
            Touched = 1
            IsDataUsedInSetup = 0
            Enable = 1
            FILE_NAME = ||
         EndSect  // PluginFile_1

      EndSect  // PluginFileList

   EndSect  // Plugins

   [ModelCompWQ]
      Touched = 0
      IsDataUsedInSetup = 0
      OL = 0
      River = 0
      UZ = 0
      PlantUptake = 0
      SZ = 0
      IncludeProcesses = 0
      ProcessType = 0
      [SimTitleWQ]
         Touched = 0
         IsDataUsedInSetup = 0
         Title = ''
         Description = ''
      EndSect  // SimTitleWQ

      [SimulationPeriodWQ]
         Touched = 0
         IsDataUsedInSetup = 0
         SimStart = 2000, 1, 1, 0, 0
         SimEnd = 2000, 2, 1, 0, 0
         RecyclingType = 0
         CycleRestartDate = 2000, 1, 1, 0, 0
         CycleEndDate = 2000, 2, 1, 0, 0
         FlowFieldSolutionDate = 2000, 2, 1, 0, 0
      EndSect  // SimulationPeriodWQ

      [WQTSC]
         Touched = 0
         IsDataUsedInSetup = 0
         MaxSimTimeStepSZ = 1000000000.0
         MaxSimTimeStepUZ = 1000000000.0
         MaxSimTimeStepOL = 1000000000.0
         MaxAdvectiveCourantSZ = 0.8
         MaxAdvectiveCourantUZ = 0.8
         MaxAdvectiveCourantOL = 0.8
         MaxDispersiveCourantSZ = 0.5
         MaxDispersiveCourantUZ = 0.5
         MaxDispersiveCourantOL = 0.5
         MaxTransLimitSZ = 0.95
         MaxTransLimitUZ = 0.95
         MaxTransLimitOL = 0.95
         MaxCourantMP = 0.8
      EndSect  // WQTSC

   EndSect  // ModelCompWQ

   [ModelCompPT]
      Touched = 0
      IsDataUsedInSetup = 0
      InitDensityRadio = 1
      ParticleMass = 100.0
      InitLocationRadio = 0
      DistanceFracFromBottom = 0.5
      AvoidInitParticlesInFixedCells = 0
      AvoidInitParticlesAboveWaterTable = 1
      RegistrationZoneRadio = 0
      AutomaticWellRegistration = 1
      [SimTitlePT]
         Touched = 0
         IsDataUsedInSetup = 0
         Title = ''
         Description = ''
      EndSect  // SimTitlePT

      [SimulationPeriodPT]
         Touched = 0
         IsDataUsedInSetup = 0
         SimStart = 2000, 1, 1, 0, 0
         SimEnd = 2000, 2, 1, 0, 0
         RecyclingType = 0
         CycleRestartDate = 2000, 1, 1, 0, 0
         CycleEndDate = 2000, 2, 1, 0, 0
         FlowFieldSolutionDate = 2000, 2, 1, 0, 0
      EndSect  // SimulationPeriodPT

      [PTControl]
         Touched = 0
         IsDataUsedInSetup = 0
         ApplyVerticalCorrection = 1
         IgnoreVerticalCourant = 0
         MaxSimTimeStepSZ = 1000000000.0
         MaxAdvectiveCourantSZ = 0.8
         MaxDispersiveCourantSZ = 0.5
      EndSect  // PTControl

   EndSect  // ModelCompPT

   [EcolabTemplateSpecification]
      Touched = 0
      IsDataUsedInSetup = 0
      Ecolab_OL = 0
      TemplateFile_OL = ||, -1, -1, -1, -1, -1, -1
      Method_OL = 0
      Freq_OL = 1
      Ecolab_UZ = 0
      TemplateFile_UZ = ||, -1, -1, -1, -1, -1, -1
      Method_UZ = 0
      Freq_UZ = 1
      Ecolab_SZ = 0
      TemplateFile_SZ = ||, -1, -1, -1, -1, -1, -1
      Method_SZ = 0
      Freq_SZ = 1
      [OL_Constants]
         Touched = 0
         IsDataUsedInSetup = 0
         NumberOfConstants = 0
      EndSect  // OL_Constants

      [OL_Forcings]
         Touched = 0
         IsDataUsedInSetup = 0
         NumberOfForcings = 0
      EndSect  // OL_Forcings

      [UZ_Constants]
         Touched = 0
         IsDataUsedInSetup = 0
         NumberOfConstants = 0
      EndSect  // UZ_Constants

      [UZ_Forcings]
         Touched = 0
         IsDataUsedInSetup = 0
         NumberOfForcings = 0
      EndSect  // UZ_Forcings

      [SZ_Constants]
         Touched = 0
         IsDataUsedInSetup = 0
         NumberOfConstants = 0
      EndSect  // SZ_Constants

      [SZ_Forcings]
         Touched = 0
         IsDataUsedInSetup = 0
         NumberOfForcings = 0
      EndSect  // SZ_Forcings

   EndSect  // EcolabTemplateSpecification

   [Species]
      Touched = 0
      IsDataUsedInSetup = 0
      MzSEPfsListItemCount = 0
      NumberOfSpecies = 0
   EndSect  // Species

   [Processes]
      Touched = 0
      IsDataUsedInSetup = 0
      [Decay_Processes]
         Touched = 0
         IsDataUsedInSetup = 0
         MzSEPfsListItemCount = 0
         NumberOfDecay = 0
      EndSect  // Decay_Processes

      [Sorption_Processes]
         Touched = 0
         IsDataUsedInSetup = 0
         MzSEPfsListItemCount = 0
         NumberOfSorption = 0
      EndSect  // Sorption_Processes

   EndSect  // Processes

   [Catchment]
      Touched = 1
      IsDataUsedInSetup = 1
      type = 2
      nxShp = 65
      nyShp = 82
      sizeShp = 500.0
      x0Shp = 494079.0
      y0Shp = 6220000.0
      MapProjShp = 'PROJCS["ETRS_1989_UTM_Zone_32N",GEOGCS["GCS_ETRS_1989",DATUM["D_ETRS_1989",SPHEROID["GRS_1980",6378137.0,298.257222101]],PRIMEM["Greenwich",0.0],UNIT["Degree",0.0174532925199433]],PROJECTION["Transverse_Mercator"],PARAMETER["False_Easting",500000.0],PARAMETER["False_Northing",0.0],PARAMETER["Central_Meridian",9.0],PARAMETER["Scale_Factor",0.9996],PARAMETER["Latitude_Of_Origin",0.0],UNIT["Meter",1.0]]'
      rotationShp = 0.0
      ShapeAxisUnit = 1000
      [DFS_2D_DATA_FILE]
         Touched = 1
         IsDataUsedInSetup = 0
         FILE_NAME = |.\Model inputs\domain.dfs2|
         ITEM_COUNT = 1
         ITEM_NUMBERS = 1
      EndSect  // DFS_2D_DATA_FILE

      [SHAPE_FILE]
         Touched = 1
         IsDataUsedInSetup = 1
         FILE_NAME = |.\Model Inputs\GIS Data\catchment.shp|
         ITEM_COUNT = 1
         ITEM_NUMBERS = ''
      EndSect  // SHAPE_FILE

   EndSect  // Catchment

   [Subcatchments]
      Touched = 0
      IsDataUsedInSetup = 0
      DistributionType = 1
      Type = 1
      ShapeAxisUnit = 1000
      ShapeGapFillName = ''
      NO_ZONES = 0
      [DFS_2D_DATA_FILE]
         Touched = 0
         IsDataUsedInSetup = 0
         FILE_NAME = ||
         ITEM_COUNT = 1
         ITEM_NUMBERS = 1
      EndSect  // DFS_2D_DATA_FILE

      [SHAPE_FILE]
         Touched = 0
         IsDataUsedInSetup = 0
         FILE_NAME = ||
         ITEM_COUNT = 1
         ITEM_NUMBERS = ''
      EndSect  // SHAPE_FILE

   EndSect  // Subcatchments

   [Topography]
      Touched = 1
      IsDataUsedInSetup = 1
      FixedValue = 10
      Type = 1
      ShapeAxisUnit = 1000
      ShapeGapFillName = ''
      InterpMethod = 2
      SearchRadius = 1000
      ShowGridData = 1
      ShowShapeData = 1
      ShapeItemUnit = 1000
      [DFS_2D_DATA_FILE]
         Touched = 1
         IsDataUsedInSetup = 1
         FILE_NAME = |.\Model inputs\Maps\dtm_50m.dfs2|
         ITEM_COUNT = 1
         ITEM_NUMBERS = 1
      EndSect  // DFS_2D_DATA_FILE

      [SHAPE_FILE]
         Touched = 1
         IsDataUsedInSetup = 0
         FILE_NAME = ||
         ITEM_COUNT = 1
         ITEM_NUMBERS = ''
      EndSect  // SHAPE_FILE

      [XYZ_FILE]
         Touched = 1
         IsDataUsedInSetup = 1
         FILE_NAME = ||
      EndSect  // XYZ_FILE

   EndSect  // Topography

   [Climate]
      Touched = 1
      IsDataUsedInSetup = 1
      SM = 0
      CorrectPrecipitation = 0
      CorrectAirTemperature = 0
      UseWetDryLapseRate = 0
      IncludeSolarRadiation = 0
      RechargeOption = 0
      PondingOption = 0
      [PrecipitationRate]
         Touched = 1
         IsDataUsedInSetup = 1
         DistributionType = 1
         Elevation = 0
         [GLOBAL]
            Touched = 1
            IsDataUsedInSetup = 1
            FIXED_VALUE = 0
            TYPE = 2
            [TIME_SERIES_FILE]
               Touched = 1
               IsDataUsedInSetup = 1
               FILE_NAME = |.\Model Inputs\Time\Precipitation.dfs0|
               ITEM_COUNT = 1
               ITEM_NUMBERS = 1
            EndSect  // TIME_SERIES_FILE

         EndSect  // GLOBAL

         [STATION_BASED]
            Touched = 1
            IsDataUsedInSetup = 1
            NO_TIMESERIES = 0
            Type = 1
            ShapeAxisUnit = 1000
            ShapeGapFillName = ''
            [DFS_2D_DATA_FILE]
               Touched = 1
               IsDataUsedInSetup = 0
               FILE_NAME = ||
               ITEM_COUNT = 1
               ITEM_NUMBERS = 1
            EndSect  // DFS_2D_DATA_FILE

            [SHAPE_FILE]
               Touched = 1
               IsDataUsedInSetup = 0
               FILE_NAME = ||
               ITEM_COUNT = 1
               ITEM_NUMBERS = ''
            EndSect  // SHAPE_FILE

         EndSect  // STATION_BASED

         [FULLY_DISTRIBUTED]
            Touched = 1
            IsDataUsedInSetup = 1
            TYPE = 1
            [DFS_2D_DATA_FILE]
               Touched = 1
               IsDataUsedInSetup = 0
               FILE_NAME = ||
               ITEM_COUNT = 1
               ITEM_NUMBERS = 1
            EndSect  // DFS_2D_DATA_FILE

         EndSect  // FULLY_DISTRIBUTED

      EndSect  // PrecipitationRate

      [PrecipLapseRate]
         Touched = 0
         IsDataUsedInSetup = 0
         FixedValue = 0
         Type = 0
         ShapeAxisUnit = 1000
         ShapeGapFillName = ''
         InterpMethod = 2
         SearchRadius = 1000
         ShowGridData = 1
         ShowShapeData = 1
         ShapeItemUnit = 5001
         [DFS_2D_DATA_FILE]
            Touched = 1
            IsDataUsedInSetup = 0
            FILE_NAME = ||
            ITEM_COUNT = 1
            ITEM_NUMBERS = 1
         EndSect  // DFS_2D_DATA_FILE

         [SHAPE_FILE]
            Touched = 1
            IsDataUsedInSetup = 0
            FILE_NAME = ||
            ITEM_COUNT = 1
            ITEM_NUMBERS = ''
         EndSect  // SHAPE_FILE

         [XYZ_FILE]
            Touched = 1
            IsDataUsedInSetup = 0
            FILE_NAME = ||
         EndSect  // XYZ_FILE

      EndSect  // PrecipLapseRate

      [POTEVAPTRANS]
         Touched = 1
         IsDataUsedInSetup = 1
         DistributionType = 1
         [GLOBAL]
            Touched = 1
            IsDataUsedInSetup = 1
            FIXED_VALUE = 0
            TYPE = 2
            [TIME_SERIES_FILE]
               Touched = 1
               IsDataUsedInSetup = 1
               FILE_NAME = |.\Model Inputs\Time\PotentialEvap.dfs0|
               ITEM_COUNT = 1
               ITEM_NUMBERS = 1
            EndSect  // TIME_SERIES_FILE

         EndSect  // GLOBAL

         [STATION_BASED]
            Touched = 1
            IsDataUsedInSetup = 1
            NO_TIMESERIES = 0
            Type = 1
            ShapeAxisUnit = 1000
            ShapeGapFillName = ''
            [DFS_2D_DATA_FILE]
               Touched = 1
               IsDataUsedInSetup = 0
               FILE_NAME = ||
               ITEM_COUNT = 1
               ITEM_NUMBERS = 1
            EndSect  // DFS_2D_DATA_FILE

            [SHAPE_FILE]
               Touched = 1
               IsDataUsedInSetup = 0
               FILE_NAME = ||
               ITEM_COUNT = 1
               ITEM_NUMBERS = ''
            EndSect  // SHAPE_FILE

         EndSect  // STATION_BASED

         [FULLY_DISTRIBUTED]
            Touched = 1
            IsDataUsedInSetup = 1
            TYPE = 1
            [DFS_2D_DATA_FILE]
               Touched = 1
               IsDataUsedInSetup = 0
               FILE_NAME = ||
               ITEM_COUNT = 1
               ITEM_NUMBERS = 1
            EndSect  // DFS_2D_DATA_FILE

         EndSect  // FULLY_DISTRIBUTED

      EndSect  // POTEVAPTRANS

      [SWSolarRadiation]
         Touched = 0
         IsDataUsedInSetup = 0
         DistributionType = 1
         [GLOBAL]
            Touched = 1
            IsDataUsedInSetup = 0
            FIXED_VALUE = 0
            TYPE = 1
            [TIME_SERIES_FILE]
               Touched = 1
               IsDataUsedInSetup = 0
               FILE_NAME = ||
               ITEM_COUNT = 1
               ITEM_NUMBERS = 1
            EndSect  // TIME_SERIES_FILE

         EndSect  // GLOBAL

         [STATION_BASED]
            Touched = 1
            IsDataUsedInSetup = 0
            NO_TIMESERIES = 0
            Type = 1
            ShapeAxisUnit = 1000
            ShapeGapFillName = ''
            [DFS_2D_DATA_FILE]
               Touched = 1
               IsDataUsedInSetup = 0
               FILE_NAME = ||
               ITEM_COUNT = 1
               ITEM_NUMBERS = 1
            EndSect  // DFS_2D_DATA_FILE

            [SHAPE_FILE]
               Touched = 1
               IsDataUsedInSetup = 0
               FILE_NAME = ||
               ITEM_COUNT = 1
               ITEM_NUMBERS = ''
            EndSect  // SHAPE_FILE

         EndSect  // STATION_BASED

         [FULLY_DISTRIBUTED]
            Touched = 1
            IsDataUsedInSetup = 0
            TYPE = 1
            [DFS_2D_DATA_FILE]
               Touched = 1
               IsDataUsedInSetup = 0
               FILE_NAME = ||
               ITEM_COUNT = 1
               ITEM_NUMBERS = 1
            EndSect  // DFS_2D_DATA_FILE

         EndSect  // FULLY_DISTRIBUTED

      EndSect  // SWSolarRadiation

      [AirTemperature]
         Touched = 0
         IsDataUsedInSetup = 0
         DistributionType = 1
         Elevation = 0
         [GLOBAL]
            Touched = 1
            IsDataUsedInSetup = 0
            FIXED_VALUE = 0
            TYPE = 1
            [TIME_SERIES_FILE]
               Touched = 1
               IsDataUsedInSetup = 0
               FILE_NAME = ||
               ITEM_COUNT = 1
               ITEM_NUMBERS = 1
            EndSect  // TIME_SERIES_FILE

         EndSect  // GLOBAL

         [STATION_BASED]
            Touched = 1
            IsDataUsedInSetup = 0
            NO_TIMESERIES = 0
            Type = 1
            ShapeAxisUnit = 1000
            ShapeGapFillName = ''
            [DFS_2D_DATA_FILE]
               Touched = 1
               IsDataUsedInSetup = 0
               FILE_NAME = ||
               ITEM_COUNT = 1
               ITEM_NUMBERS = 1
            EndSect  // DFS_2D_DATA_FILE

            [SHAPE_FILE]
               Touched = 1
               IsDataUsedInSetup = 0
               FILE_NAME = ||
               ITEM_COUNT = 1
               ITEM_NUMBERS = ''
            EndSect  // SHAPE_FILE

         EndSect  // STATION_BASED

         [FULLY_DISTRIBUTED]
            Touched = 1
            IsDataUsedInSetup = 0
            TYPE = 1
            [DFS_2D_DATA_FILE]
               Touched = 1
               IsDataUsedInSetup = 0
               FILE_NAME = ||
               ITEM_COUNT = 1
               ITEM_NUMBERS = 1
            EndSect  // DFS_2D_DATA_FILE

         EndSect  // FULLY_DISTRIBUTED

      EndSect  // AirTemperature

      [TempLapseRate]
         Touched = 0
         IsDataUsedInSetup = 0
         FixedValue = -0.649
         Type = 0
         ShapeAxisUnit = 1000
         ShapeGapFillName = ''
         InterpMethod = 2
         SearchRadius = 1000
         ShowGridData = 1
         ShowShapeData = 1
         ShapeItemUnit = 6000
         [DFS_2D_DATA_FILE]
            Touched = 1
            IsDataUsedInSetup = 0
            FILE_NAME = ||
            ITEM_COUNT = 1
            ITEM_NUMBERS = 1
         EndSect  // DFS_2D_DATA_FILE

         [SHAPE_FILE]
            Touched = 1
            IsDataUsedInSetup = 0
            FILE_NAME = ||
            ITEM_COUNT = 1
            ITEM_NUMBERS = ''
         EndSect  // SHAPE_FILE

         [XYZ_FILE]
            Touched = 1
            IsDataUsedInSetup = 0
            FILE_NAME = ||
         EndSect  // XYZ_FILE

      EndSect  // TempLapseRate

      [WetLapseRate]
         Touched = 0
         IsDataUsedInSetup = 0
         FixedValue = -0.3
         Type = 0
         ShapeAxisUnit = 1000
         ShapeGapFillName = ''
         InterpMethod = 2
         SearchRadius = 1000
         ShowGridData = 1
         ShowShapeData = 1
         ShapeItemUnit = 6000
         [DFS_2D_DATA_FILE]
            Touched = 1
            IsDataUsedInSetup = 0
            FILE_NAME = ||
            ITEM_COUNT = 1
            ITEM_NUMBERS = 1
         EndSect  // DFS_2D_DATA_FILE

         [SHAPE_FILE]
            Touched = 1
            IsDataUsedInSetup = 0
            FILE_NAME = ||
            ITEM_COUNT = 1
            ITEM_NUMBERS = ''
         EndSect  // SHAPE_FILE

         [XYZ_FILE]
            Touched = 1
            IsDataUsedInSetup = 0
            FILE_NAME = ||
         EndSect  // XYZ_FILE

      EndSect  // WetLapseRate

      [SNOWMELTCONST]
         Touched = 0
         IsDataUsedInSetup = 0
         ThermalMelt = 0
         MeltCoefficient = 0.5
         SublimationRate = 0
         [ThreshMeltTemp]
            Touched = 0
            IsDataUsedInSetup = 0
            FixedValue = 0
            Type = 0
            ShapeAxisUnit = 1000
            ShapeGapFillName = ''
            InterpMethod = 2
            SearchRadius = 1000
            ShowGridData = 1
            ShowShapeData = 1
            ShapeItemUnit = 2800
            [DFS_2D_DATA_FILE]
               Touched = 1
               IsDataUsedInSetup = 0
               FILE_NAME = ||
               ITEM_COUNT = 1
               ITEM_NUMBERS = 1
            EndSect  // DFS_2D_DATA_FILE

            [SHAPE_FILE]
               Touched = 1
               IsDataUsedInSetup = 0
               FILE_NAME = ||
               ITEM_COUNT = 1
               ITEM_NUMBERS = ''
            EndSect  // SHAPE_FILE

            [XYZ_FILE]
               Touched = 1
               IsDataUsedInSetup = 0
               FILE_NAME = ||
            EndSect  // XYZ_FILE

         EndSect  // ThreshMeltTemp

         [DegreeDayFactor]
            Touched = 0
            IsDataUsedInSetup = 0
            DistributionType = 1
            [GLOBAL]
               Touched = 1
               IsDataUsedInSetup = 0
               FIXED_VALUE = 2
               TYPE = 1
               [TIME_SERIES_FILE]
                  Touched = 1
                  IsDataUsedInSetup = 0
                  FILE_NAME = ||
                  ITEM_COUNT = 1
                  ITEM_NUMBERS = 1
               EndSect  // TIME_SERIES_FILE

            EndSect  // GLOBAL

            [STATION_BASED]
               Touched = 1
               IsDataUsedInSetup = 0
               NO_TIMESERIES = 0
               Type = 1
               ShapeAxisUnit = 1000
               ShapeGapFillName = ''
               [DFS_2D_DATA_FILE]
                  Touched = 1
                  IsDataUsedInSetup = 0
                  FILE_NAME = ||
                  ITEM_COUNT = 1
                  ITEM_NUMBERS = 1
               EndSect  // DFS_2D_DATA_FILE

               [SHAPE_FILE]
                  Touched = 1
                  IsDataUsedInSetup = 0
                  FILE_NAME = ||
                  ITEM_COUNT = 1
                  ITEM_NUMBERS = ''
               EndSect  // SHAPE_FILE

            EndSect  // STATION_BASED

            [FULLY_DISTRIBUTED]
               Touched = 1
               IsDataUsedInSetup = 0
               TYPE = 1
               [DFS_2D_DATA_FILE]
                  Touched = 1
                  IsDataUsedInSetup = 0
                  FILE_NAME = ||
                  ITEM_COUNT = 1
                  ITEM_NUMBERS = 1
               EndSect  // DFS_2D_DATA_FILE

            EndSect  // FULLY_DISTRIBUTED

         EndSect  // DegreeDayFactor

         [RadMeltingCoeff]
            Touched = 0
            IsDataUsedInSetup = 0
            FixedValue = 0
            Type = 0
            ShapeAxisUnit = 1000
            ShapeGapFillName = ''
            InterpMethod = 2
            SearchRadius = 1000
            ShowGridData = 1
            ShowShapeData = 1
            ShapeItemUnit = 5710
            [DFS_2D_DATA_FILE]
               Touched = 1
               IsDataUsedInSetup = 0
               FILE_NAME = ||
               ITEM_COUNT = 1
               ITEM_NUMBERS = 1
            EndSect  // DFS_2D_DATA_FILE

            [SHAPE_FILE]
               Touched = 1
               IsDataUsedInSetup = 0
               FILE_NAME = ||
               ITEM_COUNT = 1
               ITEM_NUMBERS = ''
            EndSect  // SHAPE_FILE

            [XYZ_FILE]
               Touched = 1
               IsDataUsedInSetup = 0
               FILE_NAME = ||
            EndSect  // XYZ_FILE

         EndSect  // RadMeltingCoeff

         [MinSnowStorage]
            Touched = 0
            IsDataUsedInSetup = 0
            FixedValue = 0
            Type = 0
            ShapeAxisUnit = 1000
            ShapeGapFillName = ''
            InterpMethod = 2
            SearchRadius = 1000
            ShowGridData = 1
            ShowShapeData = 1
            ShapeItemUnit = 1002
            [DFS_2D_DATA_FILE]
               Touched = 1
               IsDataUsedInSetup = 0
               FILE_NAME = ||
               ITEM_COUNT = 1
               ITEM_NUMBERS = 1
            EndSect  // DFS_2D_DATA_FILE

            [SHAPE_FILE]
               Touched = 1
               IsDataUsedInSetup = 0
               FILE_NAME = ||
               ITEM_COUNT = 1
               ITEM_NUMBERS = ''
            EndSect  // SHAPE_FILE

            [XYZ_FILE]
               Touched = 1
               IsDataUsedInSetup = 0
               FILE_NAME = ||
            EndSect  // XYZ_FILE

         EndSect  // MinSnowStorage

         [MaxWetSnowFrac]
            Touched = 0
            IsDataUsedInSetup = 0
            FixedValue = 0
            Type = 0
            ShapeAxisUnit = 1000
            ShapeGapFillName = ''
            InterpMethod = 2
            SearchRadius = 1000
            ShowGridData = 1
            ShowShapeData = 1
            ShapeItemUnit = 99000
            [DFS_2D_DATA_FILE]
               Touched = 1
               IsDataUsedInSetup = 0
               FILE_NAME = ||
               ITEM_COUNT = 1
               ITEM_NUMBERS = 1
            EndSect  // DFS_2D_DATA_FILE

            [SHAPE_FILE]
               Touched = 1
               IsDataUsedInSetup = 0
               FILE_NAME = ||
               ITEM_COUNT = 1
               ITEM_NUMBERS = ''
            EndSect  // SHAPE_FILE

            [XYZ_FILE]
               Touched = 1
               IsDataUsedInSetup = 0
               FILE_NAME = ||
            EndSect  // XYZ_FILE

         EndSect  // MaxWetSnowFrac

         [InitialSnowStorage]
            Touched = 0
            IsDataUsedInSetup = 0
            FixedValue = 0
            Type = 0
            ShapeAxisUnit = 1000
            ShapeGapFillName = ''
            InterpMethod = 2
            SearchRadius = 1000
            ShowGridData = 1
            ShowShapeData = 1
            ShapeItemUnit = 1002
            [DFS_2D_DATA_FILE]
               Touched = 1
               IsDataUsedInSetup = 0
               FILE_NAME = ||
               ITEM_COUNT = 1
               ITEM_NUMBERS = 1
            EndSect  // DFS_2D_DATA_FILE

            [SHAPE_FILE]
               Touched = 1
               IsDataUsedInSetup = 0
               FILE_NAME = ||
               ITEM_COUNT = 1
               ITEM_NUMBERS = ''
            EndSect  // SHAPE_FILE

            [XYZ_FILE]
               Touched = 1
               IsDataUsedInSetup = 0
               FILE_NAME = ||
            EndSect  // XYZ_FILE

         EndSect  // InitialSnowStorage

         [InitialWetSnowFrac]
            Touched = 0
            IsDataUsedInSetup = 0
            FixedValue = 0
            Type = 0
            ShapeAxisUnit = 1000
            ShapeGapFillName = ''
            InterpMethod = 2
            SearchRadius = 1000
            ShowGridData = 1
            ShowShapeData = 1
            ShapeItemUnit = 99000
            [DFS_2D_DATA_FILE]
               Touched = 1
               IsDataUsedInSetup = 0
               FILE_NAME = ||
               ITEM_COUNT = 1
               ITEM_NUMBERS = 1
            EndSect  // DFS_2D_DATA_FILE

            [SHAPE_FILE]
               Touched = 1
               IsDataUsedInSetup = 0
               FILE_NAME = ||
               ITEM_COUNT = 1
               ITEM_NUMBERS = ''
            EndSect  // SHAPE_FILE

            [XYZ_FILE]
               Touched = 1
               IsDataUsedInSetup = 0
               FILE_NAME = ||
            EndSect  // XYZ_FILE

         EndSect  // InitialWetSnowFrac

      EndSect  // SNOWMELTCONST

      [NetRainfallFraction]
         Touched = 0
         IsDataUsedInSetup = 0
         FixedValue = 1
         Type = 0
         ShapeAxisUnit = 1000
         ShapeGapFillName = ''
         InterpMethod = 2
         SearchRadius = 1000
         ShowGridData = 1
         ShowShapeData = 1
         ShapeItemUnit = 99000
         [DFS_2D_DATA_FILE]
            Touched = 1
            IsDataUsedInSetup = 0
            FILE_NAME = ||
            ITEM_COUNT = 1
            ITEM_NUMBERS = 1
         EndSect  // DFS_2D_DATA_FILE

         [SHAPE_FILE]
            Touched = 1
            IsDataUsedInSetup = 0
            FILE_NAME = ||
            ITEM_COUNT = 1
            ITEM_NUMBERS = ''
         EndSect  // SHAPE_FILE

         [XYZ_FILE]
            Touched = 1
            IsDataUsedInSetup = 0
            FILE_NAME = ||
         EndSect  // XYZ_FILE

      EndSect  // NetRainfallFraction

      [InfiltrationFraction]
         Touched = 0
         IsDataUsedInSetup = 0
         FixedValue = 1
         Type = 0
         ShapeAxisUnit = 1000
         ShapeGapFillName = ''
         InterpMethod = 2
         SearchRadius = 1000
         ShowGridData = 1
         ShowShapeData = 1
         ShapeItemUnit = 99000
         [DFS_2D_DATA_FILE]
            Touched = 1
            IsDataUsedInSetup = 0
            FILE_NAME = ||
            ITEM_COUNT = 1
            ITEM_NUMBERS = 1
         EndSect  // DFS_2D_DATA_FILE

         [SHAPE_FILE]
            Touched = 1
            IsDataUsedInSetup = 0
            FILE_NAME = ||
            ITEM_COUNT = 1
            ITEM_NUMBERS = ''
         EndSect  // SHAPE_FILE

         [XYZ_FILE]
            Touched = 1
            IsDataUsedInSetup = 0
            FILE_NAME = ||
         EndSect  // XYZ_FILE

      EndSect  // InfiltrationFraction

   EndSect  // Climate

   [LandUse]
      Touched = 1
      IsDataUsedInSetup = 1
      Irrigation = 1
      Priorities = 1
      [VEGETATION]
         Touched = 1
         IsDataUsedInSetup = 1
         SETUP_TYPE = 2
         DistributionType = 2
         C1 = 0.3
         C2 = 0.2
         C3 = 20.0
         C_INT = 0.05
         A_ROOT = 0.25
         ETReduced = 1.0
         [GLOBAL]
            Touched = 1
            IsDataUsedInSetup = 1
            FIXED_VALUE_LAI = 0
            FIXED_VALUE_RD = 0
            TYPE = 1
            [TIME_SERIES_FILE_1]
               Touched = 1
               IsDataUsedInSetup = 0
               FILE_NAME = ||
               ITEM_COUNT = 1
               ITEM_NUMBERS = 1
            EndSect  // TIME_SERIES_FILE_1

            [TIME_SERIES_FILE_2]
               Touched = 1
               IsDataUsedInSetup = 0
               FILE_NAME = ||
               ITEM_COUNT = 1
               ITEM_NUMBERS = 1
            EndSect  // TIME_SERIES_FILE_2

            [VEG_PROP_FILES]
               Touched = 1
               IsDataUsedInSetup = 1
               MzSEPfsListItemCount = 0
               RecycleMode = 0
            EndSect  // VEG_PROP_FILES

         EndSect  // GLOBAL

         [STATION_BASED]
            Touched = 1
            IsDataUsedInSetup = 1
            NO_TIMESERIES = 4
            Type = 1
            ShapeAxisUnit = 1000
            ShapeGapFillName = ''
            [DFS_2D_DATA_FILE]
               Touched = 1
               IsDataUsedInSetup = 0
               FILE_NAME = |.\Model inputs\Maps\landuse.dfs2|
               ITEM_COUNT = 1
               ITEM_NUMBERS = 1
            EndSect  // DFS_2D_DATA_FILE

            [SHAPE_FILE]
               Touched = 1
               IsDataUsedInSetup = 0
               FILE_NAME = ||
               ITEM_COUNT = 1
               ITEM_NUMBERS = ''
            EndSect  // SHAPE_FILE

         EndSect  // STATION_BASED

         [FULLY_DISTRIBUTED]
            Touched = 1
            IsDataUsedInSetup = 1
            TYPE = 1
            [DFS_2D_DATA_FILE]
               Touched = 1
               IsDataUsedInSetup = 0
               FILE_NAME = ||
               ITEM_COUNT = 1
               ITEM_NUMBERS = 1
            EndSect  // DFS_2D_DATA_FILE

            [DFS_2D_DATA_FILE]
               Touched = 1
               IsDataUsedInSetup = 0
               FILE_NAME = ||
               ITEM_COUNT = 1
               ITEM_NUMBERS = 1
            EndSect  // DFS_2D_DATA_FILE

         EndSect  // FULLY_DISTRIBUTED

         [LAI]
            Touched = 1
            IsDataUsedInSetup = 1
            Type = 1
            ShapeAxisUnit = 1000
            ShapeGapFillName = ''
            InterpMethod = 2
            SearchRadius = 1000
            ShowGridData = 1
            ShowShapeData = 1
            ShapeItemUnit = 99000
            TimeVarying = 0
            DistributionType = 1
            [DFS_2D_DATA_FILE]
               Touched = 1
               IsDataUsedInSetup = 0
               FILE_NAME = ||
               ITEM_COUNT = 1
               ITEM_NUMBERS = 1
            EndSect  // DFS_2D_DATA_FILE

            [SHAPE_FILE]
               Touched = 1
               IsDataUsedInSetup = 0
               FILE_NAME = ||
               ITEM_COUNT = 1
               ITEM_NUMBERS = ''
            EndSect  // SHAPE_FILE

            [XYZ_FILE]
               Touched = 1
               IsDataUsedInSetup = 1
               FILE_NAME = ||
            EndSect  // XYZ_FILE

            [STATION_BASED]
               Touched = 1
               IsDataUsedInSetup = 1
               NO_TIMESERIES = 0
               Type = 1
               ShapeAxisUnit = 1000
               ShapeGapFillName = ''
               [DFS_2D_DATA_FILE]
                  Touched = 1
                  IsDataUsedInSetup = 0
                  FILE_NAME = ||
                  ITEM_COUNT = 1
                  ITEM_NUMBERS = 1
               EndSect  // DFS_2D_DATA_FILE

               [SHAPE_FILE]
                  Touched = 1
                  IsDataUsedInSetup = 0
                  FILE_NAME = ||
                  ITEM_COUNT = 1
                  ITEM_NUMBERS = ''
               EndSect  // SHAPE_FILE

            EndSect  // STATION_BASED

            [GLOBAL]
               Touched = 1
               IsDataUsedInSetup = 1
               FIXED_VALUE = __lu_LAI_FixedValue__
               TYPE = 1
               [TIME_SERIES_FILE]
                  Touched = 1
                  IsDataUsedInSetup = 0
                  FILE_NAME = ||
                  ITEM_COUNT = 1
                  ITEM_NUMBERS = 1
               EndSect  // TIME_SERIES_FILE

            EndSect  // GLOBAL

         EndSect  // LAI

         [ROOT_DEPTH]
            Touched = 1
            IsDataUsedInSetup = 1
            Type = 1
            ShapeAxisUnit = 1000
            ShapeGapFillName = ''
            InterpMethod = 2
            SearchRadius = 1000
            ShowGridData = 1
            ShowShapeData = 1
            ShapeItemUnit = 1002
            TimeVarying = 1
            DistributionType = 13
            [DFS_2D_DATA_FILE]
               Touched = 1
               IsDataUsedInSetup = 1
               FILE_NAME = |.\Model_Inputs\Root Depth.dfs2|
               ITEM_COUNT = 1
               ITEM_NUMBERS = 1
            EndSect  // DFS_2D_DATA_FILE

            [SHAPE_FILE]
               Touched = 1
               IsDataUsedInSetup = 0
               FILE_NAME = ||
               ITEM_COUNT = 1
               ITEM_NUMBERS = ''
            EndSect  // SHAPE_FILE

            [XYZ_FILE]
               Touched = 1
               IsDataUsedInSetup = 1
               FILE_NAME = ||
            EndSect  // XYZ_FILE

            [STATION_BASED]
               Touched = 1
               IsDataUsedInSetup = 1
               NO_TIMESERIES = 0
               Type = 1
               ShapeAxisUnit = 1000
               ShapeGapFillName = ''
               [DFS_2D_DATA_FILE]
                  Touched = 1
                  IsDataUsedInSetup = 0
                  FILE_NAME = ||
                  ITEM_COUNT = 1
                  ITEM_NUMBERS = 1
               EndSect  // DFS_2D_DATA_FILE

               [SHAPE_FILE]
                  Touched = 1
                  IsDataUsedInSetup = 0
                  FILE_NAME = ||
                  ITEM_COUNT = 1
                  ITEM_NUMBERS = ''
               EndSect  // SHAPE_FILE

            EndSect  // STATION_BASED

            [GLOBAL]
               Touched = 1
               IsDataUsedInSetup = 1
               FIXED_VALUE = 0
               TYPE = 1
               [TIME_SERIES_FILE]
                  Touched = 1
                  IsDataUsedInSetup = 0
                  FILE_NAME = ||
                  ITEM_COUNT = 1
                  ITEM_NUMBERS = 1
               EndSect  // TIME_SERIES_FILE

            EndSect  // GLOBAL

         EndSect  // ROOT_DEPTH

         [KC]
            Touched = 1
            IsDataUsedInSetup = 1
            Type = 1
            ShapeAxisUnit = 1000
            ShapeGapFillName = ''
            InterpMethod = 2
            SearchRadius = 1000
            ShowGridData = 1
            ShowShapeData = 1
            ShapeItemUnit = 99000
            TimeVarying = 0
            DistributionType = 2
            [DFS_2D_DATA_FILE]
               Touched = 1
               IsDataUsedInSetup = 0
               FILE_NAME = ||
               ITEM_COUNT = 1
               ITEM_NUMBERS = 1
            EndSect  // DFS_2D_DATA_FILE

            [SHAPE_FILE]
               Touched = 1
               IsDataUsedInSetup = 0
               FILE_NAME = ||
               ITEM_COUNT = 1
               ITEM_NUMBERS = ''
            EndSect  // SHAPE_FILE

            [XYZ_FILE]
               Touched = 1
               IsDataUsedInSetup = 1
               FILE_NAME = ||
            EndSect  // XYZ_FILE

            [STATION_BASED]
               Touched = 1
               IsDataUsedInSetup = 1
               NO_TIMESERIES = 2
               Type = 1
               ShapeAxisUnit = 1000
               ShapeGapFillName = ''
               [DFS_2D_DATA_FILE]
                  Touched = 1
                  IsDataUsedInSetup = 1
                  FILE_NAME = |.\Model Inputs\Maps\Crop Coefficient.dfs2|
                  ITEM_COUNT = 1
                  ITEM_NUMBERS = 1
               EndSect  // DFS_2D_DATA_FILE

               [SHAPE_FILE]
                  Touched = 1
                  IsDataUsedInSetup = 0
                  FILE_NAME = ||
                  ITEM_COUNT = 1
                  ITEM_NUMBERS = ''
               EndSect  // SHAPE_FILE

            EndSect  // STATION_BASED

            [GLOBAL]
               Touched = 1
               IsDataUsedInSetup = 1
               FIXED_VALUE = 1
               TYPE = 1
               [TIME_SERIES_FILE]
                  Touched = 1
                  IsDataUsedInSetup = 0
                  FILE_NAME = ||
                  ITEM_COUNT = 1
                  ITEM_NUMBERS = 1
               EndSect  // TIME_SERIES_FILE

            EndSect  // GLOBAL

            [TIME_SERIES_1]
               NAME = 'Grid code = 1'
               GRIDCODEID = '1'
               GRIDCODE = 1
               FIXED_VALUE = 1
               TYPE = 1
               [TIME_SERIES_FILE]
                  Touched = 1
                  IsDataUsedInSetup = 0
                  FILE_NAME = ||
                  ITEM_COUNT = 1
                  ITEM_NUMBERS = 1
               EndSect  // TIME_SERIES_FILE

               [VEG_PROP_FILES]
                  Touched = 1
                  IsDataUsedInSetup = 1
                  MzSEPfsListItemCount = 0
                  RecycleMode = 0
               EndSect  // VEG_PROP_FILES

            EndSect  // TIME_SERIES_1

            [TIME_SERIES_2]
               NAME = 'Grid code = 2'
               GRIDCODEID = '2'
               GRIDCODE = 2
               FIXED_VALUE = 99
               TYPE = 1
               [TIME_SERIES_FILE]
                  Touched = 1
                  IsDataUsedInSetup = 0
                  FILE_NAME = ||
                  ITEM_COUNT = 1
                  ITEM_NUMBERS = 1
               EndSect  // TIME_SERIES_FILE

               [VEG_PROP_FILES]
                  Touched = 1
                  IsDataUsedInSetup = 1
                  MzSEPfsListItemCount = 0
                  RecycleMode = 0
               EndSect  // VEG_PROP_FILES

            EndSect  // TIME_SERIES_2

         EndSect  // KC

         [C_INT]
            Touched = 1
            IsDataUsedInSetup = 1
            Type = 1
            ShapeAxisUnit = 1000
            ShapeGapFillName = ''
            InterpMethod = 2
            SearchRadius = 1000
            ShowGridData = 1
            ShowShapeData = 1
            ShapeItemUnit = 1002
            TimeVarying = 0
            DistributionType = 2
            [DFS_2D_DATA_FILE]
               Touched = 1
               IsDataUsedInSetup = 0
               FILE_NAME = ||
               ITEM_COUNT = 1
               ITEM_NUMBERS = 1
            EndSect  // DFS_2D_DATA_FILE

            [SHAPE_FILE]
               Touched = 1
               IsDataUsedInSetup = 0
               FILE_NAME = ||
               ITEM_COUNT = 1
               ITEM_NUMBERS = ''
            EndSect  // SHAPE_FILE

            [XYZ_FILE]
               Touched = 1
               IsDataUsedInSetup = 1
               FILE_NAME = ||
            EndSect  // XYZ_FILE

            [STATION_BASED]
               Touched = 1
               IsDataUsedInSetup = 1
               NO_TIMESERIES = 1
               Type = 1
               ShapeAxisUnit = 1000
               ShapeGapFillName = ''
               [DFS_2D_DATA_FILE]
                  Touched = 1
                  IsDataUsedInSetup = 1
                  FILE_NAME = |.\Model Inputs\Maps\Canopy Interception.dfs2|
                  ITEM_COUNT = 1
                  ITEM_NUMBERS = 1
               EndSect  // DFS_2D_DATA_FILE

               [SHAPE_FILE]
                  Touched = 1
                  IsDataUsedInSetup = 0
                  FILE_NAME = ||
                  ITEM_COUNT = 1
                  ITEM_NUMBERS = ''
               EndSect  // SHAPE_FILE

            EndSect  // STATION_BASED

            [GLOBAL]
               Touched = 1
               IsDataUsedInSetup = 1
               FIXED_VALUE = 0.05
               TYPE = 1
               [TIME_SERIES_FILE]
                  Touched = 1
                  IsDataUsedInSetup = 0
                  FILE_NAME = ||
                  ITEM_COUNT = 1
                  ITEM_NUMBERS = 1
               EndSect  // TIME_SERIES_FILE

            EndSect  // GLOBAL

            [TIME_SERIES_1]
               NAME = 'Grid code = 1'
               GRIDCODEID = '1'
               GRIDCODE = 1
               FIXED_VALUE = 0.05
               TYPE = 2
               [TIME_SERIES_FILE]
                  Touched = 1
                  IsDataUsedInSetup = 1
                  FILE_NAME = |.\Model_Inputs\Time\Sub Area Data - Canopy Interception.dfs0|
                  ITEM_COUNT = 1
                  ITEM_NUMBERS = 1
               EndSect  // TIME_SERIES_FILE

               [VEG_PROP_FILES]
                  Touched = 1
                  IsDataUsedInSetup = 1
                  MzSEPfsListItemCount = 0
                  RecycleMode = 0
               EndSect  // VEG_PROP_FILES

            EndSect  // TIME_SERIES_1

         EndSect  // C_INT

         [ET_REDUCED]
            Touched = 1
            IsDataUsedInSetup = 0
            Type = 1
            ShapeAxisUnit = 1000
            ShapeGapFillName = ''
            InterpMethod = 2
            SearchRadius = 1000
            ShowGridData = 1
            ShowShapeData = 1
            ShapeItemUnit = 99000
            TimeVarying = 0
            DistributionType = 1
            [DFS_2D_DATA_FILE]
               Touched = 1
               IsDataUsedInSetup = 0
               FILE_NAME = ||
               ITEM_COUNT = 1
               ITEM_NUMBERS = 1
            EndSect  // DFS_2D_DATA_FILE

            [SHAPE_FILE]
               Touched = 1
               IsDataUsedInSetup = 0
               FILE_NAME = ||
               ITEM_COUNT = 1
               ITEM_NUMBERS = ''
            EndSect  // SHAPE_FILE

            [XYZ_FILE]
               Touched = 1
               IsDataUsedInSetup = 0
               FILE_NAME = ||
            EndSect  // XYZ_FILE

            [STATION_BASED]
               Touched = 1
               IsDataUsedInSetup = 0
               NO_TIMESERIES = 0
               Type = 1
               ShapeAxisUnit = 1000
               ShapeGapFillName = ''
               [DFS_2D_DATA_FILE]
                  Touched = 1
                  IsDataUsedInSetup = 0
                  FILE_NAME = ||
                  ITEM_COUNT = 1
                  ITEM_NUMBERS = 1
               EndSect  // DFS_2D_DATA_FILE

               [SHAPE_FILE]
                  Touched = 1
                  IsDataUsedInSetup = 0
                  FILE_NAME = ||
                  ITEM_COUNT = 1
                  ITEM_NUMBERS = ''
               EndSect  // SHAPE_FILE

            EndSect  // STATION_BASED

            [GLOBAL]
               Touched = 1
               IsDataUsedInSetup = 0
               FIXED_VALUE = 1
               TYPE = 1
               [TIME_SERIES_FILE]
                  Touched = 1
                  IsDataUsedInSetup = 0
                  FILE_NAME = ||
                  ITEM_COUNT = 1
                  ITEM_NUMBERS = 1
               EndSect  // TIME_SERIES_FILE

            EndSect  // GLOBAL

         EndSect  // ET_REDUCED

         [C1]
            Touched = 1
            IsDataUsedInSetup = 1
            Type = 1
            ShapeAxisUnit = 1000
            ShapeGapFillName = ''
            InterpMethod = 2
            SearchRadius = 1000
            ShowGridData = 1
            ShowShapeData = 1
            ShapeItemUnit = 99000
            TimeVarying = 0
            DistributionType = 1
            [DFS_2D_DATA_FILE]
               Touched = 1
               IsDataUsedInSetup = 0
               FILE_NAME = ||
               ITEM_COUNT = 1
               ITEM_NUMBERS = 1
            EndSect  // DFS_2D_DATA_FILE

            [SHAPE_FILE]
               Touched = 1
               IsDataUsedInSetup = 0
               FILE_NAME = ||
               ITEM_COUNT = 1
               ITEM_NUMBERS = ''
            EndSect  // SHAPE_FILE

            [XYZ_FILE]
               Touched = 1
               IsDataUsedInSetup = 1
               FILE_NAME = ||
            EndSect  // XYZ_FILE

            [STATION_BASED]
               Touched = 1
               IsDataUsedInSetup = 1
               NO_TIMESERIES = 0
               Type = 1
               ShapeAxisUnit = 1000
               ShapeGapFillName = ''
               [DFS_2D_DATA_FILE]
                  Touched = 1
                  IsDataUsedInSetup = 0
                  FILE_NAME = ||
                  ITEM_COUNT = 1
                  ITEM_NUMBERS = 1
               EndSect  // DFS_2D_DATA_FILE

               [SHAPE_FILE]
                  Touched = 1
                  IsDataUsedInSetup = 0
                  FILE_NAME = ||
                  ITEM_COUNT = 1
                  ITEM_NUMBERS = ''
               EndSect  // SHAPE_FILE

            EndSect  // STATION_BASED

            [GLOBAL]
               Touched = 1
               IsDataUsedInSetup = 1
               FIXED_VALUE = 0.3
               TYPE = 2
               [TIME_SERIES_FILE]
                  Touched = 1
                  IsDataUsedInSetup = 1
                  FILE_NAME = |.\Model_Inputs\Time\C1.dfs0|
                  ITEM_COUNT = 1
                  ITEM_NUMBERS = 1
               EndSect  // TIME_SERIES_FILE

            EndSect  // GLOBAL

         EndSect  // C1

         [C2]
            Touched = 1
            IsDataUsedInSetup = 1
            Type = 1
            ShapeAxisUnit = 1000
            ShapeGapFillName = ''
            InterpMethod = 2
            SearchRadius = 1000
            ShowGridData = 1
            ShowShapeData = 1
            ShapeItemUnit = 99000
            TimeVarying = 0
            DistributionType = 1
            [DFS_2D_DATA_FILE]
               Touched = 1
               IsDataUsedInSetup = 0
               FILE_NAME = ||
               ITEM_COUNT = 1
               ITEM_NUMBERS = 1
            EndSect  // DFS_2D_DATA_FILE

            [SHAPE_FILE]
               Touched = 1
               IsDataUsedInSetup = 0
               FILE_NAME = ||
               ITEM_COUNT = 1
               ITEM_NUMBERS = ''
            EndSect  // SHAPE_FILE

            [XYZ_FILE]
               Touched = 1
               IsDataUsedInSetup = 1
               FILE_NAME = ||
            EndSect  // XYZ_FILE

            [STATION_BASED]
               Touched = 1
               IsDataUsedInSetup = 1
               NO_TIMESERIES = 0
               Type = 1
               ShapeAxisUnit = 1000
               ShapeGapFillName = ''
               [DFS_2D_DATA_FILE]
                  Touched = 1
                  IsDataUsedInSetup = 0
                  FILE_NAME = ||
                  ITEM_COUNT = 1
                  ITEM_NUMBERS = 1
               EndSect  // DFS_2D_DATA_FILE

               [SHAPE_FILE]
                  Touched = 1
                  IsDataUsedInSetup = 0
                  FILE_NAME = ||
                  ITEM_COUNT = 1
                  ITEM_NUMBERS = ''
               EndSect  // SHAPE_FILE

            EndSect  // STATION_BASED

            [GLOBAL]
               Touched = 1
               IsDataUsedInSetup = 1
               FIXED_VALUE = __lu_C2_FixedValue__
               TYPE = 1
               [TIME_SERIES_FILE]
                  Touched = 1
                  IsDataUsedInSetup = 0
                  FILE_NAME = ||
                  ITEM_COUNT = 1
                  ITEM_NUMBERS = 1
               EndSect  // TIME_SERIES_FILE

            EndSect  // GLOBAL

         EndSect  // C2

         [C3]
            Touched = 1
            IsDataUsedInSetup = 1
            Type = 1
            ShapeAxisUnit = 1000
            ShapeGapFillName = ''
            InterpMethod = 2
            SearchRadius = 1000
            ShowGridData = 1
            ShowShapeData = 1
            ShapeItemUnit = 4801
            TimeVarying = 0
            DistributionType = 1
            [DFS_2D_DATA_FILE]
               Touched = 1
               IsDataUsedInSetup = 0
               FILE_NAME = ||
               ITEM_COUNT = 1
               ITEM_NUMBERS = 1
            EndSect  // DFS_2D_DATA_FILE

            [SHAPE_FILE]
               Touched = 1
               IsDataUsedInSetup = 0
               FILE_NAME = ||
               ITEM_COUNT = 1
               ITEM_NUMBERS = ''
            EndSect  // SHAPE_FILE

            [XYZ_FILE]
               Touched = 1
               IsDataUsedInSetup = 1
               FILE_NAME = ||
            EndSect  // XYZ_FILE

            [STATION_BASED]
               Touched = 1
               IsDataUsedInSetup = 1
               NO_TIMESERIES = 0
               Type = 1
               ShapeAxisUnit = 1000
               ShapeGapFillName = ''
               [DFS_2D_DATA_FILE]
                  Touched = 1
                  IsDataUsedInSetup = 0
                  FILE_NAME = ||
                  ITEM_COUNT = 1
                  ITEM_NUMBERS = 1
               EndSect  // DFS_2D_DATA_FILE

               [SHAPE_FILE]
                  Touched = 1
                  IsDataUsedInSetup = 0
                  FILE_NAME = ||
                  ITEM_COUNT = 1
                  ITEM_NUMBERS = ''
               EndSect  // SHAPE_FILE

            EndSect  // STATION_BASED

            [GLOBAL]
               Touched = 1
               IsDataUsedInSetup = 1
               FIXED_VALUE = __lu_C3_FixedValue__
               TYPE = 1
               [TIME_SERIES_FILE]
                  Touched = 1
                  IsDataUsedInSetup = 0
                  FILE_NAME = ||
                  ITEM_COUNT = 1
                  ITEM_NUMBERS = 1
               EndSect  // TIME_SERIES_FILE

            EndSect  // GLOBAL

         EndSect  // C3

         [A_ROOT]
            Touched = 1
            IsDataUsedInSetup = 1
            Type = 1
            ShapeAxisUnit = 1000
            ShapeGapFillName = ''
            InterpMethod = 2
            SearchRadius = 1000
            ShowGridData = 1
            ShowShapeData = 1
            ShapeItemUnit = 5000
            TimeVarying = 0
            DistributionType = 1
            [DFS_2D_DATA_FILE]
               Touched = 1
               IsDataUsedInSetup = 0
               FILE_NAME = ||
               ITEM_COUNT = 1
               ITEM_NUMBERS = 1
            EndSect  // DFS_2D_DATA_FILE

            [SHAPE_FILE]
               Touched = 1
               IsDataUsedInSetup = 0
               FILE_NAME = ||
               ITEM_COUNT = 1
               ITEM_NUMBERS = ''
            EndSect  // SHAPE_FILE

            [XYZ_FILE]
               Touched = 1
               IsDataUsedInSetup = 1
               FILE_NAME = ||
            EndSect  // XYZ_FILE

            [STATION_BASED]
               Touched = 1
               IsDataUsedInSetup = 1
               NO_TIMESERIES = 0
               Type = 1
               ShapeAxisUnit = 1000
               ShapeGapFillName = ''
               [DFS_2D_DATA_FILE]
                  Touched = 1
                  IsDataUsedInSetup = 0
                  FILE_NAME = ||
                  ITEM_COUNT = 1
                  ITEM_NUMBERS = 1
               EndSect  // DFS_2D_DATA_FILE

               [SHAPE_FILE]
                  Touched = 1
                  IsDataUsedInSetup = 0
                  FILE_NAME = ||
                  ITEM_COUNT = 1
                  ITEM_NUMBERS = ''
               EndSect  // SHAPE_FILE

            EndSect  // STATION_BASED

            [GLOBAL]
               Touched = 1
               IsDataUsedInSetup = 1
               FIXED_VALUE = __lu_A_ROOT_FixedValue__
               TYPE = 1
               [TIME_SERIES_FILE]
                  Touched = 1
                  IsDataUsedInSetup = 0
                  FILE_NAME = ||
                  ITEM_COUNT = 1
                  ITEM_NUMBERS = 1
               EndSect  // TIME_SERIES_FILE

            EndSect  // GLOBAL

         EndSect  // A_ROOT

         [TIME_SERIES_1]
            NAME = 'Grass'
            GRIDCODEID = '1'
            GRIDCODE = 1
            FIXED_VALUE_LAI = 0
            FIXED_VALUE_RD = 0
            TYPE = 3
            [TIME_SERIES_FILE_1]
               Touched = 1
               IsDataUsedInSetup = 0
               FILE_NAME = ||
               ITEM_COUNT = 1
               ITEM_NUMBERS = 1
            EndSect  // TIME_SERIES_FILE_1

            [TIME_SERIES_FILE_2]
               Touched = 1
               IsDataUsedInSetup = 0
               FILE_NAME = ||
               ITEM_COUNT = 1
               ITEM_NUMBERS = 1
            EndSect  // TIME_SERIES_FILE_2

            [VEG_PROP_FILES]
               Touched = 1
               IsDataUsedInSetup = 0
               MzSEPfsListItemCount = 1
               RecycleMode = 1
               [VegNo_1]
                  Touched = 1
                  IsDataUsedInSetup = 0
                  STARTDATE = 2000, 1, 1
                  [VEGETATION_PROPERTY_FILE]
                     Touched = 1
                     IsDataUsedInSetup = 0
                     FILE_NAME = |.\Model Inputs\MIKE_SHE_vege.ETV|
                     STAGE_NAMES = 'Grass1'
                  EndSect  // VEGETATION_PROPERTY_FILE

               EndSect  // VegNo_1

            EndSect  // VEG_PROP_FILES

         EndSect  // TIME_SERIES_1

         [TIME_SERIES_2]
            NAME = 'Forest'
            GRIDCODEID = '2'
            GRIDCODE = 2
            FIXED_VALUE_LAI = 6
            FIXED_VALUE_RD = 800
            TYPE = 1
            [TIME_SERIES_FILE_1]
               Touched = 1
               IsDataUsedInSetup = 0
               FILE_NAME = ||
               ITEM_COUNT = 1
               ITEM_NUMBERS = 1
            EndSect  // TIME_SERIES_FILE_1

            [TIME_SERIES_FILE_2]
               Touched = 1
               IsDataUsedInSetup = 0
               FILE_NAME = ||
               ITEM_COUNT = 1
               ITEM_NUMBERS = 1
            EndSect  // TIME_SERIES_FILE_2

            [VEG_PROP_FILES]
               Touched = 1
               IsDataUsedInSetup = 0
               MzSEPfsListItemCount = 0
               RecycleMode = 0
            EndSect  // VEG_PROP_FILES

         EndSect  // TIME_SERIES_2

         [TIME_SERIES_3]
            NAME = 'Shrubs'
            GRIDCODEID = '3'
            GRIDCODE = 3
            FIXED_VALUE_LAI = 2
            FIXED_VALUE_RD = 500
            TYPE = 1
            [TIME_SERIES_FILE_1]
               Touched = 1
               IsDataUsedInSetup = 0
               FILE_NAME = ||
               ITEM_COUNT = 1
               ITEM_NUMBERS = 1
            EndSect  // TIME_SERIES_FILE_1

            [TIME_SERIES_FILE_2]
               Touched = 1
               IsDataUsedInSetup = 0
               FILE_NAME = ||
               ITEM_COUNT = 1
               ITEM_NUMBERS = 1
            EndSect  // TIME_SERIES_FILE_2

            [VEG_PROP_FILES]
               Touched = 1
               IsDataUsedInSetup = 0
               MzSEPfsListItemCount = 0
               RecycleMode = 0
            EndSect  // VEG_PROP_FILES

         EndSect  // TIME_SERIES_3

         [TIME_SERIES_4]
            NAME = 'Wetlands'
            GRIDCODEID = '4'
            GRIDCODE = 4
            FIXED_VALUE_LAI = 4
            FIXED_VALUE_RD = 500
            TYPE = 1
            [TIME_SERIES_FILE_1]
               Touched = 1
               IsDataUsedInSetup = 0
               FILE_NAME = ||
               ITEM_COUNT = 1
               ITEM_NUMBERS = 1
            EndSect  // TIME_SERIES_FILE_1

            [TIME_SERIES_FILE_2]
               Touched = 1
               IsDataUsedInSetup = 0
               FILE_NAME = ||
               ITEM_COUNT = 1
               ITEM_NUMBERS = 1
            EndSect  // TIME_SERIES_FILE_2

            [VEG_PROP_FILES]
               Touched = 1
               IsDataUsedInSetup = 0
               MzSEPfsListItemCount = 0
               RecycleMode = 0
            EndSect  // VEG_PROP_FILES

         EndSect  // TIME_SERIES_4

      EndSect  // VEGETATION

      [CommandAreas]
         Touched = 1
         IsDataUsedInSetup = 1
         DistributionType = 1
         Type = 1
         ShapeAxisUnit = 1000
         NO_AREAS = 4
         [DFS_2D_DATA_FILE]
            Touched = 1
            IsDataUsedInSetup = 1
            FILE_NAME = |.\Model Inputs\Maps\Irrigation command areas.dfs2|
            ITEM_COUNT = 1
            ITEM_NUMBERS = 1
         EndSect  // DFS_2D_DATA_FILE

         [SHAPE_FILE]
            Touched = 1
            IsDataUsedInSetup = 0
            FILE_NAME = ||
            ITEM_COUNT = 1
            ITEM_NUMBERS = ''
         EndSect  // SHAPE_FILE

         [CommandArea]
            Touched = 1
            IsDataUsedInSetup = 1
            AreaName = 'Grid code = 1'
            AreaCodeID = '1'
            AreaCode = 1
            [INDIRECT_APPLICATION_AREA]
               Touched = 1
               IsDataUsedInSetup = 0
               FixedValue = 0
               Type = 0
               ShapeAxisUnit = 1000
               ShapeGapFillName = ''
               InterpMethod = 2
               SearchRadius = 1000
               ShowGridData = 1
               ShowShapeData = 1
               ShapeItemUnit = 99013
               [DFS_2D_DATA_FILE]
                  Touched = 1
                  IsDataUsedInSetup = 0
                  FILE_NAME = ||
                  ITEM_COUNT = 1
                  ITEM_NUMBERS = 1
               EndSect  // DFS_2D_DATA_FILE

               [SHAPE_FILE]
                  Touched = 1
                  IsDataUsedInSetup = 0
                  FILE_NAME = ||
                  ITEM_COUNT = 1
                  ITEM_NUMBERS = ''
               EndSect  // SHAPE_FILE

               [XYZ_FILE]
                  Touched = 1
                  IsDataUsedInSetup = 0
                  FILE_NAME = ||
               EndSect  // XYZ_FILE

            EndSect  // INDIRECT_APPLICATION_AREA

            [Sources]
               Touched = 1
               IsDataUsedInSetup = 1
               MzSEPfsListItemCount = 1
               NumberOfSources = 1
               [Source1]
                  Touched = 1
                  IsDataUsedInSetup = 1
                  SourceTypeCode = 1
                  WaterApplication = 1
                  DirectApplication = 1
                  RiverNameRS = ''
                  UpstreamChainageRS = 0
                  DownstreamChainageRS = 0
                  CapacityRS = __lu_Irrigation_Gridcode1_CapacityRS__
                  UseThresholdDischargeRateRS = 1
                  ThresholdDischargeRateStopRS = 0
                  ThresholdDischargeRateRestartRS = 0
                  UseThresholdStageRS = 0
                  ThresholdStageStopRS = 0
                  ThresholdStageRestartRS = 0
                  WellXposSIWS = 0
                  WellYposSIWS = 0
                  ScreenTopDepthSIWS = 0
                  CapacitySIWS = 0
                  ThresholdDepthSIWS = 0
                  ScreenBottomDepthSIWS = 0
                  ScreenTopDepthSWS = 0
                  ThresholdDepthSWS = 0
                  CapacitySWS = 0
                  ScreenBottomDepthSWS = 0
                  CapacityES = 0
                  RS_6 = 0
                  RS_7 = 0
                  IrrigationLicenseIncluded = 0
                  TYPE = 2
                  [TIME_SERIES_FILE]
                     Touched = 1
                     IsDataUsedInSetup = 0
                     FILE_NAME = ||
                     ITEM_COUNT = 1
                     ITEM_NUMBERS = 1
                  EndSect  // TIME_SERIES_FILE

               EndSect  // Source1

            EndSect  // Sources

         EndSect  // CommandArea

         [CommandArea]
            Touched = 1
            IsDataUsedInSetup = 1
            AreaName = 'Grid code = 2'
            AreaCodeID = '2'
            AreaCode = 2
            [INDIRECT_APPLICATION_AREA]
               Touched = 1
               IsDataUsedInSetup = 0
               FixedValue = 0
               Type = 0
               ShapeAxisUnit = 1000
               ShapeGapFillName = ''
               InterpMethod = 2
               SearchRadius = 1000
               ShowGridData = 1
               ShowShapeData = 1
               ShapeItemUnit = 99013
               [DFS_2D_DATA_FILE]
                  Touched = 1
                  IsDataUsedInSetup = 0
                  FILE_NAME = ||
                  ITEM_COUNT = 1
                  ITEM_NUMBERS = 1
               EndSect  // DFS_2D_DATA_FILE

               [SHAPE_FILE]
                  Touched = 1
                  IsDataUsedInSetup = 0
                  FILE_NAME = ||
                  ITEM_COUNT = 1
                  ITEM_NUMBERS = ''
               EndSect  // SHAPE_FILE

               [XYZ_FILE]
                  Touched = 1
                  IsDataUsedInSetup = 0
                  FILE_NAME = ||
               EndSect  // XYZ_FILE

            EndSect  // INDIRECT_APPLICATION_AREA

            [Sources]
               Touched = 1
               IsDataUsedInSetup = 1
               MzSEPfsListItemCount = 1
               NumberOfSources = 1
               [Source1]
                  Touched = 1
                  IsDataUsedInSetup = 1
                  SourceTypeCode = 2
                  WaterApplication = 1
                  DirectApplication = 1
                  RiverNameRS = ''
                  UpstreamChainageRS = 0
                  DownstreamChainageRS = 0
                  CapacityRS = 0
                  UseThresholdDischargeRateRS = 1
                  ThresholdDischargeRateStopRS = 0
                  ThresholdDischargeRateRestartRS = 0
                  UseThresholdStageRS = 0
                  ThresholdStageStopRS = 0
                  ThresholdStageRestartRS = 0
                  WellXposSIWS = 0
                  WellYposSIWS = 0
                  ScreenTopDepthSIWS = 0
                  CapacitySIWS = __lu_Irrigation_Gridcode2_CapacitySIWS__
                  ThresholdDepthSIWS = 0
                  ScreenBottomDepthSIWS = 0
                  ScreenTopDepthSWS = 0
                  ThresholdDepthSWS = 0
                  CapacitySWS = 0
                  ScreenBottomDepthSWS = 0
                  CapacityES = 0
                  RS_6 = 0
                  RS_7 = 0
                  IrrigationLicenseIncluded = 0
                  TYPE = 2
                  [TIME_SERIES_FILE]
                     Touched = 1
                     IsDataUsedInSetup = 0
                     FILE_NAME = ||
                     ITEM_COUNT = 1
                     ITEM_NUMBERS = 1
                  EndSect  // TIME_SERIES_FILE

               EndSect  // Source1

            EndSect  // Sources

         EndSect  // CommandArea

         [CommandArea]
            Touched = 1
            IsDataUsedInSetup = 1
            AreaName = 'Grid code = 3'
            AreaCodeID = '3'
            AreaCode = 3
            [INDIRECT_APPLICATION_AREA]
               Touched = 1
               IsDataUsedInSetup = 0
               FixedValue = 0
               Type = 0
               ShapeAxisUnit = 1000
               ShapeGapFillName = ''
               InterpMethod = 2
               SearchRadius = 1000
               ShowGridData = 1
               ShowShapeData = 1
               ShapeItemUnit = 99013
               [DFS_2D_DATA_FILE]
                  Touched = 1
                  IsDataUsedInSetup = 0
                  FILE_NAME = ||
                  ITEM_COUNT = 1
                  ITEM_NUMBERS = 1
               EndSect  // DFS_2D_DATA_FILE

               [SHAPE_FILE]
                  Touched = 1
                  IsDataUsedInSetup = 0
                  FILE_NAME = ||
                  ITEM_COUNT = 1
                  ITEM_NUMBERS = ''
               EndSect  // SHAPE_FILE

               [XYZ_FILE]
                  Touched = 1
                  IsDataUsedInSetup = 0
                  FILE_NAME = ||
               EndSect  // XYZ_FILE

            EndSect  // INDIRECT_APPLICATION_AREA

            [Sources]
               Touched = 1
               IsDataUsedInSetup = 1
               MzSEPfsListItemCount = 1
               NumberOfSources = 1
               [Source1]
                  Touched = 1
                  IsDataUsedInSetup = 1
                  SourceTypeCode = 3
                  WaterApplication = 1
                  DirectApplication = 1
                  RiverNameRS = ''
                  UpstreamChainageRS = 0
                  DownstreamChainageRS = 0
                  CapacityRS = 0
                  UseThresholdDischargeRateRS = 1
                  ThresholdDischargeRateStopRS = 0
                  ThresholdDischargeRateRestartRS = 0
                  UseThresholdStageRS = 0
                  ThresholdStageStopRS = 0
                  ThresholdStageRestartRS = 0
                  WellXposSIWS = 0
                  WellYposSIWS = 0
                  ScreenTopDepthSIWS = 0
                  CapacitySIWS = 0
                  ThresholdDepthSIWS = 0
                  ScreenBottomDepthSIWS = 0
                  ScreenTopDepthSWS = 0
                  ThresholdDepthSWS = 0
                  CapacitySWS = __lu_Irrigation_Gridcode3_CapacitySWS__
                  ScreenBottomDepthSWS = 0
                  CapacityES = 0
                  RS_6 = 0
                  RS_7 = 0
                  IrrigationLicenseIncluded = 0
                  TYPE = 2
                  [TIME_SERIES_FILE]
                     Touched = 1
                     IsDataUsedInSetup = 0
                     FILE_NAME = ||
                     ITEM_COUNT = 1
                     ITEM_NUMBERS = 1
                  EndSect  // TIME_SERIES_FILE

               EndSect  // Source1

            EndSect  // Sources

         EndSect  // CommandArea

         [CommandArea]
            Touched = 1
            IsDataUsedInSetup = 1
            AreaName = 'Grid code = 4'
            AreaCodeID = '4'
            AreaCode = 4
            [INDIRECT_APPLICATION_AREA]
               Touched = 1
               IsDataUsedInSetup = 0
               FixedValue = 0
               Type = 0
               ShapeAxisUnit = 1000
               ShapeGapFillName = ''
               InterpMethod = 2
               SearchRadius = 1000
               ShowGridData = 1
               ShowShapeData = 1
               ShapeItemUnit = 99013
               [DFS_2D_DATA_FILE]
                  Touched = 1
                  IsDataUsedInSetup = 0
                  FILE_NAME = ||
                  ITEM_COUNT = 1
                  ITEM_NUMBERS = 1
               EndSect  // DFS_2D_DATA_FILE

               [SHAPE_FILE]
                  Touched = 1
                  IsDataUsedInSetup = 0
                  FILE_NAME = ||
                  ITEM_COUNT = 1
                  ITEM_NUMBERS = ''
               EndSect  // SHAPE_FILE

               [XYZ_FILE]
                  Touched = 1
                  IsDataUsedInSetup = 0
                  FILE_NAME = ||
               EndSect  // XYZ_FILE

            EndSect  // INDIRECT_APPLICATION_AREA

            [Sources]
               Touched = 1
               IsDataUsedInSetup = 1
               MzSEPfsListItemCount = 1
               NumberOfSources = 1
               [Source1]
                  Touched = 1
                  IsDataUsedInSetup = 1
                  SourceTypeCode = 4
                  WaterApplication = 1
                  DirectApplication = 1
                  RiverNameRS = ''
                  UpstreamChainageRS = 0
                  DownstreamChainageRS = 0
                  CapacityRS = 0
                  UseThresholdDischargeRateRS = 1
                  ThresholdDischargeRateStopRS = 0
                  ThresholdDischargeRateRestartRS = 0
                  UseThresholdStageRS = 0
                  ThresholdStageStopRS = 0
                  ThresholdStageRestartRS = 0
                  WellXposSIWS = 0
                  WellYposSIWS = 0
                  ScreenTopDepthSIWS = 0
                  CapacitySIWS = 0
                  ThresholdDepthSIWS = 0
                  ScreenBottomDepthSIWS = 0
                  ScreenTopDepthSWS = 0
                  ThresholdDepthSWS = 0
                  CapacitySWS = 0
                  ScreenBottomDepthSWS = 0
                  CapacityES = __lu_Irrigation_Gridcode4_CapacityES__
                  RS_6 = 0
                  RS_7 = 0
                  IrrigationLicenseIncluded = 0
                  TYPE = 2
                  [TIME_SERIES_FILE]
                     Touched = 1
                     IsDataUsedInSetup = 0
                     FILE_NAME = ||
                     ITEM_COUNT = 1
                     ITEM_NUMBERS = 1
                  EndSect  // TIME_SERIES_FILE

               EndSect  // Source1

            EndSect  // Sources

         EndSect  // CommandArea

      EndSect  // CommandAreas

      [Demands]
         Touched = 1
         IsDataUsedInSetup = 1
         DistributionType = 0
         Type = 1
         ShapeAxisUnit = 1000
         ShapeGapFillName = ''
         NO_DEMANDS = 1
         [DFS_2D_DATA_FILE]
            Touched = 1
            IsDataUsedInSetup = 0
            FILE_NAME = ||
            ITEM_COUNT = 1
            ITEM_NUMBERS = 1
         EndSect  // DFS_2D_DATA_FILE

         [SHAPE_FILE]
            Touched = 1
            IsDataUsedInSetup = 0
            FILE_NAME = ||
            ITEM_COUNT = 1
            ITEM_NUMBERS = ''
         EndSect  // SHAPE_FILE

         [Demand]
            Touched = 1
            IsDataUsedInSetup = 1
            DemandName = 'Global'
            DemandCodeID = 'Global'
            DemandCode = 0
            DemandType = 1
            DemandReferenceMoistureContent = 1
            TYPE = 1
            DemandMoistureDeficitStartConst = __lu_Demand_DemandMoistureDeficitStartConst__
            DemandMoistureDeficitEndConst = 0
            DemandConstValue = 0
            CropStressFactorConstValue = 0
            PondingDepthConstValue = 0
            [TIME_SERIES_FILE_1]
               Touched = 1
               IsDataUsedInSetup = 0
               FILE_NAME = ||
               ITEM_COUNT = 1
               ITEM_NUMBERS = 1
            EndSect  // TIME_SERIES_FILE_1

            [TIME_SERIES_FILE_2]
               Touched = 1
               IsDataUsedInSetup = 0
               FILE_NAME = ||
               ITEM_COUNT = 1
               ITEM_NUMBERS = 1
            EndSect  // TIME_SERIES_FILE_2

            [TIME_SERIES_FILE_3]
               Touched = 1
               IsDataUsedInSetup = 0
               FILE_NAME = ||
               ITEM_COUNT = 1
               ITEM_NUMBERS = 1
            EndSect  // TIME_SERIES_FILE_3

            [TIME_SERIES_FILE_4]
               Touched = 1
               IsDataUsedInSetup = 0
               FILE_NAME = ||
               ITEM_COUNT = 1
               ITEM_NUMBERS = 1
            EndSect  // TIME_SERIES_FILE_4

            [TIME_SERIES_FILE_5]
               Touched = 1
               IsDataUsedInSetup = 0
               FILE_NAME = ||
               ITEM_COUNT = 1
               ITEM_NUMBERS = 1
            EndSect  // TIME_SERIES_FILE_5

         EndSect  // Demand

      EndSect  // Demands

      [Priorities]
         Touched = 0
         IsDataUsedInSetup = 0
         DistributionType = 1
         Type = 1
         ShapeAxisUnit = 1000
         [DFS_2D_DATA_FILE]
            Touched = 1
            IsDataUsedInSetup = 0
            FILE_NAME = ||
            ITEM_COUNT = 1
            ITEM_NUMBERS = 1
         EndSect  // DFS_2D_DATA_FILE

         [SHAPE_FILE]
            Touched = 1
            IsDataUsedInSetup = 0
            FILE_NAME = ||
            ITEM_COUNT = 1
            ITEM_NUMBERS = ''
         EndSect  // SHAPE_FILE

      EndSect  // Priorities

   EndSect  // LandUse

   [River]
      Touched = 1
      IsDataUsedInSetup = 0
      Filename = |..\Karup_Mhydro\karup_v1.mhydro|
      FilenameWQ = ||
      Bathymetry = 0
      FloodCodes = 0
      [FloodCodes]
         Touched = 0
         IsDataUsedInSetup = 0
         FixedValue = 0
         Type = 0
         ShapeAxisUnit = 1000
         ShapeGapFillName = ''
         InterpMethod = 2
         SearchRadius = 1000
         ShowGridData = 1
         ShowShapeData = 1
         ShapeItemUnit = 99013
         [DFS_2D_DATA_FILE]
            Touched = 1
            IsDataUsedInSetup = 0
            FILE_NAME = ||
            ITEM_COUNT = 1
            ITEM_NUMBERS = 1
         EndSect  // DFS_2D_DATA_FILE

         [SHAPE_FILE]
            Touched = 1
            IsDataUsedInSetup = 0
            FILE_NAME = ||
            ITEM_COUNT = 1
            ITEM_NUMBERS = ''
         EndSect  // SHAPE_FILE

         [XYZ_FILE]
            Touched = 1
            IsDataUsedInSetup = 0
            FILE_NAME = ||
         EndSect  // XYZ_FILE

      EndSect  // FloodCodes

      [Bathymetry]
         Touched = 0
         IsDataUsedInSetup = 0
         FixedValue = 0
         Type = 0
         ShapeAxisUnit = 1000
         ShapeGapFillName = ''
         InterpMethod = 2
         SearchRadius = 1000
         ShowGridData = 1
         ShowShapeData = 1
         ShapeItemUnit = 1000
         RelativeToGround = 0
         [DFS_2D_DATA_FILE]
            Touched = 1
            IsDataUsedInSetup = 0
            FILE_NAME = ||
            ITEM_COUNT = 1
            ITEM_NUMBERS = 1
         EndSect  // DFS_2D_DATA_FILE

         [SHAPE_FILE]
            Touched = 1
            IsDataUsedInSetup = 0
            FILE_NAME = ||
            ITEM_COUNT = 1
            ITEM_NUMBERS = ''
         EndSect  // SHAPE_FILE

         [XYZ_FILE]
            Touched = 1
            IsDataUsedInSetup = 0
            FILE_NAME = ||
         EndSect  // XYZ_FILE

      EndSect  // Bathymetry

   EndSect  // River

   [Overland]
      Touched = 1
      IsDataUsedInSetup = 1
      SeparatedFlowAreas = 0
      OverlandGroundWaterExchangeOption = 1
      SpecifyOnlyReducedContactInPonded = 0
      ReducedPavedLeakage = 0
      Drainage = 0
      [Manning]
         Touched = 1
         IsDataUsedInSetup = 1
         FixedValue = 2
         Type = 1
         ShapeAxisUnit = 1000
         ShapeGapFillName = ''
         InterpMethod = 2
         SearchRadius = 1000
         ShowGridData = 1
         ShowShapeData = 1
         ShapeItemUnit = 3600
         TimeVarying = 0
         [DFS_2D_DATA_FILE]
            Touched = 1
            IsDataUsedInSetup = 1
            FILE_NAME = |.\Model_Inputs\Maps\Manning Number (M).dfs2|
            ITEM_COUNT = 1
            ITEM_NUMBERS = 1
         EndSect  // DFS_2D_DATA_FILE

         [SHAPE_FILE]
            Touched = 1
            IsDataUsedInSetup = 0
            FILE_NAME = ||
            ITEM_COUNT = 1
            ITEM_NUMBERS = ''
         EndSect  // SHAPE_FILE

         [XYZ_FILE]
            Touched = 1
            IsDataUsedInSetup = 1
            FILE_NAME = ||
         EndSect  // XYZ_FILE

      EndSect  // Manning

      [DetentionStorage]
         Touched = 1
         IsDataUsedInSetup = 1
         FixedValue = __ol_DetentionStorage__
         Type = 0
         ShapeAxisUnit = 1000
         ShapeGapFillName = ''
         InterpMethod = 2
         SearchRadius = 1000
         ShowGridData = 1
         ShowShapeData = 1
         ShapeItemUnit = 1002
         [DFS_2D_DATA_FILE]
            Touched = 1
            IsDataUsedInSetup = 0
            FILE_NAME = ||
            ITEM_COUNT = 1
            ITEM_NUMBERS = 1
         EndSect  // DFS_2D_DATA_FILE

         [SHAPE_FILE]
            Touched = 1
            IsDataUsedInSetup = 0
            FILE_NAME = ||
            ITEM_COUNT = 1
            ITEM_NUMBERS = ''
         EndSect  // SHAPE_FILE

         [XYZ_FILE]
            Touched = 1
            IsDataUsedInSetup = 1
            FILE_NAME = ||
         EndSect  // XYZ_FILE

      EndSect  // DetentionStorage

      [InitialWaterDepth]
         Touched = 1
         IsDataUsedInSetup = 1
         FixedValue = __ol_InitialWaterDepth__
         Type = 0
         ShapeAxisUnit = 1000
         ShapeGapFillName = ''
         InterpMethod = 2
         SearchRadius = 1000
         ShowGridData = 1
         ShowShapeData = 1
         ShapeItemUnit = 1000
         [DFS_2D_DATA_FILE]
            Touched = 1
            IsDataUsedInSetup = 0
            FILE_NAME = ||
            ITEM_COUNT = 1
            ITEM_NUMBERS = 1
         EndSect  // DFS_2D_DATA_FILE

         [SHAPE_FILE]
            Touched = 1
            IsDataUsedInSetup = 0
            FILE_NAME = ||
            ITEM_COUNT = 1
            ITEM_NUMBERS = ''
         EndSect  // SHAPE_FILE

         [XYZ_FILE]
            Touched = 1
            IsDataUsedInSetup = 1
            FILE_NAME = ||
         EndSect  // XYZ_FILE

      EndSect  // InitialWaterDepth

      [LeakageCoeff]
         Touched = 1
         IsDataUsedInSetup = 1
         FixedValue = __ol_LeakageCoeff__
         Type = 0
         ShapeAxisUnit = 1000
         ShapeGapFillName = ''
         InterpMethod = 2
         SearchRadius = 1000
         ShowGridData = 1
         ShowShapeData = 1
         ShapeItemUnit = 2605
         TimeVarying = 0
         [DFS_2D_DATA_FILE]
            Touched = 1
            IsDataUsedInSetup = 0
            FILE_NAME = ||
            ITEM_COUNT = 1
            ITEM_NUMBERS = 1
         EndSect  // DFS_2D_DATA_FILE

         [SHAPE_FILE]
            Touched = 1
            IsDataUsedInSetup = 0
            FILE_NAME = ||
            ITEM_COUNT = 1
            ITEM_NUMBERS = ''
         EndSect  // SHAPE_FILE

         [XYZ_FILE]
            Touched = 1
            IsDataUsedInSetup = 1
            FILE_NAME = ||
         EndSect  // XYZ_FILE

      EndSect  // LeakageCoeff

      [OnlyReducedContactInPonded]
         Touched = 0
         IsDataUsedInSetup = 0
         DistributionType = 1
         Type = 1
         ShapeAxisUnit = 1000
         [DFS_2D_DATA_FILE]
            Touched = 1
            IsDataUsedInSetup = 0
            FILE_NAME = ||
            ITEM_COUNT = 1
            ITEM_NUMBERS = 1
         EndSect  // DFS_2D_DATA_FILE

         [SHAPE_FILE]
            Touched = 1
            IsDataUsedInSetup = 0
            FILE_NAME = ||
            ITEM_COUNT = 1
            ITEM_NUMBERS = ''
         EndSect  // SHAPE_FILE

      EndSect  // OnlyReducedContactInPonded

      [SeparatedFlowAreas]
         Touched = 1
         IsDataUsedInSetup = 0
         FixedValue = 0
         Type = 0
         ShapeAxisUnit = 1000
         ShapeGapFillName = ''
         InterpMethod = 2
         SearchRadius = 1000
         ShowGridData = 1
         ShowShapeData = 1
         ShapeItemUnit = 99013
         [DFS_2D_DATA_FILE]
            Touched = 1
            IsDataUsedInSetup = 0
            FILE_NAME = |.\Model Inputs\Maps\Irrigation command areas.dfs2|
            ITEM_COUNT = 1
            ITEM_NUMBERS = 1
         EndSect  // DFS_2D_DATA_FILE

         [SHAPE_FILE]
            Touched = 1
            IsDataUsedInSetup = 0
            FILE_NAME = ||
            ITEM_COUNT = 1
            ITEM_NUMBERS = ''
         EndSect  // SHAPE_FILE

         [XYZ_FILE]
            Touched = 1
            IsDataUsedInSetup = 0
            FILE_NAME = ||
         EndSect  // XYZ_FILE

      EndSect  // SeparatedFlowAreas

      [InitialMass]
      EndSect  // InitialMass

      [DispersionCoeff_X]
         Touched = 0
         IsDataUsedInSetup = 0
         FixedValue = 0
         Type = 0
         ShapeAxisUnit = 1000
         ShapeGapFillName = ''
         InterpMethod = 2
         SearchRadius = 1000
         ShowGridData = 1
         ShowShapeData = 1
         ShapeItemUnit = 4702
         [DFS_2D_DATA_FILE]
            Touched = 1
            IsDataUsedInSetup = 0
            FILE_NAME = ||
            ITEM_COUNT = 1
            ITEM_NUMBERS = 1
         EndSect  // DFS_2D_DATA_FILE

         [SHAPE_FILE]
            Touched = 1
            IsDataUsedInSetup = 0
            FILE_NAME = ||
            ITEM_COUNT = 1
            ITEM_NUMBERS = ''
         EndSect  // SHAPE_FILE

         [XYZ_FILE]
            Touched = 1
            IsDataUsedInSetup = 0
            FILE_NAME = ||
         EndSect  // XYZ_FILE

      EndSect  // DispersionCoeff_X

      [DispersionCoeff_Y]
         Touched = 0
         IsDataUsedInSetup = 0
         FixedValue = 0
         Type = 0
         ShapeAxisUnit = 1000
         ShapeGapFillName = ''
         InterpMethod = 2
         SearchRadius = 1000
         ShowGridData = 1
         ShowShapeData = 1
         ShapeItemUnit = 4702
         [DFS_2D_DATA_FILE]
            Touched = 1
            IsDataUsedInSetup = 0
            FILE_NAME = ||
            ITEM_COUNT = 1
            ITEM_NUMBERS = 1
         EndSect  // DFS_2D_DATA_FILE

         [SHAPE_FILE]
            Touched = 1
            IsDataUsedInSetup = 0
            FILE_NAME = ||
            ITEM_COUNT = 1
            ITEM_NUMBERS = ''
         EndSect  // SHAPE_FILE

         [XYZ_FILE]
            Touched = 1
            IsDataUsedInSetup = 0
            FILE_NAME = ||
         EndSect  // XYZ_FILE

      EndSect  // DispersionCoeff_Y

      [Decay_Processes]
      EndSect  // Decay_Processes

      [EcolabConstants]
         Touched = 0
         IsDataUsedInSetup = 0
         MzSEPfsListItemCount = 0
         NumberOfItems = 0
      EndSect  // EcolabConstants

      [EcolabForcings]
         Touched = 0
         IsDataUsedInSetup = 0
         MzSEPfsListItemCount = 0
         NumberOfItems = 0
      EndSect  // EcolabForcings

      [PavedAreaFraction]
         Touched = 0
         IsDataUsedInSetup = 0
         FixedValue = 0
         Type = 0
         ShapeAxisUnit = 1000
         ShapeGapFillName = ''
         InterpMethod = 2
         SearchRadius = 1000
         ShowGridData = 1
         ShowShapeData = 1
         ShapeItemUnit = 99000
         TimeVarying = 0
         [DFS_2D_DATA_FILE]
            Touched = 1
            IsDataUsedInSetup = 0
            FILE_NAME = ||
            ITEM_COUNT = 1
            ITEM_NUMBERS = 1
         EndSect  // DFS_2D_DATA_FILE

         [SHAPE_FILE]
            Touched = 1
            IsDataUsedInSetup = 0
            FILE_NAME = ||
            ITEM_COUNT = 1
            ITEM_NUMBERS = ''
         EndSect  // SHAPE_FILE

         [XYZ_FILE]
            Touched = 1
            IsDataUsedInSetup = 0
            FILE_NAME = ||
         EndSect  // XYZ_FILE

      EndSect  // PavedAreaFraction

      [Drainage]
         Touched = 0
         IsDataUsedInSetup = 0
         GradientCheck = 1
         InstInflow = 0
         SpecifyMaxStorageChangeRate = 0
         DrainageOption = 1
         [MaxStorageChangeRate]
            Touched = 0
            IsDataUsedInSetup = 0
            FixedValue = 10
            Type = 0
            ShapeAxisUnit = 1000
            ShapeGapFillName = ''
            InterpMethod = 2
            SearchRadius = 1000
            ShowGridData = 1
            ShowShapeData = 1
            ShapeItemUnit = 1800
            [DFS_2D_DATA_FILE]
               Touched = 1
               IsDataUsedInSetup = 0
               FILE_NAME = ||
               ITEM_COUNT = 1
               ITEM_NUMBERS = 1
            EndSect  // DFS_2D_DATA_FILE

            [SHAPE_FILE]
               Touched = 1
               IsDataUsedInSetup = 0
               FILE_NAME = ||
               ITEM_COUNT = 1
               ITEM_NUMBERS = ''
            EndSect  // SHAPE_FILE

            [XYZ_FILE]
               Touched = 1
               IsDataUsedInSetup = 0
               FILE_NAME = ||
            EndSect  // XYZ_FILE

         EndSect  // MaxStorageChangeRate

         [DrRunoffCoefficient]
            Touched = 0
            IsDataUsedInSetup = 0
            FixedValue = 1
            Type = 0
            ShapeAxisUnit = 1000
            ShapeGapFillName = ''
            InterpMethod = 2
            SearchRadius = 1000
            ShowGridData = 1
            ShowShapeData = 1
            ShapeItemUnit = 99000
            [DFS_2D_DATA_FILE]
               Touched = 1
               IsDataUsedInSetup = 0
               FILE_NAME = ||
               ITEM_COUNT = 1
               ITEM_NUMBERS = 1
            EndSect  // DFS_2D_DATA_FILE

            [SHAPE_FILE]
               Touched = 1
               IsDataUsedInSetup = 0
               FILE_NAME = ||
               ITEM_COUNT = 1
               ITEM_NUMBERS = ''
            EndSect  // SHAPE_FILE

            [XYZ_FILE]
               Touched = 1
               IsDataUsedInSetup = 0
               FILE_NAME = ||
            EndSect  // XYZ_FILE

         EndSect  // DrRunoffCoefficient

         [TimeConstant]
            Touched = 0
            IsDataUsedInSetup = 0
            FixedValue = 0.001
            Type = 0
            ShapeAxisUnit = 1000
            ShapeGapFillName = ''
            InterpMethod = 2
            SearchRadius = 1000
            ShowGridData = 1
            ShowShapeData = 1
            ShapeItemUnit = 2605
            TimeVarying = 0
            [DFS_2D_DATA_FILE]
               Touched = 1
               IsDataUsedInSetup = 0
               FILE_NAME = ||
               ITEM_COUNT = 1
               ITEM_NUMBERS = 1
            EndSect  // DFS_2D_DATA_FILE

            [SHAPE_FILE]
               Touched = 1
               IsDataUsedInSetup = 0
               FILE_NAME = ||
               ITEM_COUNT = 1
               ITEM_NUMBERS = ''
            EndSect  // SHAPE_FILE

            [XYZ_FILE]
               Touched = 1
               IsDataUsedInSetup = 0
               FILE_NAME = ||
            EndSect  // XYZ_FILE

         EndSect  // TimeConstant

         [TimeConstantOut]
            Touched = 0
            IsDataUsedInSetup = 0
            FixedValue = 0.001
            Type = 0
            ShapeAxisUnit = 1000
            ShapeGapFillName = ''
            InterpMethod = 2
            SearchRadius = 1000
            ShowGridData = 1
            ShowShapeData = 1
            ShapeItemUnit = 2605
            [DFS_2D_DATA_FILE]
               Touched = 1
               IsDataUsedInSetup = 0
               FILE_NAME = ||
               ITEM_COUNT = 1
               ITEM_NUMBERS = 1
            EndSect  // DFS_2D_DATA_FILE

            [SHAPE_FILE]
               Touched = 1
               IsDataUsedInSetup = 0
               FILE_NAME = ||
               ITEM_COUNT = 1
               ITEM_NUMBERS = ''
            EndSect  // SHAPE_FILE

            [XYZ_FILE]
               Touched = 1
               IsDataUsedInSetup = 0
               FILE_NAME = ||
            EndSect  // XYZ_FILE

         EndSect  // TimeConstantOut

         [Level]
            Touched = 0
            IsDataUsedInSetup = 0
            FixedValue = 0
            Type = 0
            ShapeAxisUnit = 1000
            ShapeGapFillName = ''
            InterpMethod = 2
            SearchRadius = 1000
            ShowGridData = 1
            ShowShapeData = 1
            ShapeItemUnit = 1000
            RelativeToGround = 1
            TimeVarying = 0
            [DFS_2D_DATA_FILE]
               Touched = 1
               IsDataUsedInSetup = 0
               FILE_NAME = ||
               ITEM_COUNT = 1
               ITEM_NUMBERS = 1
            EndSect  // DFS_2D_DATA_FILE

            [SHAPE_FILE]
               Touched = 1
               IsDataUsedInSetup = 0
               FILE_NAME = ||
               ITEM_COUNT = 1
               ITEM_NUMBERS = ''
            EndSect  // SHAPE_FILE

            [XYZ_FILE]
               Touched = 1
               IsDataUsedInSetup = 0
               FILE_NAME = ||
            EndSect  // XYZ_FILE

         EndSect  // Level

         [DrainCode]
            Touched = 0
            IsDataUsedInSetup = 0
            FixedValue = 0
            Type = 0
            ShapeAxisUnit = 1000
            ShapeGapFillName = ''
            InterpMethod = 2
            SearchRadius = 1000
            ShowGridData = 1
            ShowShapeData = 1
            ShapeItemUnit = 99013
            [DFS_2D_DATA_FILE]
               Touched = 1
               IsDataUsedInSetup = 0
               FILE_NAME = ||
               ITEM_COUNT = 1
               ITEM_NUMBERS = 1
            EndSect  // DFS_2D_DATA_FILE

            [SHAPE_FILE]
               Touched = 1
               IsDataUsedInSetup = 0
               FILE_NAME = ||
               ITEM_COUNT = 1
               ITEM_NUMBERS = ''
            EndSect  // SHAPE_FILE

            [XYZ_FILE]
               Touched = 1
               IsDataUsedInSetup = 0
               FILE_NAME = ||
            EndSect  // XYZ_FILE

         EndSect  // DrainCode

         [DistributedOptionCode]
            Touched = 0
            IsDataUsedInSetup = 0
            FixedValue = 0
            Type = 0
            ShapeAxisUnit = 1000
            ShapeGapFillName = ''
            InterpMethod = 2
            SearchRadius = 1000
            ShowGridData = 1
            ShowShapeData = 1
            ShapeItemUnit = 99013
            [DFS_2D_DATA_FILE]
               Touched = 1
               IsDataUsedInSetup = 0
               FILE_NAME = ||
               ITEM_COUNT = 1
               ITEM_NUMBERS = 1
            EndSect  // DFS_2D_DATA_FILE

            [SHAPE_FILE]
               Touched = 1
               IsDataUsedInSetup = 0
               FILE_NAME = ||
               ITEM_COUNT = 1
               ITEM_NUMBERS = ''
            EndSect  // SHAPE_FILE

            [XYZ_FILE]
               Touched = 1
               IsDataUsedInSetup = 0
               FILE_NAME = ||
            EndSect  // XYZ_FILE

         EndSect  // DistributedOptionCode

      EndSect  // Drainage

   EndSect  // Overland

   [OverlandSubcatchment]
      Touched = 0
      IsDataUsedInSetup = 0
      DistributionType = 1
      Type = 1
      ShapeAxisUnit = 1000
      ShapeGapFillName = ''
      NO_ZONES = 0
      [DFS_2D_DATA_FILE]
         Touched = 0
         IsDataUsedInSetup = 0
         FILE_NAME = ||
         ITEM_COUNT = 1
         ITEM_NUMBERS = 1
      EndSect  // DFS_2D_DATA_FILE

      [SHAPE_FILE]
         Touched = 0
         IsDataUsedInSetup = 0
         FILE_NAME = ||
         ITEM_COUNT = 1
         ITEM_NUMBERS = ''
      EndSect  // SHAPE_FILE

   EndSect  // OverlandSubcatchment

   [Unsatzone]
      Touched = 1
      IsDataUsedInSetup = 1
      Bypass = 1
      ClassificationType = 2
      InitialCondition = 3
      Max_MP_Infiltration_Per_TimeStep = 1
      Max_MP_Node_Exchange_Per_TimeStep = 0.5
      Max_MP_Column_Exchange_Per_TimeStep = 2
      USE_Green_And_Ampt = 0
      [UZSoilProfiles]
         Touched = 1
         IsDataUsedInSetup = 1
         DistributionType = 1
         Type = 1
         ShapeAxisUnit = 1000
         ShapeGapFillName = ''
         NO_SOIL_PROFILES = 3
         [DFS_2D_DATA_FILE]
            Touched = 1
            IsDataUsedInSetup = 1
            FILE_NAME = |.\Model inputs\Maps\soil.dfs2|
            ITEM_COUNT = 1
            ITEM_NUMBERS = 1
         EndSect  // DFS_2D_DATA_FILE

         [SHAPE_FILE]
            Touched = 1
            IsDataUsedInSetup = 0
            FILE_NAME = ||
            ITEM_COUNT = 1
            ITEM_NUMBERS = ''
         EndSect  // SHAPE_FILE

         [UZSoilProfileProp]
            Touched = 1
            IsDataUsedInSetup = 1
            ProfileSecNumber = 1
            GridCode = '2'
            SoilProfile_ID = 'Silt loam'
            BYP = __uz_Siltloam_BYP__
            THR1 = __uz_Siltloam_Thr1__
            THR2 = __uz_Siltloam_Thr2__
            [CUZSoilProfilePropLayerListPfs]
               Touched = 1
               IsDataUsedInSetup = 1
               MzSEPfsListItemCount = 1
               NumberOfLayers = 1
               [UZSoilProfilePropLayerItem1]
                  Touched = 1
                  IsDataUsedInSetup = 1
                  Depth = 45
                  SoilID = 'Silt Loam'
                  DataBase = |.\Model inputs\UNSODA basic soil classes.uzs|
               EndSect  // UZSoilProfilePropLayerItem1

            EndSect  // CUZSoilProfilePropLayerListPfs

            [CUZSoilProfilePropDiscrListPfs]
               Touched = 1
               IsDataUsedInSetup = 1
               MzSEPfsListItemCount = 4
               NumberOfDiscr = 4
               [UZSoilProfilePropDiscr1]
                  Touched = 1
                  IsDataUsedInSetup = 1
                  CellHeight = 0.25
                  NoCells = 12
                  Dispersivity = 0.0
               EndSect  // UZSoilProfilePropDiscr1

               [UZSoilProfilePropDiscr2]
                  Touched = 1
                  IsDataUsedInSetup = 1
                  CellHeight = 0.5
                  NoCells = 4
                  Dispersivity = 0.0
               EndSect  // UZSoilProfilePropDiscr2

               [UZSoilProfilePropDiscr3]
                  Touched = 1
                  IsDataUsedInSetup = 1
                  CellHeight = 1
                  NoCells = 8
                  Dispersivity = 0.0
               EndSect  // UZSoilProfilePropDiscr3

               [UZSoilProfilePropDiscr4]
                  Touched = 1
                  IsDataUsedInSetup = 1
                  CellHeight = 2
                  NoCells = 16
                  Dispersivity = 0.0
               EndSect  // UZSoilProfilePropDiscr4

            EndSect  // CUZSoilProfilePropDiscrListPfs

         EndSect  // UZSoilProfileProp

         [UZSoilProfileProp]
            Touched = 1
            IsDataUsedInSetup = 1
            ProfileSecNumber = 2
            GridCode = '3'
            SoilProfile_ID = 'Loamy sand'
            BYP = __uz_Loamysand_BYP__
            THR1 = __uz_Loamysand_Thr1__
            THR2 = __uz_Loamysand_Thr2__
            [CUZSoilProfilePropLayerListPfs]
               Touched = 1
               IsDataUsedInSetup = 1
               MzSEPfsListItemCount = 1
               NumberOfLayers = 1
               [UZSoilProfilePropLayerItem1]
                  Touched = 1
                  IsDataUsedInSetup = 1
                  Depth = 45
                  SoilID = 'Loamy Sand'
                  DataBase = |.\Model inputs\UNSODA basic soil classes.uzs|
               EndSect  // UZSoilProfilePropLayerItem1

            EndSect  // CUZSoilProfilePropLayerListPfs

            [CUZSoilProfilePropDiscrListPfs]
               Touched = 1
               IsDataUsedInSetup = 1
               MzSEPfsListItemCount = 4
               NumberOfDiscr = 4
               [UZSoilProfilePropDiscr1]
                  Touched = 1
                  IsDataUsedInSetup = 1
                  CellHeight = 0.25
                  NoCells = 12
                  Dispersivity = 0.0
               EndSect  // UZSoilProfilePropDiscr1

               [UZSoilProfilePropDiscr2]
                  Touched = 1
                  IsDataUsedInSetup = 1
                  CellHeight = 0.5
                  NoCells = 4
                  Dispersivity = 0.0
               EndSect  // UZSoilProfilePropDiscr2

               [UZSoilProfilePropDiscr3]
                  Touched = 1
                  IsDataUsedInSetup = 1
                  CellHeight = 1
                  NoCells = 8
                  Dispersivity = 0.0
               EndSect  // UZSoilProfilePropDiscr3

               [UZSoilProfilePropDiscr4]
                  Touched = 1
                  IsDataUsedInSetup = 1
                  CellHeight = 2
                  NoCells = 16
                  Dispersivity = 0.0
               EndSect  // UZSoilProfilePropDiscr4

            EndSect  // CUZSoilProfilePropDiscrListPfs

         EndSect  // UZSoilProfileProp

         [UZSoilProfileProp]
            Touched = 1
            IsDataUsedInSetup = 1
            ProfileSecNumber = 3
            GridCode = '4'
            SoilProfile_ID = 'Loam'
            BYP = __uz_Loam_BYP__
            THR1 = __uz_Loam_Thr1__
            THR2 = __uz_Loam_Thr2__
            [CUZSoilProfilePropLayerListPfs]
               Touched = 1
               IsDataUsedInSetup = 1
               MzSEPfsListItemCount = 1
               NumberOfLayers = 1
               [UZSoilProfilePropLayerItem1]
                  Touched = 1
                  IsDataUsedInSetup = 1
                  Depth = 45
                  SoilID = 'Loam'
                  DataBase = |.\Model inputs\UNSODA basic soil classes.uzs|
               EndSect  // UZSoilProfilePropLayerItem1

            EndSect  // CUZSoilProfilePropLayerListPfs

            [CUZSoilProfilePropDiscrListPfs]
               Touched = 1
               IsDataUsedInSetup = 1
               MzSEPfsListItemCount = 4
               NumberOfDiscr = 4
               [UZSoilProfilePropDiscr1]
                  Touched = 1
                  IsDataUsedInSetup = 1
                  CellHeight = 0.25
                  NoCells = 12
                  Dispersivity = 0.0
               EndSect  // UZSoilProfilePropDiscr1

               [UZSoilProfilePropDiscr2]
                  Touched = 1
                  IsDataUsedInSetup = 1
                  CellHeight = 0.5
                  NoCells = 4
                  Dispersivity = 0.0
               EndSect  // UZSoilProfilePropDiscr2

               [UZSoilProfilePropDiscr3]
                  Touched = 1
                  IsDataUsedInSetup = 1
                  CellHeight = 1
                  NoCells = 8
                  Dispersivity = 0.0
               EndSect  // UZSoilProfilePropDiscr3

               [UZSoilProfilePropDiscr4]
                  Touched = 1
                  IsDataUsedInSetup = 1
                  CellHeight = 2
                  NoCells = 16
                  Dispersivity = 0.0
               EndSect  // UZSoilProfilePropDiscr4

            EndSect  // CUZSoilProfilePropDiscrListPfs

         EndSect  // UZSoilProfileProp

      EndSect  // UZSoilProfiles

      [TwoLayerUZSoilProperties]
         Touched = 1
         IsDataUsedInSetup = 0
         DistributionType = 1
         Type = 1
         ShapeAxisUnit = 1000
         ShapeGapFillName = ''
         NO_SOIL_TYPES = 3
         [DFS_2D_DATA_FILE]
            Touched = 1
            IsDataUsedInSetup = 0
            FILE_NAME = |.\Model inputs\Maps\soil.dfs2|
            ITEM_COUNT = 1
            ITEM_NUMBERS = 1
         EndSect  // DFS_2D_DATA_FILE

         [SHAPE_FILE]
            Touched = 1
            IsDataUsedInSetup = 0
            FILE_NAME = ||
            ITEM_COUNT = 1
            ITEM_NUMBERS = ''
         EndSect  // SHAPE_FILE

         [UZSoilProp]
            Touched = 1
            IsDataUsedInSetup = 0
            SoilSecNumber = 1
            GridCode = '2'
            Soil_ID = 'Grid code = 2'
            ThetaS = 0.3
            ThetaFC = 0.1
            ThetaWP = 0.05
            Kint = 1e-05
            BYP = 0.3
            THR1 = 0.1
            THR2 = 0.05
            SoilSuction = -0.2
         EndSect  // UZSoilProp

         [UZSoilProp]
            Touched = 1
            IsDataUsedInSetup = 0
            SoilSecNumber = 2
            GridCode = '3'
            Soil_ID = 'Grid code = 3'
            ThetaS = 0.3
            ThetaFC = 0.1
            ThetaWP = 0.05
            Kint = 1e-05
            BYP = 0.3
            THR1 = 0.1
            THR2 = 0.05
            SoilSuction = -0.2
         EndSect  // UZSoilProp

         [UZSoilProp]
            Touched = 1
            IsDataUsedInSetup = 0
            SoilSecNumber = 3
            GridCode = '4'
            Soil_ID = 'Grid code = 4'
            ThetaS = 0.3
            ThetaFC = 0.1
            ThetaWP = 0.05
            Kint = 1e-05
            BYP = 0.3
            THR1 = 0.1
            THR2 = 0.05
            SoilSuction = -0.2
         EndSect  // UZSoilProp

      EndSect  // TwoLayerUZSoilProperties

      [ETSurfaceDepth]
         Touched = 0
         IsDataUsedInSetup = 0
         FixedValue = 0.1
         Type = 0
         ShapeAxisUnit = 1000
         ShapeGapFillName = ''
         InterpMethod = 2
         SearchRadius = 1000
         ShowGridData = 1
         ShowShapeData = 1
         ShapeItemUnit = 1000
         [DFS_2D_DATA_FILE]
            Touched = 1
            IsDataUsedInSetup = 0
            FILE_NAME = ||
            ITEM_COUNT = 1
            ITEM_NUMBERS = 1
         EndSect  // DFS_2D_DATA_FILE

         [SHAPE_FILE]
            Touched = 1
            IsDataUsedInSetup = 0
            FILE_NAME = ||
            ITEM_COUNT = 1
            ITEM_NUMBERS = ''
         EndSect  // SHAPE_FILE

         [XYZ_FILE]
            Touched = 1
            IsDataUsedInSetup = 0
            FILE_NAME = ||
         EndSect  // XYZ_FILE

      EndSect  // ETSurfaceDepth

      [Macropore_Transfer_Coeff]
      EndSect  // Macropore_Transfer_Coeff

      [Decay_Processes]
      EndSect  // Decay_Processes

      [Sorption_Processes]
      EndSect  // Sorption_Processes

      [EcolabConstants]
         Touched = 0
         IsDataUsedInSetup = 0
         MzSEPfsListItemCount = 0
         NumberOfItems = 0
      EndSect  // EcolabConstants

      [EcolabForcings]
         Touched = 0
         IsDataUsedInSetup = 0
         MzSEPfsListItemCount = 0
         NumberOfItems = 0
      EndSect  // EcolabForcings

      [UZGroundWaterDepthList]
         Touched = 0
         IsDataUsedInSetup = 0
         MzSEPfsListItemCount = 1
         NumberOfLayers = 1
         GroundWaterTableOption = 0
         [UZGroundWaterTable]
            Touched = 0
            IsDataUsedInSetup = 0
            FixedValue = 0
            Type = 0
            ShapeAxisUnit = 1000
            ShapeGapFillName = ''
            InterpMethod = 2
            SearchRadius = 1000
            ShowGridData = 1
            ShowShapeData = 1
            ShapeItemUnit = 1000
            RelativeToGround = 0
            [DFS_2D_DATA_FILE]
               Touched = 1
               IsDataUsedInSetup = 0
               FILE_NAME = ||
               ITEM_COUNT = 1
               ITEM_NUMBERS = 1
            EndSect  // DFS_2D_DATA_FILE

            [SHAPE_FILE]
               Touched = 1
               IsDataUsedInSetup = 0
               FILE_NAME = ||
               ITEM_COUNT = 1
               ITEM_NUMBERS = ''
            EndSect  // SHAPE_FILE

            [XYZ_FILE]
               Touched = 1
               IsDataUsedInSetup = 0
               FILE_NAME = ||
            EndSect  // XYZ_FILE

         EndSect  // UZGroundWaterTable

         [UZGroundWaterDepth1]
            Touched = 1
            IsDataUsedInSetup = 0
            Depth = 1
         EndSect  // UZGroundWaterDepth1

      EndSect  // UZGroundWaterDepthList

      [Initial_Conditions]
         [Initial_Matrix_Potential]
            Touched = 1
            IsDataUsedInSetup = 0
            MzSEPfsListItemCount = 0
            DistributionType = 0
            Distribution_UniformValue = 0.0
            NumberOfLayers = 0
         EndSect  // Initial_Matrix_Potential

         [Initial_Water_Content]
            Touched = 0
            IsDataUsedInSetup = 0
            MzSEPfsListItemCount = 0
            DistributionType = 0
            Distribution_UniformValue = 0.0
            NumberOfLayers = 0
         EndSect  // Initial_Water_Content

         [Initial_Soil_Temperature]
            Touched = 0
            IsDataUsedInSetup = 0
            MzSEPfsListItemCount = 0
            DistributionType = 0
            Distribution_UniformValue = 0.0
            NumberOfLayers = 0
         EndSect  // Initial_Soil_Temperature

         [Initial_Concentration]
         EndSect  // Initial_Concentration

      EndSect  // Initial_Conditions

      [SpecifiedClassification]
         Touched = 0
         IsDataUsedInSetup = 0
         FixedValue = 0
         Type = 0
         ShapeAxisUnit = 1000
         ShapeGapFillName = ''
         InterpMethod = 2
         SearchRadius = 1000
         ShowGridData = 1
         ShowShapeData = 1
         ShapeItemUnit = 99013
         [DFS_2D_DATA_FILE]
            Touched = 1
            IsDataUsedInSetup = 0
            FILE_NAME = ||
            ITEM_COUNT = 1
            ITEM_NUMBERS = 1
         EndSect  // DFS_2D_DATA_FILE

         [SHAPE_FILE]
            Touched = 1
            IsDataUsedInSetup = 0
            FILE_NAME = ||
            ITEM_COUNT = 1
            ITEM_NUMBERS = ''
         EndSect  // SHAPE_FILE

         [XYZ_FILE]
            Touched = 1
            IsDataUsedInSetup = 0
            FILE_NAME = ||
         EndSect  // XYZ_FILE

      EndSect  // SpecifiedClassification

      [PartialAutomatic]
         Touched = 0
         IsDataUsedInSetup = 0
         FixedValue = 0
         Type = 0
         ShapeAxisUnit = 1000
         ShapeGapFillName = ''
         InterpMethod = 2
         SearchRadius = 1000
         ShowGridData = 1
         ShowShapeData = 1
         ShapeItemUnit = 99013
         [DFS_2D_DATA_FILE]
            Touched = 1
            IsDataUsedInSetup = 0
            FILE_NAME = ||
            ITEM_COUNT = 1
            ITEM_NUMBERS = 1
         EndSect  // DFS_2D_DATA_FILE

         [SHAPE_FILE]
            Touched = 1
            IsDataUsedInSetup = 0
            FILE_NAME = ||
            ITEM_COUNT = 1
            ITEM_NUMBERS = ''
         EndSect  // SHAPE_FILE

         [XYZ_FILE]
            Touched = 1
            IsDataUsedInSetup = 0
            FILE_NAME = ||
         EndSect  // XYZ_FILE

      EndSect  // PartialAutomatic

   EndSect  // Unsatzone

   [SaturatedZone]
      Touched = 1
      IsDataUsedInSetup = 1
      DispersionOption = 0
      Drainage = 1
      TypeOfGeoParaDistribution = 1
      TypeOfVerDiscr = 0
      Wells = 1
      SYieldLayer1FromUZ = 1
      MinimumLayerThickness = 0.5
      id = 2
      Threshold = 0
      MassTransferToImmobileWater = 0
      MinTopLayerThicknessRelInitHead = 0
      [GeoUnitsSZProperties]
         Touched = 1
         IsDataUsedInSetup = 1
         MzSEPfsListItemCount = 2
         NumberOfGeoUnits = 2
         [GeoUnit_1]
            Touched = 1
            IsDataUsedInSetup = 1
            SoilName = 'Hest'
            SoilCode = 1
            HorConduc = __sz_GeoUnit_1_Hest_HorConduc__
            VerConduc = __sz_GeoUnit_1_Hest_VerConduc__
            SpecYield = __sz_GeoUnit_1_Hest_SpecYield__
            StorageCoef = __sz_GeoUnit_1_Hest_StorageCoef__
            Porosity = 0.2
            MatrixPorosity = 0.05
            BulkDensity = 1700
            LHH = 0
            THH = 0
            TVH = 0
            LVV = 0
            THV = 0
         EndSect  // GeoUnit_1

         [GeoUnit_2]
            Touched = 1
            IsDataUsedInSetup = 1
            SoilName = 'Hest 99'
            SoilCode = 2
            HorConduc = __sz_GeoUnit_2_Hest99_HorConduc__
            VerConduc = __sz_GeoUnit_2_Hest99_VerConduc__
            SpecYield = __sz_GeoUnit_2_Hest99_SpecYield__
            StorageCoef = __sz_GeoUnit_2_Hest99_StorageCoef__
            Porosity = 0.2
            MatrixPorosity = 0.05
            BulkDensity = 1700
            LHH = 0
            THH = 0
            TVH = 0
            LVV = 0
            THV = 0
         EndSect  // GeoUnit_2

      EndSect  // GeoUnitsSZProperties

      [GeoLayersSZ]
         Touched = 1
         IsDataUsedInSetup = 1
         MzSEPfsListItemCount = 1
         NumberOfLayers = 1
         [Layer_1]
            Name = 'Aquifer'
            id = 1
            [LowerLevel]
               Touched = 1
               IsDataUsedInSetup = 1
               FixedValue = 0
               Type = 1
               ShapeAxisUnit = 1000
               ShapeGapFillName = ''
               InterpMethod = 0
               SearchRadius = 1000
               ShowGridData = 1
               ShowShapeData = 0
               ShapeItemUnit = 1000
               RelativeToGround = 0
               [DFS_2D_DATA_FILE]
                  Touched = 1
                  IsDataUsedInSetup = 1
                  FILE_NAME = |.\Model Inputs\Maps\layer1.dfs2|
                  ITEM_COUNT = 1
                  ITEM_NUMBERS = 1
               EndSect  // DFS_2D_DATA_FILE

               [SHAPE_FILE]
                  Touched = 1
                  IsDataUsedInSetup = 0
                  FILE_NAME = |.\Model inputs\GIS data\layer1.shp|
                  ITEM_COUNT = 1
                  ITEM_NUMBERS = 'Layer1'
               EndSect  // SHAPE_FILE

               [XYZ_FILE]
                  Touched = 1
                  IsDataUsedInSetup = 1
                  FILE_NAME = ||
               EndSect  // XYZ_FILE

            EndSect  // LowerLevel

            [GeoUnit]
               Touched = 1
               IsDataUsedInSetup = 1
               FixedValue = 0
               Type = 1
               ShapeAxisUnit = 1000
               ShapeGapFillName = ''
               InterpMethod = 2
               SearchRadius = 1000
               ShowGridData = 1
               ShowShapeData = 1
               ShapeItemUnit = 99013
               [DFS_2D_DATA_FILE]
                  Touched = 1
                  IsDataUsedInSetup = 1
                  FILE_NAME = |.\Geological Unit Distribution.dfs2|
                  ITEM_COUNT = 1
                  ITEM_NUMBERS = 1
               EndSect  // DFS_2D_DATA_FILE

               [SHAPE_FILE]
                  Touched = 1
                  IsDataUsedInSetup = 0
                  FILE_NAME = ||
                  ITEM_COUNT = 1
                  ITEM_NUMBERS = ''
               EndSect  // SHAPE_FILE

               [XYZ_FILE]
                  Touched = 1
                  IsDataUsedInSetup = 1
                  FILE_NAME = ||
               EndSect  // XYZ_FILE

            EndSect  // GeoUnit

            [HorHydrCon]
               Touched = 1
               IsDataUsedInSetup = 0
               FixedValue = 0.00052
               Type = 1
               ShapeAxisUnit = 1000
               ShapeGapFillName = ''
               InterpMethod = 2
               SearchRadius = 1000
               ShowGridData = 1
               ShowShapeData = 1
               ShapeItemUnit = 2000
               [DFS_2D_DATA_FILE]
                  Touched = 1
                  IsDataUsedInSetup = 0
                  FILE_NAME = |.\Model_Inputs\Horizontal Hydraulic Conductivity.dfs2|
                  ITEM_COUNT = 1
                  ITEM_NUMBERS = 1
               EndSect  // DFS_2D_DATA_FILE

               [SHAPE_FILE]
                  Touched = 1
                  IsDataUsedInSetup = 0
                  FILE_NAME = ||
                  ITEM_COUNT = 1
                  ITEM_NUMBERS = ''
               EndSect  // SHAPE_FILE

               [XYZ_FILE]
                  Touched = 1
                  IsDataUsedInSetup = 0
                  FILE_NAME = ||
               EndSect  // XYZ_FILE

            EndSect  // HorHydrCon

            [VerHydrCon]
               Touched = 1
               IsDataUsedInSetup = 0
               FixedValue = 9.3e-05
               Type = 0
               ShapeAxisUnit = 1000
               ShapeGapFillName = ''
               InterpMethod = 2
               SearchRadius = 1000
               ShowGridData = 1
               ShowShapeData = 1
               ShapeItemUnit = 2000
               [DFS_2D_DATA_FILE]
                  Touched = 1
                  IsDataUsedInSetup = 0
                  FILE_NAME = ||
                  ITEM_COUNT = 1
                  ITEM_NUMBERS = 1
               EndSect  // DFS_2D_DATA_FILE

               [SHAPE_FILE]
                  Touched = 1
                  IsDataUsedInSetup = 0
                  FILE_NAME = ||
                  ITEM_COUNT = 1
                  ITEM_NUMBERS = ''
               EndSect  // SHAPE_FILE

               [XYZ_FILE]
                  Touched = 1
                  IsDataUsedInSetup = 0
                  FILE_NAME = ||
               EndSect  // XYZ_FILE

            EndSect  // VerHydrCon

            [SpecificYield]
               Touched = 1
               IsDataUsedInSetup = 0
               FixedValue = 0.2
               Type = 0
               ShapeAxisUnit = 1000
               ShapeGapFillName = ''
               InterpMethod = 2
               SearchRadius = 1000
               ShowGridData = 1
               ShowShapeData = 1
               ShapeItemUnit = 99000
               [DFS_2D_DATA_FILE]
                  Touched = 1
                  IsDataUsedInSetup = 0
                  FILE_NAME = ||
                  ITEM_COUNT = 1
                  ITEM_NUMBERS = 1
               EndSect  // DFS_2D_DATA_FILE

               [SHAPE_FILE]
                  Touched = 1
                  IsDataUsedInSetup = 0
                  FILE_NAME = ||
                  ITEM_COUNT = 1
                  ITEM_NUMBERS = ''
               EndSect  // SHAPE_FILE

               [XYZ_FILE]
                  Touched = 1
                  IsDataUsedInSetup = 0
                  FILE_NAME = ||
               EndSect  // XYZ_FILE

            EndSect  // SpecificYield

            [StorageCoef]
               Touched = 1
               IsDataUsedInSetup = 0
               FixedValue = 0.0001
               Type = 0
               ShapeAxisUnit = 1000
               ShapeGapFillName = ''
               InterpMethod = 2
               SearchRadius = 1000
               ShowGridData = 1
               ShowShapeData = 1
               ShapeItemUnit = 5000
               [DFS_2D_DATA_FILE]
                  Touched = 1
                  IsDataUsedInSetup = 0
                  FILE_NAME = ||
                  ITEM_COUNT = 1
                  ITEM_NUMBERS = 1
               EndSect  // DFS_2D_DATA_FILE

               [SHAPE_FILE]
                  Touched = 1
                  IsDataUsedInSetup = 0
                  FILE_NAME = ||
                  ITEM_COUNT = 1
                  ITEM_NUMBERS = ''
               EndSect  // SHAPE_FILE

               [XYZ_FILE]
                  Touched = 1
                  IsDataUsedInSetup = 0
                  FILE_NAME = ||
               EndSect  // XYZ_FILE

            EndSect  // StorageCoef

            [Porosity]
               Touched = 0
               IsDataUsedInSetup = 0
               FixedValue = 0.2
               Type = 0
               ShapeAxisUnit = 1000
               ShapeGapFillName = ''
               InterpMethod = 2
               SearchRadius = 1000
               ShowGridData = 1
               ShowShapeData = 1
               ShapeItemUnit = 99000
               [DFS_2D_DATA_FILE]
                  Touched = 1
                  IsDataUsedInSetup = 0
                  FILE_NAME = ||
                  ITEM_COUNT = 1
                  ITEM_NUMBERS = 1
               EndSect  // DFS_2D_DATA_FILE

               [SHAPE_FILE]
                  Touched = 1
                  IsDataUsedInSetup = 0
                  FILE_NAME = ||
                  ITEM_COUNT = 1
                  ITEM_NUMBERS = ''
               EndSect  // SHAPE_FILE

               [XYZ_FILE]
                  Touched = 1
                  IsDataUsedInSetup = 0
                  FILE_NAME = ||
               EndSect  // XYZ_FILE

            EndSect  // Porosity

            [MatrixPorosity]
               Touched = 0
               IsDataUsedInSetup = 0
               FixedValue = 0.05
               Type = 0
               ShapeAxisUnit = 1000
               ShapeGapFillName = ''
               InterpMethod = 2
               SearchRadius = 1000
               ShowGridData = 1
               ShowShapeData = 1
               ShapeItemUnit = 99000
               [DFS_2D_DATA_FILE]
                  Touched = 1
                  IsDataUsedInSetup = 0
                  FILE_NAME = ||
                  ITEM_COUNT = 1
                  ITEM_NUMBERS = 1
               EndSect  // DFS_2D_DATA_FILE

               [SHAPE_FILE]
                  Touched = 1
                  IsDataUsedInSetup = 0
                  FILE_NAME = ||
                  ITEM_COUNT = 1
                  ITEM_NUMBERS = ''
               EndSect  // SHAPE_FILE

               [XYZ_FILE]
                  Touched = 1
                  IsDataUsedInSetup = 0
                  FILE_NAME = ||
               EndSect  // XYZ_FILE

            EndSect  // MatrixPorosity

            [BulkDensity]
               Touched = 0
               IsDataUsedInSetup = 0
               FixedValue = 1700
               Type = 0
               ShapeAxisUnit = 1000
               ShapeGapFillName = ''
               InterpMethod = 2
               SearchRadius = 1000
               ShowGridData = 1
               ShowShapeData = 1
               ShapeItemUnit = 2200
               [DFS_2D_DATA_FILE]
                  Touched = 1
                  IsDataUsedInSetup = 0
                  FILE_NAME = ||
                  ITEM_COUNT = 1
                  ITEM_NUMBERS = 1
               EndSect  // DFS_2D_DATA_FILE

               [SHAPE_FILE]
                  Touched = 1
                  IsDataUsedInSetup = 0
                  FILE_NAME = ||
                  ITEM_COUNT = 1
                  ITEM_NUMBERS = ''
               EndSect  // SHAPE_FILE

               [XYZ_FILE]
                  Touched = 1
                  IsDataUsedInSetup = 0
                  FILE_NAME = ||
               EndSect  // XYZ_FILE

            EndSect  // BulkDensity

            [LHHDispCoeff]
               Touched = 0
               IsDataUsedInSetup = 0
               FixedValue = 0
               Type = 0
               ShapeAxisUnit = 1000
               ShapeGapFillName = ''
               InterpMethod = 2
               SearchRadius = 1000
               ShowGridData = 1
               ShowShapeData = 1
               ShapeItemUnit = 1000
               [DFS_2D_DATA_FILE]
                  Touched = 1
                  IsDataUsedInSetup = 0
                  FILE_NAME = ||
                  ITEM_COUNT = 1
                  ITEM_NUMBERS = 1
               EndSect  // DFS_2D_DATA_FILE

               [SHAPE_FILE]
                  Touched = 1
                  IsDataUsedInSetup = 0
                  FILE_NAME = ||
                  ITEM_COUNT = 1
                  ITEM_NUMBERS = ''
               EndSect  // SHAPE_FILE

               [XYZ_FILE]
                  Touched = 1
                  IsDataUsedInSetup = 0
                  FILE_NAME = ||
               EndSect  // XYZ_FILE

            EndSect  // LHHDispCoeff

            [THHDispCoeff]
               Touched = 0
               IsDataUsedInSetup = 0
               FixedValue = 0
               Type = 0
               ShapeAxisUnit = 1000
               ShapeGapFillName = ''
               InterpMethod = 2
               SearchRadius = 1000
               ShowGridData = 1
               ShowShapeData = 1
               ShapeItemUnit = 1000
               [DFS_2D_DATA_FILE]
                  Touched = 1
                  IsDataUsedInSetup = 0
                  FILE_NAME = ||
                  ITEM_COUNT = 1
                  ITEM_NUMBERS = 1
               EndSect  // DFS_2D_DATA_FILE

               [SHAPE_FILE]
                  Touched = 1
                  IsDataUsedInSetup = 0
                  FILE_NAME = ||
                  ITEM_COUNT = 1
                  ITEM_NUMBERS = ''
               EndSect  // SHAPE_FILE

               [XYZ_FILE]
                  Touched = 1
                  IsDataUsedInSetup = 0
                  FILE_NAME = ||
               EndSect  // XYZ_FILE

            EndSect  // THHDispCoeff

            [TVHDispCoeff]
               Touched = 0
               IsDataUsedInSetup = 0
               FixedValue = 0
               Type = 0
               ShapeAxisUnit = 1000
               ShapeGapFillName = ''
               InterpMethod = 2
               SearchRadius = 1000
               ShowGridData = 1
               ShowShapeData = 1
               ShapeItemUnit = 1000
               [DFS_2D_DATA_FILE]
                  Touched = 1
                  IsDataUsedInSetup = 0
                  FILE_NAME = ||
                  ITEM_COUNT = 1
                  ITEM_NUMBERS = 1
               EndSect  // DFS_2D_DATA_FILE

               [SHAPE_FILE]
                  Touched = 1
                  IsDataUsedInSetup = 0
                  FILE_NAME = ||
                  ITEM_COUNT = 1
                  ITEM_NUMBERS = ''
               EndSect  // SHAPE_FILE

               [XYZ_FILE]
                  Touched = 1
                  IsDataUsedInSetup = 0
                  FILE_NAME = ||
               EndSect  // XYZ_FILE

            EndSect  // TVHDispCoeff

            [LVVDispCoeff]
               Touched = 0
               IsDataUsedInSetup = 0
               FixedValue = 0
               Type = 0
               ShapeAxisUnit = 1000
               ShapeGapFillName = ''
               InterpMethod = 2
               SearchRadius = 1000
               ShowGridData = 1
               ShowShapeData = 1
               ShapeItemUnit = 1000
               [DFS_2D_DATA_FILE]
                  Touched = 1
                  IsDataUsedInSetup = 0
                  FILE_NAME = ||
                  ITEM_COUNT = 1
                  ITEM_NUMBERS = 1
               EndSect  // DFS_2D_DATA_FILE

               [SHAPE_FILE]
                  Touched = 1
                  IsDataUsedInSetup = 0
                  FILE_NAME = ||
                  ITEM_COUNT = 1
                  ITEM_NUMBERS = ''
               EndSect  // SHAPE_FILE

               [XYZ_FILE]
                  Touched = 1
                  IsDataUsedInSetup = 0
                  FILE_NAME = ||
               EndSect  // XYZ_FILE

            EndSect  // LVVDispCoeff

            [THVDispCoeff]
               Touched = 0
               IsDataUsedInSetup = 0
               FixedValue = 0
               Type = 0
               ShapeAxisUnit = 1000
               ShapeGapFillName = ''
               InterpMethod = 2
               SearchRadius = 1000
               ShowGridData = 1
               ShowShapeData = 1
               ShapeItemUnit = 1000
               [DFS_2D_DATA_FILE]
                  Touched = 1
                  IsDataUsedInSetup = 0
                  FILE_NAME = ||
                  ITEM_COUNT = 1
                  ITEM_NUMBERS = 1
               EndSect  // DFS_2D_DATA_FILE

               [SHAPE_FILE]
                  Touched = 1
                  IsDataUsedInSetup = 0
                  FILE_NAME = ||
                  ITEM_COUNT = 1
                  ITEM_NUMBERS = ''
               EndSect  // SHAPE_FILE

               [XYZ_FILE]
                  Touched = 1
                  IsDataUsedInSetup = 0
                  FILE_NAME = ||
               EndSect  // XYZ_FILE

            EndSect  // THVDispCoeff

         EndSect  // Layer_1

      EndSect  // GeoLayersSZ

      [GeoLensesSZ]
         Touched = 1
         IsDataUsedInSetup = 1
         MzSEPfsListItemCount = 0
         NumberOfLenses = 0
      EndSect  // GeoLensesSZ

      [SatWQLayers]
         Touched = 0
         IsDataUsedInSetup = 0
         MzSEPfsListItemCount = 1
         NumberOfWQLayers = 1
         [WQLayer_1]
            Name = 'WQLayer'
            [LowerLevel]
               Touched = 0
               IsDataUsedInSetup = 0
               FixedValue = 0
               Type = 0
               ShapeAxisUnit = 1000
               ShapeGapFillName = ''
               InterpMethod = 2
               SearchRadius = 1000
               ShowGridData = 1
               ShowShapeData = 1
               ShapeItemUnit = 1000
               RelativeToGround = 0
               [DFS_2D_DATA_FILE]
                  Touched = 1
                  IsDataUsedInSetup = 0
                  FILE_NAME = ||
                  ITEM_COUNT = 1
                  ITEM_NUMBERS = 1
               EndSect  // DFS_2D_DATA_FILE

               [SHAPE_FILE]
                  Touched = 1
                  IsDataUsedInSetup = 0
                  FILE_NAME = ||
                  ITEM_COUNT = 1
                  ITEM_NUMBERS = ''
               EndSect  // SHAPE_FILE

               [XYZ_FILE]
                  Touched = 1
                  IsDataUsedInSetup = 0
                  FILE_NAME = ||
               EndSect  // XYZ_FILE

            EndSect  // LowerLevel

            [Dual_Porosity_Transfer_Coeff]
            EndSect  // Dual_Porosity_Transfer_Coeff

            [Decay_Processes]
            EndSect  // Decay_Processes

            [Sorption_Processes]
            EndSect  // Sorption_Processes

            [EcolabConstants]
               Touched = 0
               IsDataUsedInSetup = 0
               MzSEPfsListItemCount = 0
               NumberOfItems = 0
            EndSect  // EcolabConstants

            [EcolabForcings]
               Touched = 0
               IsDataUsedInSetup = 0
               MzSEPfsListItemCount = 0
               NumberOfItems = 0
            EndSect  // EcolabForcings

         EndSect  // WQLayer_1

      EndSect  // SatWQLayers

      [CompLayersSZ]
         Touched = 0
         IsDataUsedInSetup = 0
         MzSEPfsListItemCount = 1
         NumberOfLayers = 1
         [Layer_1]
            Name = 'Aquifer'
            id = -1
            [LowerLevel]
               Touched = 0
               IsDataUsedInSetup = 0
               FixedValue = 0
               Type = 0
               ShapeAxisUnit = 1000
               ShapeGapFillName = ''
               InterpMethod = 2
               SearchRadius = 1000
               ShowGridData = 1
               ShowShapeData = 1
               ShapeItemUnit = 1000
               RelativeToGround = 0
               [DFS_2D_DATA_FILE]
                  Touched = 1
                  IsDataUsedInSetup = 0
                  FILE_NAME = ||
                  ITEM_COUNT = 1
                  ITEM_NUMBERS = 1
               EndSect  // DFS_2D_DATA_FILE

               [SHAPE_FILE]
                  Touched = 1
                  IsDataUsedInSetup = 0
                  FILE_NAME = ||
                  ITEM_COUNT = 1
                  ITEM_NUMBERS = ''
               EndSect  // SHAPE_FILE

               [XYZ_FILE]
                  Touched = 1
                  IsDataUsedInSetup = 0
                  FILE_NAME = ||
               EndSect  // XYZ_FILE

            EndSect  // LowerLevel

            [InitPotHead]
               Touched = 0
               IsDataUsedInSetup = 0
               FixedValue = -0.9
               Type = 0
               ShapeAxisUnit = 1000
               ShapeGapFillName = ''
               InterpMethod = 2
               SearchRadius = 1000
               ShowGridData = 1
               ShowShapeData = 1
               ShapeItemUnit = 1000
               RelativeToGround = 1
               [DFS_2D_DATA_FILE]
                  Touched = 1
                  IsDataUsedInSetup = 0
                  FILE_NAME = ||
                  ITEM_COUNT = 1
                  ITEM_NUMBERS = 1
               EndSect  // DFS_2D_DATA_FILE

               [SHAPE_FILE]
                  Touched = 1
                  IsDataUsedInSetup = 0
                  FILE_NAME = ||
                  ITEM_COUNT = 1
                  ITEM_NUMBERS = ''
               EndSect  // SHAPE_FILE

               [XYZ_FILE]
                  Touched = 1
                  IsDataUsedInSetup = 0
                  FILE_NAME = ||
               EndSect  // XYZ_FILE

            EndSect  // InitPotHead

            [InitialSoilTemperature]
               Touched = 0
               IsDataUsedInSetup = 0
               FixedValue = 10
               Type = 0
               ShapeAxisUnit = 1000
               ShapeGapFillName = ''
               InterpMethod = 2
               SearchRadius = 1000
               ShowGridData = 1
               ShowShapeData = 1
               ShapeItemUnit = 2800
               [DFS_2D_DATA_FILE]
                  Touched = 1
                  IsDataUsedInSetup = 0
                  FILE_NAME = ||
                  ITEM_COUNT = 1
                  ITEM_NUMBERS = 1
               EndSect  // DFS_2D_DATA_FILE

               [SHAPE_FILE]
                  Touched = 1
                  IsDataUsedInSetup = 0
                  FILE_NAME = ||
                  ITEM_COUNT = 1
                  ITEM_NUMBERS = ''
               EndSect  // SHAPE_FILE

               [XYZ_FILE]
                  Touched = 1
                  IsDataUsedInSetup = 0
                  FILE_NAME = ||
               EndSect  // XYZ_FILE

            EndSect  // InitialSoilTemperature

            [OuterBoundary]
               Touched = 0
               IsDataUsedInSetup = 0
               MzSEPfsListItemCount = 0
               NumberOfBoundaryConditions = 0
            EndSect  // OuterBoundary

            [InternalBoundary]
               Touched = 0
               IsDataUsedInSetup = 0
               Type = 0
               ShapeAxisUnit = 1000
               NoInternalBoundaries = 0
               [DFS_2D_DATA_FILE]
                  Touched = 1
                  IsDataUsedInSetup = 0
                  FILE_NAME = ||
                  ITEM_COUNT = 1
                  ITEM_NUMBERS = 1
               EndSect  // DFS_2D_DATA_FILE

               [SHAPE_FILE]
                  Touched = 1
                  IsDataUsedInSetup = 0
                  FILE_NAME = ||
                  ITEM_COUNT = 1
                  ITEM_NUMBERS = ''
               EndSect  // SHAPE_FILE

            EndSect  // InternalBoundary

            [Initial_Concentration]
            EndSect  // Initial_Concentration

            [Initial_Immobile_Concentration]
            EndSect  // Initial_Immobile_Concentration

            [Initial_NumberOfParticles]
               Touched = 0
               IsDataUsedInSetup = 0
               FixedValue = 0
               Type = 0
               ShapeAxisUnit = 1000
               ShapeGapFillName = ''
               InterpMethod = 2
               SearchRadius = 1000
               ShowGridData = 1
               ShowShapeData = 1
               ShapeItemUnit = 99013
               [DFS_2D_DATA_FILE]
                  Touched = 1
                  IsDataUsedInSetup = 0
                  FILE_NAME = ||
                  ITEM_COUNT = 1
                  ITEM_NUMBERS = 1
               EndSect  // DFS_2D_DATA_FILE

               [SHAPE_FILE]
                  Touched = 1
                  IsDataUsedInSetup = 0
                  FILE_NAME = ||
                  ITEM_COUNT = 1
                  ITEM_NUMBERS = ''
               EndSect  // SHAPE_FILE

               [XYZ_FILE]
                  Touched = 1
                  IsDataUsedInSetup = 0
                  FILE_NAME = ||
               EndSect  // XYZ_FILE

            EndSect  // Initial_NumberOfParticles

            [PTRegistrationCodes]
               Touched = 0
               IsDataUsedInSetup = 0
               FixedValue = 0
               Type = 0
               ShapeAxisUnit = 1000
               ShapeGapFillName = ''
               InterpMethod = 2
               SearchRadius = 1000
               ShowGridData = 1
               ShowShapeData = 1
               ShapeItemUnit = 99013
               [DFS_2D_DATA_FILE]
                  Touched = 1
                  IsDataUsedInSetup = 0
                  FILE_NAME = ||
                  ITEM_COUNT = 1
                  ITEM_NUMBERS = 1
               EndSect  // DFS_2D_DATA_FILE

               [SHAPE_FILE]
                  Touched = 1
                  IsDataUsedInSetup = 0
                  FILE_NAME = ||
                  ITEM_COUNT = 1
                  ITEM_NUMBERS = ''
               EndSect  // SHAPE_FILE

               [XYZ_FILE]
                  Touched = 1
                  IsDataUsedInSetup = 0
                  FILE_NAME = ||
               EndSect  // XYZ_FILE

            EndSect  // PTRegistrationCodes

         EndSect  // Layer_1

      EndSect  // CompLayersSZ

      [CompLayersGeoSZ]
         Touched = 1
         IsDataUsedInSetup = 1
         MzSEPfsListItemCount = 1
         NumberOfLayers = 1
         [Layer_1]
            Name = 'Aquifer'
            ModLayAvg = 0
            ModLayCon = 0
            id = -1
            [InitPotHead]
               Touched = 1
               IsDataUsedInSetup = 1
               FixedValue = -0.9
               Type = 1
               ShapeAxisUnit = 1000
               ShapeGapFillName = ''
               InterpMethod = 2
               SearchRadius = 1000
               ShowGridData = 1
               ShowShapeData = 1
               ShapeItemUnit = 1000
               RelativeToGround = 0
               [DFS_2D_DATA_FILE]
                  Touched = 1
                  IsDataUsedInSetup = 1
                  FILE_NAME = |.\Model Inputs\Maps\init_head_500.dfs2|
                  ITEM_COUNT = 1
                  ITEM_NUMBERS = 1
               EndSect  // DFS_2D_DATA_FILE

               [SHAPE_FILE]
                  Touched = 1
                  IsDataUsedInSetup = 0
                  FILE_NAME = ||
                  ITEM_COUNT = 1
                  ITEM_NUMBERS = ''
               EndSect  // SHAPE_FILE

               [XYZ_FILE]
                  Touched = 1
                  IsDataUsedInSetup = 1
                  FILE_NAME = ||
               EndSect  // XYZ_FILE

            EndSect  // InitPotHead

            [InitialSoilTemperature]
               Touched = 0
               IsDataUsedInSetup = 0
               FixedValue = 10
               Type = 0
               ShapeAxisUnit = 1000
               ShapeGapFillName = ''
               InterpMethod = 2
               SearchRadius = 1000
               ShowGridData = 1
               ShowShapeData = 1
               ShapeItemUnit = 2800
               [DFS_2D_DATA_FILE]
                  Touched = 1
                  IsDataUsedInSetup = 0
                  FILE_NAME = ||
                  ITEM_COUNT = 1
                  ITEM_NUMBERS = 1
               EndSect  // DFS_2D_DATA_FILE

               [SHAPE_FILE]
                  Touched = 1
                  IsDataUsedInSetup = 0
                  FILE_NAME = ||
                  ITEM_COUNT = 1
                  ITEM_NUMBERS = ''
               EndSect  // SHAPE_FILE

               [XYZ_FILE]
                  Touched = 1
                  IsDataUsedInSetup = 0
                  FILE_NAME = ||
               EndSect  // XYZ_FILE

            EndSect  // InitialSoilTemperature

            [OuterBoundary]
               Touched = 1
               IsDataUsedInSetup = 1
               MzSEPfsListItemCount = 1
               NumberOfBoundaryConditions = 1
               [OuterBoundaryProp_1]
                  Touched = 1
                  IsDataUsedInSetup = 0
                  Name = ''
                  X = 499627.1431445174
                  Y = 6259972.02268431
                  BoundaryType = 0
                  FixedValue = 0
                  DistributionType = 0
                  Type = 0
                  [TIME_SERIES_FILE]
                     Touched = 1
                     IsDataUsedInSetup = 0
                     FILE_NAME = ||
                     ITEM_COUNT = 1
                     ITEM_NUMBERS = 1
                  EndSect  // TIME_SERIES_FILE

                  [DFS_2D_DATA_FILE]
                     Touched = 1
                     IsDataUsedInSetup = 0
                     FILE_NAME = ||
                     ITEM_COUNT = 1
                     ITEM_NUMBERS = 1
                  EndSect  // DFS_2D_DATA_FILE

                  [InflowX]
                     Touched = 1
                     IsDataUsedInSetup = 0
                     FixedValue = 0
                     Type = 0
                     ShapeAxisUnit = 1000
                     ShapeGapFillName = ''
                     InterpMethod = 2
                     SearchRadius = 1000
                     ShowGridData = 1
                     ShowShapeData = 1
                     ShapeItemUnit = 1800
                     TimeVarying = 0
                     [DFS_2D_DATA_FILE]
                        Touched = 1
                        IsDataUsedInSetup = 0
                        FILE_NAME = ||
                        ITEM_COUNT = 1
                        ITEM_NUMBERS = 1
                     EndSect  // DFS_2D_DATA_FILE

                     [SHAPE_FILE]
                        Touched = 1
                        IsDataUsedInSetup = 0
                        FILE_NAME = ||
                        ITEM_COUNT = 1
                        ITEM_NUMBERS = ''
                     EndSect  // SHAPE_FILE

                     [XYZ_FILE]
                        Touched = 1
                        IsDataUsedInSetup = 0
                        FILE_NAME = ||
                     EndSect  // XYZ_FILE

                  EndSect  // InflowX

                  [InflowY]
                     Touched = 1
                     IsDataUsedInSetup = 0
                     FixedValue = 0
                     Type = 0
                     ShapeAxisUnit = 1000
                     ShapeGapFillName = ''
                     InterpMethod = 2
                     SearchRadius = 1000
                     ShowGridData = 1
                     ShowShapeData = 1
                     ShapeItemUnit = 1800
                     TimeVarying = 0
                     [DFS_2D_DATA_FILE]
                        Touched = 1
                        IsDataUsedInSetup = 0
                        FILE_NAME = ||
                        ITEM_COUNT = 1
                        ITEM_NUMBERS = 1
                     EndSect  // DFS_2D_DATA_FILE

                     [SHAPE_FILE]
                        Touched = 1
                        IsDataUsedInSetup = 0
                        FILE_NAME = ||
                        ITEM_COUNT = 1
                        ITEM_NUMBERS = ''
                     EndSect  // SHAPE_FILE

                     [XYZ_FILE]
                        Touched = 1
                        IsDataUsedInSetup = 0
                        FILE_NAME = ||
                     EndSect  // XYZ_FILE

                  EndSect  // InflowY

               EndSect  // OuterBoundaryProp_1

            EndSect  // OuterBoundary

            [InternalBoundary]
               Touched = 1
               IsDataUsedInSetup = 1
               Type = 0
               ShapeAxisUnit = 1000
               NoInternalBoundaries = 0
               [DFS_2D_DATA_FILE]
                  Touched = 1
                  IsDataUsedInSetup = 0
                  FILE_NAME = ||
                  ITEM_COUNT = 1
                  ITEM_NUMBERS = 1
               EndSect  // DFS_2D_DATA_FILE

               [SHAPE_FILE]
                  Touched = 1
                  IsDataUsedInSetup = 0
                  FILE_NAME = ||
                  ITEM_COUNT = 1
                  ITEM_NUMBERS = ''
               EndSect  // SHAPE_FILE

            EndSect  // InternalBoundary

            [Initial_Concentration]
            EndSect  // Initial_Concentration

            [Initial_Immobile_Concentration]
            EndSect  // Initial_Immobile_Concentration

            [Initial_NumberOfParticles]
               Touched = 0
               IsDataUsedInSetup = 0
               FixedValue = 0
               Type = 0
               ShapeAxisUnit = 1000
               ShapeGapFillName = ''
               InterpMethod = 2
               SearchRadius = 1000
               ShowGridData = 1
               ShowShapeData = 1
               ShapeItemUnit = 99013
               [DFS_2D_DATA_FILE]
                  Touched = 1
                  IsDataUsedInSetup = 0
                  FILE_NAME = ||
                  ITEM_COUNT = 1
                  ITEM_NUMBERS = 1
               EndSect  // DFS_2D_DATA_FILE

               [SHAPE_FILE]
                  Touched = 1
                  IsDataUsedInSetup = 0
                  FILE_NAME = ||
                  ITEM_COUNT = 1
                  ITEM_NUMBERS = ''
               EndSect  // SHAPE_FILE

               [XYZ_FILE]
                  Touched = 1
                  IsDataUsedInSetup = 0
                  FILE_NAME = ||
               EndSect  // XYZ_FILE

            EndSect  // Initial_NumberOfParticles

            [PTRegistrationCodes]
               Touched = 0
               IsDataUsedInSetup = 0
               FixedValue = 0
               Type = 0
               ShapeAxisUnit = 1000
               ShapeGapFillName = ''
               InterpMethod = 2
               SearchRadius = 1000
               ShowGridData = 1
               ShowShapeData = 1
               ShapeItemUnit = 99013
               [DFS_2D_DATA_FILE]
                  Touched = 1
                  IsDataUsedInSetup = 0
                  FILE_NAME = ||
                  ITEM_COUNT = 1
                  ITEM_NUMBERS = 1
               EndSect  // DFS_2D_DATA_FILE

               [SHAPE_FILE]
                  Touched = 1
                  IsDataUsedInSetup = 0
                  FILE_NAME = ||
                  ITEM_COUNT = 1
                  ITEM_NUMBERS = ''
               EndSect  // SHAPE_FILE

               [XYZ_FILE]
                  Touched = 1
                  IsDataUsedInSetup = 0
                  FILE_NAME = ||
               EndSect  // XYZ_FILE

            EndSect  // PTRegistrationCodes

         EndSect  // Layer_1

      EndSect  // CompLayersGeoSZ

      [PTRegistrationLenses]
         Touched = 0
         IsDataUsedInSetup = 0
         MzSEPfsListItemCount = 0
         NumberOfLenses = 0
      EndSect  // PTRegistrationLenses

      [Drainage]
         Touched = 1
         IsDataUsedInSetup = 1
         DrainageOption = 2
         [Level]
            Touched = 1
            IsDataUsedInSetup = 1
            FixedValue = -0.5
            Type = 1
            ShapeAxisUnit = 1000
            ShapeGapFillName = ''
            InterpMethod = 2
            SearchRadius = 1000
            ShowGridData = 1
            ShowShapeData = 1
            ShapeItemUnit = 1000
            RelativeToGround = 1
            TimeVarying = 0
            [DFS_2D_DATA_FILE]
               Touched = 1
               IsDataUsedInSetup = 1
               FILE_NAME = |.\Level.dfs2|
               ITEM_COUNT = 1
               ITEM_NUMBERS = 1
            EndSect  // DFS_2D_DATA_FILE

            [SHAPE_FILE]
               Touched = 1
               IsDataUsedInSetup = 0
               FILE_NAME = ||
               ITEM_COUNT = 1
               ITEM_NUMBERS = ''
            EndSect  // SHAPE_FILE

            [XYZ_FILE]
               Touched = 1
               IsDataUsedInSetup = 1
               FILE_NAME = ||
            EndSect  // XYZ_FILE

         EndSect  // Level

         [TimeConstant]
            Touched = 1
            IsDataUsedInSetup = 1
            FixedValue = __sz_Drainage_TimeConstant__
            Type = 0
            ShapeAxisUnit = 1000
            ShapeGapFillName = ''
            InterpMethod = 2
            SearchRadius = 1000
            ShowGridData = 1
            ShowShapeData = 1
            ShapeItemUnit = 2605
            TimeVarying = 0
            [DFS_2D_DATA_FILE]
               Touched = 1
               IsDataUsedInSetup = 0
               FILE_NAME = ||
               ITEM_COUNT = 1
               ITEM_NUMBERS = 1
            EndSect  // DFS_2D_DATA_FILE

            [SHAPE_FILE]
               Touched = 1
               IsDataUsedInSetup = 0
               FILE_NAME = ||
               ITEM_COUNT = 1
               ITEM_NUMBERS = ''
            EndSect  // SHAPE_FILE

            [XYZ_FILE]
               Touched = 1
               IsDataUsedInSetup = 1
               FILE_NAME = ||
            EndSect  // XYZ_FILE

         EndSect  // TimeConstant

         [DrainCode]
            Touched = 1
            IsDataUsedInSetup = 1
            FixedValue = 1
            Type = 0
            ShapeAxisUnit = 1000
            ShapeGapFillName = ''
            InterpMethod = 2
            SearchRadius = 1000
            ShowGridData = 1
            ShowShapeData = 1
            ShapeItemUnit = 99013
            [DFS_2D_DATA_FILE]
               Touched = 1
               IsDataUsedInSetup = 0
               FILE_NAME = ||
               ITEM_COUNT = 1
               ITEM_NUMBERS = 1
            EndSect  // DFS_2D_DATA_FILE

            [SHAPE_FILE]
               Touched = 1
               IsDataUsedInSetup = 0
               FILE_NAME = ||
               ITEM_COUNT = 1
               ITEM_NUMBERS = ''
            EndSect  // SHAPE_FILE

            [XYZ_FILE]
               Touched = 1
               IsDataUsedInSetup = 1
               FILE_NAME = ||
            EndSect  // XYZ_FILE

         EndSect  // DrainCode

         [DistributedOptionCode]
            Touched = 0
            IsDataUsedInSetup = 0
            FixedValue = 0
            Type = 0
            ShapeAxisUnit = 1000
            ShapeGapFillName = ''
            InterpMethod = 2
            SearchRadius = 1000
            ShowGridData = 1
            ShowShapeData = 1
            ShapeItemUnit = 99013
            [DFS_2D_DATA_FILE]
               Touched = 1
               IsDataUsedInSetup = 0
               FILE_NAME = ||
               ITEM_COUNT = 1
               ITEM_NUMBERS = 1
            EndSect  // DFS_2D_DATA_FILE

            [SHAPE_FILE]
               Touched = 1
               IsDataUsedInSetup = 0
               FILE_NAME = ||
               ITEM_COUNT = 1
               ITEM_NUMBERS = ''
            EndSect  // SHAPE_FILE

            [XYZ_FILE]
               Touched = 1
               IsDataUsedInSetup = 0
               FILE_NAME = ||
            EndSect  // XYZ_FILE

         EndSect  // DistributedOptionCode

      EndSect  // Drainage

      [Well]
         Touched = 1
         IsDataUsedInSetup = 1
         Filename = |.\Model Inputs\Karup.WEL|
         IncludeMap = 1
      EndSect  // Well

   EndSect  // SaturatedZone

   [SaturatedZoneSubCatchment]
      Touched = 0
      IsDataUsedInSetup = 0
      Wells = 0
      [SZShallowGWRoutingZones]
         Touched = 0
         IsDataUsedInSetup = 0
         DistributionType = 1
         Type = 1
         ShapeAxisUnit = 1000
         ShapeGapFillName = ''
         NO_ZONES = 0
         [DFS_2D_DATA_FILE]
            Touched = 0
            IsDataUsedInSetup = 0
            FILE_NAME = ||
            ITEM_COUNT = 1
            ITEM_NUMBERS = 1
         EndSect  // DFS_2D_DATA_FILE

         [SHAPE_FILE]
            Touched = 0
            IsDataUsedInSetup = 0
            FILE_NAME = ||
            ITEM_COUNT = 1
            ITEM_NUMBERS = ''
         EndSect  // SHAPE_FILE

      EndSect  // SZShallowGWRoutingZones

      [SZDeepGWRoutingZones]
         Touched = 0
         IsDataUsedInSetup = 0
         DistributionType = 1
         Type = 1
         ShapeAxisUnit = 1000
         ShapeGapFillName = ''
         NO_ZONES = 0
         [DFS_2D_DATA_FILE]
            Touched = 0
            IsDataUsedInSetup = 0
            FILE_NAME = ||
            ITEM_COUNT = 1
            ITEM_NUMBERS = 1
         EndSect  // DFS_2D_DATA_FILE

         [SHAPE_FILE]
            Touched = 0
            IsDataUsedInSetup = 0
            FILE_NAME = ||
            ITEM_COUNT = 1
            ITEM_NUMBERS = ''
         EndSect  // SHAPE_FILE

      EndSect  // SZDeepGWRoutingZones

      [Well]
         Touched = 0
         IsDataUsedInSetup = 0
         Filename = ||
         IncludeMap = 0
      EndSect  // Well

   EndSect  // SaturatedZoneSubCatchment

   [GroundwaterTable]
      Touched = 1
      IsDataUsedInSetup = 0
      FixedValue = -0.9
      Type = 0
      ShapeAxisUnit = 1000
      ShapeGapFillName = ''
      InterpMethod = 2
      SearchRadius = 1000
      ShowGridData = 1
      ShowShapeData = 1
      ShapeItemUnit = 1000
      RelativeToGround = 1
      [DFS_2D_DATA_FILE]
         Touched = 1
         IsDataUsedInSetup = 0
         FILE_NAME = ||
         ITEM_COUNT = 1
         ITEM_NUMBERS = 1
      EndSect  // DFS_2D_DATA_FILE

      [SHAPE_FILE]
         Touched = 1
         IsDataUsedInSetup = 0
         FILE_NAME = ||
         ITEM_COUNT = 1
         ITEM_NUMBERS = ''
      EndSect  // SHAPE_FILE

      [XYZ_FILE]
         Touched = 1
         IsDataUsedInSetup = 0
         FILE_NAME = ||
      EndSect  // XYZ_FILE

   EndSect  // GroundwaterTable

   [Sources]
      Touched = 0
      IsDataUsedInSetup = 0
      MzSEPfsListItemCount = 0
      NumberOfSources = 0
   EndSect  // Sources

   [StoringOfResults]
      Touched = 1
      IsDataUsedInSetup = 1
      ResultUnits = 0
      ADInputData = 0
      WaterBalance = 1
      AdRadio = 0
      HotStartData = 0
      OnlyStoreHotDataAtEndOfSimulation = 0
      HotstartStoringTimestep_Hrs = 24
      WM_OverlandFrequency = 24
      WM_PrecFrequency = 24
      WM_FHeadsFrequency = 24
      WM_FluxesFrequency = 24
      WQ_OverlandFrequency = 24
      WQ_UnsaturatedZoneFrequency = 24
      WQ_SaturatedZoneFrequency = 24
      WQ_TimeSeriesFrequency = 24
      WQ_SummaryFrequency = 24
      PTLocationFile = 1
      PTHistoryShapeFile = 0
      MinPTLocationFrequency = 24
      [DetailedTimeseriesOutput]
         Touched = 1
         IsDataUsedInSetup = 1
         MzSEPfsListItemCount = 4
         NumberOfItems = 4
         MinimumOutputTimestep = 0.5
         [Item_1]
            Touched = 1
            IsDataUsedInSetup = 1
            Name = 'Obs 5'
            HydrComp = 101
            Group = 1
            X = 518003.0
            Y = 6229170.0
            Z = 5.0
            InclObserved = 1
            [TIME_SERIES_FILE]
               Touched = 1
               IsDataUsedInSetup = 1
               FILE_NAME = |.\Model Inputs\Time\HeadObservations.dfs0|
               ITEM_COUNT = 1
               ITEM_NUMBERS = 1
            EndSect  // TIME_SERIES_FILE

         EndSect  // Item_1

         [Item_2]
            Touched = 1
            IsDataUsedInSetup = 1
            Name = 'Obs 35'
            HydrComp = 101
            Group = 1
            X = 507700.0
            Y = 6238360.0
            Z = 5.0
            InclObserved = 1
            [TIME_SERIES_FILE]
               Touched = 1
               IsDataUsedInSetup = 1
               FILE_NAME = |.\Model Inputs\Time\HeadObservations.dfs0|
               ITEM_COUNT = 1
               ITEM_NUMBERS = 2
            EndSect  // TIME_SERIES_FILE

         EndSect  // Item_2

         [Item_3]
            Touched = 1
            IsDataUsedInSetup = 1
            Name = 'Obs 37'
            HydrComp = 101
            Group = 1
            X = 511408.0
            Y = 6241640.0
            Z = 5.0
            InclObserved = 1
            [TIME_SERIES_FILE]
               Touched = 1
               IsDataUsedInSetup = 1
               FILE_NAME = |.\Model Inputs\Time\HeadObservations.dfs0|
               ITEM_COUNT = 1
               ITEM_NUMBERS = 3
            EndSect  // TIME_SERIES_FILE

         EndSect  // Item_3

         [Item_4]
            Touched = 1
            IsDataUsedInSetup = 1
            Name = 'Obs 65'
            HydrComp = 101
            Group = 1
            X = 502766.0
            Y = 6246300.0
            Z = 5.0
            InclObserved = 1
            [TIME_SERIES_FILE]
               Touched = 1
               IsDataUsedInSetup = 1
               FILE_NAME = |.\Model Inputs\Time\HeadObservations.dfs0|
               ITEM_COUNT = 1
               ITEM_NUMBERS = 4
            EndSect  // TIME_SERIES_FILE

         EndSect  // Item_4

      EndSect  // DetailedTimeseriesOutput

      [DetailedWqTimeseriesOutput]
         Touched = 0
         IsDataUsedInSetup = 0
         MzSEPfsListItemCount = 0
         NumberOfItems = 0
         MinimumOutputTimestep = 0
      EndSect  // DetailedWqTimeseriesOutput

      [DetailedM11TimeseriesOutput]
         Touched = 1
         IsDataUsedInSetup = 0
         MzSEPfsListItemCount = 1
         NumberOfItems = 1
         MinimumOutputTimestep = 0.5
         [Item_1]
            Touched = 1
            IsDataUsedInSetup = 0
            Name = 'St 20.05 (outlet)'
            DataType = 1
            BranchName = 'Karup River'
            Chainage = 70454
            InclObserved = 1
            [TIME_SERIES_FILE]
               Touched = 1
               IsDataUsedInSetup = 0
               FILE_NAME = |.\Model Inputs\Time\flow.dfs0|
               ITEM_COUNT = 1
               ITEM_NUMBERS = 1
            EndSect  // TIME_SERIES_FILE

         EndSect  // Item_1

      EndSect  // DetailedM11TimeseriesOutput

      [GridSeriesOutput]
         Touched = 1
         IsDataUsedInSetup = 1
         MzSEPfsListItemCount = 3
         NumberOfItems = 3
         [Item_1]
            Touched = 1
            IsDataUsedInSetup = 1
            DataType = 15
         EndSect  // Item_1

         [Item_2]
            Touched = 1
            IsDataUsedInSetup = 1
            DataType = 310
         EndSect  // Item_2

         [Item_3]
            Touched = 1
            IsDataUsedInSetup = 1
            DataType = 118
         EndSect  // Item_3

      EndSect  // GridSeriesOutput

   EndSect  // StoringOfResults

   [ExtraParams]
      Touched = 1
      IsDataUsedInSetup = 1
      MzSEPfsListItemCount = 1
      NoOfParams = 1
      [ExtraParam_1]
         Touched = 1
         IsDataUsedInSetup = 1
         Name = 'max iterations UZ-coupling'
         Type = 1
         Value = 200
      EndSect  // ExtraParam_1

   EndSect  // ExtraParams

   [ExecuteEngineFlagsPfs]
      Touched = 0
      IsDataUsedInSetup = 0
      PP = 1
      WM = 1
      WQ = 0
   EndSect  // ExecuteEngineFlagsPfs

   [Result]
      Touched = 1
      IsDataUsedInSetup = 1
      [ResultDetailedTS]
         Touched = 1
         IsDataUsedInSetup = 1
      EndSect  // ResultDetailedTS

      [ResultDetailedWqTs]
         Touched = 0
         IsDataUsedInSetup = 0
      EndSect  // ResultDetailedWqTs

      [ResultViewer]
         Touched = 1
         IsDataUsedInSetup = 1
         LayerNo = 1
      EndSect  // ResultViewer

      [ResultM11DetailedTS]
         Touched = 1
         IsDataUsedInSetup = 0
      EndSect  // ResultM11DetailedTS

      [GeoScene3D]
         Touched = 0
         IsDataUsedInSetup = 0
         VerticalExaggerationFactor = 30.0
         LayerType = 0
         ShowLenses = 0
         UseAllTimeSteps = 1
         ShowEveryTimeStep = 1
         Transparency = 0.3
      EndSect  // GeoScene3D

   EndSect  // Result

   [Results_Post_Processing]
      Touched = 0
      IsDataUsedInSetup = 1
      [RunStatistics]
         Touched = 1
         IsDataUsedInSetup = 1
         HtmlFilename = |.\Karup_basic.she - Result Files\Karup_basic_PreProcessed_Stat.Html|
         ShapeFilename = |.\Karup_basic.she - Result Files\Karup_basic_PreProcessed_Stat.shp|
      EndSect  // RunStatistics

      [PT_Reg_Extraction]
         Touched = 0
         IsDataUsedInSetup = 0
         MzSEPfsListItemCount = 0
         NumberOfExtractions = 0
      EndSect  // PT_Reg_Extraction

      [PT_Pathline_Extraction]
         Touched = 0
         IsDataUsedInSetup = 0
         MzSEPfsListItemCount = 0
         NumberOfExtractions = 0
      EndSect  // PT_Pathline_Extraction

   EndSect  // Results_Post_Processing

   [Overview]
      Touched = 0
      IsDataUsedInSetup = 0
   EndSect  // Overview

   [GeoScene3D]
      Touched = 0
      IsDataUsedInSetup = 0
      VerticalExaggerationFactor = 30.0
      LayerType = 0
      ShowLenses = 0
      UseAllTimeSteps = 1
      ShowEveryTimeStep = 1
      Transparency = 0.3
   EndSect  // GeoScene3D

EndSect  // MIKESHE_FLOWMODEL

[SYSTEM]
   ResultRootFolder = ||
   UseCustomResultFolder = true
   CustomResultFolder = |.\Karup_basic.she - Result Files|
EndSect  // SYSTEM

