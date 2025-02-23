//INFO

void info() {
  background(Background);
  infoText();
  homeButton();

  Board();
  checkers();
}

//-------------------------------------------------------------------------------------------------------------------------

void infoClicks() {
  //Home button
  if (mouseX <= 70 && mouseX >= 10 && mouseY <= 50 && mouseY >= 10) {
    mode = INTRO;
  }
}
