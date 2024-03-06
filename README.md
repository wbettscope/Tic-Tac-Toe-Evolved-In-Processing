# Tic-Tac-Toe Evolved In Processing
Will Betts Cope Personal Project. Fully functional evolved tic-tac-toe game with GUI.

## Installation
1. Follow the download and installation instructions for Processing version 3.5.4 (https://processing.org/download)
2. Download all code files from this repository and place them in a folder named "TicTacToe_Evolved"
3. Place that folder in the same location as Processing

## Usage
1. Open file 'TicTacToe_Evolved.pde' in Processing
  - This file connects to 'Boards.pde,' 'Legality_Check,' 'Moves.pde,' 'Piece_Play.pde,' and 'Win_Detection.pde' via imports
2. Press 'Run'

## Interface 
1. To play a move, highlight within the desired square of the current active board and click
  - A piece will only be played if the desired move is legal
  - After a piece is played, the active board will switch to the board that corresponds with the location that piece was played in
2. Turns alternate between players
  - After one player moves, pass the mouse to the other player to take their turn
3. If no moves are legal, it's a draw! Close the program and start again
4. If one player lines up three of their pieces in a row (vertically, horizontally, or diagonally) then they win!
  - The winning pieces will be highlighted and the winner will be displayed
