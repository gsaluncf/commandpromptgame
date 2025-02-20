#!/bin/bash

if [ -f "log.txt" ]; then
    if grep -q "Secret Found" log.txt; then
        echo "Good job! Moving on to Room3..."
        echo "cd ../Room3" > .next_room  # Store transition for the game loop
    else
        echo 'The text "Secret Found" was not found in log.txt. Check your spelling!'
    fi
else
    echo '"log.txt" was not found. Create it first.'
fi