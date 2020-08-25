:: ======================================
::   
::  PC Cleanup Utility (PCCU) By MDP
::   
::  OpenSourceBATch
::  Anyone Can Use This But Please Give Credit.
::   
::  Windows 10 Compatible Batch
::  This Batch Is Compatible With Windows 10.
:: 
::  Changelog:
:: 
::  v2.3
::  + Now PCCU Can Clean Idle Process.
::  + "Clean All Cache" Mechanic Changed.
::  + "Clean All Cache" Now Deletes Clipboard, IE Tracks, Idle Process RAM.
::  - One Of Executeables Optimizer Triggered Maintenance Mode.
:: 
::  v2.2
::  + Added "Clean Manager" More Option
::  + Added Delete IE Or Edge Tracks.
::  + Adding 3rd Party App Cleanup Option.
::  + Adding Delete "%localappdata%\Google\Chrome\User Data\Default\Cache" (Chrome Internet Cache)
:: 
::  v2.1
::  + Added Advanced Cleanup Option.
::  + Added Delete "C:\Windows\Logs*.log/tmp/temp*" In Advanced Option.
::  
::  v2.0
::  + Added Advanced (Dangerous) Cleanup Option. (WARNING: IF YOU DONT KNOW WHAT YOU DO, YOUR PC MAY BROKE).
::  
::  v1.8
::  + Added Delete All Temporary Files First Before Deleting Folder Itself To Prevent Files Being Use.
::  + Added "Defrag" Option
::  + Added "Close All Running Apps" Option
::  + Added "ADB.exe" Process To Kill Because Temp Files They Make.
::  + Added "Delete Internet Cookies" And "Temp Internet Files" To Delete All Cache.
::  
:: ===================================

@echo off
color 07
:home
cls
title Command Prompt: PCCU
mode con cols=51 lines=21
echo ษอออออออออออออออออออออออออออออออออออออออออออออออออป
echo บ PC Cleanup Utility v2.2                         บ
echo บอออออออออออออออออออออออออออออออออออออออออออออออออบ
call :label1
echo บ [F] Disk Defragment                             บ
echo บ [L] Clear Clipboard                             บ
echo บ [T] Close All Running Apps                      บ
echo บ [C] Clear All Cache                             บ
echo บ [P] 3rd Option                                  บ
echo บ [D] Advanced Option                             บ
echo บ [R] Refresh                                     บ
echo บ [X] Exit                                        บ
echo ศอออออออออออออออออออออออออออออออออออออออออออออออออผ
choice /c 123456bjfltcxdpr /n
set sign=Optimizing
cls
if %errorlevel%==1 goto 1
if %errorlevel%==2 goto 2
if %errorlevel%==3 goto 3
if %errorlevel%==4 goto 4
if %errorlevel%==5 goto 5
if %errorlevel%==6 goto 6
if %errorlevel%==7 goto delbin
if %errorlevel%==8 goto deljumplist
if %errorlevel%==9 goto defrag
if %errorlevel%==10 goto clearclip
if %errorlevel%==11 goto taskkill
if %errorlevel%==12 goto delall
if %errorlevel%==13 goto x
if %errorlevel%==14 goto homeadvanced
if %errorlevel%==15 goto home3rd
if %errorlevel%==16 goto home
goto bug

:home3rd
mode con cols=51 lines=19
echo ษอออออออออออออออออออออออออออออออออออออออออออออออออป
echo บ PC Cleanup Utility v.2.2                        บ
echo บอออออออออออออออออออออออออออออออออออออออออออออออออบ
call :label2
echo บ [D] Advanced Option                             บ
echo บ [H] Go Back To Home                             บ
echo บ [R] Refresh                                     บ
echo บ [X] Exit                                        บ
echo ศอออออออออออออออออออออออออออออออออออออออออออออออออผ
choice /c 123456dhrx /n
set sign=Optimizing
cls
if %errorlevel%==1 goto 3rd1
if %errorlevel%==2 goto 3rd2
if %errorlevel%==3 goto 3rd3
if %errorlevel%==4 goto 3rd4
if %errorlevel%==5 goto 3rd5
if %errorlevel%==6 goto 3rd6
if %errorlevel%==7 goto homedebug
if %errorlevel%==8 goto home
if %errorlevel%==9 goto home3rd
if %errorlevel%==10 goto x
goto bug

