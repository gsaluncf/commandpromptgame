@echo off
REM Create main folder for intermediate levels
mkdir challengRoomsIntermediate
cd challengRoomsIntermediate

REM -------------------------
REM Room 6: Merge Challenge
REM -------------------------
mkdir room6
cd room6
(
    echo Welcome to the Merge Challenge.
    echo Your task is to merge the contents of "part1.txt" and "part2.txt" into a new file called "combined.txt".
    echo Once done, type "check_answer" to verify your solution.
) > readme.1st
echo This is the first part. > part1.txt
echo This is the second part. > part2.txt
(
    echo @echo off
    echo if exist combined.txt ^(
    echo    echo Level Complete!
    echo ^) else ^(
    echo    echo combined.txt not found. Try again.
    echo ^)
) > check_answer.bat
cd ..

REM -------------------------
REM Room 7: Append Challenge
REM -------------------------
mkdir room7
cd room7
(
    echo Welcome to the Append Challenge.
    echo Your task is to append the line "End of Log" to the file "log.txt".
    echo Once finished, type "check_answer" to verify your solution.
) > readme.1st
echo Log start... > log.txt
(
    echo @echo off
    echo findstr /c:"End of Log" log.txt >nul
    echo if errorlevel 1 ^(
    echo    echo "End of Log" not found. Try again.
    echo ^) else ^(
    echo    echo Level Complete!
    echo ^)
) > check_answer.bat
cd ..

REM -------------------------
REM Room 8: Directory List Challenge
REM -------------------------
mkdir room8
cd room8
(
    echo Welcome to the Directory List Challenge.
    echo In the "docs" folder, there are several .txt files.
    echo Your task is to list all .txt files in "docs" and output the list to "files.txt".
    echo Once done, type "check_answer" to verify your solution.
) > readme.1st
REM Create docs folder and sample text files
mkdir docs
echo Document 1 > docs\doc1.txt
echo Document 2 > docs\doc2.txt
echo Document 3 > docs\doc3.txt
(
    echo @echo off
    echo if exist files.txt ^(
    echo    echo Level Complete!
    echo ^) else ^(
    echo    echo files.txt not created. Try again.
    echo ^)
) > check_answer.bat
cd ..

REM -------------------------
REM Room 9: Create & Organize Challenge
REM -------------------------
mkdir room9
cd room9
(
    echo Welcome to the Create ^& Organize Challenge.
    echo Your task is to create a directory called "archive" and move all ".bak" files into it.
    echo Once done, type "check_answer" to verify your solution.
) > readme.1st
echo Backup data > file1.bak
echo More backup data > file2.bak
(
    echo @echo off
    echo if exist archive^(
    echo    dir /b archive\*.bak >nul 2>&1
    echo    if errorlevel 1 ^(
    echo       echo No .bak files found in archive. Try again.
    echo    ^) else ^(
    echo       echo Level Complete!
    echo    ^)
    echo ^) else ^(
    echo    echo "archive" folder not found. Try again.
    echo ^)
) > check_answer.bat
cd ..

REM -------------------------
REM Room 10: File Count Challenge
REM -------------------------
mkdir room10
cd room10
(
    echo Welcome to the File Count Challenge.
    echo In this room, there are several .txt files.
    echo Your task is to count all .txt files in this folder and output the result to "count.txt".
    echo Once done, type "check_answer" to verify your solution.
) > readme.1st
REM Create sample .txt files
echo File one > file1.txt
echo File two > file2.txt
echo File three > file3.txt
(
    echo @echo off
    echo if exist count.txt ^(
    echo    findstr /r ".+" count.txt >nul ^&^& (echo Level Complete!) ^|| (echo count.txt is empty. Try again.)
    echo ^) else ^(
    echo    echo count.txt not found. Try again.
    echo ^)
) > check_answer.bat
cd ..

echo Intermediate game setup complete in the "challengRoomsIntermediate" folder.
pause
