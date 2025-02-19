@echo off
setlocal enabledelayedexpansion

echo ====================================================
echo Building the FULL Cavern Adventure Game...
echo ====================================================
echo.

:: 1) Create main folder + switch into it
mkdir CavernAdventure 2>nul
cd CavernAdventure

:: -----------------------------------------------------
:: 2) Create a GLOBAL help.bat (callable from anywhere)
:: -----------------------------------------------------
echo @echo off > Cavern_Help.bat
echo cls >> Cavern_Help.bat
echo echo ======================== >> Cavern_Help.bat
echo echo    GLOBAL HELP MENU >> Cavern_Help.bat
echo echo ======================== >> Cavern_Help.bat
echo echo. >> Cavern_Help.bat
echo echo This batch file lists common commands you will use: >> Cavern_Help.bat
echo echo. >> Cavern_Help.bat
echo echo [NAVIGATION] >> Cavern_Help.bat
echo echo   cd [folder]   - Change directory >> Cavern_Help.bat
echo echo   cd ..         - Go up one directory level >> Cavern_Help.bat
echo echo   dir           - List files in the current directory >> Cavern_Help.bat
echo echo. >> Cavern_Help.bat
echo echo [FILE OPERATIONS] >> Cavern_Help.bat
echo echo   echo TEXT ^^> file.txt    - Create file.txt with TEXT >> Cavern_Help.bat
echo echo   echo TEXT ^^>> file.txt   - Append TEXT to existing file.txt >> Cavern_Help.bat
echo echo   type file.txt             - Display contents of file.txt >> Cavern_Help.bat
echo echo   del file.txt              - Delete file.txt >> Cavern_Help.bat
echo echo   ren old.txt new.txt       - Rename a file >> Cavern_Help.bat
echo echo   copy file.txt folder\     - Copy file to a folder >> Cavern_Help.bat
echo echo   move file.txt folder\     - Move file to a folder >> Cavern_Help.bat
echo echo. >> Cavern_Help.bat
echo echo [OTHER TIPS] >> Cavern_Help.bat
echo echo   help command  - Displays info about a specific command >> Cavern_Help.bat
echo echo   command /?    - Another way to see command usage details >> Cavern_Help.bat
echo echo   cls           - Clear screen >> Cavern_Help.bat
echo echo   exit          - Close the Command Prompt (quit game) >> Cavern_Help.bat
echo echo. >> Cavern_Help.bat
echo echo For advanced usage: type "help /?" or "command /?" in the console. >> Cavern_Help.bat
echo echo. >> Cavern_Help.bat
echo pause >> Cavern_Help.bat

:: (Optional) Add current folder to PATH so "help" works in subfolders
setlocal enabledelayedexpansion
pwd

set PATH=%PATH%;%CD%
:: -----------------------------------------------------
:: 3) Main README.1ST for overall instructions
:: -----------------------------------------------------
echo WELCOME TO THE CAVERN ADVENTURE! > README.1ST
echo. >> README.1ST
echo You are a brave explorer seeking hidden treasure beneath the earth. >> README.1ST
echo These caverns are said to hold valuable artifacts and a final locked gate. >> README.1ST
echo. >> README.1ST
echo Each directory represents a Chamber or a Room, containing puzzle tasks. >> README.1ST
echo Read the local "README.1ST" for clues on which commands to use. >> README.1ST
echo. >> README.1ST
echo Goal: create a key with the word "VICTORY" to unlock the Great Door! >> README.1ST
echo Beware a hidden Nether Portal that ends the game if entered. >> README.1ST
echo. >> README.1ST
echo Good luck, explorer, and remember to type "help" at any time! >> README.1ST
echo. >> README.1ST
echo START THE GAME: >> README.1ST
echo     cd CavernAdventure\TheEntrance\Room1 >> README.1ST
echo Follow the clues and complete the tasks. >> README.1ST