:homeadvanced
cls
mode con cols=59 lines=20
echo ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
echo บ PC Cleanup Utility v.2.2 Advanced BETA                  บ
echo บอออออออออออออออออออออออออออออออออออออออออออออออออออออออออบ
echo บ [1] Delete "AppData\Local\IconCache.db"                 บ
echo บ [2] Delete All TMP Files In "AppData\Local\"            บ
echo บ [3] Delete All TEMP Files In "AppData\Local\"           บ
echo บ [4] Delete All LOG Files In "AppData\Local\"            บ
echo บ [5] Delete All TMP, TEMP, LOG Files In "AppData\Local\" บ
echo บ [6] Delete All TMP, TEMP, LOG Files In "Windows\Logs"   บ
echo บ [7] Restart Windows UI                                  บ
echo บ [Y] Clear Your IE Tracks                                บ
echo บ [M] More Options                                        บ
echo บ [V] View Log Files                                      บ
echo บอออออออออออออออออออออออออออออออออออออออออออออออออออออออออบ
echo บ [D] Advanced Debug Option                               บ
echo บ [H] Go Back To Home                                     บ
echo บ [R] Refresh                                             บ
echo บ [X] Exit                                                บ
echo ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
choice /c 1234567ymvdhrx /n
set sign=Optimizing
cls
if %errorlevel%==1 goto a1
if %errorlevel%==2 goto a2
if %errorlevel%==3 goto a3
if %errorlevel%==4 goto a4
if %errorlevel%==5 goto a5
if %errorlevel%==6 goto a6
if %errorlevel%==7 goto restartui
if %errorlevel%==8 goto delietrack
if %errorlevel%==9 cleanmgr /sageset:99 >NUL & goto home
if %errorlevel%==10 goto viewfile
if %errorlevel%==11 goto homedebug
if %errorlevel%==12 goto home
if %errorlevel%==13 goto homeadvanced
if %errorlevel%==14 goto x
goto bug


:homedebug
cls
mode con cols=51 lines=16
echo ษอออออออออออออออออออออออออออออออออออออออออออออออออป
echo บ PC Cleanup Utility v.2.2 Advanced BETA          บ
echo บอออออออออออออออออออออออออออออออออออออออออออออออออบ
echo บ WARNING : CHOOSING OPTION ON THIS SECTION MAYBE บ
echo บ WILL BREAK YOUR PC.                             บ
echo บอออออออออออออออออออออออออออออออออออออออออออออออออบ
echo บ [1] Delete ALL TMP Files                        บ
echo บ [2] Delete ALL TEMP Files                       บ
echo บ [3] Delete ALL LOG Files                        บ
echo บ [4] Delete ALL TMP, TEMP, LOG Files             บ
echo บ [H] Go Back To Home                             บ
echo บ [D] Go Back To Advanced Option                  บ
echo บ [R] Refresh                                     บ
echo บ [X] Exit                                        บ
echo ศอออออออออออออออออออออออออออออออออออออออออออออออออผ
choice /c 1234hdrx /n
set sign=Optimizing
cls
if %errorlevel%==1 goto d1
if %errorlevel%==2 goto d2
if %errorlevel%==3 goto d3
if %errorlevel%==4 goto ddelall
if %errorlevel%==5 goto home
if %errorlevel%==6 goto 
if %errorlevel%==7 goto 
if %errorlevel%==8 goto 
goto bug

:1
	mode con cols=53 lines=20
	echo Deleting "%username%" Local Temporary...
	echo Deleting "%tmp%"
	call :startanim
	del /f /q "%tmp%\*.*" 2>nul >nul
	rd /s /q "%tmp%" 2>nul >nul
	call :endanim
	echo Local Temporary Deleted
	title PCCU: Done
	ping localhost -n 2 >nul
	goto home

:2
	mode con cols=53 lines=20
	echo Deleting Windows Temporary...
	echo Deleting "C:\Windows\Temp"
	call :endanim
	del /f /q "%windir%\Temp\*.*" 2>nul >nul
	rd /s /q "%windir%\Temp" 2>nul >nul
	call :endanim
	echo Windows Temporary Deleted
	title PCCU: Done
	ping localhost -n 2 >nul
	goto home

