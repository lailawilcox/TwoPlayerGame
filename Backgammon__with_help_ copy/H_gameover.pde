//gameover

void gameOverText() {
  fill(black);
  textSize(80);
  text("GAMEOVER", 500, 200);
}

void playAgainButton() {
  fill(white);
  tactile(500, 350, 300, 100, 6, 2);
  rect(500, 350, 300, 100, 25);
  fill(black);
  textSize(50);
  text("PLAY AGAIN", 500, 350);
}
