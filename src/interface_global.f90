module ac_interface_global

use ac_global, only: CheckFilesInProject, &
                     DetermineLengthGrowthStages, &
                     TimeToMaxCanopySF, &
                     ECswComp, &
                     FileExists, &
                     CalculateAdjustedFC, &
                     CheckForKeepSWC, &
                     ComposeOutputFileName, &
                     GetFileForProgramParameters, &
                     GetCalendarFile, &
                     GetCalendarFileFull, &
                     GetCalendarDescription, &
                     GenerateCO2Description, &
                     GetCO2File, &
                     GetCO2FileFull, &
                     GetCO2Description, &
                     GetCropFile, &
                     GetCropFileFull, &
                     GetCropDescription, &
                     GetCrop_DeterminancyLinked, &
                     GetCrop_SownYear1, &
                     GetCrop_StressResponse_Calibrated, &
                     GetCrop_Assimilates_On, &
                     GetIrriDescription, &
                     GetIrriFile, &
                     GetIrriFileFull, &
                     GetClimateFile, &
                     GetClimateFileFull, &
                     GetClimateDescription, &
                     GetClimFile, &
                     GetEndSeason_GenerateTempOn, &
                     GetSWCiniFile, &
                     GetSWCiniFileFull, &
                     GetSWCiniDescription, &
                     GetProjectFile, &
                     GetProjectFileFull, &
                     GetMultipleProjectFile, &
                     GetMultipleProjectFileFull, &
                     GetFullFileNameProgramParameters, &
                     GetSimulParam_CNcorrection, &
                     GetsimulParam_ConstGwt, &
                     GetPathNameProg, &
                     GetPathNameOutp, &
                     GetPathNameSimul, &
                     GetOutputName, &
                     GetPerennialPeriod_GenerateOnset, &
                     GetPerennialPeriod_GenerateEnd, &
                     GetProfFile, &
                     GetProfFilefull, &
                     GetProfDescription, &
                     GetManagement_Cuttings_Considered, &
                     GetManagement_Cuttings_Generate, &
                     GetManagement_Cuttings_HarvestEnd, &
                     GetManagement_RunoffOn, &
                     GetManFile, &
                     GetManFilefull, &
                     GetObservationsFile, &
                     GetObservationsFilefull, &
                     GetObservationsDescription, &
                     GetOffSeasonFile, &
                     GetOffSeasonFilefull, &
                     GetGroundWaterFile, &
                     GetGroundWaterFilefull, &
                     GetEToFile, &
                     GetEToFileFull, &
                     GetEToDescription, &
                     GetOnset_GenerateOn, &
                     GetOnset_GenerateTempOn, &
                     GetRainFile, &
                     setRainFile, &
                     GetRainFileFull, &
                     GetRainDescription, &
                     LoadClimate, &
                     LoadCrop, &
                     LoadCropCalendar, &
                     LoadIrriScheduleInfo, &
                     LoadProjectDescription, &
                     setRainFileFull, &
                     setRainDescription, &
                     SetCalendarFile, &
                     SetCalendarFileFull, &
                     SetCalendarDescription, &
                     SetCO2File, &
                     SetCO2FileFull, &
                     SetCO2Description, &
                     SetCropFile, &
                     SetCropFileFull, &
                     SetCropDescription, &
                     SetCrop_DeterminancyLinked, &
                     SetCrop_SownYear1, &
                     SetCrop_StressResponse_Calibrated, &
                     SetCrop_Assimilates_On, &
                     SetIrriFile, &
                     SetIrriFileFull, &
                     SetIrriDescription, &
                     SetClimateFile, &
                     SetClimateFileFull, &
                     SetClimateDescription, &
                     SetClimFile, &
                     SetEndSeason_GenerateTempOn, &
                     SetEToFile, &
                     SetEToFileFull, &
                     SetEToDescription, &
                     setSWCiniFile, &
                     setSWCiniFileFull, &
                     SetSWCiniDescription, &
                     SetSimulParam_CNcorrection, &
                     SetSimulParam_ConstGwt, &
                     SetPathNameProg, &
                     SetPathNameOutp, &
                     SetPathNameSimul, &
                     SetOutputName, &
                     SetPerennialPeriod_GenerateOnset, &
                     SetPerennialPeriod_GenerateEnd, &
                     SetProjectFile, &
                     SetProjectFileFull, &
                     SetMultipleProjectFile, &
                     SetMultipleProjectFileFull, &
                     SetFullFileNameProgramParameters, &
                     SetProfFile, &
                     SetProfFilefull, &
                     SetProfDescription, &
                     SetManFile, &
                     SetManFilefull, &
                     SetManagement_Cuttings_Considered, &
                     SetManagement_Cuttings_Generate, &
                     SetManagement_Cuttings_HarvestEnd, &
                     SetManagement_RunoffOn, &
                     SetOnset_GenerateOn, &
                     SetOnset_GenerateTempOn, &
                     SetObservationsFile, &
                     SetObservationsFilefull, &
                     SetObservationsDescription, &
                     SetOffSeasonFile, &
                     SetOffSeasonFilefull, &
                     SetGroundWaterFile, &
                     SetGroundWaterFilefull, &
                     GetTemperatureFile, &
                     GetTemperatureFilefull, &
                     GetTemperatureDescription, &
                     SetTemperatureFile, &
                     SetTemperatureFilefull, &
                     SetTemperatureDescription, &
                     GetClimDescription, &
                     SetClimDescription, &
                     SplitStringInTwoParams, &
                     SplitStringInThreeParams, &
                     SetTemperatureRecord_FromString, &
                     GetTemperatureRecord_FromString, &
                     SetTemperatureRecord_ToString, &
                     GetTemperatureRecord_ToString, &
                     SetClimRecord_FromString, &
                     GetClimRecord_FromString, &
                     SetClimRecord_ToString, &
                     GetClimRecord_ToString, &
                     SetRainRecord_FromString, &
                     GetRainRecord_FromString, &
                     SetRainRecord_ToString, &
                     GetRainRecord_ToString, &
                     SetEToRecord_FromString, &
                     GetEToRecord_FromString, &
                     SetEToRecord_ToString, &
                     GetEToRecord_ToString, &
                     GetSoilLayer_Description, &
                     SetSoilLayer_Description, &
                     GetSimulation_LinkCropToSimPeriod, &
                     GetSimulation_ResetIniSWC, &
                     GetSimulation_EvapLimitON, &
                     GetSimulation_Germinate, &
                     GetSimulation_MultipleRun, &
                     GetSimulation_MultipleRunWithKeepSWC, &
                     GetSimulation_SalinityConsidered, &
                     GetSimulation_ProtectedSeedling, &
                     GetSimulation_SWCtopSoilConsidered, &
                     SetSimulation_LinkCropToSimPeriod, &
                     SetSimulation_ResetIniSWC, &
                     SetSimulation_EvapLimitON, &
                     SetSimulation_Germinate, &
                     SetSimulation_MultipleRun, &
                     SetSimulation_MultipleRunWithKeepSWC, &
                     SetSimulation_SalinityConsidered, &
                     SetSimulation_ProtectedSeedling, &
                     SetSimulation_SWCtopSoilConsidered, &
                     GetSimulation_IniSWC_AtDepths, &
                     GetSimulation_IniSWC_AtFC, &
                     SetSimulation_IniSWC_AtDepths, &
                     SetSimulation_IniSWC_AtFC, &
                     GetSimulation_Storage_CropString, &
                     SetSimulation_Storage_CropString, &
                     CompartmentIndividual, &
                     ECeComp, &
                     ECswComp, &
                     GetManDescription, &
                     SetManDescription, &
                     LoadManagement, &
                     SaveCrop, &
                     SaveProfile, &
                     LoadProfile, &
                     DetermineRootZoneWC, &
                     GetOffSeasonDescription, &
                     SetOffSeasonDescription, &
                     LoadOffSeason, &
                     LoadProgramParametersProject,&
                     LoadGroundwater, &
                     GetGroundwaterDescription, &
                     SetGroundwaterDescription, &
                     LoadProgramParametersProject, &
                     LoadCLim, &
                     EndGrowingPeriod, &
                     LoadInitialConditions, &
                     CompleteClimateDescription, &
                     rep_clim, &
                     GetEvapoEntireSoilSurface, &
                     SetEvapoEntireSoilSurface, &
                     GetPreDay, &
                     SetPreDay, &
                     GetMultipleProjectDescription, &
                     SetMultipleProjectDescription, &
                     GetOut1Wabal, &
                     SetOut1Wabal, &
                     GetOut2Crop, &
                     SetOut2Crop, &
                     GetOut3Prof, &
                     SetOut3Prof, &
                     GetOut4Salt, &
                     SetOut4Salt, &
                     GetOut5CompWC, &
                     SetOut5CompWC, &
                     GetOut6CompEC, &
                     SetOut6CompEC, &
                     GetOut7Clim, &
                     SetOut7Clim, &
                     GetProjectDescription, &
                     SetProjectDescription, &
                     GetOutDaily, &
                     SetOutDaily, &
                     GetPathNameList, &
                     SetPathNameList, &
                     GetPathNameParam, &
                     SetPathNameParam, &
                     GetPart1Mult, &
                     GetPart2Eval, &
                     SetPart1Mult, &
                     SetPart2Eval
use ac_kinds, only: dp, &
                    int32, &
                    intEnum, &
                    int8
use ac_utils, only: pointer2string, &
                    string2pointer, &
                    threestrings2threepointers, &
                    twostrings2twopointers
use, intrinsic :: iso_c_binding, only: c_ptr
implicit none


contains


function GetCrop_Assimilates_On_wrap() result(On)
    !! Wrapper for [[ac_global:GetCrop_Assimilates_On]] for foreign languages.
    logical(1) :: On

    On = GetCrop_Assimilates_On()
end function GetCrop_Assimilates_On_wrap


subroutine SetCrop_Assimilates_On_wrap(On)
    !! Wrapper for [[ac_global:SetCrop_Assimilates_On]] for foreign languages.
    logical(1), intent(in) :: On

    logical :: bool

    bool = On
    call SetCrop_Assimilates_On(bool)
end subroutine SetCrop_Assimilates_On_wrap


function GetCrop_DeterminancyLinked_wrap() result(DeterminancyLinked)
    !! Wrapper for [[ac_global:GetCrop_DeterminancyLinked]] for foreign languages.
    logical(1) :: DeterminancyLinked

    DeterminancyLinked = GetCrop_DeterminancyLinked()
end function GetCrop_DeterminancyLinked_wrap


function GetCrop_SownYear1_wrap() result(SownYear1)
    !! Wrapper for [[ac_global:GetCrop_SownYear1]] for foreign languages.
    logical(1) :: SownYear1

    SownYear1 = GetCrop_SownYear1()
end function GetCrop_SownYear1_wrap


subroutine SetCrop_DeterminancyLinked_wrap(DeterminancyLinked)
    !! Wrapper for [[ac_global:SetCrop_DeterminancyLinked]] for foreign languages.
    logical(1), intent(in) :: DeterminancyLinked

    logical :: bool

    bool = DeterminancyLinked
    call SetCrop_DeterminancyLinked(bool)
end subroutine SetCrop_DeterminancyLinked_wrap


subroutine SetCrop_SownYear1_wrap(SownYear1)
    !! Wrapper for [[ac_global:SetCrop_SownYear1]] for foreign languages.
    logical(1), intent(in) :: SownYear1

    logical :: bool

    bool = SownYear1
    call SetCrop_SownYear1(bool)
end subroutine SetCrop_SownYear1_wrap


function GetCrop_StressResponse_Calibrated_wrap() result(Calibrated)
    !! Wrapper for [[ac_global:GetCrop_StressResponse_Calibrated]] for foreign languages.
    logical(1) :: Calibrated

    Calibrated = GetCrop_StressResponse_Calibrated()
end function GetCrop_StressResponse_Calibrated_wrap


subroutine SetCrop_StressResponse_Calibrated_wrap(Calibrated)
    !! Wrapper for [[ac_global:SetCrop_StressResponse_Calibrated]] for foreign languages.
    logical(1), intent(in) :: Calibrated

    logical :: bool

    bool = Calibrated
    call SetCrop_StressResponse_Calibrated(bool)
end subroutine SetCrop_StressResponse_Calibrated_wrap


subroutine ComposeOutputFileName_wrap(TheProjectFileName, strlen)
    !! Wrapper for [[ac_global:ComposeOutputFileName]] for foreign languages.
    type(c_ptr), intent(in) :: TheProjectFileName
    integer(int32), intent(in) :: strlen

    character(len=strlen) :: string

    string = pointer2string(TheProjectFileName, strlen)
    call ComposeOutputFileName(string)
end subroutine ComposeOutputFileName_wrap


subroutine GetFileForProgramParameters_wrap(TheFullFileNameProgram, strlen1, &
            FullFileNameProgramParameters, strlen2)
    !! Wrapper for [[ac_global:GetFileForProgramParameters]] for foreign languages.
    type(c_ptr), intent(in) :: TheFullFileNameProgram
    integer(int32), intent(in) :: strlen1
    type(c_ptr), intent(inout) :: FullFileNameProgramParameters
    integer(int32), intent(in) :: strlen2

    character(len=strlen1) :: string1
    character(len=strlen2) :: string2

    string1 = pointer2string(TheFullFileNameProgram, strlen1)
    string2 = pointer2string(FullFileNameProgramParameters, strlen2)
    call GetFileForProgramParameters(string1, string2)
    FullFileNameProgramParameters = string2pointer(string2)