:3
	mode con cols=53 lines=20
	echo Deleting Windows Software Distribution Temporary Folder...
	echo Deleting "%windir%\SoftwareDistribution\Download"
	call :endanim
	del /f /q "%windir%\SoftwareDistribution\Download\*.*" 2>nul >nul
	rd /s /q "%windir%\SoftwareDistribution\Download" 2>nul >nul
	call :endanim
	echo Windows Temporary Deleted
	title PCCU: Done
	ping localhost -n 2 >nul
	goto home

:4
	mode con cols=53 lines=20
	echo Deleting Windows Prefetch Cache...
	echo Deleting "C:\Windows\Prefetch"
	call :endanim
	del /f /q "%windir%\Prefetch\*.*" 2>nul >nul
	rd /s /q "%windir%\Prefetch" 2>nul >nul
	call :endanim
	echo Windows Prefetch Cache Deleted
	title PCCU: Done
	ping localhost -n 2 >nul
	goto home

:5
	mode con cols=53 lines=20
	echo Deleting Internet Cookies...
	echo Deleting "%userprofile%\Cookies"
	call :startanim
	del /f /q "%userprofile%\Cookies\*.tmp*" 2>nul >nul
	rd /s /q "%userprofile%\Cookies" 2>nul >nul
	call :endanim
	echo Internet Cookies Deleted
	title PCCU: Done
	ping localhost -n 2 >nul
	goto home

:6
	mode con cols=53 lines=20
	echo Deleting Temporary Internet Files...
	echo Deleting "%localappdata%\Microsoft\Windows\Temporary Internet Files\"
	call :startanim
	del /f /q "%localappdata%\Microsoft\Windows\Temporary Internet Files\*.*" 2>nul >nul
	rd /s /q "%localappdata%\Microsoft\Windows\Temporary Internet Files" 2>nul >nul
	call :endanim
	echo Temporary Internet Files Deleted
	title PCCU: Done
	ping localhost -n 2 >nul
	goto home
	
:delietrack
	mode con cols=53 lines=20
	echo Deleting IE Tracks...
	call :startanim
	RunDll32.exe InetCpl.cpl,ClearMyTracksByProcess 255 2>NUL >NUL
	call :endanim
	echo IE Tracks Deleted
	title PCCU: Done
	ping localhost -n 2 >nul
	goto home

:defrag
	mode con cols=53 lines=20
	set sign=Defragmenting
	echo Defragmenting Hard Drives...
	call :startanim
	defrag /c /v /x /o
	cls
	call :endanim
	echo Disk Defrag Successfull.
	title PCCU: Done
	ping localhost -n 2 >nul
	goto home
	
:clearclip
	mode con cols=53 lines=20
	set sign=Clearing
	echo Clearing Clipboard...
	call :startanim
	echo. >nul | CLIP
	call :endanim
	echo Clipboard Cleared.
	title PCCU: Done
	ping localhost -n 2 >nul
	goto home
	
:delbin
	mode con cols=53 lines=20
	set sign=Deleting
	echo Deleting Files In Recycle Bin...
	call :startanim
	del /f /q "%systemdrive%\$Recycle.Bin\*.*" 2>NUL >NUL
	rd /s /q "%systemdrive%\$Recycle.Bin" 2>NUL >NUL
	call :endanim
	echo Files In Recycle Bin Deleted.
	title PCCU: Done
	ping localhost -n 2 >nul
	goto home
	
:deljumplist
	mode con cols=53 lines=20
	set sign=Deleting
	echo Deleting Jump List...
	call :startanim
	del /F /Q %APPDATA%\Microsoft\Windows\Recent\AutomaticDestinations\* 2>NUL >NUL
	del /F /Q %APPDATA%\Microsoft\Windows\Recent\CustomDestinations\* 2>NUL >NUL
	call :endanim
	echo Jump List Deleted.
	title PCCU: Done
	ping localhost -n 2 >nul
	goto home

