@echo off
if not DEFINED IS_MINIMIZED set IS_MINIMIZED=1 && start "" /min "%~dpnx0" %* && exit
cls
ECHO initializing BLUE_REFLECTION_AIO. Do not close this terminal.

REM Start the executable from Steam directory.
:TOP
ECHO Starting bluereflection game
start "" "E:\Program Files (x86)\Steam\steamapps\common\BLUE REFLECTION\BLUE_REFLECTION.exe"

:BUFFER
REM Wait 5 seconds. If the launcher does not exist in the tasklist then loop.
timeout 5 /NOBREAK > nul
tasklist | find /I /N "blue_reflection_launcher" > nul && goto BUFFER

:FIGHTER
REM Wait 3 seconds. If the game executable does not exist in the task list then loop.
timeout 3 /NOBREAK > nul
tasklist | find /I /N "blue_reflection" > nul && goto FIGHTER

:REPO
REM Wait 10 seconds. Start the shell script to upload files to the remote repository.
ECHO initiating remote repository sync in 10 seconds...
timeout 10 /NOBREAK > nul

:UPDATE
REM Pull and Push to remote repo
ECHO ===== Synchronizing Cloud =====
cd "%USERPROFILE%\Documents\KoeiTecmo\BLUE REFLECTION\SAVEDATA"
ECHO Synchronizing cloud with %cd%
git pull
git add *DAT*
git commit -m "Saves updated"
git push
ECHO Cloud save complete!
ECHO.
ECHO Terminal will close in 5 seconds...
timeout 5 /NOBREAK > nul
exit