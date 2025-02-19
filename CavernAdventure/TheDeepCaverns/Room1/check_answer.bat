@echo off 
if exist hint.txt ( 
   echo Correct Proceeding to Room2... 
   cd ..\Room2 
) else ( 
   echo "hint.txt" not found. Try again 
) 