:taskkill
	mode con cols=53 lines=8

	set sign=Closing Background Apps
	echo Closing All Running Background Apps
	call :startanim
	taskkill /t /f /im SearchIndexer.exe 2>nul >nul
	taskkill /t /f /im SearchUI.exe 2>nul >nul
	taskkill /t /f /im MsMpEng.exe 2>nul >nul
	call :endanim

	set sign=Clearing RAM
	echo Clearing Idle Process On RAM
	call :startanim
	rundll32.exe advapi32.dll,ProcessIdleTasks 2>nul >nul
	call :endanim
	
	set sign=Closing Unresopnding Apps
	echo Closing All Unresponding Apps...
	call :startanim
	taskkill /fi "status eq not responding" 2>nul >nul
	call :endanim
	
	title PCCU: Done
	ping localhost -n 2 >nul
	goto home

:delall
	mode con cols=53 lines=10

	set sign=Closing Unresopnding Apps
	echo Closing All Unresponding Apps...
	call :startanim
	taskkill /fi "status eq not responding" 2>nul >nul
	call :endanim

	set sign=Clearing
	echo Clearing Clipboard...
	call :startanim
	echo. >nul | CLIP
	call :endanim

	set sign=Deleting
	echo Deleting Jump List...
	call :startanim
	del /F /Q %APPDATA%\Microsoft\Windows\Recent\AutomaticDestinations\* 2>NUL >NUL
	del /F /Q %APPDATA%\Microsoft\Windows\Recent\CustomDestinations\* 2>NUL >NUL
	call :endanim

	set sign=Optimizing
	echo Deleting "%username%" Local Temporary...
	call :startanim
	del /f /q "%userprofile%\AppData\Local\Temp\*"  2>NUL >NUL
	rd /s /q "%userprofile%\AppData\Local\Temp" 2>NUL >NUL
	call :endanim

	echo Deleting Windows Temporary...
	call :startanim
	del /f /q "C:\Windows\Temp\*" 2>NUL >NUL
	rd /s /q "C:\Windows\Temp" 2>NUL >NUL
	call :endanim

	echo Deleting Windows SoftwareDistribution Cache...
	call :startanim
	del /f /q "C:\Windows\SoftwareDistribution\Download\*" 2>NUL >NUL
	rd /s /q "C:\Windows\SoftwareDistribution\Download" 2>NUL >NUL
	call :endanim

	echo Deleting Windows Prefetch Cache...
	call :startanim
	del /f /q "C:\Windows\Prefetch\*" 2>NUL >NUL
	rd /s /q "C:\Windows\Prefetch" 2>NUL >NUL
	call :endanim

	echo Deleting Internet Cookies...
	call :startanim
	del /f /q "%userprofile%\Cookies\*.tmp*" 2>NUL >NUL
	rd /s /q "%userprofile%\Cookies" 2>NUL >NUL
	call :endanim

	echo Deleting Temporary Internet Files...
	call :startanim
	del /f /q "%userprofile%\AppData\Local\Microsoft\Windows\Temporary Internet Files\*" 2>NUL >NUL
	rd /s /q "%userprofile%\AppData\Local\Microsoft\Windows\Temporary Internet Files" 2>NUL >NUL

	echo Done!
	title PCCU: Done
	ping localhost -n 2 >nul
	goto home

:: ADVANCED OPTION
:: Advanced Option Of Deleting Cache.
:a5
	mode con cols=80 lines=24
	echo Deleting All TMP, LOG, TEMP File In "%userprofile%\AppData\Local"...
	call :startanim
	del /f /q "%userprofile%\AppData\Local\*.tmp*"
	del /f /q "%userprofile%\AppData\Local\*.temp*"
	del /f /q "%userprofile%\AppData\Local\*.log*"
	call :endanim
	echo Windows Log Deleted
	title PCCU: Done
	ping localhost -n 2 >nul
	goto home

:a6
	mode con cols=80 lines=24
	echo Deleting Windows Log...
	echo Deleting All TMP, LOG, TEMP File In "C:\Windows\Log"...
	call :startanim
	del /f /q "C:\Windows\Logs\*.tmp*"
	del /f /q "C:\Windows\Logs\*.temp*"
	del /f /q "C:\Windows\Logs\*.log*"
	call :endanim
	echo Windows Log Deleted
	title PCCU: Done
	ping localhost -n 2 >nul
	goto home

