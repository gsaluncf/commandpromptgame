#!/bin/bash

# Ensure game setup exists
if [ ! -d "CavernAdventure" ]; then
    mkdir CavernAdventure
    bash MakeCaverns.sh
fi

# Store the absolute path to CavernAdventure
GAME_DIR="$(pwd)/CavernAdventure"

# Start game in Room1
cd "$GAME_DIR/TheEntrance/Room1" || exit
clear

# Display the game UI only once
display_ui() {
    clear
    echo "========================================="
    echo "            Cavern Adventures"
    echo "-----------------------------------------"
    echo ""
    echo "                WELCOME,"    
    echo "1) Using 'cat README.1ST' is a good first step in each room."
    echo "2) You can use 'help' if you don't remember a command."
    echo "3) You can't give up, but you can take a break with 'exit'."
    echo ""
    echo "-------------- Inventory ----------------"
    echo "               Map ('ls')"
    echo "========================================="
}

display_ui  # Show UI once at the start

game_loop() {
    while true; do
        # Check if a room transition has been triggered
        if [ -f ".next_room" ]; then
            NEXT_ROOM=$(cat .next_room)
            rm .next_room
            eval "$NEXT_ROOM"
            clear
            display_ui  # Refresh UI after moving rooms
        fi

        echo ""
        echo "-----------------------------------------"
        REL_PATH="${PWD#${GAME_DIR}/}"
        DISPLAY_PATH="${REL_PATH//\\// > }"
        echo "Current location: ${DISPLAY_PATH}"
        echo "-----------------------------------------"
        read -rp "$(basename "$PWD")> " INPUT
        
        INPUT=$(echo "$INPUT" | xargs)

        case "$INPUT" in
            exit)
                echo "Exiting game..."
                exit 0
                ;;
            help)
                bash "$GAME_DIR/Cavern_Help.sh"
                ;;
            check_answer.sh)
                if [ -f "check_answer.sh" ]; then
                    ./check_answer.sh
                else
                    echo "No check_answer.sh script found here."
                fi
                ;;
            cd*)
                TARGET_DIR="${INPUT:3}"
                if cd "$TARGET_DIR" 2>/dev/null; then
                    display_ui  # Refresh UI when navigating manually
                else
                    echo "Directory change failed."
                fi
                ;;
            *)
                if command -v $(echo "$INPUT" | awk '{print $1}') >/dev/null 2>&1; then
                    eval "$INPUT"
                else
                    echo "Invalid command or an error occurred."
                fi
                ;;
        esac
    done
}

game_loop