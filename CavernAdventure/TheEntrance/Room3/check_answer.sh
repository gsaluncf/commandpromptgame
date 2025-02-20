#!/bin/bash

if [ -f "cave_map.txt" ]; then
    echo "\"cave_map.txt\" found. Proceeding to TheDeepCaverns..."
    read -rp "Press Enter to continue..."
    echo "cd ../../TheDeepCaverns/Room1" > .next_room
else
    echo "File \"cave_map.txt\" NOT found. Please create it first."
fi