:restartui
	cls
	echo Restarting.
	ping localhost -n 0 >nul
	cls
	echo Restarting..
	ping localhost -n 0 >nul
	cls
	echo Restarting...

	taskkill /im explorer.exe /f
	ping localhost -n 2 >nul
	start explorer.exe

	cls
	echo Restarting ..
	ping localhost -n 0 >nul
	cls
	echo Restarting  .
	ping localhost -n 0 >nul
	cls
	echo Restarting
	title PCCU: Done
	ping localhost -n 2 >nul
	goto home

:: LOG FILES TO DELETE
:: Shows Log About Files PCCU Can Delete.
:viewfile
	set sign=Generating
	mode con cols=53 lines=10
	ECHO Generating List...
	call :startanim
	TYPE NUL > viewfiles.txt
	ECHO Temporary Internet Files: > viewfiles.txt
	ECHO. >> viewfiles.txt
	if exist "%systemdrive%\Users" (
	dir /b /s "%LocalAppData%\Microsoft\Windows\Temporary Internet Files\" >> viewfiles.txt 2>NUL
	) else (
	dir /b /s "%userprofile%\Local Settings\Temporary Internet Files\" >> viewfiles.txt 2>NUL
	)
	ECHO. >> viewfiles.txt
	ECHO. >> viewfiles.txt
	ECHO History: >> viewfiles.txt
	ECHO. >> viewfiles.txt
	if exist "%systemdrive%\Users" (
	dir /b /s "%LocalAppData%\Microsoft\Windows\History\" >> viewfiles.txt 2>NUL
	) else (
	dir /b /s "%userprofile%\Local Settings\History\" >> viewfiles.txt 2>NUL
	)
	ECHO. >> viewfiles.txt
	ECHO. >> viewfiles.txt
	ECHO Internet Cookies: >> viewfiles.txt
	ECHO. >> viewfiles.txt
	if exist "%systemdrive%\Users" (
	dir /b "%userprofile%\AppData\Roaming\Microsoft\Windows\Cookies\" >> viewfiles.txt 2>NUL
	IF EXIST "%userprofile%\AppData\Roaming\Microsoft\Windows\Cookies\Low" dir /b "%userprofile%\AppData\Roaming\Microsoft\Windows\Cookies\Low\" >>ViewFiles.txt 2>NUL
	) else (
	dir /b "%userprofile%\Cookies\" >>ViewFiles.txt 2>NUL
	)
	ECHO. >> viewfiles.txt
	ECHO. >> viewfiles.txt
	ECHO Temp Files: >> viewfiles.txt
	ECHO. >> viewfiles.txt
	dir /b /s "%TEMP%" >>ViewFiles.txt 2>NUL
	if not "%TEMP%"=="%TMP%" dir /b /s "%TMP%" >>ViewFiles.txt 2>NUL
	dir /b /s "%windir%\Temp\" >>ViewFiles.txt 2>NUL
	if exist "%systemdrive%\Temp" (
	dir /b /s "%systemdrive%\Temp" >>ViewFiles.txt 2>NUL
	)
	ECHO. >> viewfiles.txt
	ECHO. >> viewfiles.txt
	ECHO Icon Cache: >> viewfiles.txt
	ECHO. >> viewfiles.txt
	if exist "%systemdrive%\Users" (
	ECHO %LocalAppData%\Iconcache.db >>ViewFiles.txt
	) else (
	ECHO %userprofile%\Local Settings\Application Data\Iconcache.db >>ViewFiles.txt
	)
	ECHO. >> viewfiles.txt
	ECHO. >> viewfiles.txt
	ECHO Thumbnail Cache: >> viewfiles.txt
	ECHO. >> viewfiles.txt
	dir /b /s /a "%LocalAppData%\Microsoft\Windows\Explorer\thumbcache_*.db" >>ViewFiles.txt 2>NUL
	ECHO. >> viewfiles.txt
	ECHO. >> viewfiles.txt
	ECHO Recent Documents (In Start Menu): >> viewfiles.txt
	ECHO. >> viewfiles.txt
	if exist "%systemdrive%\Users" (
	dir /b "%userprofile%\AppData\Roaming\Microsoft\Windows\Recent\" >> viewfiles.txt 2>NUL
	) else (
	dir /b "%userprofile%\Recent\*.*" >> viewfiles.txt 2>NUL
	)
	echo This May Take Some Time.
	if exist "%systemdrive%\Users" (
	if exist "%LocalAppData%\Google\Chrome\User Data" (
	ECHO. >> viewfiles.txt
	ECHO. >> viewfiles.txt
	ECHO Google Chrome Info: >> viewfiles.txt
	ECHO. >> viewfiles.txt
	dir /b /s "%LocalAppData%\Google\Chrome\User Data\Default\Cache" >> viewfiles.txt 2>NUL
	))
	if exist "%systemdrive%\Users" (
	if exist "%LocalAppData%\Mozilla\Firefox\Profiles" (
	ECHO. >> viewfiles.txt
	ECHO. >> viewfiles.txt
	ECHO Firefox Info: >> viewfiles.txt
	ECHO. >> viewfiles.txt
	dir /b /s "%LocalAppData%\Mozilla\Firefox\Profiles" >> viewfiles.txt 2>NUL
	dir /b /s "%userprofile%\AppData\Roaming\Mozilla\Firefox\Profiles\*\*sqlite" >> viewfiles.txt 2>NUL
	))
	if exist "%systemdrive%\Users" (
	if exist "%LocalAppData%\Opera\Opera" (
	ECHO. >> viewfiles.txt
	ECHO. >> viewfiles.txt
	ECHO Opera Info: >> viewfiles.txt
	ECHO. >> viewfiles.txt
	dir /b /s "%LocalAppData%\Opera\Opera" >> viewfiles.txt 2>NUL
	dir /b /s "%userprofile%\AppData\Roaming\Opera\Opera" >> viewfiles.txt 2>NUL
	))
	ECHO. >> viewfiles.txt
	ECHO. >> viewfiles.txt
	ECHO Windows Log Files: >> viewfiles.txt
	ECHO. >> viewfiles.txt
	dir /b /s "%windir%\*.log" >> viewfiles.txt 2>NUL
	if exist "%APPDATA%\Microsoft\Windows\Recent\AutomaticDestinations" (
	ECHO. >> viewfiles.txt
	ECHO. >> viewfiles.txt
	ECHO Jump List: >> viewfiles.txt
	ECHO. >> viewfiles.txt
	dir /b %APPDATA%\Microsoft\Windows\Recent\AutomaticDestinations\* >> viewfiles.txt 2>NUL
	dir /b %APPDATA%\Microsoft\Windows\Recent\CustomDestinations\* >> viewfiles.txt 2>NUL
	)
	echo Almost There.
	echo. >> viewfiles.txt
	echo Making Details...
	echo Details: >> viewfiles.txt
	if exist "//VBOXSVR" echo Your PC Is Running On VirtualBox Machine. >> viewfiles.txt
	if "%systemdrive%" neq "C:" echo Your System Drive Is Not "C:" This Can Make Problem >> viewfiles.txt
	if "%userprofile%" equ "C:\Users\%username%" echo Your Windows Is Running Windows 7 or Above>> viewfiles.txt
	if "%userprofile%" equ "C:\Documents and Settings\%username%" echo Your Windows Is Running Windows XP Or Below >> viewfiles.txt
	echo. >> viewfiles.txt
	echo Making Problem Report...
	echo Problems:  >> viewfiles.txt
	set hasproblem=0
	if not defined tmp set hasproblem=1 echo - Temporary Path "TMP" Is Not Defined >> viewfiles.txt
	if not defined temp set hasproblem=1 echo - Temporary Path "TEMP" Is Not Defined >> viewfiles.txt
	if not defined windir set hasproblem=1 echo - Windows Directory "WINDIR" Is Not Defined >> viewfiles.txt
	if not defined userprofile set hasproblem=1 echo - User Path "USERPROFILE" Is Not Defined >> viewfiles.txt
	if not defined username set hasproblem=1 echo - Username "USERNAME" Is Not Defined >> viewfiles.txt
	if not defined systemdrive set hasproblem=1 echo - System Drive "SYSTEMDRIVE" Is Not Defined >> viewfiles.txt
	if not defined localappdata set hasproblem=1 echo - Local AppData "LOCALAPPDATA" Is Not Defined >> viewfiles.txt
	if not defined appdata set hasproblem=1 echo - AppData "APPDATA" Is Not Defined >> viewfiles.txt
	if hasproblem=0 echo There Is No Problem.
	echo. >> viewfiles.txt
	echo Making Computer Spec...
	if not defined os                    set os=Unknown OS
	if not defined username              set username=Unknown User
	if not defined processor_identifier  set processor_identifier=^?
	if not defined processor_architecure set processor_architecure=^?
	if not defined number_of_processors  set number_of_processors=^?
	if not defined processor_level       set processor_level=^?
	if not defined processor_revision    set processor_revision=^?
	if exist "\\VBOXSVR"                 set os=%os% - VirtualBox Platform
	echo Running On   : %Os% >> viewfiles.txt
	echo UserFolder   : %UserName% >> viewfiles.txt
	echo Processor    : %Processor_Identifier% >> viewfiles.txt
	echo Architecture : %Processor_Architecture% >> viewfiles.txt
	echo Cores        : %Number_Of_Processors% >> viewfiles.txt
	echo Level        : %Processor_Level% >> viewfiles.txt
	echo Revision     : %Processor_Revision% >> viewfiles.txt
	echo.
	echo Done.
	title PCCU: Done
	start viewfile.txt
	ping localhost -n 3 >nul
	del viewfile.txt
	goto home

