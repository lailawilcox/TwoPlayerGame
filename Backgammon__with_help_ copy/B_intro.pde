//intro

void introText() {
  fill(black);
  textSize(80);
  text("BACKGAMMON", 500, 200);
}

void playButton() {
  fill(white);
  tactile(500, 350, 200, 100, 6, 2);
  rect(500, 350, 200, 100, 25);
  fill(black);
  textSize(50);
  text("PLAY", 500, 350);
}

void infoButton() {
  fill(white);
  stroke(black);
  tactile(500, 450, 150, 50, 4, 2);
  rect(500, 450, 150, 50, 15);
  fill(black);
  textSize(20);
  text("How To Play", 500, 450);
}
