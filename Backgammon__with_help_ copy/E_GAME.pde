//GAME

void game() {
  background(Background);
  homeButton();
  Board();
  diceLogic();
  checkers();
}

//-------------------------------------------------------------------------------------------------------------------------

void gameClicks() {
  //Home button
  if (mouseX <= 70 && mouseX >= 10 && mouseY <= 50 && mouseY >= 10) {
    mode = INTRO;
  }

  //Roll Dice button
  if (mouseX <= 130 && mouseX >= 30 && mouseY <= 575 && mouseY >= 525 && currentPlayer == 1) {
    dice1Value = int(random(1, 7));
    dice2Value = int(random(1, 7));
    dice1X = 50;
    dice1Y = 270;
    dice2X = 50;
    dice2Y = 340;
    dice1Used = false;
    dice2Used = false;
  }

  if (mouseX <= 970 && mouseX >= 870 && mouseY <= 575 && mouseY >= 525 && currentPlayer == 2) {
    dice1Value = int(random(1, 7));
    dice2Value = int(random(1, 7));
    dice1X = 950;
    dice1Y = 270;
    dice2X = 950;
    dice2Y = 340;
    dice1Used = false;
    dice2Used = false;
  }
}
