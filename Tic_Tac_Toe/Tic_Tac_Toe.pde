//tic tac toe

//pallet
color white = #FFFFFF;
color black = #000000;
color blue = #023e8a;
color red = #d00000;

//Game Modes
int mode;
final int INTRO = 0;
final int GAME = 2;
final int GAMEOVER = 3;

//players
int currentPlayer = 0; //1 = X; 2 = O

//squares;
int square1, square2, square3, square4, square5, square6, square7, square8, square9;

void setup () {
  size(600, 600);
  background(white);
  
  textAlign(CENTER, CENTER);
  rectMode(CENTER);
  imageMode(CENTER);
  
   mode = INTRO;
}


void draw () {
  if (mode == INTRO) {
    intro();
  } else if (mode == GAME) {
    game();
  } else if (mode == GAMEOVER) {
    gameover();
  } else {
    println("Error: mode = " + mode);
  }
}