:: DANGEROUS ADVANCED OPTION
:: DON'T EDIT THIS LINE EXCEPT YOU KNOW WHAT TO DO!
:d1
	mode con cols=80 lines=24
	echo Deleting ALL TMP Files...
	call :startanim
	del /f /q "C:\*.tmp*"
	call :endanim
	echo All TMP Files Deleted
	title PCCU: Done
	ping localhost -n 2 >nul
	goto home
	
:d2
	mode con cols=80 lines=24
	echo Deleting ALL TEMP Files...
	call :startanim
	del /f /q "C:\*.temp*"
	call :endanim
	echo All TEMP Files Deleted
	title PCCU: Done
	ping localhost -n 2 >nul
	goto home
	
:d3
	mode con cols=80 lines=24
	echo Deleting ALL LOG Files
	call :startanim
	del /f /q "C:\*.log*"
	call :endanim
	echo All LOG Files Deleted
	title PCCU: Done
	ping localhost -n 2 >nul
	goto home

:ddelall
	mode con cols=80 lines=24
	echo Deleting ALL TMP Files...
	call :startanim
	del /f /q "C:\*.tmp*"
	call :endanim
	cls
	echo All TMP Files Deleted
	echo Deleting ALL TEMP Files...
	call :startanim
	del /f /q "C:\*.temp*"
	call :endanim
	echo All TEMP Files Deleted
	echo Deleting ALL LOG Files
	call :startanim
	del /f /q "C:\*.log*"
	echo All LOG Files Deleted
	title PCCU: Done
	ping localhost -n 2 >nul
	goto home
	
