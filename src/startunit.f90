module ac_startunit

use ac_global, only:    GetPathNameSimul, &
                        FileExists, &
                        SetOut1Wabal, &
                        SetOut2Crop, &
                        SetOut3Prof, &
                        SetOut4Salt, &
                        SetOut5CompWC, &
                        SetOut6CompEC, &
                        SetOut7Clim, &
                        SetOutDaily, &
                        SetPart1Mult, &
                        SetPart2Eval, &
                        SetOutputAggregate, &
                        GetOut1Wabal, &
                        GetOut2Crop, &
                        GetOut3Prof, &
                        GetOut4Salt, &
                        GetOut5CompWC, &
                        GetOut6CompEC, &
                        GetOut7Clim, &
                        GetPathNameOutp, &
                        GetOutputAggregate, &
                        GetPart1Mult, &
                        GetPart2Eval, &
                        GetPathNameList, &
                        GetOutDaily, &
                        SetPathNameProg, &
                        SetPathNameSimul, &
                        SetPathNameList, &
                        SetPathNameParam, &
                        SetPathNameOutp, &
                        GetPathNameSimul, &
                        CheckFilesInProject, &
                        ComposeOutputFilename, &
                        FileExists, &
                        SetMultipleProjectFile, &
                        SetOut1Wabal, &
                        SetOut2Crop, &
                        SetOut3Prof, &
                        SetOut4Salt, &
                        SetOut5CompWC, &
                        SetOut6CompEC, &
                        SetOut7Clim, &
                        SetOutDaily, &
                        SetPart1Mult, &
                        SetPart2Eval, &
                        SetOutputAggregate, &
                        GetOut1Wabal, &
                        GetOut2Crop, &
                        GetOut3Prof, &
                        GetOut4Salt, &
                        GetOut5CompWC, &
                        GetOut6CompEC, &
                        GetOut7Clim, &
                        GetPathNameOutp, &
                        GetOutputAggregate, &
                        GetPart1Mult, &
                        GetprojectFile, &
                        GetPart2Eval, &
                        GetOutDaily, &
                        SetMultipleProjectDescription, &
                        SetPathNameProg, &
                        SetPathNameSimul, &
                        SetPathNameList, &
                        SetPathNameParam, &
                        SetPathNameOutp, &
                        SetProjectFile, &
                        SetProjectFilefull, &
                        typeproject_typenone, &
                        typeproject_typepro, &
                        typeproject_typeprm, &
                        SetSimulation_MultipleRun, &
                        SetSimulation_NrRuns, &
                        GetSimulation_MultipleRunWithKeepSWC, &
                        GetSimulation_MultipleRunConstZrx, &
                        GetMultipleProjectFilefull, &
                        SetSimulation_MultipleRunWithKeepSWC, &
                        SetSimulation_MultipleRunCOnstZrx, &
                        SetSimulParam_EvapDeclineFactor, &
                        SetSimulParam_KcWetBare, &
                        SetSimulParam_PercCCxHIfinal, &
                        SetSimulParam_RootPercentZmin, &
                        SetSimulParam_MaxRootZoneExpansion, &
                        SetSimulParam_KsShapeFactorRoot, &
                        SetSimulParam_TAWGermination, &
                        SetSimulParam_pAdjFAO, &
                        SetSimulParam_DelayLowOxygen, &
                        SetSimulParam_ExpFSen, &
                        SetSimulParam_Beta, &
                        SetSimulParam_ThicknessTopSWC, &
                        SetSimulParam_EvapZmax, &
                        SetSimulParam_RunoffDepth, &
                        SetSimulParam_CNcorrection, &
                        SetSimulParam_SaltDiff, &
                        SetSimulParam_SaltSolub, &
                        SetSimulParam_RootNrDF, &
                        SetSimulParam_IniAbstract, &
                        SetSimulParam_Tmin, &
                        SetTmin, &
                        SetSimulParam_Tmax, &
                        SetSimulParam_GDDMethod, &
                        SetSimulParam_EffectiveRain_Method, &
                        SetSimulParam_EffectiveRain_ShowersInDecade, &
                        SetSimulParam_EffectiveRain_PercentEffRain, &
                        SetSimulParam_EffectiveRain_RootNrEvap, &
                        EffectiveRainMethod_Full, &
                        EffectiveRainMethod_usda, &
                        EffectiveRainMethod_percentage, &
                        GetSimulParam_GDDMethod, &
                        GetPathNameParam, &
                        GetPathNameList, &
                        GetProjectfilefull, &
                        GetFullfilenameProgramParameters, &
                        GetMultipleProjectFile, &
                        GetSimulation_NrRuns, &
                        SetMultipleProjectFilefull, &
                        GetNumberSimulationRuns, &
                        SetprojectDescription, &
                        CheckForKeepSWC, &
                        SetFullfilenameProgramParameters
