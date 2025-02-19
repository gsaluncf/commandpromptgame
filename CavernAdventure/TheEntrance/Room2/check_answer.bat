@echo off 
if exist clue.txt ( 
   echo Correct You found the clue. Moving you to Room3... 
   cd ..\Room3 
) else ( 
   echo clue.txt does not exist. Try again 
) 