:: LABEL
:: If Folder Exists, The Number Will Show.
:: If Folder Not Exists, The Number Not Show.
:label1
if exist "%userprofile%\AppData\Local\Temp"                                           echo บ [1] Clear User Local Temporary                  บ
if not exist "%userprofile%\AppData\Local\Temp"                                       echo บ [ ] Clear User Local Temporary                  บ
if exist "%windir%\Temp"                                                              echo บ [2] Clear Windows Temporary                     บ
if not exist "%windir%\Temp"                                                          echo บ [ ] Clear Windows Temporary                     บ
if exist "%windir%\SoftwareDistribution\Download"                                     echo บ [3] Clear "SoftwareDistribution\Download" Cache บ
if not exist "%windir%\SoftwareDistribution\Download"                                 echo บ [ ] Clear "SoftwareDistribution\Download" Cache บ
if exist "%windir%\Prefetch"                                                          echo บ [4] Clear Windows Prefetch Cache                บ
if not exist "%windir%\Prefetch"                                                      echo บ [ ] Clear Windows Prefetch Cache                บ
if exist "%userprofile%\Cookies"                                                      echo บ [5] Delete Internet Cookies                     บ
if not exist "%userprofile%\Cookies"                                                  echo บ [ ] Delete Internet Cookies                     บ
if exist "%userprofile%\AppData\Local\Microsoft\Windows\Temporary Internet Files"     echo บ [6] Delete Temporary Internet Files             บ
if not exist "%userprofile%\AppData\Local\Microsoft\Windows\Temporary Internet Files" echo บ [ ] Delete Temporary Internet Files             บ
if exist "%systemdrive%\$Recycle.Bin"                                                 echo บ [B] Delete Files In Recycle Bin                 บ
if not exist "%systemdrive%\$Recycle.Bin"                                             echo บ [ ] Delete Files In Recycle Bin                 บ
if exist "%APPDATA%\Microsoft\Windows\Recent\AutomaticDestinations"                   echo บ [J] Clear Jump List                             บ
if not exist "%APPDATA%\Microsoft\Windows\Recent\AutomaticDestinations"               echo บ [ ] Clear Jump List                             บ
exit /b

