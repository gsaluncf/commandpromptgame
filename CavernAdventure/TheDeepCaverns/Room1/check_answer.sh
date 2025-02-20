#!/bin/bash

if [ -f "hint.txt" ]; then
    echo "Correct! You found the hint. Proceeding to Room2..."
    echo "cd ../Room2" > .next_room  # Store transition for game loop
else
    echo "hint.txt does not exist. Try again."
fi