end subroutine GetFileForProgramParameters_wrap


logical function FileExists_wrap(full_name, strlen)
    !! Wrapper for [[ac_global:FileExists]] for foreign languages.
    type(c_ptr), intent(in) :: full_name
    integer(int32), intent(in) :: strlen

    character(len=strlen) :: string

    string = pointer2string(full_name, strlen)
    FileExists_wrap = FileExists(string)
end function FileExists_wrap


subroutine SplitStringInTwoParams_wrap(StringIN, strlen, Par1, Par2)
    !! Wrapper for [[ac_global:SplitStringInTwoParams]] for foreign languages.
    type(c_ptr), intent(in) :: StringIN
    integer(int32), intent(in) :: strlen
    real(dp), intent(inout) :: Par1
    real(dp), intent(inout) :: Par2

    character(len=strlen) :: string

    string = pointer2string(StringIN, strlen)
    call SplitStringInTwoParams(string, Par1, Par2)
end subroutine SplitStringInTwoParams_wrap


subroutine SplitStringInThreeParams_wrap(StringIN, strlen, Par1, Par2, Par3)
    !! Wrapper for [[ac_global:SplitStringInTwoParams]] for foreign languages.
    type(c_ptr), intent(in) :: StringIN
    integer(int32), intent(in) :: strlen
    real(dp), intent(inout) :: Par1
    real(dp), intent(inout) :: Par2
    real(dp), intent(inout) :: Par3

    character(len=strlen) :: string

    string = pointer2string(StringIN, strlen)
    call SplitStringInThreeParams(string, Par1, Par2, Par3)
end subroutine SplitStringInThreeParams_wrap


subroutine LoadProjectDescription_wrap(DescriptionOfProject, strlen)
    !! Wrapper for [[ac_global:LoadProjectDescription]] for foreign languages.
    type(c_ptr), intent(inout) :: DescriptionOfProject
    integer(int32), intent(in) :: strlen

    character(len=strlen) :: string

    string = pointer2string(DescriptionOfProject, strlen)
    call LoadProjectDescription(string)

    DescriptionOfProject = string2pointer(string)
end subroutine LoadProjectDescription_wrap


subroutine CheckFilesInProject_wrap(Runi, AllOK)
    !! Wrapper for [[ac_global:CheckFilesInProject]] for foreign languages.
    integer(int32), intent(in) :: Runi
    logical(1), intent(out) :: AllOK

    logical :: AllOK_f

    call CheckFilesInProject(Runi, AllOK_f)
    AllOK = AllOK_f
end subroutine CheckFilesInProject_wrap


subroutine GenerateCO2Description_wrap(CO2FileFull, strlen1, CO2Description, &
            strlen2)
    !! Wrapper for [[ac_global:GenerateCO2Description]] for foreign languages.
    type(c_ptr), intent(in) :: CO2FileFull
    integer(int32), intent(in) :: strlen1
    type(c_ptr), intent(inout) :: CO2Description
    integer(int32), intent(in) :: strlen2

    character(len=strlen1) :: string1
    character(len=strlen2) :: string2

    string1 = pointer2string(CO2FileFull, strlen1)
    string2 = pointer2string(CO2Description, strlen2)
    call GenerateCO2Description(string1, string2)
end subroutine GenerateCO2Description_wrap


subroutine TimeToMaxCanopySF_wrap(CCo, CGC, CCx, L0, L12, L123, LToFlor, &
                                  LFlor, DeterminantCrop, L12SF, RedCGC, &
                                  RedCCx, ClassSF)
    real(dp), intent(in) :: CCo
    real(dp), intent(in) :: CGC
    real(dp), intent(in) :: CCx
    integer(int32), intent(in) :: L0
    integer(int32), intent(in) :: L12
    integer(int32), intent(in) :: L123
    integer(int32), intent(in) :: LToFlor
    integer(int32), intent(in) :: LFlor
    logical(1), intent(in) :: DeterminantCrop
    integer(int32), intent(inout) :: L12SF
    integer(int8), intent(inout) :: RedCGC
    integer(int8), intent(inout) :: RedCCx
    integer(int8), intent(inout) :: ClassSF

    logical :: DeterminantCrop_f

    DeterminantCrop_f = DeterminantCrop
    call TimeToMaxCanopySF(CCo, CGC, CCx, L0, L12, L123, LToFlor, &
                                  LFlor, DeterminantCrop_f, L12SF, RedCGC, &
                                  RedCCx, ClassSF)
end subroutine TimeToMaxCanopySF_wrap


subroutine DetermineLengthGrowthStages_wrap(CCoVal, CCxVal, CDCVal, L0, &
                        TotalLength, CGCgiven, TheDaysToCCini, ThePlanting, &
                        Length123, StLength, Length12, CGCVal)
    real(dp), intent(in) :: CCoVal
    real(dp), intent(in) :: CCxVal
    real(dp), intent(in) :: CDCVal
    integer(int32), intent(in) :: L0
    integer(int32), intent(in) :: TotalLength
    logical(1), intent(in) :: CGCgiven
    integer(int32), intent(in) :: TheDaysToCCini
    integer(intEnum), intent(in) :: ThePlanting
    integer(int32), intent(inout) :: Length123
    integer(int32), dimension(4), intent(inout) :: StLength
    integer(int32), intent(inout) :: Length12
    real(dp), intent(inout) :: CGCVal

    logical :: CGCgiven_f

    CGCgiven_f = CGCgiven
    call DetermineLengthGrowthStages(CCoVal, CCxVal, CDCVal, L0, TotalLength, &
                                     CGCgiven_f, TheDaysToCCini, ThePlanting, &
                                     Length123, StLength, Length12, CGCVal)
end subroutine DetermineLengthGrowthStages_wrap


subroutine LoadIrriScheduleInfo_wrap(FullName, strlen1)
    !! Wrapper for [[ac_global:LoadIrriScheduleInfo]] for foreign languages.
    type(c_ptr), intent(in) :: FullName
    integer(int32), intent(in) :: strlen1

    character(len=strlen1) :: string1

    string1 = pointer2string(FullName, strlen1)
    call LoadIrriScheduleInfo(string1)
end subroutine LoadIrriScheduleInfo_wrap


subroutine LoadClimate_wrap(FullName, strlen1, ClimateDescription, strlen2, &
                            TempFile, strlen3, EToFile, strlen4, &
                            RainFile, strlen5, CO2File, strlen6)
    !! Wrapper for [[ac_global:LoadClimate]] for foreign languages.
    type(c_ptr), intent(in) :: FullName
    integer(int32), intent(in) :: strlen1
    type(c_ptr), intent(inout) :: ClimateDescription
    integer(int32), intent(in) :: strlen2
    type(c_ptr), intent(inout) :: TempFile
    integer(int32), intent(in) :: strlen3
    type(c_ptr), intent(inout) :: EToFile
    integer(int32), intent(in) :: strlen4
    type(c_ptr), intent(inout) :: RainFile
    integer(int32), intent(in) :: strlen5
    type(c_ptr), intent(inout) :: CO2File
    integer(int32), intent(in) :: strlen6

    character(len=strlen1) :: string1
    character(len=strlen2) :: string2
    character(len=strlen1) :: string3
    character(len=strlen2) :: string4
    character(len=strlen1) :: string5
    character(len=strlen2) :: string6

    string1 = pointer2string(FullName, strlen1)
    string2 = pointer2string(ClimateDescription, strlen2)
    string3 = pointer2string(TempFile, strlen3)
    string4 = pointer2string(EToFile, strlen4)
    string5 = pointer2string(RainFile, strlen5)
    string6 = pointer2string(CO2File, strlen6)
    call LoadClimate(string1, string2, string3, string4, string5, string6)
end subroutine LoadClimate_wrap


subroutine LoadCropCalendar_wrap(FullName, strlen, GetOnset,GetOnsetTemp,DayNrStart,YearStart)
    !! Wrapper for [[ac_global:LoadCropCalendar]] for foreign languages.
    type(c_ptr), intent(in) :: FullName
    integer(int32), intent(in) :: strlen
    logical, intent(inout) :: GetOnset
    logical, intent(inout) :: GetOnsetTemp
    integer(int32), intent(inout) :: DayNrStart
    integer(int32), intent(in) :: YearStart

    character(len=strlen) :: string

    string = pointer2string(FullName, strlen)
    call LoadCropCalendar(string,GetOnset,GetOnsetTemp,DayNrStart,YearStart)
end subroutine LoadCropCalendar_wrap


function GetCO2File_wrap() result(c_pointer)
    !! Wrapper for [[ac_global:GetCO2File]] for foreign languages.
    type(c_ptr) :: c_pointer

    c_pointer = string2pointer(GetCO2File())
end function GetCO2File_wrap


subroutine SetCO2File_wrap(CO2File, strlen)
    !! Wrapper for [[ac_global:SetCO2File]] for foreign languages.
    type(c_ptr), intent(in) :: CO2File
    integer(int32), intent(in) :: strlen

    character(len=strlen) :: string

    string = pointer2string(CO2File, strlen)
    call SetCO2File(string)
end subroutine SetCO2File_wrap


function GetCO2FileFull_wrap() result(c_pointer)
    !! Wrapper for [[ac_global:GetCO2FileFull]] for foreign languages.
    type(c_ptr) :: c_pointer

    c_pointer = string2pointer(GetCO2FileFull())
end function GetCO2FileFull_wrap


subroutine SetCO2FileFull_wrap(CO2FileFull, strlen)
    !! Wrapper for [[ac_global:SetCO2FileFull]] for foreign languages.
    type(c_ptr), intent(in) :: CO2Filefull
    integer(int32), intent(in) :: strlen

    character(len=strlen) :: string

    string = pointer2string(CO2FileFull, strlen)
    call SetCO2Filefull(string)
end subroutine SetCO2FileFull_wrap


function GetCO2Description_wrap() result(c_pointer)
    !! Wrapper for [[ac_global:GetCO2Description]] for foreign languages.
    type(c_ptr) :: c_pointer

    c_pointer = string2pointer(GetCO2Description())
end function GetCO2Description_wrap


subroutine SetCO2Description_wrap(CO2Description, strlen)
    !! Wrapper for [[ac_global:SetCO2Description]] for foreign languages.
    type(c_ptr), intent(in) :: CO2Description
    integer(int32), intent(in) :: strlen

    character(len=strlen) :: string

    string = pointer2string(CO2Description, strlen)
    call SetCO2Description(string)
end subroutine SetCO2Description_wrap


function GetEToFile_wrap() result(c_pointer)
    !! Wrapper for [[ac_global:GetEToFile]] for foreign languages.
    type(c_ptr) :: c_pointer

    c_pointer = string2pointer(GetEToFile())
end function GetEToFile_wrap


subroutine SetEToFile_wrap(EToFile, strlen)
    !! Wrapper for [[ac_global:SetEToFile]] for foreign languages.
    type(c_ptr), intent(in) :: EToFile
    integer(int32), intent(in) :: strlen

    character(len=strlen) :: string

    string = pointer2string(EToFile, strlen)
    call SetEToFile(string)
end subroutine SetEToFile_wrap


function GetEToFileFull_wrap() result(c_pointer)
    !! Wrapper for [[ac_global:GetEToFilefull]] for foreign languages.
    type(c_ptr) :: c_pointer

    c_pointer = string2pointer(GetEToFileFull())
end function GetEToFileFull_wrap


subroutine SetEToFileFull_wrap(EToFileFull, strlen)
    !! Wrapper for [[ac_global:SetEToFileFull]] for foreign languages.
    type(c_ptr), intent(in) :: EToFileFull
    integer(int32), intent(in) :: strlen

    character(len=strlen) :: string

    string = pointer2string(EToFileFull, strlen)
    call SetEToFileFull(string)
end subroutine SetEToFileFull_wrap


function GetEToDescription_wrap() result(c_pointer)
    !! Wrapper for [[ac_global:GetEToDescription]] for foreign languages.
    type(c_ptr) :: c_pointer

    c_pointer = string2pointer(GetEToDescription())
end function GetEToDescription_wrap


subroutine SetEToDescription_wrap(EToDescription, strlen)
    !! Wrapper for [[ac_global:SetEToDescription]] for foreign languages.
    type(c_ptr), intent(in) :: EToDescription
    integer(int32), intent(in) :: strlen

    character(len=strlen) :: string

    string = pointer2string(EToDescription, strlen)
    call SetEToDescription(string)
end subroutine SetEToDescription_wrap


subroutine GetIrriDescription_wrap(IrriFileFull, strlen1, IrriDescription, &
            strlen2)
    !! Wrapper for [[ac_global:GetIrriDescription]] for foreign languages.
    type(c_ptr), intent(in) :: IrriFileFull
    integer(int32), intent(in) :: strlen1
    type(c_ptr), intent(inout) :: IrriDescription
    integer(int32), intent(in) :: strlen2

    character(len=strlen1) :: string1
    character(len=strlen2) :: string2

    string1 = pointer2string(IrriFileFull, strlen1)
    string2 = pointer2string(IrriDescription, strlen2)
    call GetIrriDescription(string1, string2)
