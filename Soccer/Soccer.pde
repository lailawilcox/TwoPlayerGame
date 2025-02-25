//Soccer

//colors
color white = #FFFFFF;
color black = #000000;

color red = #DC143C;
color blue = #0072BB;
color green = #38b000;

//fonts
PFont Font1;

//images
PImage Ball;
PImage Field;
PImage Jersey;

//modes
int mode;
final int INTRO = 1;
final int GAME = 2;
final int PAUSE = 3;
final int GAMEOVER = 4;

//player variables
float Player1x, Player1y, Player1d, Player2x, Player2y, Player2d;

//ball variables
float ballx, bally, balld, vx, vy;

//keyboard variables
boolean wkey, skey, upkey, downkey, akey, dkey, leftkey, rightkey;

//score variables
int player1Score, player2Score;

//clock variable
int totalTime;
int timeLeft;
int lastUpdateTime;
boolean gameRunning;

boolean gameInProgress;

//-------------------------------------------------------------------------------------------------------------------------

void setup () {
  size(1000, 700);
  textAlign(CENTER, CENTER);
  rectMode(CENTER);
  imageMode(CENTER);

  //Font
  Font1 = createFont("Font1.ttf", 50);
  textFont(Font1);

  //images
  Ball = loadImage("Ball.png");
  Field = loadImage("Field.png");
  Jersey = loadImage("Jersey.png");

  initialize();
  mode = INTRO;
}

//-------------------------------------------------------------------------------------------------------------------------

void draw() {
  if (mode == INTRO) {
    intro();
  } else if (mode == GAME) {
    game();
  } else if (mode == PAUSE) {
    pause();
  } else if (mode == GAMEOVER) {
    gameover();
  } else {
    println("Error: mode = " + mode);
  }
}
