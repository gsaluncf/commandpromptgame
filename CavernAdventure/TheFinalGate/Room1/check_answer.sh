#!/bin/bash

if [ -f "key.txt" ] && grep -q "VICTORY" key.txt; then
    echo "The door swings open! You step into the sunlight..."
    echo "YOU HAVE ESCAPED THE CAVERN! 🎉"
    echo "Game Over."
    exit 0
else
    echo "The door remains locked... The word in key.txt is not \"VICTORY\"."
    echo "Try again."
fi