end subroutine GetIrriDescription_wrap


function GetIrriFile_wrap() result(c_pointer)
    !! Wrapper for [[ac_global:GetIrriFile]] for foreign languages.
    type(c_ptr) :: c_pointer

    c_pointer = string2pointer(GetIrriFile())
end function GetIrriFile_wrap


subroutine SetIrriFile_wrap(IrriFile, strlen)
    !! Wrapper for [[ac_global:SetIrriFile]] for foreign languages.
    type(c_ptr), intent(in) :: IrriFile
    integer(int32), intent(in) :: strlen

    character(len=strlen) :: string

    string = pointer2string(IrriFile, strlen)
    call SetIrriFile(string)
end subroutine SetIrriFile_wrap


function GetIrriFileFull_wrap() result(c_pointer)
    !! Wrapper for [[ac_global:GetIrriFileFull]] for foreign languages.
    type(c_ptr) :: c_pointer

    c_pointer = string2pointer(GetIrriFileFull())
end function GetIrriFileFull_wrap


subroutine SetIrriFileFull_wrap(IrriFileFull, strlen)
    !! Wrapper for [[ac_global:SetIrriFileFull]] for foreign languages.
    type(c_ptr), intent(in) :: IrriFileFull
    integer(int32), intent(in) :: strlen

    character(len=strlen) :: string

    string = pointer2string(IrriFileFull, strlen)
    call SetIrriFileFull(string)
end subroutine SetIrriFileFull_wrap


function GetClimateFile_wrap() result(c_pointer)
    !! Wrapper for [[ac_global:GetClimateFile]] for foreign languages.
    type(c_ptr) :: c_pointer

    c_pointer = string2pointer(GetClimateFile())
end function GetClimateFile_wrap


subroutine SetClimateFile_wrap(ClimateFile, strlen)
    !! Wrapper for [[ac_global:SetClimateFile]] for foreign languages.
    type(c_ptr), intent(in) :: ClimateFile
    integer(int32), intent(in) :: strlen

    character(len=strlen) :: string

    string = pointer2string(ClimateFile, strlen)
    call SetClimateFile(string)
end subroutine SetClimateFile_wrap


function GetClimateFileFull_wrap() result(c_pointer)
    !! Wrapper for [[ac_global:GetClimateFileFull]] for foreign languages.
    type(c_ptr) :: c_pointer

    c_pointer = string2pointer(GetClimateFileFull())
end function GetClimateFileFull_wrap


subroutine SetClimateFileFull_wrap(ClimateFileFull, strlen)
    !! Wrapper for [[ac_global:SetClimateFileFull]] for foreign languages.
    type(c_ptr), intent(in) :: ClimateFileFull
    integer(int32), intent(in) :: strlen

    character(len=strlen) :: string

    string = pointer2string(ClimateFileFull, strlen)
    call SetClimateFileFull(string)
end subroutine SetClimateFileFull_wrap


subroutine SetIrriDescription_wrap(IrriDescription, strlen)
    !! Wrapper for [[ac_global:SetIrriDescription]] for foreign languages.
    type(c_ptr), intent(in) :: IrriDescription
    integer(int32), intent(in) :: strlen

    character(len=strlen) :: string

    string = pointer2string(IrriDescription, strlen)
    call SetIrriDescription(string)
end subroutine SetIrriDescription_wrap


function GetClimateDescription_wrap() result(c_pointer)
    !! Wrapper for [[ac_global:GetClimateDescription]] for foreign languages.
    type(c_ptr) :: c_pointer

    c_pointer = string2pointer(GetClimateDescription())
end function GetClimateDescription_wrap


subroutine SetClimateDescription_wrap(ClimateDescription, strlen)
    !! Wrapper for [[ac_global:SetClimateDescription]] for foreign languages.
    type(c_ptr), intent(in) :: ClimateDescription
    integer(int32), intent(in) :: strlen

    character(len=strlen) :: string

    string = pointer2string(ClimateDescription, strlen)
    call SetClimateDescription(string)
end subroutine SetClimateDescription_wrap


function GetClimFile_wrap() result(c_pointer)
    !! Wrapper for [[ac_global:GetClimFile]] for foreign languages.
    type(c_ptr) :: c_pointer

    c_pointer = string2pointer(GetClimFile())
end function GetClimFile_wrap


subroutine SetClimFile_wrap(ClimFile, strlen)
    !! Wrapper for [[ac_global:SetClimFile]] for foreign languages.
    type(c_ptr), intent(in) :: ClimFile
    integer(int32), intent(in) :: strlen

    character(len=strlen) :: string

    string = pointer2string(ClimFile, strlen)
    call SetClimFile(string)
end subroutine SetClimFile_wrap


function GetSWCiniFile_wrap() result(c_pointer)
    !! Wrapper for [[ac_global:GetSWCiniFile]] for foreign languages.
    type(c_ptr) :: c_pointer

    c_pointer = string2pointer(GetSWCiniFile())
end function GetSWCiniFile_wrap


subroutine SetSWCiniFile_wrap(SWCiniFile, strlen)
    !! Wrapper for [[ac_global:SetSWCiniFile]] for foreign languages.
    type(c_ptr), intent(in) :: SWCiniFile
    integer(int32), intent(in) :: strlen

    character(len=strlen) :: string

    string = pointer2string(SWCiniFile, strlen)
    call SetSWCiniFile(string)
end subroutine SetSWCiniFile_wrap


function GetSWCiniFileFull_wrap() result(c_pointer)
    !! Wrapper for [[ac_global:GetSWCiniFileFull]] for foreign languages.
    type(c_ptr) :: c_pointer

    c_pointer = string2pointer(GetSWCiniFileFull())
end function GetSWCiniFileFull_wrap


subroutine SetSWCiniFileFull_wrap(SWCiniFileFull, strlen)
    !! Wrapper for [[ac_global:SetSWCiniFileFull]] for foreign languages.
    type(c_ptr), intent(in) :: SWCiniFileFull
    integer(int32), intent(in) :: strlen

    character(len=strlen) :: string

    string = pointer2string(SWCiniFileFull, strlen)
    call SetSWCiniFileFull(string)
end subroutine SetSWCiniFileFull_wrap


function GetSWCiniDescription_wrap() result(c_pointer)
    !! Wrapper for [[ac_global:GetSWCiniDescription]] for foreign languages.
    type(c_ptr) :: c_pointer

    c_pointer = string2pointer(GetSWCiniDescription())
end function GetSWCiniDescription_wrap


subroutine SetSWCiniDescription_wrap(SWCiniDescription, strlen)
    !! Wrapper for [[ac_global:SetSWCiniDescription]] for foreign languages.
    type(c_ptr), intent(in) :: SWCiniDescription
    integer(int32), intent(in) :: strlen

    character(len=strlen) :: string

    string = pointer2string(SWCiniDescription, strlen)
    call SetSWCiniDescription(string)
end subroutine SetSWCiniDescription_wrap


function GetSimulParam_CNcorrection_wrap() result(CNcorrection)
    !! Wrapper for [[ac_global:GetSimulParam_CNcorrection]] for foreign languages.
    logical(1) :: CNcorrection

    CNcorrection = GetSimulParam_CNcorrection()
end function GetSimulParam_CNcorrection_wrap


function GetSimulParam_ConstGwt_wrap() result(ConstGwt)
    !! Wrapper for [[ac_global:GetSimulParam_ConstGwt]] for foreign languages.
    logical(1) :: ConstGwt

    ConstGwt = GetSimulParam_ConstGwt()
end function GetSimulParam_ConstGwt_wrap


subroutine SetSimulParam_CNcorrection_wrap(CNcorrection)
    !! Wrapper for [[ac_global:SetSimulParam_CNcorrection]] for foreign languages.
    logical(1), intent(in) :: CNcorrection

    logical :: bool

    bool = CNcorrection
    call SetSimulParam_CNcorrection(bool)
end subroutine SetSimulParam_CNcorrection_wrap


subroutine SetSimulParam_ConstGwt_wrap(ConstGwt)
    !! Wrapper for [[ac_global:SetSimulParam_ConstGwt]] for foreign languages.
    logical(1), intent(in) :: ConstGwt

    logical :: bool

    bool = ConstGwt
    call SetSimulParam_ConstGwt(bool)
end subroutine SetSimulParam_ConstGwt_wrap


function GetPathNameProg_wrap() result(c_pointer)
    !! Wrapper for [[ac_global:GetPathNameProg]] for foreign languages.
    type(c_ptr) :: c_pointer

    c_pointer = string2pointer(GetPathNameProg())
end function GetPathNameProg_wrap


subroutine SetPathNameProg_wrap(PathNameProg, strlen)
    !! Wrapper for [[ac_global:SetPathNameProg]] for foreign languages.
    type(c_ptr), intent(in) :: PathNameProg
    integer(int32), intent(in) :: strlen

    character(len=strlen) :: string

    string = pointer2string(PathNameProg, strlen)
    call SetPathNameProg(string)
end subroutine SetPathNameProg_wrap


function GetPathNameOutp_wrap() result(c_pointer)
    !! Wrapper for [[ac_global:GetPathNameOutp]] for foreign languages.
    type(c_ptr) :: c_pointer

    c_pointer = string2pointer(GetPathNameOutp())
end function GetPathNameOutp_wrap


subroutine SetPathNameOutp_wrap(PathNameOutp, strlen)
    !! Wrapper for [[ac_global:SetPathNameOutp]] for foreign languages.
    type(c_ptr), intent(in) :: PathNameOutp
    integer(int32), intent(in) :: strlen

    character(len=strlen) :: string

    string = pointer2string(PathNameOutp, strlen)
    call SetPathNameOutp(string)
end subroutine SetPathNameOutp_wrap


function GetPathNameSimul_wrap() result(c_pointer)
    !! Wrapper for [[ac_global:GetPathNameSimul]] for foreign languages.
    type(c_ptr) :: c_pointer

    c_pointer = string2pointer(GetPathNameSimul())
end function GetPathNameSimul_wrap


subroutine SetPathNameSimul_wrap(PathNameSimul, strlen)
    !! Wrapper for [[ac_global:SetPathNameSimul]] for foreign languages.
    type(c_ptr), intent(in) :: PathNameSimul
    integer(int32), intent(in) :: strlen

    character(len=strlen) :: string

    string = pointer2string(PathNameSimul, strlen)
    call SetPathNameSimul(string)
end subroutine SetPathNameSimul_wrap


function GetOutputName_wrap() result(c_pointer)
    !! Wrapper for [[ac_global:GetOutputName]] for foreign languages.
    type(c_ptr) :: c_pointer

    c_pointer = string2pointer(GetOutputName())
end function GetOutputName_wrap


subroutine SetOutputName_wrap(OutputName, strlen)
    !! Wrapper for [[ac_global:SetOutputName]] for foreign languages.
    type(c_ptr), intent(in) :: OutputName
    integer(int32), intent(in) :: strlen

    character(len=strlen) :: string

    string = pointer2string(OutputName, strlen)
    call SetOutputName(string)
end subroutine SetOutputName_wrap


function GetPerennialPeriod_GenerateOnset_wrap() result(GenerateOnset)
    !! Wrapper for [[ac_global:GetPerennialPeriod_GenerateOnset]] for foreign languages.
    logical(1) :: GenerateOnset

    GenerateOnset = GetPerennialPeriod_GenerateOnset()
end function GetPerennialPeriod_GenerateOnset_wrap

function GetPerennialPeriod_GenerateEnd_wrap() result(GenerateEnd)
    !! Wrapper for [[ac_global:GetPerennialPeriod_GenerateEnd]] for foreign languages.
    logical(1) :: GenerateEnd

    GenerateEnd = GetPerennialPeriod_GenerateEnd()
end function GetPerennialPeriod_GenerateEnd_wrap


subroutine SetPerennialPeriod_GenerateOnset_wrap(GenerateOnset)
    !! Wrapper for [[ac_global:SetPerennialPeriod_GenerateOnset]] for foreign languages.
    logical(1), intent(in) :: GenerateOnset

    logical :: bool

    bool = GenerateOnset
    call SetPerennialPeriod_GenerateOnset(bool)
end subroutine SetPerennialPeriod_GenerateOnset_wrap


subroutine SetPerennialPeriod_GenerateEnd_wrap(GenerateEnd)
    !! Wrapper for [[ac_global:SetPerennialPeriod_GenerateEnd]] for foreign languages.
    logical(1), intent(in) :: GenerateEnd

    logical :: bool

    bool = GenerateEnd
    call SetPerennialPeriod_GenerateEnd(bool)
end subroutine SetPerennialPeriod_GenerateEnd_wrap


function GetProjectFile_wrap() result(c_pointer)
    !! Wrapper for [[ac_global:GetProjectFile]] for foreign languages.
    type(c_ptr) :: c_pointer

    c_pointer = string2pointer(GetProjectFile())
end function GetProjectFile_wrap