:: -----------------------------------------------------
:: 4) Create a commands.txt as a quick reference
:: -----------------------------------------------------
echo LIST OF USEFUL COMMANDS: > commands.txt
echo. >> commands.txt
echo NAVIGATION COMMANDS: >> commands.txt
echo cd       - Change directory >> commands.txt
echo cd ..    - Move up one level >> commands.txt
echo dir      - List files in the current directory >> commands.txt
echo. >> commands.txt
echo FILE CREATION ^& EDITING: >> commands.txt
echo echo TEXT ^> file.txt     - Create a file with text >> commands.txt
echo echo TEXT ^>> file.txt    - Append text to an existing file >> commands.txt
echo type file.txt             - View file contents >> commands.txt
echo del file.txt              - Delete a file >> commands.txt
echo ren old.txt new.txt       - Rename a file >> commands.txt
echo copy file.txt folder\     - Copy file to a folder >> commands.txt
echo move file.txt folder\     - Move file to a folder >> commands.txt
echo. >> commands.txt
echo SEARCHING ^& FILTERING: >> commands.txt
echo find "text" file.txt      - Search for a word in a file >> commands.txt
echo. >> commands.txt
echo SYSTEM UTILITIES: >> commands.txt
echo ipconfig       - Show network configuration >> commands.txt
echo ping website.com - Test internet connection >> commands.txt
echo. >> commands.txt
echo GAME CONTROLS: >> commands.txt
echo check_answer.bat - Run to verify challenge solutions >> commands.txt
echo help             - Show the global help menu >> commands.txt
echo exit             - Quit the game (close Command Prompt) >> commands.txt

:: -----------------------------------------------------
:: 5) The Entrance (Rooms 1, 2, 3)
:: -----------------------------------------------------
mkdir TheEntrance 2>nul
mkdir TheEntrance\Room1 2>nul
mkdir TheEntrance\Room2 2>nul
mkdir TheEntrance\Room3 2>nul

:: ---- Room1 ----
echo WELCOME, explorer! You have reached the Entrance of the cavern. > TheEntrance\Room1\README.1ST
echo 1^) Use "type README.1ST" to read your instructions. >> TheEntrance\Room1\README.1ST
echo 2^) Then navigate to "Room2" by typing "cd ..\Room2". >> TheEntrance\Room1\README.1ST
echo. >> TheEntrance\Room1\README.1ST
echo TIP: If you need help, simply type "help". >> TheEntrance\Room1\README.1ST

echo @echo off > TheEntrance\Room1\check_answer.bat
echo echo You used "check_answer.bat" in Room1, but there's no puzzle yet! >> TheEntrance\Room1\check_answer.bat
echo echo Please "cd ..\Room2" to continue. >> TheEntrance\Room1\check_answer.bat

:: ---- Room2 ----
echo There is a hidden note in this chamber. > TheEntrance\Room2\README.1ST
echo Step 1^) Use "dir" to see what files exist. >> TheEntrance\Room2\README.1ST
echo Step 2^) If you see "clue.txt", open it with "type clue.txt". >> TheEntrance\Room2\README.1ST
echo Step 3^) Once you're sure you have the clue, run "check_answer.bat". >> TheEntrance\Room2\README.1ST
echo. >> TheEntrance\Room2\README.1ST
echo Make sure "clue.txt" is in the directory before checking! >> TheEntrance\Room2\README.1ST

echo Secret Passage Ahead. > TheEntrance\Room2\clue.txt

echo @echo off > TheEntrance\Room2\check_answer.bat
echo if exist clue.txt ( >> TheEntrance\Room2\check_answer.bat
echo    echo Correct! You found the clue. Moving you to Room3... >> TheEntrance\Room2\check_answer.bat
echo    cd ..\Room3 >> TheEntrance\Room2\check_answer.bat
echo ) else ( >> TheEntrance\Room2\check_answer.bat
echo    echo clue.txt does not exist. Try again! >> TheEntrance\Room2\check_answer.bat
echo ) >> TheEntrance\Room2\check_answer.bat

