void gameover() {
  gameRunning = false;
  displayWinner();
}

void gameoverClicks() {
  if (mouseX > 0 && mouseX < 1000 && mouseY > 0 && mouseY < 700) {
    mode = INTRO;
    initialize();
  }
}

//-------------------------------------------------------------------------------------------------------------------------

void displayWinner() {
  textSize(100);
  if (player1Score > player2Score) {
    background(red);
    fill(black);
    text("PLAYER 1 WINS", 500, 350);
  } else if (player2Score > player1Score) {
    background(blue);
    fill(black);
    text("PLAYER 2 WINS", 500, 350);
  } else {
    noStroke();
    fill(red);
    rect(250, 350, 500, 700);
    fill(blue);
    rect(750, 350, 500, 700);
    fill(black);
    text("IT'S A TIE!", 500, 350);
  }
}