subroutine SetProjectFile_wrap(ProjectFile, strlen)
    !! Wrapper for [[ac_global:SetProjectFile]] for foreign languages.
    type(c_ptr), intent(in) :: ProjectFile
    integer(int32), intent(in) :: strlen

    character(len=strlen) :: string

    string = pointer2string(ProjectFile, strlen)
    call SetProjectFile(string)
end subroutine SetProjectFile_wrap


function GetProjectFileFull_wrap() result(c_pointer)
    !! Wrapper for [[ac_global:GetProjectFileFull]] for foreign languages.
    type(c_ptr) :: c_pointer

    c_pointer = string2pointer(GetProjectFileFull())
end function GetProjectFileFull_wrap


subroutine SetProjectFileFull_wrap(ProjectFileFull, strlen)
    !! Wrapper for [[ac_global:SetProjectFileFull]] for foreign languages.
    type(c_ptr), intent(in) :: ProjectFileFull
    integer(int32), intent(in) :: strlen

    character(len=strlen) :: string

    string = pointer2string(ProjectFileFull, strlen)
    call SetProjectFileFull(string)
end subroutine SetProjectFileFull_wrap


function GetMultipleProjectFile_wrap() result(c_pointer)
    !! Wrapper for [[ac_global:GetMultipleProjectFile]] for foreign languages.
    type(c_ptr) :: c_pointer

    c_pointer = string2pointer(GetMultipleProjectFile())
end function GetMultipleProjectFile_wrap


subroutine SetMultipleProjectFile_wrap(MultipleProjectFile, strlen)
    !! Wrapper for [[ac_global:SetMultipleProjectFile]] for foreign languages.
    type(c_ptr), intent(in) :: MultipleProjectFile
    integer(int32), intent(in) :: strlen

    character(len=strlen) :: string

    string = pointer2string(MultipleProjectFile, strlen)
    call SetMultipleProjectFile(string)
end subroutine SetMultipleProjectFile_wrap


function GetOnset_GenerateOn_wrap() result(GenerateOn)
    !! Wrapper for [[ac_global:GetOnset_GenerateOn]] for foreign languages.
    logical(1) :: GenerateOn

    GenerateOn = GetOnset_GenerateOn()
end function GetOnset_GenerateOn_wrap


function GetOnset_GenerateTempOn_wrap() result(GenerateTempOn)
    !! Wrapper for [[ac_global:GetOnset_GenerateTempOn]] for foreign languages.
    logical(1) :: GenerateTempOn

    GenerateTempOn = GetOnset_GenerateTempOn()
end function GetOnset_GenerateTempOn_wrap


subroutine SetOnset_GenerateOn_wrap(GenerateOn)
    !! Wrapper for [[ac_global:SetOnset_GenerateOn]] for foreign languages.
    logical(1), intent(in) :: GenerateOn

    logical :: bool

    bool = GenerateOn
    call SetOnset_GenerateOn(bool)
end subroutine SetOnset_GenerateOn_wrap


subroutine SetOnset_GenerateTempOn_wrap(GenerateTempOn)
    !! Wrapper for [[ac_global:SetOnset_GenerateTempOn]] for foreign languages.
    logical(1), intent(in) :: GenerateTempOn

    logical :: bool

    bool = GenerateTempOn
    call SetOnset_GenerateTempOn(bool)
end subroutine SetOnset_GenerateTempOn_wrap


function GetEndSeason_GenerateTempOn_wrap() result(GenerateTempOn)
    !! Wrapper for [[ac_global:GetEndSeason_GenerateTempOn]] for foreign languages.
    logical(1) :: GenerateTempOn

    GenerateTempOn = GetEndSeason_GenerateTempOn()
end function GetEndSeason_GenerateTempOn_wrap


subroutine SetEndSeason_GenerateTempOn_wrap(GenerateTempOn)
    !! Wrapper for [[ac_global:SetEndSeason_GenerateTempOn]] for foreign languages.
    logical(1), intent(in) :: GenerateTempOn

    logical :: bool

    bool = GenerateTempOn
    call SetEndSeason_GenerateTempOn(bool)
end subroutine SetEndSeason_GenerateTempOn_wrap


function GetMultipleProjectFileFull_wrap() result(c_pointer)
    !! Wrapper for [[ac_global:GetMultipleProjectFileFull]] for foreign languages.
    type(c_ptr) :: c_pointer

    c_pointer = string2pointer(GetMultipleProjectFileFull())
end function GetMultipleProjectFileFull_wrap


subroutine SetMultipleProjectFileFull_wrap(MultipleProjectFileFull, strlen)
    !! Wrapper for [[ac_global:SetMultipleProjectFileFull]] for foreign languages.
    type(c_ptr), intent(in) :: MultipleProjectFileFull
    integer(int32), intent(in) :: strlen

    character(len=strlen) :: string

    string = pointer2string(MultipleProjectFileFull, strlen)
    call SetMultipleProjectFileFull(string)
end subroutine SetMultipleProjectFileFull_wrap


function GetFullFileNameProgramParameters_wrap() result(c_pointer)
    !! Wrapper for [[ac_global:GetFullFileNameProgramParameters]] for foreign languages.
    type(c_ptr) :: c_pointer

    c_pointer = string2pointer(GetFullFileNameProgramParameters())
end function GetFullFileNameProgramParameters_wrap


subroutine SetFullFileNameProgramParameters_wrap(FullFileNameProgramParameters, strlen)
    !! Wrapper for [[ac_global:SetFullFileNameProgramParameters]] for foreign languages.
    type(c_ptr), intent(in) :: FullFileNameProgramParameters
    integer(int32), intent(in) :: strlen

    character(len=strlen) :: string

    string = pointer2string(FullFileNameProgramParameters, strlen)
    call SetFullFileNameProgramParameters(string)
end subroutine SetFullFileNameProgramParameters_wrap


function GetRainFile_wrap() result(c_pointer)
    !! Wrapper for [[ac_global:GetRainFile]] for foreign languages.
    type(c_ptr) :: c_pointer

    c_pointer = string2pointer(GetRainFile())
end function GetRainFile_wrap


subroutine SetRainFile_wrap(RainFile, strlen)
    !! Wrapper for [[ac_global:SetRainFile]] for foreign languages.
    type(c_ptr), intent(in) :: RainFile
    integer(int32), intent(in) :: strlen

    character(len=strlen) :: string

    string = pointer2string(RainFile, strlen)
    call SetRainFile(string)
end subroutine SetRainFile_wrap


function GetRainFileFull_wrap() result(c_pointer)
    !! Wrapper for [[ac_global:GetRainFileFull]] for foreign languages.
    type(c_ptr) :: c_pointer

    c_pointer = string2pointer(GetRainFileFull())
end function GetRainFileFull_wrap


subroutine SetRainFileFull_wrap(RainFileFull, strlen)
    !! Wrapper for [[ac_global:SetRainFileFull]] for foreign languages.
    type(c_ptr), intent(in) :: RainFileFull
    integer(int32), intent(in) :: strlen

    character(len=strlen) :: string

    string = pointer2string(RainFileFull, strlen)
    call SetRainFileFull(string)
end subroutine SetRainFileFull_wrap


function GetRainDescription_wrap() result(c_pointer)
    !! Wrapper for [[ac_global:GetRainDescription]] for foreign languages.
    type(c_ptr) :: c_pointer

    c_pointer = string2pointer(GetRainDescription())
end function GetRainDescription_wrap


subroutine SetRainDescription_wrap(RainDescription, strlen)
    !! Wrapper for [[ac_global:SetRainDescription]] for foreign languages.
    type(c_ptr), intent(in) :: RainDescription
    integer(int32), intent(in) :: strlen

    character(len=strlen) :: string

    string = pointer2string(RainDescription, strlen)
    call SetRainDescription(string)
end subroutine SetRainDescription_wrap


function GetCalendarFile_wrap() result(c_pointer)
    !! Wrapper for [[ac_global:GetCalendarFile]] for foreign languages.
    type(c_ptr) :: c_pointer

    c_pointer = string2pointer(GetCalendarFile())
end function GetCalendarFile_wrap


subroutine SetCalendarFile_wrap(CalendarFile, strlen)
    !! Wrapper for [[ac_global:SetCalendarFile]] for foreign languages.
    type(c_ptr), intent(in) :: CalendarFile
    integer(int32), intent(in) :: strlen

    character(len=strlen) :: string

    string = pointer2string(CalendarFile, strlen)
    call SetCalendarFile(string)
end subroutine SetCalendarFile_wrap


function GetCalendarFileFull_wrap() result(c_pointer)
    !! Wrapper for [[ac_global:GetCalendarFileFull]] for foreign languages.
    type(c_ptr) :: c_pointer

    c_pointer = string2pointer(GetCalendarFileFull())
end function GetCalendarFileFull_wrap


subroutine SetCalendarFileFull_wrap(CalendarFileFull, strlen)
    !! Wrapper for [[ac_global:SetCalendarFileFull]] for foreign languages.
    type(c_ptr), intent(in) :: CalendarFileFull
    integer(int32), intent(in) :: strlen

    character(len=strlen) :: string

    string = pointer2string(CalendarFileFull, strlen)
    call SetCalendarFileFull(string)
end subroutine SetCalendarFileFull_wrap


function GetCalendarDescription_wrap() result(c_pointer)
    !! Wrapper for [[ac_global:GetCalendarDescription]] for foreign languages.
    type(c_ptr) :: c_pointer

    c_pointer = string2pointer(GetCalendarDescription())
end function GetCalendarDescription_wrap


subroutine SetCalendarDescription_wrap(CalendarDescription, strlen)
    !! Wrapper for [[ac_global:SetCalendarDescription]] for foreign languages.
    type(c_ptr), intent(in) :: CalendarDescription
    integer(int32), intent(in) :: strlen

    character(len=strlen) :: string

    string = pointer2string(CalendarDescription, strlen)
    call SetCalendarDescription(string)
end subroutine SetCalendarDescription_wrap


function GetCropFile_wrap() result(c_pointer)
    !! Wrapper for [[ac_global:GetCropFile]] for foreign languages.
    type(c_ptr) :: c_pointer

    c_pointer = string2pointer(GetCropFile())
end function GetCropFile_wrap


subroutine SetCropFile_wrap(CropFile, strlen)
    !! Wrapper for [[ac_global:SetCropFile]] for foreign languages.
    type(c_ptr), intent(in) :: CropFile
    integer(int32), intent(in) :: strlen

    character(len=strlen) :: string

    string = pointer2string(CropFile, strlen)
    call SetCropFile(string)
end subroutine SetCropFile_wrap


function GetCropFileFull_wrap() result(c_pointer)
    !! Wrapper for [[ac_global:GetCropFileFull]] for foreign languages.
    type(c_ptr) :: c_pointer

    c_pointer = string2pointer(GetCropFileFull())
end function GetCropFileFull_wrap


subroutine SetCropFileFull_wrap(CropFileFull, strlen)
    !! Wrapper for [[ac_global:SetCropFileFull]] for foreign languages.
    type(c_ptr), intent(in) :: CropFileFull
    integer(int32), intent(in) :: strlen

    character(len=strlen) :: string

    string = pointer2string(CropFileFull, strlen)
    call SetCropFileFull(string)
end subroutine SetCropFileFull_wrap


function GetCropDescription_wrap() result(c_pointer)
    !! Wrapper for [[ac_global:GetCropDescription]] for foreign languages.
    type(c_ptr) :: c_pointer

    c_pointer = string2pointer(GetCropDescription())
end function GetCropDescription_wrap


subroutine SetCropDescription_wrap(CropDescription, strlen)
    !! Wrapper for [[ac_global:SetCropDescription]] for foreign languages.
    type(c_ptr), intent(in) :: CropDescription
    integer(int32), intent(in) :: strlen

    character(len=strlen) :: string

    string = pointer2string(CropDescription, strlen)
    call SetCropDescription(string)
end subroutine SetCropDescription_wrap


function GetProfFile_wrap() result(c_pointer)
    !! Wrapper for [[ac_global:GetProfFile]] for foreign languages.
    type(c_ptr) :: c_pointer

    c_pointer = string2pointer(GetProfFile())
end function GetProfFile_wrap


subroutine SetProfFile_wrap(ProfFile, strlen)
    !! Wrapper for [[ac_global:SetProfFile]] for foreign languages.
    type(c_ptr), intent(in) :: ProfFile
    integer(int32), intent(in) :: strlen

    character(len=strlen) :: string

    string = pointer2string(ProfFile, strlen)
    call SetProfFile(string)
end subroutine SetProfFile_wrap


function GetProfFilefull_wrap() result(c_pointer)
    !! Wrapper for [[ac_global:GetProfFilefull]] for foreign languages.
    type(c_ptr) :: c_pointer

    c_pointer = string2pointer(GetProfFilefull())
end function GetProfFilefull_wrap


subroutine SetProfFilefull_wrap(ProfFilefull, strlen)
    !! Wrapper for [[ac_global:SetProfFilefull]] for foreign languages.
    type(c_ptr), intent(in) :: ProfFilefull
    integer(int32), intent(in) :: strlen

    character(len=strlen) :: string

    string = pointer2string(ProfFilefull, strlen)
    call SetProfFilefull(string)
