//INTRO

void intro() {
  background(Background);
  introText();
  playButton();
  infoButton();
}

//-------------------------------------------------------------------------------------------------------------------------

void introClicks() {
  //Play Button
  if (mouseX <= 600 && mouseX >= 400 && mouseY <= 400 && mouseY >= 300) {
    mode = GAME;
  }

  //Home Button
  if (mouseX <= 575 && mouseX >= 425 && mouseY <= 475 && mouseY >= 425) {
    mode = INFO;
  }
}
