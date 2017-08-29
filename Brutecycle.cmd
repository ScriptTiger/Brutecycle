@echo off

rem =====
rem For more information on ScriptTiger and more ScriptTiger scripts visit the following URL:
rem https://scripttiger.github.io/
rem Or visit the following URL for the latest information on this ScriptTiger script:
rem https://github.com/ScriptTiger/Brutecycle
rem =====

setlocal ENABLEDELAYEDEXPANSION

cd %~dp0

set hex=
set current=0
set progress=0
set total=0

if "%~1"=="" (set /p digits=How many digits to cycle? ) else set digits=%~1

if "%~2"=="" (
set characters=0 1 2 3 4 5 6 7 8 9 a b c d e f
echo Current arrangement of default characters if none are specified:
echo !characters!
set /p characters=Include what characters in what order? 
) else set characters=%~2

if "%~3"=="" (
set output="con"
echo If no file is specified or "con" is input, the results are standard output
set /p output=File to ouput results to? 
) else set output=%~3

if "%~4"=="" (
set interactive=1
choice /m "Would you like to display progress?"
set display=!errorlevel!
) else (
set interactive=0
set display=%~4
)

for %%0 in (%characters%) do set /a total=!total!+1

if "%output%"=="con" (call :Cycle) else (
	for /f "tokens=*" %%0 in ('echo !output!') do @set output="%%~0"
	call :Cycle > !output!
)

if "%interactive%"=="1" (
	echo Process complete.
	pause
)
exit /b

:Cycle
for %%0 in (%characters%) do (
	set hex=!hex!%%0
	set previous=!current!
	set /a current=!current!+1
	if !current! gtr !previous! (
		if !current!==!digits! (
			echo !hex!
		) else (
			call :Cycle
		)
	)
	if !display!==1 if !current!==1 (
		set /a progress=!progress!+1
		set /a percent=!progress!00/!total!
		echo Percent Complete: !percent!%% > con
	)
	set hex=!hex:~,-1!
	set previous=!current!
	set /a current=!current!-1
)
exit /b