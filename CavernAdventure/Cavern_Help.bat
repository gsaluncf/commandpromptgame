@echo off 
cls 
echo ======================== 
echo    GLOBAL HELP MENU 
echo ======================== 
echo. 
echo This batch file lists common commands you will use: 
echo. 
echo [NAVIGATION] 
echo   cd [folder]   - Change directory 
echo   cd ..         - Go up one directory level 
echo   dir           - List files in the current directory 
echo. 
echo [FILE OPERATIONS] 
echo   echo TEXT ^    - Create file.txt with TEXT 
echo   echo TEXT ^   - Append TEXT to existing file.txt 
echo   type file.txt             - Display contents of file.txt 
echo   del file.txt              - Delete file.txt 
echo   ren old.txt new.txt       - Rename a file 
echo   copy file.txt folder\     - Copy file to a folder 
echo   move file.txt folder\     - Move file to a folder 
echo. 
echo [OTHER TIPS] 
echo   help command  - Displays info about a specific command 
echo   command /?    - Another way to see command usage details 
echo   cls           - Clear screen 
echo   exit          - Close the Command Prompt (quit game) 
echo. 
echo For advanced usage: type "help /?" or "command /?" in the console. 
echo. 
pause 
