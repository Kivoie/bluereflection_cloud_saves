@echo off
cls
ECHO initializing BLUE_REFLECTION_AIO
ECHO Do not close this terminal.

REM Starting message. Start the executable from Steam directory.
:TOP
ECHO Starting bluereflection game
start "" "E:\Program Files (x86)\Steam\steamapps\common\BLUE REFLECTION\BLUE_REFLECTION.exe"
ECHO bluereflection launcher initialized

:BUFFER
REM Wait 5 seconds. If the launcher exists in the tasklist then continue to FIGHTER, otherwise loop.
timeout 5 /NOBREAK > nul
tasklist | find /I /N "blue_reflection_launcher" > nul && goto BUFFER

:FIGHTER
REM Wait 3 seconds. If the game executable exists in the task list then continue to REPO, otherwise loop.
timeout 3 /NOBREAK > nul
tasklist | find /I /N "blue_reflection" > nul && goto FIGHTER

:REPO
REM Wait 10 seconds. Start the shell script to upload files to the remote repository.
ECHO initiating remote repository sync in 10 seconds...
timeout 10 /NOBREAK > nul
start "" "C:\Users\Danny\Documents\KoeiTecmo\BLUE REFLECTION\bluereflection.sh"