end subroutine SetProfFilefull_wrap

function GetProfDescription_wrap() result(c_pointer)
    !! Wrapper for [[ac_global:GetProfDescription]] for foreign languages.
    type(c_ptr) :: c_pointer

    c_pointer = string2pointer(GetProfDescription())
end function GetProfDescription_wrap


subroutine SetProfDescription_wrap(ProfDescription, strlen)
    !! Wrapper for [[ac_global:SetProfDescription]] for foreign languages.
    type(c_ptr), intent(in) :: ProfDescription
    integer(int32), intent(in) :: strlen

    character(len=strlen) :: string

    string = pointer2string(ProfDescription, strlen)
    call SetProfDescription(string)
end subroutine SetProfDescription_wrap


function GetManFile_wrap() result(c_pointer)
    !! Wrapper for [[ac_global:GetManFile]] for foreign languages.
    type(c_ptr) :: c_pointer

    c_pointer = string2pointer(GetManFile())
end function GetManFile_wrap


subroutine SetManFile_wrap(ManFile, strlen)
    !! Wrapper for [[ac_global:SetManFile]] for foreign languages.
    type(c_ptr), intent(in) :: ManFile
    integer(int32), intent(in) :: strlen

    character(len=strlen) :: string

    string = pointer2string(ManFile, strlen)
    call SetManFile(string)
end subroutine SetManFile_wrap


function GetManFilefull_wrap() result(c_pointer)
    !! Wrapper for [[ac_global:GetManFilefull]] for foreign languages.
    type(c_ptr) :: c_pointer

    c_pointer = string2pointer(GetManFilefull())
end function GetManFilefull_wrap


subroutine SetManFilefull_wrap(ManFilefull, strlen)
    !! Wrapper for [[ac_global:SetManFilefull]] for foreign languages.
    type(c_ptr), intent(in) :: ManFilefull
    integer(int32), intent(in) :: strlen

    character(len=strlen) :: string

    string = pointer2string(ManFilefull, strlen)
    call SetManFilefull(string)
end subroutine SetManFilefull_wrap


function GetManagement_Cuttings_Considered_wrap() result(Considered_f)

    logical(1) :: Considered_f

    Considered_f = GetManagement_Cuttings_Considered()
end function GetManagement_Cuttings_Considered_wrap


function GetManagement_Cuttings_Generate_wrap() result(Generate_f)

    logical(1) :: Generate_f

    Generate_f = GetManagement_Cuttings_Generate()
end function GetManagement_Cuttings_Generate_wrap


function GetManagement_Cuttings_HarvestEnd_wrap() result(HarvestEnd_f)

    logical(1) :: HarvestEnd_f

    HarvestEnd_f = GetManagement_Cuttings_HarvestEnd()
end function GetManagement_Cuttings_HarvestEnd_wrap


subroutine SetManagement_Cuttings_Considered_wrap(Considered)
    logical(1), intent(in) :: Considered

    logical :: Considered_f

    Considered_f = Considered
    call SetManagement_Cuttings_Considered(Considered_f)
end subroutine SetManagement_Cuttings_Considered_wrap


subroutine SetManagement_Cuttings_Generate_wrap(Generate)
    logical(1), intent(in) :: Generate

    logical :: Generate_f

    Generate_f = Generate
    call SetManagement_Cuttings_Generate(Generate_f)
end subroutine SetManagement_Cuttings_Generate_wrap


subroutine SetManagement_Cuttings_HarvestEnd_wrap(HarvestEnd)
    logical(1), intent(in) :: HarvestEnd

    logical :: HarvestEnd_f

    HarvestEnd_f = HarvestEnd
    call SetManagement_Cuttings_HarvestEnd(HarvestEnd_f)
end subroutine SetManagement_Cuttings_HarvestEnd_wrap


function GetManagement_RunoffOn_wrap() result(RunoffOn_f)

    logical(1) :: RunoffOn_f

    RunoffOn_f = GetManagement_RunoffOn()
end function GetManagement_RunoffOn_wrap


subroutine SetManagement_RunoffOn_wrap(RunoffOn)
    logical(1), intent(in) :: RunoffOn

    logical :: RunoffOn_f

    RunoffOn_f = RunoffOn
    call SetManagement_RunoffOn(RunoffOn_f)
end subroutine SetManagement_RunoffOn_wrap


function GetOffSeasonFile_wrap() result(c_pointer)
    !! Wrapper for [[ac_global:GetOffSeasonFile]] for foreign languages.
    type(c_ptr) :: c_pointer

    c_pointer = string2pointer(GetOffSeasonFile())
end function GetOffSeasonFile_wrap


subroutine SetOffSeasonFile_wrap(OffSeasonFile, strlen)
    !! Wrapper for [[ac_global:SetvFile]] for foreign languages.
    type(c_ptr), intent(in) :: OffSeasonFile
    integer(int32), intent(in) :: strlen

    character(len=strlen) :: string

    string = pointer2string(OffSeasonFile, strlen)
    call SetOffSeasonFile(string)
end subroutine SetOffSeasonFile_wrap


function GetOffSeasonFilefull_wrap() result(c_pointer)
    !! Wrapper for [[ac_global:GetOffSeasonFilefull]] for foreign languages.
    type(c_ptr) :: c_pointer

    c_pointer = string2pointer(GetOffSeasonFilefull())
end function GetOffSeasonFilefull_wrap


subroutine SetOffSeasonFilefull_wrap(OffSeasonFilefull, strlen)
    !! Wrapper for [[ac_global:SetOffSeasonFilefull]] for foreign languages.
    type(c_ptr), intent(in) :: OffSeasonFilefull
    integer(int32), intent(in) :: strlen

    character(len=strlen) :: string

    string = pointer2string(OffSeasonFilefull, strlen)
    call SetOffSeasonFilefull(string)
end subroutine SetOffSeasonFilefull_wrap


function GetObservationsFile_wrap() result(c_pointer)
    !! Wrapper for [[ac_global:GetObservationsFile]] for foreign languages.
    type(c_ptr) :: c_pointer

    c_pointer = string2pointer(GetObservationsFile())
end function GetObservationsFile_wrap


subroutine SetObservationsFile_wrap(ObservationsFile, strlen)
    !! Wrapper for [[ac_global:SetvFile]] for foreign languages.
    type(c_ptr), intent(in) :: ObservationsFile
    integer(int32), intent(in) :: strlen

    character(len=strlen) :: string

    string = pointer2string(ObservationsFile, strlen)
    call SetObservationsFile(string)
end subroutine SetObservationsFile_wrap


function GetObservationsFilefull_wrap() result(c_pointer)
    !! Wrapper for [[ac_global:GetObservationsFilefull]] for foreign languages.
    type(c_ptr) :: c_pointer

    c_pointer = string2pointer(GetObservationsFilefull())
end function GetObservationsFilefull_wrap


subroutine SetObservationsFilefull_wrap(ObservationsFilefull, strlen)
    !! Wrapper for [[ac_global:SetObservationsFilefull]] for foreign languages.
    type(c_ptr), intent(in) :: ObservationsFilefull
    integer(int32), intent(in) :: strlen

    character(len=strlen) :: string

    string = pointer2string(ObservationsFilefull, strlen)
    call SetObservationsFilefull(string)
end subroutine SetObservationsFilefull_wrap


function GetObservationsDescription_wrap() result(c_pointer)
    !! Wrapper for [[ac_global:GetObservationsDescription]] for foreign languages.
    type(c_ptr) :: c_pointer

    c_pointer = string2pointer(GetObservationsDescription())
end function GetObservationsDescription_wrap


subroutine SetObservationsDescription_wrap(ObservationsDescription, strlen)
    !! Wrapper for [[ac_global:SetObservationsDescription]] for foreign languages.
    type(c_ptr), intent(in) :: ObservationsDescription
    integer(int32), intent(in) :: strlen

    character(len=strlen) :: string

    string = pointer2string(ObservationsDescription, strlen)
    call SetObservationsDescription(string)
end subroutine SetObservationsDescription_wrap


function GetGroundWaterFile_wrap() result(c_pointer)
    !! Wrapper for [[ac_global:GetGroundWaterFile]] for foreign languages.
    type(c_ptr) :: c_pointer

    c_pointer = string2pointer(GetGroundWaterFile())
end function GetGroundWaterFile_wrap


subroutine SetGroundWaterFile_wrap(GroundWaterFile, strlen)
    !! Wrapper for [[ac_global:SetvFile]] for foreign languages.
    type(c_ptr), intent(in) :: GroundWaterFile
    integer(int32), intent(in) :: strlen

    character(len=strlen) :: string

    string = pointer2string(GroundWaterFile, strlen)
    call SetGroundWaterFile(string)
end subroutine SetGroundWaterFile_wrap


function GetGroundWaterFilefull_wrap() result(c_pointer)
    !! Wrapper for [[ac_global:GetGroundWaterFilefull]] for foreign languages.
    type(c_ptr) :: c_pointer

    c_pointer = string2pointer(GetGroundWaterFilefull())
end function GetGroundWaterFilefull_wrap


subroutine SetGroundWaterFilefull_wrap(GroundWaterFilefull, strlen)
    !! Wrapper for [[ac_global:SetGroundWaterFilefull]] for foreign languages.
    type(c_ptr), intent(in) :: GroundWaterFilefull
    integer(int32), intent(in) :: strlen

    character(len=strlen) :: string

    string = pointer2string(GroundWaterFilefull, strlen)
    call SetGroundWaterFilefull(string)
end subroutine SetGroundWaterFilefull_wrap


function GetTemperatureFile_wrap() result(c_pointer)
    !! Wrapper for [[ac_global:GetTemperatureFile]] for foreign languages.
    type(c_ptr) :: c_pointer

    c_pointer = string2pointer(GetTemperatureFile())
end function GetTemperatureFile_wrap


subroutine SetTemperatureFile_wrap(TemperatureFile, strlen)
    !! Wrapper for [[ac_global:TemperatureFile]] for foreign languages.
    type(c_ptr), intent(in) :: TemperatureFile
    integer(int32), intent(in) :: strlen

    character(len=strlen) :: string

    string = pointer2string(TemperatureFile, strlen)
    call SetTemperatureFile(string)
end subroutine SetTemperatureFile_wrap


function GetTemperatureFilefull_wrap() result(c_pointer)
    !! Wrapper for [[ac_global:GetTemperatureFilefull]] for foreign languages.
    type(c_ptr) :: c_pointer

    c_pointer = string2pointer(GetTemperatureFilefull())
end function GetTemperatureFilefull_wrap


subroutine SetTemperatureFilefull_wrap(TemperatureFilefull, strlen)
    !! Wrapper for [[ac_global:TemperatureFilefull]] for foreign languages.
    type(c_ptr), intent(in) :: TemperatureFilefull
    integer(int32), intent(in) :: strlen

    character(len=strlen) :: string

    string = pointer2string(TemperatureFilefull, strlen)
    call SetTemperatureFilefull(string)
end subroutine SetTemperatureFilefull_wrap


function GetTemperatureDescription_wrap() result(c_pointer)
    !! Wrapper for [[ac_global:GetTemperatureDescription]] for foreign languages.
    type(c_ptr) :: c_pointer

    c_pointer = string2pointer(GetTemperatureDescription())
end function GetTemperatureDescription_wrap


subroutine SetTemperatureDescription_wrap(TemperatureDescription, strlen)
    !! Wrapper for [[ac_global:SetTemperatureDescription]] for foreign languages.
    type(c_ptr), intent(in) :: TemperatureDescription
    integer(int32), intent(in) :: strlen

    character(len=strlen) :: string

    string = pointer2string(TemperatureDescription, strlen)
    call SetTemperatureDescription(string)
end subroutine SetTemperatureDescription_wrap


function GetClimDescription_wrap() result(c_pointer)
    !! Wrapper for [[ac_global:GetClimDescription]] for foreign languages.
    type(c_ptr) :: c_pointer

    c_pointer = string2pointer(GetClimDescription())
end function GetClimDescription_wrap


subroutine SetClimDescription_wrap(ClimDescription, strlen)
    !! Wrapper for [[ac_global:SetClimDescription]] for foreign languages.
    type(c_ptr), intent(in) :: ClimDescription
    integer(int32), intent(in) :: strlen

    character(len=strlen) :: string

    string = pointer2string(ClimDescription, strlen)
    call SetClimDescription(string)
end subroutine SetClimDescription_wrap


subroutine SetTemperatureRecord_ToString_wrap(&
                     TemperatureRecord_ToString, strlen)
    !! Wrapper for [[ac_global:TemperatureRecord_ToString]] for foreign
    !languages.
    type(c_ptr), intent(in) :: TemperatureRecord_ToString
    integer(int32), intent(in) :: strlen

    character(len=strlen) :: string

    string = pointer2string(TemperatureRecord_ToString, strlen)
    call SetTemperatureRecord_ToString(string)
end subroutine SetTemperatureRecord_ToString_wrap


function GetTemperatureRecord_ToString_wrap() result(c_pointer)
    !! Wrapper for [[ac_global:GetTemperatureRecord_ToString]] for foreign
    !languages.
    type(c_ptr) :: c_pointer

    c_pointer = string2pointer(GetTemperatureRecord_ToString())