:: ---- Room3 ----
echo Great work finding the hidden note! > TheEntrance\Room3\README.1ST
echo Your next challenge is to CREATE a "cave_map.txt" file. >> TheEntrance\Room3\README.1ST
echo Inside "cave_map.txt", write any short description of the cave layout. >> TheEntrance\Room3\README.1ST
echo Then run "check_answer.bat". >> TheEntrance\Room3\README.1ST

echo @echo off > TheEntrance\Room3\check_answer.bat
echo if exist cave_map.txt ( >> TheEntrance\Room3\check_answer.bat
echo    echo "cave_map.txt" found. Proceeding to TheDeepCaverns... >> TheEntrance\Room3\check_answer.bat
echo    cd ..\..\TheDeepCaverns\Room1 >> TheEntrance\Room3\check_answer.bat
echo ) else ( >> TheEntrance\Room3\check_answer.bat
echo    echo File "cave_map.txt" NOT found. Please create it first! >> TheEntrance\Room3\check_answer.bat
echo ) >> TheEntrance\Room3\check_answer.bat

:: -----------------------------------------------------
:: 6) The Deep Caverns (Rooms 1, 2, 3, NetherPortal)
:: -----------------------------------------------------
mkdir TheDeepCaverns 2>nul
mkdir TheDeepCaverns\Room1 2>nul
mkdir TheDeepCaverns\Room2 2>nul
mkdir TheDeepCaverns\Room3 2>nul
mkdir TheDeepCaverns\NetherPortal 2>nul

:: ---- Deep Caverns Room1 ----
echo You have descended into the Deep Caverns. > TheDeepCaverns\Room1\README.1ST
echo 1^) Use "dir" to find a hidden file called "hint.txt". >> TheDeepCaverns\Room1\README.1ST
echo 2^) Make sure it exists, then run "check_answer.bat". >> TheDeepCaverns\Room1\README.1ST
echo 3^) Avoid the "NetherPortal" directory! Entering it means an instant GAME OVER. >> TheDeepCaverns\Room1\README.1ST

echo Clue: Move to Room2. > TheDeepCaverns\Room1\hint.txt

echo @echo off > TheDeepCaverns\Room1\check_answer.bat
echo if exist hint.txt ( >> TheDeepCaverns\Room1\check_answer.bat
echo    echo Correct! Proceeding to Room2... >> TheDeepCaverns\Room1\check_answer.bat
echo    cd ..\Room2 >> TheDeepCaverns\Room1\check_answer.bat
echo ) else ( >> TheDeepCaverns\Room1\check_answer.bat
echo    echo "hint.txt" not found. Try again! >> TheDeepCaverns\Room1\check_answer.bat
echo ) >> TheDeepCaverns\Room1\check_answer.bat

:: ---- Deep Caverns Room2 ----
echo A small inscription on the wall reads: > TheDeepCaverns\Room2\README.1ST
echo "Record your discoveries in a log.txt file. Write 'Secret Found!' inside." >> TheDeepCaverns\Room2\README.1ST
echo Then run "check_answer.bat". >> TheDeepCaverns\Room2\README.1ST

echo @echo off > TheDeepCaverns\Room2\check_answer.bat
echo if exist log.txt ( >> TheDeepCaverns\Room2\check_answer.bat
echo    findstr /c:"Secret Found!" log.txt ^>nul >> TheDeepCaverns\Room2\check_answer.bat
echo    if !errorlevel! == 0 ( >> TheDeepCaverns\Room2\check_answer.bat
echo       echo Good job! Moving on to Room3... >> TheDeepCaverns\Room2\check_answer.bat
echo       cd ..\Room3 >> TheDeepCaverns\Room2\check_answer.bat
echo    ) else ( >> TheDeepCaverns\Room2\check_answer.bat
echo       echo The text "Secret Found!" is not in log.txt. Check your spelling! >> TheDeepCaverns\Room2\check_answer.bat
echo    ) >> TheDeepCaverns\Room2\check_answer.bat
echo ) else ( >> TheDeepCaverns\Room2\check_answer.bat
echo    echo "log.txt" was not found. Create it first! >> TheDeepCaverns\Room2\check_answer.bat
echo ) >> TheDeepCaverns\Room2\check_answer.bat

