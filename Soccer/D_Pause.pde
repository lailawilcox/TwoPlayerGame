void pause() {
  gameRunning = false;
  
  PauseText();
  ResumeButton();
  IntroButton();
}

void pauseClicks() {
  if (mouseX > 350 && mouseX < 650 && mouseY > 450 && mouseY < 550) {
    mode = GAME;
  }
  if (mouseX > 375 && mouseX < 625 && mouseY > 300 && mouseY < 400) {
    mode = INTRO;
  }
}

//-------------------------------------------------------------------------------------------------------------------------

void PauseText() {
  textSize(140);
  fill(black);
  text("Pause", 500, 150);
}

void ResumeButton() {
  fill(white);
  stroke(black);

  tactile(500, 500, 300, 100, 6, 3);
  rect(500, 500, 300, 100, 25);

  textSize(50);
  fill(black);
  text("Resume", 500, 500);
}

void IntroButton() {
  fill(white);
  stroke(black);

  tactile(500, 350, 250, 100, 6, 3);
  rect(500, 350, 250, 100, 25);

  textSize(50);
  fill(black);
  text("Intro", 500, 350);
}
