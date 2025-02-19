@echo off
setlocal enabledelayedexpansion
:: Ensure game setup exists
if not exist CavernAdventure (
    mkdir CavernAdventure
    call MakeCaverns.bat
)

:: Store the absolute path to CavernAdventure
set "GAME_DIR=%CD%\CavernAdventure"

:: Start game in Room1
cd "%GAME_DIR%\TheEntrance\Room1"

:game_loop
cls
echo =========================================
echo             Cavern Adventures
echo -----------------------------------------

:: Display current location relative to GAME_DIR
:: Calculate REL_PATH by removing the GAME_DIR portion from the current directory
set "REL_PATH=!CD!"
set "REL_PATH=!REL_PATH:%GAME_DIR%\=!"
if "!REL_PATH:~0,1!"=="\" set "REL_PATH=!REL_PATH:~1!"
:: Replace backslashes with " > " for a nicer display
set "DISPLAY_PATH=!REL_PATH:\= > !"
echo Current location: !DISPLAY_PATH!
echo -----------------------------------------
echo.
echo                WELCOME,
echo 1) Using 'type readme.1st' is a good first step in each room.
echo 2) You can use 'help' if you don't remember a command.
echo 3) You can't give up, but you can take a break with 'exit'.
echo.
echo:
echo -------------- Inventory ----------------
echo               Map ('dir')
echo =========================================


:: Read user input
set /p INPUT=What will you do: 
:: Handle special commands
if /i "%INPUT%"=="exit" exit

if /i "%INPUT%"=="help" (
    call "%GAME_DIR%\Cavern_Help.bat"
    pause
    goto game_loop
)

:: Remove any "./" prefix for consistency
set "trimmed=%INPUT%"
if /i "%trimmed:~0,2%"=="./" set "trimmed=%trimmed:~2%"

:: Handle check_answer command
if /i "%trimmed%"=="check_answer.bat" (
    call "%CD%\check_answer.bat"
    pause
    goto game_loop
)

:: Handle cd commands with full syntax
if /i "%INPUT:~0,3%"=="cd " (
    cd /d %INPUT:~3%
    if errorlevel 1 (
         echo Directory change failed.
         pause
    )
    goto game_loop
)

:: Execute other commands and redirect errors to avoid terminal clutter
cmd /c "%INPUT%" 2>nul
if errorlevel 1 (
    echo Invalid command or an error occurred.
)
echo.
pause

goto game_loop
