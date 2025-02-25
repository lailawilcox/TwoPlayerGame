void intro() {
  gameRunning = false;
  background(white);
  StartGameButton();
  SoccerText();
}

void introClicks() {
  //start/resume game button
  if (mouseX > 300 && mouseX < 700 && mouseY > 312.5 && mouseY < 437.5) {
    mode = GAME;
    gameInProgress = true;
  }

  //new game button
  if (mouseX > 350 && mouseX < 650 && mouseY > 475 && mouseY < 575 && gameInProgress) {
    initialize();
    mode = GAME;
    gameInProgress = true;
  }
}

//-------------------------------------------------------------------------------------------------------------------------

void SoccerText() {
  textSize(140);
  fill(black);
  text("Soccer", 500, 150);
}

void StartGameButton() {
  stroke(black);
  fill(white);

  tactile(500, 375, 400, 125, 6, 4);
  rect(500, 375, 400, 125, 20);

  fill(black);
  if (gameInProgress) {
    textSize(50);
    text("Resume Game", 500, 375);

    stroke(black);
    fill(white);
    tactile(500, 525, 300, 100, 6, 4);
    rect(500, 525, 300, 100, 20);
    fill(black);
    textSize(40);
    text("New Game", 500, 525);
  } else {
    textSize(55);
    text("Start Game", 500, 375);
  }
}
