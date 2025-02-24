void intro() {
  background(white);
  introText();
  playButton();
}

void introClicks() {
    //Play Button
  if (mouseX <= 400 && mouseX >= 200 && mouseY <= 350 && mouseY >=250) {
    mode = GAME;
  }
}

//-------------------------------------------------------------------------------------------------------------------------

void introText() {
  fill(black);
  textSize(80);
  text("TIC TAC TOE", 300, 75);
}

void playButton() {
  fill(white);
  tactile(300, 300, 200, 100, 6, 2);
  rect(300, 300, 200, 100, 25);
  fill(black);
  textSize(50);
  text("PLAY", 300, 300);
}
