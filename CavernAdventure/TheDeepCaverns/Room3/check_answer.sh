#!/bin/bash

if [ -f "riddle.txt" ]; then
    echo "Perfect! The stone door slides open..."
    echo "Moving you to The Final Gate..."
    echo "cd ../../TheFinalGate/Room1" > .next_room  # Store transition for the game loop
else
    echo "You must rename plaque.txt to riddle.txt first. e.g.: mv plaque.txt riddle.txt"
fi