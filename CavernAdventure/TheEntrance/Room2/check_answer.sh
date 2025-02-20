#!/bin/bash

if [ -f "clue.txt" ]; then
    echo "Correct! You found the clue. Moving you to Room3..."
    read -rp "Press Enter to continue..."
    echo "cd ../Room3" > .next_room  # Store the transition for the game loop
else
    echo "clue.txt does not exist. Try again."
fi