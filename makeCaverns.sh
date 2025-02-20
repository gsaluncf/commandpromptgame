#!/bin/bash

# Ensure game setup exists
mkdir -p CavernAdventure
GAME_DIR="$(pwd)/CavernAdventure"

# Create global help script
cat << EOF > "$GAME_DIR/Cavern_Help.sh"
#!/bin/bash
clear
echo "========================"
echo "    GLOBAL HELP MENU"
echo "========================"
echo ""
echo "[NAVIGATION]"
echo "  cd [folder]   - Change directory"
echo "  cd ..         - Go up one directory level"
echo "  ls            - List files in the current directory"
echo ""
echo "[FILE OPERATIONS]"
echo "  echo TEXT > file.txt    - Create file.txt with TEXT"
echo "  cat file.txt            - Display contents of file.txt"
echo "  rm file.txt             - Delete file.txt"
echo "  mv old.txt new.txt      - Rename a file"
echo "  cp file.txt folder/     - Copy file to a folder"
echo "  mv file.txt folder/     - Move file to a folder"
echo ""
echo "[OTHER TIPS]"
echo "  man command  - Displays info about a specific command"
echo "  command --help  - Another way to see command usage details"
echo "  clear        - Clear screen"
echo "  exit         - Close the terminal (quit game)"
echo ""
read -p "Press Enter to return to the game..."
EOF
chmod +x "$GAME_DIR/Cavern_Help.sh"

# Create game rooms
mkdir -p "$GAME_DIR/TheEntrance/Room1"
mkdir -p "$GAME_DIR/TheEntrance/Room2"
mkdir -p "$GAME_DIR/TheEntrance/Room3"
mkdir -p "$GAME_DIR/TheDeepCaverns/Room1"
mkdir -p "$GAME_DIR/TheDeepCaverns/Room2"
mkdir -p "$GAME_DIR/TheDeepCaverns/Room3"
mkdir -p "$GAME_DIR/TheDeepCaverns/NetherPortal"
mkdir -p "$GAME_DIR/TheFinalGate/Room1"

# Create README files for rooms
echo "WELCOME TO THE CAVERN ADVENTURE!" > "$GAME_DIR/README.1ST"
echo "Use 'cat README.1ST' for instructions." >> "$GAME_DIR/README.1ST"
echo "To start, navigate to TheEntrance/Room1." >> "$GAME_DIR/README.1ST"

# Generate challenge files
echo "You have reached the Entrance. Use 'cat README.1ST' for clues." > "$GAME_DIR/TheEntrance/Room1/README.1ST"
echo "Step forward to Room2 using 'cd ../Room2'." >> "$GAME_DIR/TheEntrance/Room1/README.1ST"

echo "Find the hidden note in Room2." > "$GAME_DIR/TheEntrance/Room2/README.1ST"
echo "Check 'clue.txt' by running 'cat clue.txt'." >> "$GAME_DIR/TheEntrance/Room2/README.1ST"
echo "Secret Passage Ahead." > "$GAME_DIR/TheEntrance/Room2/clue.txt"

echo "Rename 'plaque.txt' to 'riddle.txt' in Room3." > "$GAME_DIR/TheDeepCaverns/Room3/plaque.txt"

# Final Gate challenge
echo "To win, create 'key.txt' with 'VICTORY' inside and run 'check_answer.sh'." > "$GAME_DIR/TheFinalGate/Room1/README.1ST"

# Completion message
clear
echo "============================================"
echo "Setup complete!"
echo "All CavernAdventure files and folders created."
echo "--------------------------------------------"
echo "To start playing:"
echo "  1. cd CavernAdventure/TheEntrance/Room1"
echo "  2. cat README.1ST"
echo "  3. Follow instructions!"
echo ""
echo "You can use the Cavern_Help.sh at any time by running './Cavern_Help.sh'."
echo "============================================"
read -p "Press Enter to begin..."