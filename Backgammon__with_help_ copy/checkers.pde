void checkers() {

  fill(player1);

  // 2 checkers on point 1
  if (p1y1 < 300 && get((int)p1x1, (int)p1y1+41) != player1) {
    checkerInfo(p1x1, p1y1, 40, 3, 0);
  }
  circle(p1x1, p1y1, 40);
  strokeWeight(0);

  if (p1y2 < 300 && get((int)p1x2, (int)p1y2+41) != player1) {
    checkerInfo(p1x2, p1y2, 40, 3, 0);
  }
  circle(p1x2, p1y2, 40);
  strokeWeight(0);

  // 5 checkers on point 19
  if (p1y3 > 300 && get((int)p1x3, (int)p1y3-41) != player1) {
    checkerInfo(p1x3, p1y3, 40, 3, 0);
  } else {
    strokeWeight(0);
  }
  circle(p1x3, p1y3, 40);

  if (p1y4 > 300 && get((int)p1x4, (int)p1y4-41) != player1) {
    checkerInfo(p1x4, p1y4, 40, 3, 0);
  } else {
    strokeWeight(0);
  }
  circle(p1x4, p1y4, 40);

  if (p1y5 > 300 && get((int)p1x5, (int)p1y5-41) != player1) {
    checkerInfo(p1x5, p1y5, 40, 3, 0);
  } else {
    strokeWeight(0);
  }
  circle(p1x5, p1y5, 40);

  if (p1y6 > 300 && get((int)p1x6, (int)p1y6-41) != player1) {
    checkerInfo(p1x6, p1y6, 40, 3, 0);
  } else {
    strokeWeight(0);
  }
  circle(p1x6, p1y6, 40);


  if (p1y7 > 300 && get((int)p1x7, (int)p1y7-41) != player1) {
    checkerInfo(p1x7, p1y7, 40, 3, 0);
  } else {
    strokeWeight(0);
  }
  circle(p1x7, p1y7, 40);


  // 3 checkers on point 17
  if (p1y8 > 300 && get((int)p1x8, (int)p1y8-41) != player1) {
    checkerInfo(p1x8, p1y8, 40, 3, 0);
  }
  circle(p1x8, p1y8, 40);
  strokeWeight(0);

  if (p1y9 > 300 && get((int)p1x9, (int)p1y9-41) != player1) {
    checkerInfo(p1x9, p1y9, 40, 3, 0);
  }
  circle(p1x9, p1y9, 40);
  strokeWeight(0);

  if (p1y10 > 300 && get((int)p1x10, (int)p1y10-41) != player1) {
    checkerInfo(p1x10, p1y10, 40, 3, 0);
  }
  circle(p1x10, p1y10, 40);
  strokeWeight(0);

  // 5 checkers on point 12
  if (p1y11 < 300 && get((int)p1x11, (int)p1y11+41) != player1) {
    checkerInfo(p1x11, p1y11, 40, 3, 0);
  }
  circle(p1x11, p1y11, 40);
  strokeWeight(0);

  if (p1y12 < 300 && get((int)p1x12, (int)p1y12+41) != player1) {
    checkerInfo(p1x12, p1y12, 40, 3, 0);
  }
  circle(p1x12, p1y12, 40);
  strokeWeight(0);

  if (p1y13 < 300 && get((int)p1x13, (int)p1y13+41) != player1) {
    checkerInfo(p1x13, p1y13, 40, 3, 0);
  }
  circle(p1x13, p1y13, 40);
  strokeWeight(0);

  if (p1y14 < 300 && get((int)p1x14, (int)p1y14+41) != player1) {
    checkerInfo(p1x14, p1y14, 40, 3, 0);
  }
  circle(p1x14, p1y14, 40);
  strokeWeight(0);

  if (p1y15 < 300 && get((int)p1x15, (int)p1y15+41) != player1) {
    checkerInfo(p1x15, p1y15, 40, 3, 0);
  }
  circle(p1x15, p1y15, 40);
  strokeWeight(0);


  fill(player2);

  checkerInfo(p2x1, p2y1, 40, 3, 0);
  circle(p2x1, p2y1, 40);  // 2 checkers on point 1
  strokeWeight(0);

  checkerInfo(p2x2, p2y2, 40, 3, 0);
  circle(p2x2, p2y2, 40);
  strokeWeight(0);

  checkerInfo(p2x3, p2y3, 40, 3, 0);
  circle(p2x3, p2y3, 40); // 5 checkers on point 19
  strokeWeight(0);

  checkerInfo(p2x4, p2y4, 40, 3, 0);
  circle(p2x4, p2y4, 40);
  strokeWeight(0);

  checkerInfo(p2x5, p2y5, 40, 3, 0);
  circle(p2x5, p2y5, 40);
  strokeWeight(0);

  checkerInfo(p2x6, p2y6, 40, 3, 0);
  circle(p2x6, p2y6, 40);
  strokeWeight(0);

  checkerInfo(p2x7, p2y7, 40, 3, 0);
  circle(p2x7, p2y7, 40);
  strokeWeight(0);

  checkerInfo(p2x8, p2y8, 40, 3, 0);
  circle(p2x8, p2y8, 40); // 3 checkers on point 17
  strokeWeight(0);

  checkerInfo(p2x9, p2y9, 40, 3, 0);
  circle(p2x9, p2y9, 40);
  strokeWeight(0);

  checkerInfo(p2x10, p2y10, 40, 3, 0);
  circle(p2x10, p2y10, 40);
  strokeWeight(0);

  checkerInfo(p2x11, p2y11, 40, 3, 0);
  circle(p2x11, p2y11, 40);  // 5 checkers on point 12
  strokeWeight(0);

  checkerInfo(p2x12, p2y12, 40, 3, 0);
  circle(p2x12, p2y12, 40);
  strokeWeight(0);

  checkerInfo(p2x13, p2y13, 40, 3, 0);
  circle(p2x13, p2y13, 40);
  strokeWeight(0);

  checkerInfo(p2x14, p2y14, 40, 3, 0);
  circle(p2x14, p2y14, 40);
  strokeWeight(0);

  checkerInfo(p2x15, p2y15, 40, 3, 0);
  circle(p2x15, p2y15, 40);
  strokeWeight(0);
}

void checkerInfo(float x, float y, float r, float on, float off) {
  if (dist(x, y, mouseX, mouseY) < r/2) {
    strokeWeight(on);
  } else {
    strokeWeight(off);
  }
}