:: ---- Deep Caverns Room3 ----
echo You stumble upon a locked stone door with a small plaque. > TheDeepCaverns\Room3\README.1ST
echo The plaque reads: "To advance, rename the file 'plaque.txt' to 'riddle.txt'..." >> TheDeepCaverns\Room3\README.1ST
echo Then run "check_answer.bat". >> TheDeepCaverns\Room3\README.1ST

echo The wise do not fear the dark. > TheDeepCaverns\Room3\plaque.txt

echo @echo off > TheDeepCaverns\Room3\check_answer.bat
echo if exist riddle.txt ( >> TheDeepCaverns\Room3\check_answer.bat
echo    echo Perfect! The stone door slides open... >> TheDeepCaverns\Room3\check_answer.bat
echo    echo Moving you to The Final Gate... >> TheDeepCaverns\Room3\check_answer.bat
echo    cd ..\..\TheFinalGate\Room1 >> TheDeepCaverns\Room3\check_answer.bat
echo ) else ( >> TheDeepCaverns\Room3\check_answer.bat
echo    echo You must rename plaque.txt to riddle.txt first. e.g.: ren plaque.txt riddle.txt >> TheDeepCaverns\Room3\check_answer.bat
echo ) >> TheDeepCaverns\Room3\check_answer.bat

:: ---- NetherPortal (Game Over) ----
echo You have entered the NetherPortal... > TheDeepCaverns\NetherPortal\README.1ST
echo Lava and flame surround you. GAME OVER. >> TheDeepCaverns\NetherPortal\README.1ST

:: -----------------------------------------------------
:: 7) The Final Gate (winning path)
:: -----------------------------------------------------
mkdir TheFinalGate 2>nul
mkdir TheFinalGate\Room1 2>nul

echo You stand before a massive, ancient door. > TheFinalGate\Room1\README.1ST
echo To unlock it, create a file called "key.txt" with the word "VICTORY" inside. >> TheFinalGate\Room1\README.1ST
echo Run "check_answer.bat" to see if it opens. >> TheFinalGate\Room1\README.1ST
echo Good luck, explorer! >> TheFinalGate\Room1\README.1ST

echo @echo off > TheFinalGate\Room1\check_answer.bat
echo set /p answer=<key.txt >> TheFinalGate\Room1\check_answer.bat
echo if "!answer!"=="VICTORY" ( >> TheFinalGate\Room1\check_answer.bat
echo    echo The door swings open! You step into the sunlight... >> TheFinalGate\Room1\check_answer.bat
echo    echo YOU HAVE ESCAPED THE CAVERN! Congratulations! >> TheFinalGate\Room1\check_answer.bat
echo    pause >> TheFinalGate\Room1\check_answer.bat
echo    exit >> TheFinalGate\Room1\check_answer.bat
echo ) else ( >> TheFinalGate\Room1\check_answer.bat
echo    echo The door remains locked... the word in key.txt is not "VICTORY". >> TheFinalGate\Room1\check_answer.bat
echo    echo Try again! >> TheFinalGate\Room1\check_answer.bat
echo ) >> TheFinalGate\Room1\check_answer.bat

:: -----------------------------------------------------
:: 8) Final message
:: -----------------------------------------------------
cls
echo ============================================
echo Setup complete!
echo All CavernAdventure files and folders created.
echo --------------------------------------------
echo To start playing:
echo   1. cd CavernAdventure\TheEntrance\Room1
echo   2. type README.1ST
echo   3. Follow instructions!
echo   You can use the Cavern_Help.bat at any time to see a help screen, just run it using the right path.
echo.
echo Remember: type "help" at any time for a global command list.
echo.
pause