use ac_initialsettings, only: InitializeSettings
use ac_kinds, only: int32,&
                    int8, &
                    intEnum, &
                    dp
use ac_run, only: open_file, &
                  RunSimulation, &
                  write_file
use ac_utils, only: assert, &
                    upper_case
use iso_fortran_env, only: iostat_end
implicit none


integer :: fProjects  ! file handle
integer :: fProjects_iostat  ! IO status


contains


!! Section for Getters and Setters for global variables
! fProjects

subroutine fProjects_open(filename, mode)
    !! Opens the given file, assigning it to the 'fProjects' file handle.
    character(len=*), intent(in) :: filename
        !! name of the file to assign the file handle to
    character, intent(in) :: mode
        !! open the file for reading ('r'), writing ('w') or appending ('a')

    call open_file(fProjects, filename, mode, fProjects_iostat)
end subroutine fProjects_open

subroutine fProjects_write(line, advance_in)
    !! Writes the given line to the fProjects file.
    character(len=*), intent(in) :: line
        !! line to write
    logical, intent(in), optional :: advance_in
        !! whether or not to append a newline character

    logical :: advance

    if (present(advance_in)) then
        advance = advance_in
    else
        advance = .true.
    end if
    call write_file(fProjects, line, advance, fProjects_iostat)
end subroutine fProjects_write


subroutine fProjects_close()
    close(fProjects)
end subroutine fProjects_close


subroutine GetRequestDailyResults()

    integer :: fhandle, rc
    character(len= 1025) :: FullFileName, TempString
    integer(int32) :: n, i

    call SetOut1Wabal(.false.)
    call SetOut2Crop(.false.)
    call SetOut3Prof(.false.)
    call SetOut4Salt(.false.)
    call SetOut5CompWC(.false.)
    call SetOut6CompEC(.false.)
    call SetOut7Clim(.false.)

    FullFileName = GetPathNameSimul() // 'DailyResults.SIM'
    if (FileExists(FullFileName) .eqv. .true.) then
        open(newunit=fhandle, file=trim(FullFileName), status='old', action='read')
        loop: do
            read(fhandle, *,iostat=rc) TempString
            n = len(TempString)
            if (n > 0) then
                i = 1
                do while ((TempString(i:i) == ' ') .and. (i < n))
                    i = i + 1
                end do
                if (TempString(i:i) == '1') then
                    call SetOut1Wabal(.true.)
                end if
                if (TempString(i:i) == '2') then
                    call SetOut2Crop(.true.)
                end if
                if (TempString(i:i) == '3') then
                    call SetOut3Prof(.true.)
                end if
                if (TempString(i:i) == '4') then
                    call SetOut4Salt(.true.)
                end if
                if (TempString(i:i) == '5') then
                    call SetOut5CompWC(.true.)
                end if
                if (TempString(i:i) == '6') then
                    call SetOut6CompEC(.true.)
                end if
                if (TempString(i:i) == '7') then
                    call SetOut7Clim(.true.)
                end if
            end if
            if (rc == iostat_end) exit loop
        end do loop
        close(fhandle)
    end if
    if ((GetOut1Wabal()) .or. (GetOut2Crop()) .or. (GetOut3Prof()) .or. (GetOut4Salt()) &
            .or. (GetOut5CompWC()) .or. (GetOut6CompEC()) .or. (GetOut7Clim()) ) then
        call SetOutDaily(.true.)
    else
        call SetOutDaily(.false.)
    end if
end subroutine GetRequestDailyResults

