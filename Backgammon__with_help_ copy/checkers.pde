float[][] player1Checkers = {
  {792, 136}, {792, 96}, {542, 504}, {542, 464}, {542, 424},
  {542, 384}, {542, 344}, {408, 504}, {408, 464}, {408, 424},
  {208, 96}, {208, 136}, {208, 176}, {208, 216}, {208, 256}
};

float[][] player2Checkers = {
  {792, 504}, {792, 464}, {542, 96}, {542, 136}, {542, 176},
  {542, 216}, {542, 256}, {408, 96}, {408, 136}, {408, 176},
  {208, 504}, {208, 464}, {208, 424}, {208, 384}, {208, 344}
};

void checkers() {
  strokeWeight(0);

  // Draw all checkers (both players)
  drawCheckers(player1Checkers, player1, 1);
  drawCheckers(player2Checkers, player2, 2);
}

void drawCheckers(float[][] checkers, color checkerColor, int owner) {
  fill(255); // Default fill (won't affect stroke for circles)

  for (int i = 0; i < checkers.length; i++) {
    float x = checkers[i][0];
    float y = checkers[i][1];

    boolean isTop = true; // Assume it is the top checker initially

    // Check if there is another checker in the same column
    for (int j = 0; j < checkers.length; j++) {
      if (i != j && checkers[j][0] == x) {
        if ((y > checkers[j][1] && y > 300) || (y < checkers[j][1] && y < 300)) {
          isTop = false;
          break;
        }
      }
    }

    // Highlight only if it's the top checker AND it's the current player's turn
    if (isTop && owner == currentPlayer && !dice1Used && !dice2Used) {
      checkerInfo(x, y, 40); // Highlight valid checkers
    }

    fill(checkerColor); // Set fill color based on player ownership
    circle(x, y, 40);
    strokeWeight(0);
  }
}


void checkerInfo(float x, float y, float r) {
  if (dist(x, y, mouseX, mouseY) < r/2) {
    strokeWeight(3);
  } else {
    strokeWeight(0);
  }
}
