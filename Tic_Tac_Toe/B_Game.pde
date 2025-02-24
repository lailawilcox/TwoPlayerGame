void game () {
  background(white);
  introText();
  resetGame();
  plays();
}

void gameClicks () {
}

void resetGame() {
  grid();
}

//-------------------------------------------------------------------------------------------------------------------------

void plays() {
  if (square1 == 1) {
    drawX(200, 200);
  } else {
    drawO(200, 200);
  }

  if (square2 == 1) {
    drawX(300, 200);
  } else {
    drawO(300, 200);
  }

  if (square3 == 1) {
    drawX(400, 200);
  } else {
    drawO(400, 200);
  }

  if (square4 == 1) {
    drawX(200, 300);
  } else {
    drawO(200, 300);
  }

  if (square5 == 1) {
    drawX(300, 300);
  } else {
    drawO(300, 300);
  }

  if (square6 == 1) {
    drawX(400, 300);
  } else {
    drawO(400, 300);
  }

  if (square7 == 1) {
    drawX(200, 400);
  } else {
    drawO(200, 400);
  }

  if (square8 == 1) {
    drawX(300, 400);
  } else {
    drawO(300, 400);
  }

  if (square9 == 1) {
    drawX(400, 400);
  } else {
    drawO(400, 400);
  }
}

void grid() {
  fill(white);
  stroke(black);
  strokeWeight(5);

  square(300, 200, 100);
  square(200, 200, 100);
  square(400, 200, 100);

  square(300, 300, 100);
  square(200, 300, 100);
  square(400, 300, 100);

  square(300, 400, 100);
  square(200, 400, 100);
  square(400, 400, 100);
}

void drawX(int x, int y) {
  noFill();
  stroke(blue);
  strokeWeight(5);

  line(x-40, y-40, x+40, y+40);
  line(x+40, y-40, x-40, y+40);
}


void drawO(int x, int y) {
  noFill();
  stroke(red);
  strokeWeight(5);
  circle(x, y, 80);
}
