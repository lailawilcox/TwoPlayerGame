void tactile(float x, float y, float w, float h, int on, int off) {
  if ( mouseX < x + w/2 && mouseX > x - w/2 && mouseY < y + h/2 && mouseY > y -h/2) {
    strokeWeight(on);
  } else {
    strokeWeight(off);
  }
}

//-------------------------------------------------------------------------------------------------------------------------

void initialize() {
  //initialize paddles
  Player1x = 80;
  Player1y = height/2;
  Player1d = 60;

  Player2x = width-80;
  Player2y = height/2;
  Player2d = 60;

  //initialize ball
  ballx = width/2;
  bally = height/2;
  balld = 40;
  vx = 0;
  vy = 0;

  //scoring
  player1Score = 0;
  player2Score = 0;

  //keyboard variables
  wkey = skey = upkey = downkey = akey = dkey = leftkey = rightkey = false;

  //clock variables
  timeLeft = totalTime = 60;
  lastUpdateTime = millis();
  gameRunning = false;
  
  gameInProgress = false;
}
