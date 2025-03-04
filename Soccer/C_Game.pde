void game() {
  if (!gameRunning) {
    gameRunning = true;
    lastUpdateTime = millis();
  }

  background(white);

  field();
  players();
  ball();
  goals();
  score();
  pauseButton();
  clock();

  scoreTracker();
  if (player2Score == 5 || player1Score == 5) mode = GAMEOVER;
}

void gameClicks() {
  if (mouseX > 450 && mouseX < 550 && mouseY > 10 && mouseY < 40) {
    mode = PAUSE;
  }
}

void players() {
  //red players
  stroke(black);
  strokeWeight(3);
  fill(red);
  circle(Player1x, Player1y, Player1d);
  circle(100, Player1yGoalie, Player1d);

  //red player
  pushMatrix();
  translate(Player1x, Player1y);
  scale(0.15);
  image(Jersey, 0, 0);
  popMatrix();

  //red player goalie
  pushMatrix();
  translate(100, Player1yGoalie);
  scale(0.15);
  image(Jersey, 0, 0);
  popMatrix();

  //blue players
  fill(blue);
  circle(Player2x, Player2y, Player2d);
  circle(900, Player2yGoalie, Player2d);

  //blue player
  pushMatrix();
  translate(Player2x, Player2y);
  scale(0.14);
  image(Jersey, 0, 0);
  popMatrix();

  //blue player goalie
  pushMatrix();
  translate(900, Player2yGoalie);
  scale(0.14);
  translate(0, 0);
  image(Jersey, 0, 0);
  popMatrix();

  //player 1 controls
  if (wkey == true && Player1y > 50+Player1d/2) Player1y = Player1y - 5;
  if (skey == true && Player1y < 650-Player1d/2) Player1y = Player1y + 5;
  if (akey == true && Player1x > 50+Player1d/2) Player1x = Player1x - 5;
  if (dkey == true && Player1x < 950-Player1d/2) Player1x = Player1x + 5;

  //player 1 goalie controls
  if (wkey == true && Player1y > 265 && Player1y < 435) Player1yGoalie = Player1yGoalie - 5;
  if (skey == true && Player1y < 435 && Player1y > 265) Player1yGoalie = Player1yGoalie + 5;

  //player 2 controls
  if (upkey == true && Player2y > 50+Player1d/2) Player2y = Player2y - 5;
  if (downkey == true && Player2y < 650-Player1d/2) Player2y = Player2y + 5;
  if (leftkey == true && Player2x > 50+Player1d/2) Player2x = Player2x - 5;
  if (rightkey == true && Player2x < 950-Player1d/2) Player2x = Player2x + 5;

  //player 2 goalie controls
  if (upkey == true && Player2y > 265 && Player2y < 435) Player2yGoalie = Player2yGoalie - 5;
  if (downkey == true && Player2y < 435 && Player2y > 265) Player2yGoalie = Player2yGoalie + 5;
}

void ball() {
  //ball
  fill(white);
  stroke(black);
  strokeWeight(5);
  circle(ballx, bally, balld);

  pushMatrix();
  translate(ballx, bally);
  scale(0.07);
  image(Ball, 0, 0);
  popMatrix();

  // Apply velocity to ball
  ballx += vx;
  bally += vy;

  // Apply friction to slow down over time
  vx *= 0.97;
  vy *= 0.97;

  // Bounce off walls

  //top wall
  if (bally <= balld/2 + 50) {
    vy *= -1;
    bally = balld/2 + 51;
  }

  //bottom wall
  if (bally >= height - balld/2 - 50) {
    vy *= -1;
    bally = height - balld/2 - 51;
  }

  //left wall
  if (ballx <= balld/2 + 50 && bally >= 435) {
    vx *= -1;
    ballx = balld/2 + 51;
  }
  if (ballx <= balld/2 + 50 && bally <= 265) {
    vx *= -1;
    ballx = balld/2 + 51;
  }

  //right wall
  if (ballx >= width - balld/2 - 50 && bally >= 435) {
    vx *= -1;
    ballx = width - balld/2 - 51;
  }
  if (ballx >= width - balld/2 - 50 && bally <= 265) {
    vx *= -1;
    ballx = width - balld/2 - 51;
  }

  //ball bounce off of players
  if (dist (Player1x, Player1y, ballx, bally) <= Player1d/2 + balld/2) {
    vx = (ballx - Player1x)/7;
    vy = (bally - Player1y)/7;
  }

  if (dist (Player2x, Player2y, ballx, bally) <= Player2d/2 + balld/2) {
    vx = (ballx - Player2x)/7;
    vy = (bally - Player2y)/7;
  }

  //ball bounce off goalies
  if (dist (100, Player1yGoalie, ballx, bally) <= Player1d/2 + balld/2) {
    vx = (ballx - 100)/7;
    vy = (bally - Player1yGoalie)/7;
  }

  if (dist (900, Player2yGoalie, ballx, bally) <= Player2d/2 + balld/2) {
    vx = (ballx - 900)/7;
    vy = (bally - Player2yGoalie)/7;
  }
}

void score() {
  //scoring
  if (ballx < 0) {
    player2Score = player2Score + 1;

    //initialize paddles
    Player1x = 80;
    Player1y = height/2;
    Player2x = width-80;
    Player2y = height/2;

    //initialize ball
    ballx = width/2;
    bally = height/2;
    vx = 0;
    vy = 0;
  }

  if (ballx > 1000) {
    player1Score = player1Score + 1;

    //initialize paddles
    Player1x = 80;
    Player1y = height/2;
    Player2x = width-80;
    Player2y = height/2;

    //initialize ball
    ballx = width/2;
    bally = height/2;
    vx = 0;
    vy = 0;
  }
}

void field() {
  pushMatrix();
  translate(500, 350);
  image(Field, 0, 0);
  popMatrix();
}

void scoreTracker() {
  textSize(25);
  fill(black);
  text("Goals: " + player1Score, 100, 20);
  text("Goals: " + player2Score, 900, 20);
}

void pauseButton() {
  fill(white);
  stroke(black);
  strokeWeight(2);

  tactile(500, 25, 100, 30, 4, 3);
  rect(500, 25, 100, 30, 5);

  textSize(20);
  fill(black);
  text("Pause", 500, 25);
}

void clock() {
  if (gameRunning) {
    int currentTime = millis();
    int elapsedTime = (currentTime - lastUpdateTime)/1000;

    if (elapsedTime > 0) {
      timeLeft -= elapsedTime;
      lastUpdateTime = currentTime;
    }

    if (timeLeft <= 0) {
      timeLeft = 0;
      mode = GAMEOVER;
    }
  }

  textSize(25);
  fill(black);
  text("Time Left: " + timeLeft, 500, 680);
}

void goals() {
  pushMatrix();
  translate(20, 350);
  image(Goal, 0, 0);
  popMatrix();
  
  pushMatrix();
  translate(width-20, 350);
  rotate(PI);
  image(Goal, 0, 0);
  popMatrix();
}
