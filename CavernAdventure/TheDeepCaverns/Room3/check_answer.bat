@echo off 
if exist riddle.txt ( 
   echo Perfect The stone door slides open... 
   echo Moving you to The Final Gate... 
   cd ..\..\TheFinalGate\Room1 
) else ( 
   echo You must rename plaque.txt to riddle.txt first. e.g.: ren plaque.txt riddle.txt 
) 