:label2
if exist "%userprofile%\AppData\Local\Google\Chrome\User Data"          (        echo บ Chrome Cache Cleaning                           บ
																				 echo บอออออออออออออออออออออออออออออออออออออออออออออออออบ
if exist "%userprofile%\AppData\Local\Google\Chrome\User Data\Default\Cache"     echo บ [1] Clear Cache                                 บ
if not exist "%userprofile%\AppData\Local\Google\Chrome\User Data\Default\Cache" echo บ [ ] Clear Cache                                 บ
if exist ""                                                                      echo บ [2] Clear soon                                  บ
if not exist ""                                                                  echo บ [ ] Clear soon                                  บ
if exist ""                                                                      echo บ [3] Clear soon                                  บ
if not exist ""                                                                  echo บ [ ] Clear soon                                  บ
if exist ""                                                                      echo บ [4] Clear soon                                  บ
if not exist ""                                                                  echo บ [ ] Clear soon                                  บ
if exist ""                                                                      echo บ [5] Clear soon                                  บ
if not exist ""                                                                  echo บ [ ] Clear soon                                  บ
if exist ""                                                                      echo บ [6] Clear soon                                  บ
if not exist ""                                                                  echo บ [ ] Clear soon                                  บ
)
exit /b
	
:: BUG
:: If Some Bug Happening, They Will Be Redirected To This Message.
:bug
	title BUG FOUND
	mode con cols=15 lines=7
	if "%bug2exit%" EQU "10" goto exitbug
	set /a bug2exit=%bug2exit%+1
	cls
	echo ===============
	echo      ERROR
	echo ===============
	echo  BUG HAS FOUND
	echo   CONTACT ME.
	echo ===============
	ping localhost -n 2 >nul
	goto home
	
:: BUG EXIT
:: If Same Bug Is Happening Again And Again, PCCU Will Exit.
:exitbug
	title ERROR BUG FOUND
	mode con cols=17 lines=8
	cls
	echo =================
	echo       ERROR
	echo =================
	echo   TOO MANY BUGS.
	echo    CONTACT ME.
	echo  PCCU WILL EXIT.
	echo =================
	ping localhost -n 3 >nul
	exit %errorlevel%

:x
	title Command Prompt
	exit /b
	exit
	
:: TITLE ANIMATION
:: Just Animation.
:startanim
title PCCU: %sign%......
ping localhost -n 1 >nul
title PCCU: %sign%^>.....
ping localhost -n 1 >nul
title PCCU: %sign%^>^>....
ping localhost -n 1 >nul
title PCCU: %sign% ^>^>...
ping localhost -n 1 >nul
title PCCU: %sign%  ^>^>..
ping localhost -n 1 >nul
title PCCU: %sign%   ^>^>.
ping localhost -n 1 >nul
title PCCU: %sign%    ^>^>
ping localhost -n 1 >nul
title PCCU: %sign%     ^>
ping localhost -n 1 >nul
title PCCU: %sign%
ping localhost -n 1 >nul
exit/b

:endanim
title PCCU: %sign%     .
ping localhost -n 1 >nul
title PCCU: %sign%    ..
ping localhost -n 1 >nul
title PCCU: %sign%   ...
ping localhost -n 1 >nul
title PCCU: %sign%  ....
ping localhost -n 1 >nul
title PCCU: %sign% .....
ping localhost -n 1 >nul
title PCCU: %sign%......
ping localhost -n 1 >nul
exit/b