subroutine GetRequestParticularResults()

    integer :: fhandle, rc
    character(len= 1025) :: FullFileName, TempString
    integer(int32) :: n, i

    call SetPart1Mult(.false.)
    call SetPart2Eval(.false.)

    FullFileName = GetPathNameSimul() // 'ParticularResults.SIM'
    if (FileExists(FullFileName) .eqv. .true.) then
        open(newunit=fhandle, file=trim(FullFileName), status='old', action='read')
        loop: do
            read(fhandle, *,iostat=rc) TempString
            n = len(TempString)
            if (n > 0) then
                i = 1
                do while ((TempString(i:i) == ' ') .and. (i < n))
                    i = i + 1
                end do
                if (TempString(i:i) == '1') then
                    call SetPart1Mult(.true.)
                end if
                if (TempString(i:i) == '2') then
                    call SetPart2Eval(.true.)
                end if
            end if
        if (rc == iostat_end) exit loop
        end do loop
        close(fhandle)
    end if
end subroutine GetRequestParticularResults

subroutine GetTimeAggregationResults()

    character(len=:), allocatable :: FullFileName
    character(len=1024) :: TempString
    integer(int32) :: f0, rc
    integer(int32) :: n, i
    logical :: file_exists

    call SetOutputAggregate(0_int8) ! simulation period 0: season
    FullFileName = trim(GetPathNameSimul()//'AggregationResults.SIM')
    inquire(file=FullFileName, exist=file_exists)
    if (file_exists) then
        open(newunit=f0, file=trim(FullFileName), &
                  status='old', action='read', iostat=rc)
        read(f0, *, iostat=rc) TempString
        n = len_trim(TempString)
        if (n > 0) then
            i = 1
            do while ((TempString(i:i) == ' ') .and. (i < n))
                i = i + 1
            end do
            if (TempString(i:i) == '1') then
                call SetOutputAggregate(1_int8) ! 1: daily aggregation
            else
                if (TempString(i:i) == '2') then
                    call SetOutputAggregate(2_int8) ! 2 : 10-daily aggregation
                else
                    if (TempString(i:i) == '3') then
                        call SetOutputAggregate(3_int8) ! 3 : monthly aggregation
                    else
                        call SetOutputAggregate(0_int8) ! 0 : seasonal results only
                    end if
                end if
            end if
        end if
        close(f0)
    end if
end subroutine GetTimeAggregationResults


subroutine GetProjectType(TheProjectFile, TheProjectType)
    character(len=*), intent(in) :: TheProjectFile
    integer(intenum), intent(inout) :: TheProjectType

    integer :: i
    integer :: lgth
    character(len=3) :: TheExtension

    TheProjectType = typeproject_typenone
    lgth = len(TheProjectFile)
    if (lgth > 0) then
        i = 1
        do while ((TheProjectFile(i:i) /= '.') .and. (i < lgth))
            i = i + 1
        end do
        if (i == (lgth - 3)) then
            TheExtension = TheProjectFile(i+1:i+3)
            call upper_case(TheExtension)
            if (TheExtension == 'PRO') then
                TheProjectType = typeproject_typepro
            else
                if (TheExtension == 'PRM') then
                    TheProjectType = typeproject_typeprm
                else
                    TheProjectType = typeproject_typenone
                end if
            end if
        end if
    end if
end subroutine GetProjectType


subroutine PrepareReport()

    call fProjects_open(&
          (trim(GetPathNameOutp())//'ListProjectsLoaded.OUT'), 'w')
    call fProjects_write('Intermediate results: ', .false.)
    select case (GetOutputAggregate())
    case (1)
        call fProjects_write('daily results')
    case (2)
        call fProjects_write('10-daily results')
    case (3)
        call fProjects_write('monthly results')
    case default
        call fProjects_write('None created')
    end select
    call fProjects_write('')
    if (GetOutDaily()) then
        call fProjects_write('Daily output results:')
        if (GetOut1Wabal()) then
            call fProjects_write('1. - soil water balance')
        end if
        if (GetOut2Crop()) then
            call fProjects_write('2. - crop development and production')
        end if
        if (GetOut3Prof()) then
            call fProjects_write('3. - soil water content '// &
                                 'in the soil profile and root zone')
        end if
        if (GetOut4Salt()) then
            call fProjects_write('4. - soil salinity in the soil profile '// &
                                 'and root zone')
        end if
        if (GetOut5CompWC()) then
            call fProjects_write('5. - soil water content at various depths '// &
                                 'of the soil profile')
        end if
        if (GetOut6CompEC()) then
            call fProjects_write('6. - soil salinity at various depths '// &
                                 'of the soil profile')
        end if
        if (GetOut7Clim()) then
            call fProjects_write('7. - climate input parameters')
        end if
    else
        call fProjects_write('Daily output results: None created')
    end if
    call fProjects_write('')
    if (GetPart1Mult() .or.  GetPart2Eval()) then
        call fProjects_write('Particular results:')
        if (GetPart1Mult()) then
            call fProjects_write('1. - biomass and yield at multiple cuttings'//&
                                 '(for herbaceous forage crops)')
        end if
        if (GetPart2Eval()) then
            call fProjects_write('2. - evaluation of simulation results '//&
                                 '(when Field Data)')
        end if
    else
        call fProjects_write('Particular results: None created')
    end if
end subroutine PrepareReport

subroutine InitializeTheProgram()

!Decimalseparator = '.' GDL, 20220413, not used?
    call SetPathNameOutp('OUTP/')
    call SetPathNameSimul('SIMUL/')
    call SetPathNameList('LIST/')
    call SetPathNameParam('PARAM/')
    call SetPathNameProg('')

    call GetTimeAggregationResults()
    call GetRequestDailyResults()
    call GetRequestParticularResults()
    call PrepareReport()
end subroutine InitializeTheProgram


function GetListProjectsFile() result(ListProjectsFile)
    character(len=:), allocatable :: ListProjectsFile

    ListProjectsFile = GetPathNameList() // 'ListProjects.txt'

end function GetListProjectsFile


integer(int32) function GetNumberOfProjects()

    integer(int32) :: NrProjects
    character(len=:), allocatable :: ListProjectsFile
    logical :: ListProjectFileExist
    integer :: fhandle, rc

    ListProjectsFile = GetListProjectsFile()
    ListProjectFileExist = FileExists(ListProjectsFile)
    NrProjects = 0

    if (ListProjectFileExist) then
        open(newunit=fhandle, file=trim(ListProjectsFile), &
             status='old', action='read', iostat=rc)
        read(fhandle, *, iostat=rc)
        do while (rc /= iostat_end)
            NrProjects = NrProjects + 1
            read(fhandle, *, iostat=rc)
        end do
        close(fhandle)
    end if
    GetNumberOfProjects = NrProjects
end function GetNumberOfProjects


function GetProjectFileName(iproject) result(ProjectFileName_out)
    integer(int32), intent(in) :: iproject
    character(len=:), allocatable :: ProjectFileName_out

    integer(int32) :: jproject
    character(len=:), allocatable :: ListProjectsFile
    character(len=1025) :: TheProjectFile
    integer :: fhandle

    ListProjectsFile = GetListProjectsFile()
    call assert(FileExists(ListProjectsFile), 'ListProjectsFile does not exist')

    open(newunit=fhandle, file=trim(ListProjectsFile), status='old', action='read')

    ! Read until we arrive at the selected project
    do jproject = 1, iproject
        read(fhandle, *) TheProjectFile
    end do
    close(fhandle)

    ProjectFileName_out = trim(TheProjectFile)
end function GetProjectFileName



subroutine InitializeProject(iproject, TheProjectFile, TheProjectType)
    integer(int32), intent(in) :: iproject
    character(len=*), intent(in) :: TheProjectFile
    integer(intEnum), intent(in) :: TheProjectType

    character(len=1025) :: NrString, TestFile, tempstring
    logical :: CanSelect, ProgramParametersAvailable
    integer(int32) :: TotalSimRuns
    integer(int8) :: SimNr
    character(len=:), allocatable :: FullFileNameProgramParametersLocal
    logical :: MultipleRunWithKeepSWC_temp
    real(dp) :: MultipleRunConstZrx_temp


    write(NrString, '(i8)') iproject
    CanSelect = .true.

    ! check if project file exists
    if (TheProjectType /= typeproject_TypeNone) then
        TestFile = GetPathNameList() // TheProjectFile
        if (.not. FileExists(TestFile)) then
            CanSelect = .false.
        end if
    end if

    if ((TheProjectType /= typeproject_TypeNone) .and. CanSelect) then
        ! run the project after cheking environment and simumation files
        ! 1. Set No specific project
        call InitializeSettings()

        select case(TheProjectType)
        case(typeproject_TypePRO)
            ! 2. Assign single project file
            call SetProjectFile(TheProjectFile)
            call SetProjectFileFull(GetPathNameList() // GetProjectFile())
            ! 3. Check if Environment and Simulation Files exist
            CanSelect = .true.
            call CheckFilesInProject(GetProjectFileFull(), 1, CanSelect)
            ! 4. load project parameters
            if (CanSelect) then
                call SetProjectDescription('undefined')
                FullFileNameProgramParametersLocal = GetFullFileNameProgramParameters()
                call ComposeFileForProgramParameters(GetProjectFile(), &
                                         FullFileNameProgramParametersLocal)
                call SetFullFileNameProgramParameters(FullFileNameProgramParametersLocal)
                call LoadProgramParametersProjectPlugIn(&
                                GetFullFileNameProgramParameters(), &
                                ProgramParametersAvailable)
                call ComposeOutputFileName(GetProjectFile())
            end if

        case(typeproject_TypePRM)
            ! 2. Assign multiple project file
            call SetMultipleProjectFile(TheProjectFile)
            call SetMultipleProjectFileFull(GetPathNameList() // &
                                    GetMultipleProjectFile())
            ! 2bis. Get number of Simulation Runs
            call GetNumberSimulationRuns(GetMultipleProjectFileFull(), &
                                         TotalSimRuns)
            ! 3. Check if Environment and Simulation Files exist for all runs
            CanSelect = .true.
            SimNr = 0_int8
            do while (CanSelect .and. (SimNr < TotalSimRuns))
                SimNr = SimNr + 1_int8
                call CheckFilesInProject(GetMultipleProjectFileFull(), &
                                    int(SimNr, kind=int32), CanSelect)
            end do

            ! 4. load project parameters
            if (CanSelect) then
                call SetMultipleProjectDescription('undefined')
                FullFileNameProgramParametersLocal = GetFullFileNameProgramParameters()
                call ComposeFileForProgramParameters(GetMultipleProjectFile(), &
                                            FullFileNameProgramParametersLocal)
                call SetFullFileNameProgramParameters(FullFileNameProgramParametersLocal)
                call LoadProgramParametersProjectPlugIn(&
                                GetFullFileNameProgramParameters(), &
                                ProgramParametersAvailable)
                call ComposeOutputFileName(GetMultipleProjectFile())
                call SetSimulation_MultipleRun(.true.)
                call SetSimulation_NrRuns(TotalSimRuns)
                MultipleRunWithKeepSWC_temp = GetSimulation_MultipleRunWithKeepSWC()
                MultipleRunConstZrx_temp = GetSimulation_MultipleRunConstZrx()
                call CheckForKeepSWC(GetMultipleProjectFileFull(), &
                                     GetSimulation_NrRuns(), &
                                     MultipleRunWithKeepSWC_temp, &
                                     MultipleRunConstZrx_temp)
                call SetSimulation_MultipleRunWithKeepSWC(MultipleRunWithKeepSWC_temp)
                call SetSimulation_MultipleRunConstZrx(MultipleRunConstZrx_temp)
            end if
        end select

        ! 5. Run
        if (CanSelect) then
            if (ProgramParametersAvailable) then
                write(tempstring, '(4a)') trim(NrString), '. - ', &
                                         trim(TheProjectFile), &
                                ' : Project loaded - with its program parameters'
                call fProjects_write(trim(tempstring))
            else
                write(tempstring, '(4a)') trim(NrString), '. - ', &
                                         trim(TheProjectFile), &
                       ' : Project loaded - default setting of program parameters'
                call fProjects_write(trim(tempstring))
            end if
        else
            write(tempstring, '(4a)') trim(NrString), '. - ', &
                                     trim(TheProjectFile), ' : Project NOT loaded', &
                            ' - Missing Environment and/or Simulation file(s)'
            call fProjects_write(trim(tempstring))
        end if
    else
        ! not a project file or missing in the LIST  dirtectory
        if (CanSelect) then
            write(tempstring, '(4a)') trim(NrString), '. - ', &
                                     trim(TheProjectFile), ' : is NOT a project file'
            call fProjects_write(trim(tempstring))
        else
            write(tempstring, '(4a)') trim(NrString), '. - ', &
                                     trim(TheProjectFile), &
                                ' : project file NOT available in LIST directory'
            call fProjects_write(trim(tempstring))
        end if
    end if

    contains

    subroutine ComposeFileForProgramParameters(TheFileNameProgram, &
                    FullFileNameProgramParameters)
        character(len=*), intent(in) :: TheFileNameProgram
        character(len=*), intent(inout) :: FullFileNameProgramParameters

        integer(int32) :: TheLength
        character(len=len(TheFileNameProgram)) :: tempstring
        character(len=3) :: TheExtension

        FullFileNameProgramParameters = ''
        TheLength = len(TheFileNameProgram)
        tempstring = TheFileNameProgram
        TheExtension = tempstring(TheLength-2:3) ! PRO or PRM
        ! file name program parameters
        FullFileNameProgramParameters = tempstring(1:TheLength-3)
        ! path file progrm parameters
        FullFileNameProgramParameters = trim(GetPathNameParam()) // &
                                    FullFileNameProgramParameters
        ! extension file program parameters
        if (TheExtension == 'PRO') then
            FullFileNameProgramParameters = FullFileNameProgramParameters // 'PP1'
        else
            FullFileNameProgramParameters = FullFileNameProgramParameters // 'PPn'
        end if
    end subroutine ComposeFileForProgramParameters


    subroutine LoadProgramParametersProjectPlugIn(&
                            FullFileNameProgramParameters, &
                            ProgramParametersAvailable)
        character(len=*), intent(in) :: FullFileNameProgramParameters
        logical, intent(inout) :: ProgramParametersAvailable

        integer :: f0
        integer(int32) :: i, simul_RpZmi, simul_lowox
        integer(int8) :: effrainperc, effrainshow, effrainrootE, &
                         simul_saltdiff, simul_saltsolub, simul_root, &
                        simul_ed, simul_pCCHIf, simul_SFR, simul_TAWg, &
                        simul_beta, simul_Tswc, simul_EZma, simul_GDD
        real(dp) :: simul_rod, simul_kcWB, simul_RZEma, simul_pfao, &
                    simul_expFsen, simul_Tmi, simul_Tma, Tmin_temp

        if (FileExists(FullFileNameProgramParameters)) then
            ! load set of program parameters
            ProgramParametersAvailable = .true.
            open(newunit=f0, file=trim(FullFileNameProgramParameters), &
                 status='old', action='read')
            ! crop
            read(f0, *) simul_ed ! evaporation decline factor in stage 2
            call SetSimulParam_EvapDeclineFactor(simul_ed)
            read(f0, *) simul_kcWB ! Kc wet bare soil [-]
            call SetSimulParam_KcWetBare(simul_kcWB)
            read(f0, *) simul_pCCHIf
                ! CC threshold below which HI no longer increase(% of 100)
            call SetSimulParam_PercCCxHIfinal(simul_pCCHIf)

            read(f0, *) simul_RpZmi
                ! Starting depth of root sine function (% of Zmin)
            call SetSimulParam_RootPercentZmin(simul_RpZmi)
            read(f0, *) simul_RZEma ! cm/day
            call SetSimulParam_MaxRootZoneExpansion(simul_RZEma)

            call SetSimulParam_MaxRootZoneExpansion(5.00_dp) ! fixed at 5 cm/day
            read(f0, *) simul_SFR
                ! Shape factor for effect water stress on rootzone expansion
            call SetSimulParam_KsShapeFactorRoot(simul_SFR)
            read(f0, *) simul_TAWg
                ! Soil water content (% TAW) required at sowing depth for germination

            call SetSimulParam_TAWGermination(simul_TAWg)
            read(f0, *) simul_pfao
                ! Adjustment factor for FAO-adjustment soil water depletion
                ! (p) for various ET
            call SetSimulParam_pAdjFAO(simul_pfao)
            read(f0, *) simul_lowox
                ! number of days for full effect of deficient aeration

            call SetSimulParam_DelayLowOxygen(simul_lowox)
            read(f0, *) simul_expFsen
                ! exponent of senescence factor adjusting drop in
                ! photosynthetic activity of dying crop
            call SetSimulParam_ExpFsen(simul_expFsen)
            read(f0, *) simul_beta
                ! Decrease (percentage) of p(senescence) once early
                ! canopy senescence is triggered

            call SetSimulParam_Beta(simul_beta)
            read(f0, *) simul_Tswc  ! Thickness top soil (cm) in which
                                    ! soil water depletion has to be determined
            call SetSimulParam_ThicknessTopSWC(simul_Tswc)
            ! field

            read(f0, *) simul_EZma
                ! maximum water extraction depth by soil evaporation [cm]
            call SetSimulParam_EvapZmax(simul_EZma)
            ! soil
            read(f0, *) simul_rod
                ! considered depth (m) of soil profile for calculation
                ! of mean soil water content

            call SetSimulParam_RunoffDepth(simul_rod)
            read(f0, *) i   ! correction CN for Antecedent Moisture Class
            if (i == 1) then
                call SetSimulParam_CNcorrection(.true.)

            else
                call SetSimulParam_CNcorrection(.false.)
            end if
            read(f0, *) simul_saltdiff ! salt diffusion factor (%)
            call SetSimulParam_SaltDiff(simul_saltdiff)
            read(f0, *) simul_saltsolub ! salt solubility (g/liter)

            call SetSimulParam_SaltSolub(simul_saltsolub)
            read(f0, *) simul_root ! shape factor capillary rise factor
            call SetSimulParam_RootNrDF(simul_root)
            call SetSimulParam_IniAbstract(5_int8)
                ! fixed in Version 5.0 cannot be changed since linked
                ! with equations for CN AMCII and CN converions

            ! Temperature
            read(f0, *) Tmin_temp
                ! Default minimum temperature (degC) if no
                ! temperature file is specified
            call SetTmin(Tmin_temp)
            call SetSimulParam_Tmin(simul_Tmi)
            read(f0, *) simul_Tma
                ! Default maximum temperature (degC) if
                ! no temperature file is specified

            call SetSimulParam_Tmax(simul_Tma)
            read(f0, *) simul_GDD ! Default method for GDD calculations
            call SetSimulParam_GDDMethod(simul_GDD)
            if (GetSimulParam_GDDMethod() > 3) then
                call SetSimulParam_GDDMethod(3_int8)
            end if

            if (GetSimulParam_GDDMethod() < 1) then
                call SetSimulParam_GDDMethod(1_int8)
            end if
            ! Rainfall
            read(f0, *) i
            select case(i)
            case(0)
                call SetSimulParam_EffectiveRain_Method(&
                    EffectiveRainMethod_Full)
            case(1)
                call SetSimulParam_EffectiveRain_Method(&
                    EffectiveRainMethod_USDA)
            case(2)
                call SetSimulParam_EffectiveRain_Method(&
                    EffectiveRainMethod_Percentage)
            end select

            read(f0, *) effrainperc ! IF Method is Percentage
            call SetSimulParam_EffectiveRain_PercentEffRain(effrainperc)
            read(f0, *) effrainshow  ! For estimation of surface run-off
            call SetSimulParam_EffectiveRain_ShowersInDecade(effrainshow)

            read(f0, *) effrainrootE ! For reduction of soil evaporation
            call SetSimulParam_EffectiveRain_RootNrEvap(effrainrootE)

            ! close
            close(f0)

        else
            ! take the default set of program parameters
            ! (already read in InitializeSettings)
            ProgramParametersAvailable = .false.
        end if
        end subroutine LoadProgramParametersProjectPlugIn

end subroutine InitializeProject



subroutine FinalizeTheProgram()

    integer :: fend

    call fProjects_close()

    ! all done
    open(newunit=fend, file=(GetPathNameOutp() // 'AllDone.OUT'), &
         status='replace', action='write')
    write(fend, '(a)') 'All done'
end subroutine FinalizeTheProgram


subroutine WriteProjectsInfo(line)
    character(len=*), intent(in) :: line

    call fProjects_write('')
end subroutine WriteProjectsInfo


subroutine StartTheProgram()

    integer(int32) :: iproject, nprojects
    character(len=1025) :: ListProjectsFile, TheProjectFile
    logical :: ListProjectFileExist
    integer(int8) :: TheProjectType

    call InitializeTheProgram

    ListProjectsFile = GetListProjectsFile()
    ListProjectFileExist = FileExists(trim(ListProjectsFile))
    nprojects = GetNumberOfProjects()

    if (nprojects > 0) then
        call WriteProjectsInfo('')
        call WriteProjectsInfo('Projects handled:')
    end if

    do iproject = 1, nprojects
        TheProjectFile = GetProjectFileName(iproject)
        call GetProjectType(trim(TheProjectFile), TheProjectType)
        call InitializeProject(iproject, trim(TheProjectFile), TheProjectType)
        call RunSimulation(TheProjectFile, TheProjectType)
    end do

    if (nprojects == 0) then
        call WriteProjectsInfo('')
        call WriteProjectsInfo('Projects loaded: None')

        if (ListProjectFileExist) then
            call WriteProjectsInfo('File "ListProjects.txt" does not contain ANY project file')
        else
            call WriteProjectsInfo('Missing File "ListProjects.txt" in LIST directory')
        end if
    end if
    call FinalizeTheProgram
end subroutine StartTheProgram

end module ac_startunit