end function GetTemperatureRecord_ToString_wrap


subroutine SetTemperatureRecord_FromString_wrap(&
                     TemperatureRecord_FromString, strlen)
    !! Wrapper for [[ac_global:TemperatureRecord_FromString]] for foreign
    !languages.
    type(c_ptr), intent(in) :: TemperatureRecord_FromString
    integer(int32), intent(in) :: strlen

    character(len=strlen) :: string

    string = pointer2string(TemperatureRecord_FromString, strlen)
    call SetTemperatureRecord_FromString(string)
end subroutine SetTemperatureRecord_FromString_wrap


function GetTemperatureRecord_FromString_wrap() result(c_pointer)
    !! Wrapper for [[ac_global:GetTemperatureRecord_FromString]] for foreign
    !languages.
    type(c_ptr) :: c_pointer

    c_pointer = string2pointer(GetTemperatureRecord_FromString())
end function GetTemperatureRecord_FromString_wrap


subroutine SetClimRecord_ToString_wrap(&
                     ClimRecord_ToString, strlen)
    !! Wrapper for [[ac_global:ClimRecord_ToString]] for foreign
    !languages.
    type(c_ptr), intent(in) :: ClimRecord_ToString
    integer(int32), intent(in) :: strlen

    character(len=strlen) :: string

    string = pointer2string(ClimRecord_ToString, strlen)
    call SetClimRecord_ToString(string)
end subroutine SetClimRecord_ToString_wrap


function GetClimRecord_ToString_wrap() result(c_pointer)
    !! Wrapper for [[ac_global:GetClimRecord_ToString]] for
    !foreign
    !languages.
    type(c_ptr) :: c_pointer

    c_pointer = string2pointer(GetClimRecord_ToString())
end function GetClimRecord_ToString_wrap


subroutine SetClimRecord_FromString_wrap(&
                     ClimRecord_FromString, strlen)
    !! Wrapper for [[ac_global:ClimRecord_FromString]] for
    !foreign
    !languages.
    type(c_ptr), intent(in) :: ClimRecord_FromString
    integer(int32), intent(in) :: strlen

    character(len=strlen) :: string

    string = pointer2string(ClimRecord_FromString, strlen)
    call SetClimRecord_FromString(string)
end subroutine SetClimRecord_FromString_wrap


function GetClimRecord_FromString_wrap() result(c_pointer)
    !! Wrapper for [[ac_global:GetClimRecord_FromString]] for
    !foreign
    !languages.
    type(c_ptr) :: c_pointer

    c_pointer = string2pointer(GetClimRecord_FromString())
end function GetClimRecord_FromString_wrap


subroutine SetRainRecord_ToString_wrap(&
                     RainRecord_ToString, strlen)
    !! Wrapper for [[ac_global:RainRecord_ToString]] for foreign
    !languages.
    type(c_ptr), intent(in) :: RainRecord_ToString
    integer(int32), intent(in) :: strlen

    character(len=strlen) :: string

    string = pointer2string(RainRecord_ToString, strlen)
    call SetRainRecord_ToString(string)
end subroutine SetRainRecord_ToString_wrap


function GetRainRecord_ToString_wrap() result(c_pointer)
    !! Wrapper for [[ac_global:GetRainRecord_ToString]] for
    !foreign
    !languages.
    type(c_ptr) :: c_pointer

    c_pointer = string2pointer(GetRainRecord_ToString())
end function GetRainRecord_ToString_wrap


subroutine SetRainRecord_FromString_wrap(&
                     RainRecord_FromString, strlen)
    !! Wrapper for [[ac_global:RainRecord_FromString]] for
    !foreign
    !languages.
    type(c_ptr), intent(in) :: RainRecord_FromString
    integer(int32), intent(in) :: strlen

    character(len=strlen) :: string

    string = pointer2string(RainRecord_FromString, strlen)
    call SetRainRecord_FromString(string)
end subroutine SetRainRecord_FromString_wrap


function GetRainRecord_FromString_wrap() result(c_pointer)
    !! Wrapper for [[ac_global:GetRainRecord_FromString]] for
    !foreign
    !languages.
    type(c_ptr) :: c_pointer

    c_pointer = string2pointer(GetRainRecord_FromString())
end function GetRainRecord_FromString_wrap


subroutine SetEToRecord_ToString_wrap(&
                     EToRecord_ToString, strlen)
    !! Wrapper for [[ac_global:EToRecord_ToString]] for foreign
    !languages.
    type(c_ptr), intent(in) :: EToRecord_ToString
    integer(int32), intent(in) :: strlen

    character(len=strlen) :: string

    string = pointer2string(EToRecord_ToString, strlen)
    call SetEToRecord_ToString(string)
end subroutine SetEToRecord_ToString_wrap


function GetEToRecord_ToString_wrap() result(c_pointer)
    !! Wrapper for [[ac_global:GetEToRecord_ToString]] for
    !foreign
    !languages.
    type(c_ptr) :: c_pointer

    c_pointer = string2pointer(GetEToRecord_ToString())
end function GetEToRecord_ToString_wrap


subroutine SetEToRecord_FromString_wrap(&
                     EToRecord_FromString, strlen)
    !! Wrapper for [[ac_global:EToRecord_FromString]] for
    !foreign
    !languages.
    type(c_ptr), intent(in) :: EToRecord_FromString
    integer(int32), intent(in) :: strlen

    character(len=strlen) :: string

    string = pointer2string(EToRecord_FromString, strlen)
    call SetEToRecord_FromString(string)
end subroutine SetEToRecord_FromString_wrap


function GetEToRecord_FromString_wrap() result(c_pointer)
    !! Wrapper for [[ac_global:GetEToRecord_FromString]] for
    !foreign
    !languages.
    type(c_ptr) :: c_pointer

    c_pointer = string2pointer(GetEToRecord_FromString())
end function GetEToRecord_FromString_wrap


function GetSoilLayer_Description_wrap(i) result(Description)
    !! Wrapper for [[ac_global:GetSoilLayer_Description]] for foreign languages.
    integer(int32) :: i
    type(c_ptr) :: Description

    Description = string2pointer(GetSoilLayer_Description(i))
end function GetSoilLayer_Description_wrap


subroutine SetSoilLayer_Description_wrap(i, Description)
    !! Wrapper for [[ac_global:SetSoilLayer_Description]] for foreign languages.
    integer(int32) :: i
    type(c_ptr), intent(in) :: Description

    character(len=25) :: string

    string = pointer2string(Description, 25)
    call SetSoilLayer_Description(i, string)
end subroutine SetSoilLayer_Description_wrap


function GetSimulation_LinkCropToSimPeriod_wrap() result(LinkCropToSimPeriod)
    !! Wrapper for [[ac_global:GetSimulation_LinkCropToSimPeriod]] for foreign languages.
    logical(1) :: LinkCropToSimPeriod

    LinkCropToSimPeriod = GetSimulation_LinkCropToSimPeriod()
end function GetSimulation_LinkCropToSimPeriod_wrap


function GetSimulation_ResetIniSWC_wrap() result(ResetIniSWC)
    !! Wrapper for [[ac_global:GetSimulation_ResetIniSWC]] for foreign languages.
    logical(1) :: ResetIniSWC

    ResetIniSWC = GetSimulation_ResetIniSWC()
end function GetSimulation_ResetIniSWC_wrap


function GetSimulation_EvapLimitON_wrap() result(EvapLimitON)
    !! Wrapper for [[ac_global:GetSimulation_EvapLimitON]] for foreign languages.
    logical(1) :: EvapLimitON

    EvapLimitON = GetSimulation_EvapLimitON()
end function GetSimulation_EvapLimitON_wrap


function GetSimulation_Germinate_wrap() result(Germinate)
    !! Wrapper for [[ac_global:GetSimulation_Germinate]] for foreign languages.
    logical(1) :: Germinate

    Germinate = GetSimulation_Germinate()
end function GetSimulation_Germinate_wrap


function GetSimulation_MultipleRun_wrap() result(MultipleRun)
    !! Wrapper for [[ac_global:GetSimulation_MultipleRun]] for foreign languages.
    logical(1) :: MultipleRun

    MultipleRun = GetSimulation_MultipleRun()
end function GetSimulation_MultipleRun_wrap


function GetSimulation_MultipleRunWithKeepSWC_wrap() result(MultipleRunWithKeepSWC)
    !! Wrapper for [[ac_global:GetSimulation_MultipleRunWithKeepSWC]] for foreign languages.
    logical(1) :: MultipleRunWithKeepSWC

    MultipleRunWithKeepSWC = GetSimulation_MultipleRunWithKeepSWC()
end function GetSimulation_MultipleRunWithKeepSWC_wrap


function GetSimulation_SalinityConsidered_wrap() result(SalinityConsidered)
    !! Wrapper for [[ac_global:GetSimulation_SalinityConsidered]] for foreign languages.
    logical(1) :: SalinityConsidered

    SalinityConsidered = GetSimulation_SalinityConsidered()
end function GetSimulation_SalinityConsidered_wrap


function GetSimulation_ProtectedSeedling_wrap() result(ProtectedSeedling)
    !! Wrapper for [[ac_global:GetSimulation_ProtectedSeedling]] for foreign languages.
    logical(1) :: ProtectedSeedling

    ProtectedSeedling = GetSimulation_ProtectedSeedling()
end function GetSimulation_ProtectedSeedling_wrap


function GetSimulation_SWCtopSoilConsidered_wrap() result(SWCtopSoilConsidered)
    !! Wrapper for [[ac_global:GetSimulation_SWCtopSoilConsidered]] for foreign languages.
    logical(1) :: SWCtopSoilConsidered

    SWCtopSoilConsidered = GetSimulation_SWCtopSoilConsidered()
end function GetSimulation_SWCtopSoilConsidered_wrap


subroutine SetSimulation_LinkCropToSimPeriod_wrap(LinkCropToSimPeriod)
    !! Wrapper for [[ac_global:SetSimulation_LinkCropToSimPeriod]] for foreign languages.
    logical(1), intent(in) :: LinkCropToSimPeriod

    logical :: bool

    bool = LinkCropToSimPeriod
    call SetSimulation_LinkCropToSimPeriod(bool)
end subroutine SetSimulation_LinkCropToSimPeriod_wrap


subroutine SetSimulation_ResetIniSWC_wrap(ResetIniSWC)
    !! Wrapper for [[ac_global:SetSimulation_ResetIniSWC]] for foreign languages.
    logical(1), intent(in) :: ResetIniSWC

    logical :: bool

    bool = ResetIniSWC
    call SetSimulation_ResetIniSWC(bool)
end subroutine SetSimulation_ResetIniSWC_wrap


subroutine SetSimulation_EvapLimitON_wrap(EvapLimitON)
    !! Wrapper for [[ac_global:SetSimulation_EvapLimitON]] for foreign languages.
    logical(1), intent(in) :: EvapLimitON

    logical :: bool

    bool = EvapLimitON
    call SetSimulation_EvapLimitON(bool)
end subroutine SetSimulation_EvapLimitON_wrap


subroutine SetSimulation_Germinate_wrap(Germinate)
    !! Wrapper for [[ac_global:SetSimulation_Germinate]] for foreign languages.
    logical(1), intent(in) :: Germinate

    logical :: bool

    bool = Germinate
    call SetSimulation_Germinate(bool)
end subroutine SetSimulation_Germinate_wrap


subroutine SetSimulation_MultipleRun_wrap(MultipleRun)
    !! Wrapper for [[ac_global:SetSimulation_MultipleRun]] for foreign languages.
    logical(1), intent(in) :: MultipleRun

    logical :: bool

    bool = MultipleRun
    call SetSimulation_MultipleRun(bool)
end subroutine SetSimulation_MultipleRun_wrap


subroutine SetSimulation_MultipleRunWithKeepSWC_wrap(MultipleRunWithKeepSWC)
    !! Wrapper for [[ac_global:SetSimulation_MultipleRunWithKeepSWC]] for foreign languages.
    logical(1), intent(in) :: MultipleRunWithKeepSWC

    logical :: bool

    bool = MultipleRunWithKeepSWC
    call SetSimulation_MultipleRunWithKeepSWC(bool)
end subroutine SetSimulation_MultipleRunWithKeepSWC_wrap


subroutine SetSimulation_SalinityConsidered_wrap(SalinityConsidered)
    !! Wrapper for [[ac_global:SetSimulation_SalinityConsidered]] for foreign languages.
    logical(1), intent(in) :: SalinityConsidered

    logical :: bool

    bool = SalinityConsidered
    call SetSimulation_SalinityConsidered(bool)
end subroutine SetSimulation_SalinityConsidered_wrap


subroutine SetSimulation_ProtectedSeedling_wrap(ProtectedSeedling)
    !! Wrapper for [[ac_global:SetSimulation_ProtectedSeedling]] for foreign languages.
    logical(1), intent(in) :: ProtectedSeedling

    logical :: bool

    bool = ProtectedSeedling
    call SetSimulation_ProtectedSeedling(bool)
end subroutine SetSimulation_ProtectedSeedling_wrap


