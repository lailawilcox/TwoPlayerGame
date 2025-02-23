//Backgammon

//Pallet
color white = #FFFFFF;
color black = #000000;

color blueGreen = #1B5963;
color Background = #C5AD81;
color bone = #CDBFA2;
color player1 = #E3DBCA;
color player2 = #481E1E;
color darkBrown = #552D18;
color lightBrown = #6F3B1F;
color smokeyBlack = #0E0606;
color gold = #9A803D;
color goldRim = #836D34;

//-------------------------------------------------------------------------------------------------------------------------

//Player Management
int currentPlayer;         //Tracks which player's turn it is (1 for Player 1, 2 for Player 2)
boolean mustEnterFromBar;  //True if a player has checkers on the bar that must be re-entered before other moves
boolean moveAvailable;     //True if a valid move exists, false if the player must pass

//Game Modes
int mode;                  //Controls which game state is active (INTRO, GAME, GAMEOVER)
final int INTRO = 0;
final int INFO = 1;
final int GAME = 2;
final int GAMEOVER = 3;

//Dice Management
int dice1, dice2;              //The values of the two rolled dice
boolean dice1Used, dice2Used;  //True if a die has been used for a move
int remainingMoves;            //Number of remaining moves (usually 2, but 4 if rolling doubles)
boolean rolledDoubles;         //True if both dice have the same value
int dice1Value, dice2Value;
float dice1X, dice1Y, dice2X, dice2Y;

//Board and Points System
int[] pointCheckers;                           //Array storing how many checkers are on each of the 24 points
int[] pointOwner;                              //Array storing which player controls each point (0 = empty, 1 = Player 1, 2 = Player 2)

//Player Turn Logic
boolean playerCanMove;     //True if the player has at least one valid move
int selectedCheckerIndex;  //Index of the currently selected checker in the checkers list

//-------------------------------------------------------------------------------------------------------------------------

void setup() {
  background(Background);
  size(1000, 600);
  textAlign(CENTER, CENTER);
  rectMode(CENTER);
  imageMode(CENTER);
  resetGame();
  mode = INTRO;
}

void draw() {
  if (mode == INTRO) {
    intro();
  } else if (mode == INFO) {
    info();
  } else if (mode == GAME) {
    game();
  } else if (mode == GAMEOVER) {
    gameOver();
  } else {
    println("Error: mode = " + mode);
  }
}
