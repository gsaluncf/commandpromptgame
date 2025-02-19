@echo off 
if exist cave_map.txt ( 
   echo "cave_map.txt" found. Proceeding to TheDeepCaverns... 
   cd ..\..\TheDeepCaverns\Room1 
) else ( 
   echo File "cave_map.txt" NOT found. Please create it first 
) 