subroutine SetSimulation_SWCtopSoilConsidered_wrap(SWCtopSoilConsidered)
    !! Wrapper for [[ac_global:SetSimulation_SWCtopSoilConsidered]] for foreign languages.
    logical(1), intent(in) :: SWCtopSoilConsidered

    logical :: bool

    bool = SWCtopSoilConsidered
    call SetSimulation_SWCtopSoilConsidered(bool)
end subroutine SetSimulation_SWCtopSoilConsidered_wrap


function GetSimulation_IniSWC_AtDepths_wrap() result(AtDepths)
    !! Wrapper for [[ac_global:GetSimulation_IniSWC_AtDepths]] for foreign languages.
    logical(1) :: AtDepths

    AtDepths = GetSimulation_IniSWC_AtDepths()
end function GetSimulation_IniSWC_AtDepths_wrap


function GetSimulation_IniSWC_AtFC_wrap() result(AtFC)
    !! Wrapper for [[ac_global:GetSimulation_IniSWC_AtFC]] for foreign languages.
    logical(1) :: AtFC

    AtFC = GetSimulation_IniSWC_AtFC()
end function GetSimulation_IniSWC_AtFC_wrap


subroutine SetSimulation_IniSWC_AtDepths_wrap(AtDepths)
    !! Wrapper for [[ac_global:SetSimulation_IniSWC_AtDepths]] for foreign languages.
    logical(1), intent(in) :: AtDepths

    logical :: bool

    bool = AtDepths
    call SetSimulation_IniSWC_AtDepths(bool)
end subroutine SetSimulation_IniSWC_AtDepths_wrap


subroutine SetSimulation_IniSWC_AtFC_wrap(AtFC)
    !! Wrapper for [[ac_global:SetSimulation_IniSWC_AtFC]] for foreign languages.
    logical(1), intent(in) :: AtFC

    logical :: bool

    bool = AtFC
    call SetSimulation_IniSWC_AtFC(bool)
end subroutine SetSimulation_IniSWC_AtFC_wrap


function GetSimulation_Storage_CropString_wrap() result(CropString)
    !! Wrapper for [[ac_global:GetSimulation_Storage_CropString]] for foreign languages.
    type(c_ptr) :: CropString

    CropString = string2pointer(GetSimulation_Storage_CropString())
end function GetSimulation_Storage_CropString_wrap


subroutine SetSimulation_Storage_CropString_wrap(CropString, strlen)
    !! Wrapper for [[ac_global:SetSimulation_Storage_CropString]] for foreign languages.
    type(c_ptr), intent(in) :: CropString
    integer(int32), intent(in) :: strlen

    character(len=strlen) :: string

    string = pointer2string(CropString, strlen)
    call SetSimulation_Storage_CropString(string)
end subroutine SetSimulation_Storage_CropString_wrap


function GetManDescription_wrap() result(c_pointer)
    !! Wrapper for [[ac_global:GetManDescription]] for foreign languages.
    type(c_ptr) :: c_pointer

    c_pointer = string2pointer(GetManDescription())
end function GetManDescription_wrap


subroutine SetManDescription_wrap(ManDescription, strlen)
    !! Wrapper for [[ac_global:SetManDescription]] for foreign languages.
    type(c_ptr), intent(in) :: ManDescription
    integer(int32), intent(in) :: strlen

    character(len=strlen) :: string

    string = pointer2string(ManDescription, strlen)
    call SetManDescription(string)
end subroutine SetManDescription_wrap

subroutine LoadManagement_wrap(FullName, strlen)
    !! Wrapper for [[ac_global:LoadManagement]] for foreign languages.
    type(c_ptr), intent(in) :: FullName
    integer(int32), intent(in) :: strlen

    character(len=strlen) :: string

    string = pointer2string(FullName, strlen)
    call LoadManagement(string)
end subroutine LoadManagement_wrap

subroutine SaveCrop_wrap(totalname, strlen)
    !! Wrapper for [[ac_global:SaveCrop]] for foreign languages.
    type(c_ptr), intent(in) :: totalname
    integer(int32), intent(in) :: strlen

    character(len=strlen) :: string

    string = pointer2string(totalname, strlen)
    call SaveCrop(string)
end subroutine SaveCrop_wrap

subroutine SaveProfile_wrap(totalname, strlen)
    !! Wrapper for [[ac_global:SaveProfile]] for foreign languages.
    type(c_ptr), intent(in) :: totalname
    integer(int32), intent(in) :: strlen

    character(len=strlen) :: string

    string = pointer2string(totalname, strlen)
    call SaveProfile(string)
end subroutine SaveProfile_wrap


real(dp) function ECswComp_wrap(Comp, atFC)
    !! Wrapper for [[ac_global:ECswComp]] for foreign languages.
    type(CompartmentIndividual), intent(in) :: comp
    logical(1), intent(in) :: atFC

    logical :: atFC_f

    atFC_f = atFC
    ECswComp_wrap = ECswComp(comp, atFC_f)
end function ECswComp_wrap


subroutine LoadProfile_wrap(FullName, strlen)
    !! Wrapper for [[ac_global:LoadProfile]] for foreign languages.
    type(c_ptr), intent(in) :: FullName
    integer(int32), intent(in) :: strlen

    character(len=strlen) :: string

    string = pointer2string(FullName, strlen)
    call LoadProfile(string)
end subroutine LoadProfile_wrap


subroutine LoadCrop_wrap(FullName, strlen)
    !! Wrapper for [[ac_global:LoadCrop]] for foreign languages.
    type(c_ptr), intent(in) :: FullName
    integer(int32), intent(in) :: strlen

    character(len=strlen) :: string

    string = pointer2string(FullName, strlen)
    call LoadCrop(string)
end subroutine LoadCrop_wrap


subroutine DetermineRootZoneWC_wrap(RootingDepth, ZtopSWCconsidered)
    real(dp), intent(in) :: RootingDepth
    logical(1), intent(inout) :: ZtopSWCconsidered

    logical :: ZtopSWCconsidered_f

    ZtopSWCconsidered_f = ZtopSWCconsidered
    call DetermineRootZoneWC(RootingDepth, ZtopSWCconsidered_f)
    ZtopSWCconsidered = ZtopSWCconsidered_f
end subroutine DetermineRootZoneWC_wrap


function GetOffSeasonDescription_wrap() result(c_pointer)
    !! Wrapper for [[ac_global:GetOffSeasonDescription]] for foreign languages.
    type(c_ptr) :: c_pointer

    c_pointer = string2pointer(GetOffSeasonDescription())
end function GetOffSeasonDescription_wrap


subroutine SetOffSeasonDescription_wrap(OffSeasonDescription, strlen)
    !! Wrapper for [[ac_global:SetOffSeasonDescription]] for foreign languages.
    type(c_ptr), intent(in) :: OffSeasonDescription
    integer(int32), intent(in) :: strlen

    character(len=strlen) :: string

    string = pointer2string(OffSeasonDescription, strlen)
    call SetOffSeasonDescription(string)
end subroutine SetOffSeasonDescription_wrap


subroutine LoadProgramParametersProject_wrap(FullFileNameProgramParameters, &
                                             strlen)
    !! Wrapper for [[ac_global:LoadProgramParametersProject_]]
    !! for foreign languages.
    type(c_ptr), intent(in) :: FullFileNameProgramParameters
    integer(int32), intent(in) :: strlen

    character(len=strlen) :: string

    string = pointer2string(FullFileNameProgramParameters, strlen)
    call LoadProgramParametersProject(string)
end subroutine LoadProgramParametersProject_wrap


subroutine LoadOffSeason_wrap(FullName, strlen)
    !! Wrapper for [[ac_global:LoadOffSeason]] for foreign languages.
    type(c_ptr), intent(in) :: FullName
    integer(int32), intent(in) :: strlen

    character(len=strlen) :: string

    string = pointer2string(FullName, strlen)
    call LoadOffSeason(string)
end subroutine LoadOffSeason_wrap



subroutine LoadClim_wrap(FullName_ptr, strlen1, ClimateDescription_ptr, &
                         strlen2, DataType, FromD, FromM, FromY, &
                         ToD, ToM, ToY, FromDayNr, ToDayNr, FromString, &
                         strlen3, ToString, strlen4, NrObs)
    type(c_ptr), intent(in) :: FullName_ptr
    integer(int32), intent(in) :: strlen1
    type(c_ptr), intent(inout) :: ClimateDescription_ptr
    integer(int32), intent(in) :: strlen2
    integer(intEnum), intent(inout) :: DataType
    integer(int32), intent(inout) :: FromD
    integer(int32), intent(inout) :: FromM
    integer(int32), intent(inout) :: FromY
    integer(int32), intent(inout) :: ToD
    integer(int32), intent(inout) :: ToM
    integer(int32), intent(inout) :: ToY
    integer(int32), intent(inout) :: FromDayNr
    integer(int32), intent(inout) :: ToDayNr
    type(c_ptr), intent(inout) :: FromString
    integer(int32), intent(in) :: strlen3
    type(c_ptr), intent(inout) :: ToString
    integer(int32), intent(in) :: strlen4
    integer(int32), intent(inout) :: NrObs

    character(len=strlen1) :: FullName
    character(len=strlen2) :: Climatedescription
    type(rep_clim) :: ClimateRecord

    FullName = pointer2string(FullName_ptr, strlen1)
    ClimateDescription = pointer2string(ClimateDescription_ptr, &
                                                strlen2)
    ClimateRecord%DataType = DataType
    ClimateRecord%FromD = FromD
    ClimateRecord%FromM = FromM
    ClimateRecord%FromY = FromY
    ClimateRecord%ToD = ToD
    ClimateRecord%ToM = ToM
    ClimateRecord%ToY = ToY
    ClimateRecord%FromDayNr = FromDayNr
    ClimateRecord%ToDayNr = ToDayNr
    ClimateRecord%FromString = pointer2string(FromString, strlen3)
    ClimateRecord%ToString = pointer2string(ToString, strlen4)
    ClimateRecord%NrObs = NrObs

    call LoadClim(FullName, ClimateDescription, ClimateRecord)
    DataType = ClimateRecord%DataType
    FromD = ClimateRecord%FromD
    FromM = ClimateRecord%FromM
    FromY = ClimateRecord%FromY
    ToD = ClimateRecord%ToD
    ToM = ClimateRecord%ToM
    ToY = ClimateRecord%ToY
    FromDayNr = ClimateRecord%FromDayNr
    ToDayNr = ClimateRecord%ToDayNr
    call threestrings2threepointers(ClimateRecord%FromString, &
                                  ClimateRecord%ToString, &
                                  ClimateDescription, &
                                  FromString, ToString, &
                                  ClimateDescription_ptr)
    NrObs = ClimateRecord%NrObs
end subroutine LoadClim_wrap



subroutine LoadGroundwater_wrap(FullName_ptr, strlen, AtDayNr, Zcm, ECdSm)
    !! Wrapper for [[ac_global:LoadGroundwater]] for foreign languages.
    type(c_ptr), intent(in) :: FullName_ptr
    integer(int32), intent(in) :: strlen
    integer(int32), intent(in) :: AtDayNr
    integer(int32), intent(inout) :: Zcm
    real(dp), intent(inout) :: ECdSm

    character(len=strlen) :: FullName

    FullName = pointer2string(FullName_ptr, strlen)
    call LoadGroundwater(FullName, AtDayNr, Zcm, ECdSm)
end subroutine LoadGroundwater_wrap



function GetGroundwaterDescription_wrap() result(c_pointer)
    !! Wrapper for [[ac_global:GetGroundwaterDescription]] for foreign languages.
    type(c_ptr) :: c_pointer

    c_pointer = string2pointer(GetGroundwaterDescription())
end function GetGroundwaterDescription_wrap


subroutine SetGroundwaterDescription_wrap(GroundwaterDescription, strlen)
    !! Wrapper for [[ac_global:SetGroundwaterDescription]] for foreign languages.
    type(c_ptr), intent(in) :: GroundwaterDescription
    integer(int32), intent(in) :: strlen

    character(len=strlen) :: string

    string = pointer2string(GroundwaterDescription, strlen)
    call SetGroundwaterDescription(string)
end subroutine SetGroundwaterDescription_wrap



function EndGrowingPeriod_wrap(Day1, DayN) result(EndGrowingPeriod_ptr)
    !! Wrapper for [[ac_global::EndGrowingPeriod]] for foreign languages.
    integer(int32), intent(in) :: Day1
    integer(int32), intent(inout) :: DayN

    type(c_ptr) :: EndGrowingPeriod_ptr
    character(len=:), allocatable :: string

    string = EndGrowingPeriod(Day1, DayN)
    EndGrowingPeriod_ptr = string2pointer(string)
end function EndGrowingPeriod_wrap


subroutine LoadInitialConditions_wrap(SWCiniFileFull_ptr, strlen, &
                                     IniSurfaceStorage)
    type(c_ptr), intent(in) :: SWCiniFileFull_ptr
    integer(int32), intent(in) :: strlen
    real(dp), intent(inout) :: IniSurfaceStorage

    character(len=strlen) :: string

    string = pointer2string(SWCiniFileFull_ptr, strlen)
    call LoadInitialConditions(string, IniSurfaceStorage)
end subroutine LoadInitialConditions_wrap


