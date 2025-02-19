@echo off 
if exist log.txt ( 
   findstr /c:"Secret Found" log.txt >nul 
   if 1 == 0 ( 
      echo Good job Moving on to Room3... 
      cd ..\Room3 
   ) else ( 
      echo The text "Secret Found 
   ) 
) else ( 
   echo "log.txt" was not found. Create it first 
) 
