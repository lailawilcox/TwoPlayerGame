//mouse

void mouseReleased() {
  if (mode == INTRO) {
    introClicks();
  } else if (mode == INFO) {
    infoClicks();
  } else if (mode == GAME) {
    gameClicks();
  } else if (mode == GAMEOVER) {
    gameOverClicks();
  } else {
    println("Error: mode = " + mode);
  }
}