subroutine CompleteClimateDescription_wrap(DataType, FromD, FromM, FromY, &
                                           ToD, ToM, ToY, FromDayNr, &
                                           ToDayNr, FromString, strlen1, &
                                           ToString, strlen2, NrObs)
    !! Wrapper for [[ac_global:CompleteClimateDescription]] for foreign languages
    integer(intEnum), intent(inout) :: DataType
    integer(int32), intent(inout) :: FromD
    integer(int32), intent(inout) :: FromM
    integer(int32), intent(inout) :: FromY
    integer(int32), intent(inout) :: ToD
    integer(int32), intent(inout) :: ToM
    integer(int32), intent(inout) :: ToY
    integer(int32), intent(inout) :: FromDayNr
    integer(int32), intent(inout) :: ToDayNr
    type(c_ptr), intent(inout) :: FromString
    integer(int32), intent(in) :: strlen1
    type(c_ptr), intent(inout) :: ToString
    integer(int32), intent(in) :: strlen2
    integer(int32), intent(inout) :: NrObs

    type(rep_clim) :: ClimateRecord

    ClimateRecord%DataType = DataType
    ClimateRecord%FromD = FromD
    ClimateRecord%FromM = FromM
    ClimateRecord%FromY = FromY
    ClimateRecord%ToD = ToD
    ClimateRecord%ToM = ToM
    ClimateRecord%ToY = ToY
    ClimateRecord%FromDayNr = FromDayNr
    ClimateRecord%ToDayNr = ToDayNr
    ClimateRecord%FromString = pointer2string(FromString, strlen1)
    ClimateRecord%ToString = pointer2string(ToString, strlen2)
    ClimateRecord%NrObs = NrObs

    call CompleteClimateDescription(ClimateRecord)

    DataType = ClimateRecord%DataType
    FromD = ClimateRecord%FromD
    FromM = ClimateRecord%FromM
    FromY = ClimateRecord%FromY
    ToD = ClimateRecord%ToD
    ToM = ClimateRecord%ToM
    ToY = ClimateRecord%ToY
    FromDayNr = ClimateRecord%FromDayNr
    ToDayNr = ClimateRecord%ToDayNr
    call twostrings2twopointers(ClimateRecord%FromString, &
                                ClimateRecord%ToString, &
                                FromString, ToString)
    NrObs = ClimateRecord%NrObs
end subroutine CompleteClimateDescription_wrap


function GetEvapoEntireSoilSurface_wrap() result(EvapoEntireSoilSurface)
    !! Wrapper for [[ac_global:GetEvapoEntireSoilSurface]] for foreign languages
    logical(1) :: EvapoEntireSoilSurface

    EvapoEntireSoilSurface = GetEvapoEntireSoilSurface()
end function GetEvapoEntireSoilSurface_wrap


subroutine SetEvapoEntireSoilSurface_wrap(EvapoEntireSoilSurface)
    !! Wrapper for [[ac_global:SetEvapoEntireSoilSurface]] for foreign languages.
    logical(1), intent(in) :: EvapoEntireSoilSurface

    logical :: bool

    bool = EvapoEntireSoilSurface
    call SetEvapoEntireSoilSurface(bool)
end subroutine SetEvapoEntireSoilSurface_wrap


function GetPreDay_wrap() result(PreDay)
    !! Wrapper for [[ac_global:GetPreDay]] for foreign languages
    logical(1) :: PreDay

    PreDay = GetPreDay()
end function GetPreDay_wrap


subroutine SetPreDay_wrap(PreDay)
    !! Wrapper for [[ac_global:SetPreday]] for foreign languages.
    logical(1), intent(in) :: PreDay

    logical :: bool

    bool = PreDay
    call SetPreDay(bool)
end subroutine SetPreDay_wrap

function GetOut1Wabal_wrap() result(Out1Wabal_f)
    !! Wrapper for [[ac_global:GetOut1Wabal]] for foreign languages
    logical(1) :: Out1Wabal_f

    Out1Wabal_f = GetOut1Wabal()
end function GetOut1Wabal_wrap


subroutine SetOut1Wabal_wrap(Out1Wabal_in)
    !! Wrapper for [[ac_global:GetOut1Wabal]] for foreign languages.
    logical(1), intent(in) :: Out1Wabal_in

    logical :: Out1Wabal_f

    Out1Wabal_f = Out1Wabal_in
    call SetOut1Wabal(Out1Wabal_f)
end subroutine SetOut1Wabal_wrap

function GetOut2Crop_wrap() result(Out2Crop_f)
    !! Wrapper for [[ac_global:GetOut2Crop]] for foreign languages
    logical(1) :: Out2Crop_f

    Out2Crop_f= GetOut2Crop()
end function GetOut2Crop_wrap


subroutine SetOut2Crop_wrap(Out2Crop_in)
    !! Wrapper for [[ac_global:GetOut2Crop]] for foreign languages.
    logical(1), intent(in) :: Out2Crop_in

    logical :: Out2Crop_f

    Out2Crop_f = Out2Crop_in
    call SetOut2Crop(Out2Crop_f)
end subroutine SetOut2Crop_wrap

function GetOut3Prof_wrap() result(Out3Prof_f)
    !! Wrapper for [[ac_global:GetOut3Prof]] for foreign languages
    logical(1) :: Out3Prof_f

    Out3Prof_f= GetOut3Prof()
end function GetOut3Prof_wrap


subroutine SetOut3Prof_wrap(Out3Prof_in)
    !! Wrapper for [[ac_global:GetOut3Prof]] for foreign languages.
    logical(1), intent(in) :: Out3Prof_in

    logical :: Out3Prof_f

    Out3Prof_f = Out3Prof_in
    call SetOut3Prof(Out3Prof_f)
end subroutine SetOut3Prof_wrap


function GetOut4Salt_wrap() result(Out4Salt_f)
    !! Wrapper for [[ac_global:GetOut4Salt]] for foreign languages
    logical(1) :: Out4Salt_f

    Out4Salt_f= GetOut4Salt()
end function GetOut4Salt_wrap

subroutine SetOut4Salt_wrap(Out4Salt_in)
    !! Wrapper for [[ac_global:GetOut4Salt]] for foreign languages.
    logical(1), intent(in) :: Out4Salt_in

    logical :: Out4Salt_f

    Out4Salt_f = Out4Salt_in
    call SetOut4Salt(Out4Salt_f)
end subroutine SetOut4Salt_wrap


function GetOut5CompWC_wrap() result(Out5CompWC_f)
    !! Wrapper for [[ac_global:GetOut5CompWC]] for foreign languages
    logical(1) :: Out5CompWC_f

    Out5CompWC_f= GetOut5CompWC()
end function GetOut5CompWC_wrap

subroutine SetOut5CompWC_wrap(Out5CompWC_in)
    !! Wrapper for [[ac_global:GetOut5CompWC]] for foreign languages.
    logical(1), intent(in) :: Out5CompWC_in

    logical :: Out5CompWC_f

    Out5CompWC_f = Out5CompWC_in
    call SetOut5CompWC(Out5CompWC_f)
end subroutine SetOut5CompWC_wrap


function GetOut6CompEC_wrap() result(Out6CompEC_f)
    !! Wrapper for [[ac_global:GetOut6CompEC] for foreign languages
    logical(1) :: Out6CompEC_f

    Out6CompEC_f= GetOut6CompEC()
end function GetOut6CompEC_wrap

subroutine SetOut6CompEC_wrap(Out6CompEC_in)
    !! Wrapper for [[ac_global:GetOut6CompEC]] for foreign languages.
    logical(1), intent(in) :: Out6CompEC_in

    logical :: Out6CompEC_f

    Out6CompEC_f = Out6CompEC_in
    call SetOut6CompEC(Out6CompEC_f)
end subroutine SetOut6CompEC_wrap

function GetOut7Clim_wrap() result(Out7Clim_f)
    !! Wrapper for [[ac_global:GetOut7Clim]] for foreign languages
    logical(1) :: Out7Clim_f

    Out7Clim_f= GetOut7Clim()
end function GetOut7Clim_wrap


subroutine SetOut7Clim_wrap(Out7Clim_in)
    !! Wrapper for [[ac_global:GetOut7Clim]] for foreign languages.
    logical(1), intent(in) :: Out7Clim_in

    logical :: Out7Clim_f

    Out7Clim_f = Out7Clim_in
    call SetOut7Clim(Out7Clim_f)
end subroutine SetOut7Clim_wrap


function GetMultipleProjectDescription_wrap() result(c_pointer)
    !! Wrapper for [[ac_global:GetMultipleProjectDescription]] for foreign languages.
    type(c_ptr) :: c_pointer

    c_pointer = string2pointer(GetMultipleProjectDescription())
end function GetMultipleProjectDescription_wrap


subroutine SetMultipleProjectDescription_wrap(MultipleProjectDescription, strlen)
    !! Wrapper for [[ac_global:SetMultipleProjectDescription]] for foreign languages.
    type(c_ptr), intent(in) :: MultipleProjectDescription
    integer(int32), intent(in) :: strlen

    character(len=strlen) :: string

    string = pointer2string(MultipleProjectDescription, strlen)
    call SetMultipleProjectDescription(string)
end subroutine SetMultipleProjectDescription_wrap


function GetProjectDescription_wrap() result(c_pointer)
    !! Wrapper for [[ac_global:GetProjectDescription]] for foreign languages.
    type(c_ptr) :: c_pointer

    c_pointer = string2pointer(GetProjectDescription())
end function GetProjectDescription_wrap


subroutine SetProjectDescription_wrap(ProjectDescription, strlen)
    !! Wrapper for [[ac_global:SetProjectDescription]] for foreign languages.
    type(c_ptr), intent(in) :: ProjectDescription
    integer(int32), intent(in) :: strlen

    character(len=strlen) :: string

    string = pointer2string(ProjectDescription, strlen)
    call SetProjectDescription(string)
end subroutine SetProjectDescription_wrap


subroutine CheckForKeepSWC_wrap(RunwithKeepSWC, ConstZrxForRun)
    logical(1), intent(out) :: RunWithKeepSWC
    real(dp), intent(out) :: ConstZrxForRun

    logical :: RunWithKeepSWC_f

    RunWithKeepSWC_f = RunWithKeepSWC
    call CheckForKeepSWC(RunWithKeepSWC_f, ConstZrxForRun)
    RunWithKeepSWC = RunWithKeepSWC_f
end subroutine CheckForKeepSWC_wrap


function GetOutDaily_wrap() result(OutDaily_f)

    logical(1) :: OutDaily_f

    OutDaily_f = GetOutDaily()
end function GetOutDaily_wrap


subroutine SetOutDaily_wrap(OutDaily_in)
    logical(1), intent(in) :: OutDaily_in

    logical :: OutDaily_f

    OutDaily_f = OutDaily_in
    call SetOutDaily(OutDaily_f)
end subroutine SetOutDaily_wrap


function GetPathNameList_wrap() result(c_pointer)
    !! Wrapper for [[ac_global:GetPathNameList]] for foreign languages.
    type(c_ptr) :: c_pointer

    c_pointer = string2pointer(GetPathNameList())
end function GetPathNameList_wrap


subroutine SetPathNameList_wrap(PathNameList, strlen)
    !! Wrapper for [[ac_global:SetPathNameList]] for foreign languages.
    type(c_ptr), intent(in) :: PathNameList
    integer(int32), intent(in) :: strlen

    character(len=strlen) :: string

    string = pointer2string(PathNameList, strlen)
    call SetPathNameList(string)
end subroutine SetPathNameList_wrap


function GetPathNameParam_wrap() result(c_pointer)
    !! Wrapper for [[ac_global:GetPathNameParam]] for foreign languages.
    type(c_ptr) :: c_pointer

    c_pointer = string2pointer(GetPathNameParam())
end function GetPathNameParam_wrap


subroutine SetPathNameParam_wrap(PathNameParam, strlen)
    !! Wrapper for [[ac_global:SetPathNameParam]] for foreign languages.
    type(c_ptr), intent(in) :: PathNameParam
    integer(int32), intent(in) :: strlen

    character(len=strlen) :: string

    string = pointer2string(PathNameParam, strlen)
    call SetPathNameParam(string)
end subroutine SetPathNameParam_wrap


function GetPart1Mult_wrap() result(Part1Mult_f)

    logical(1) :: Part1Mult_f

    Part1Mult_f = GetPart1Mult()
end function GetPart1Mult_wrap


subroutine SetPart1Mult_wrap(Part1Mult_in)
    logical(1), intent(in) :: Part1Mult_in

    logical :: Part1Mult_f

    Part1Mult_f = Part1Mult_in
    call SetPart1Mult(Part1Mult_f)
end subroutine SetPart1Mult_wrap


function GetPart2Eval_wrap() result(Part2Eval_f)

    logical(1) :: Part2Eval_f

    Part2Eval_f = GetPart2Eval()
end function GetPart2Eval_wrap


subroutine SetPart2Eval_wrap(Part2Eval_in)
    logical(1), intent(in) :: Part2Eval_in

    logical :: Part2Eval_f

    Part2Eval_f = Part2Eval_in
    call SetPart2Eval(Part2Eval_f)
end subroutine SetPart2Eval_wrap


end module ac_interface_global
