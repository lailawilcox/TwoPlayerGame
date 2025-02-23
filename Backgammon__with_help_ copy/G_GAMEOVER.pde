//GAMEOVER

void gameOver() {
  background(Background);
  gameOverText();
  playAgainButton();
}

void gameOverClicks() {
  //Play Again Button
  if (mouseX <= 650 && mouseX >= 350 && mouseY <= 400 && mouseY >= 300) {
    resetGame();
    mode = INTRO;
  }
}
