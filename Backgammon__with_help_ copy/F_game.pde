//game

void resetGame() {
  currentPlayer = 1;
  mustEnterFromBar = false;
  dice1Used = true;
  dice2Used = true;
  rolledDoubles = false;
  playerCanMove = true;
  selectedCheckerIndex = -1;
  mode = INTRO;
}

//-------------------------------------------------------------------------------------------------------------------------


void diceLogic() {
  if (dice1Used && dice2Used && currentPlayer == 1) {
    rollDiceButton(75);
  } else if (dice1Used && dice2Used && currentPlayer == 2) {
    rollDiceButton(925);
  }

  // Draw the dice for the current player
  if (dice1Value > 0) {
    Dice(dice1X, dice1Y, dice1Value);
  }
  if (dice2Value > 0) {
    Dice(dice2X, dice2Y, dice2Value);
  }
}

void rollDice() {
  dice1 = int(random(1, 7));
  dice2 = int(random(1, 7));
  rolledDoubles = (dice1 == dice2);
  if (rolledDoubles) {
    remainingMoves = 4;
  } else {
    remainingMoves = 2;
  }
}

void Dice(float x, float y, int value) {
  // Draw the dice background
  strokeWeight(2);
  fill(white);
  stroke(black);
  rect(x, y, 50, 50, 10);

  // Draw the dots based on the dice value
  drawDice(value, x, y);
}

void rollDiceButton(float x) {
  fill(white);
  stroke(black);
  tactile(x, 550, 100, 50, 4, 2);
  rect(x, 550, 100, 50, 5);
  textSize(25);
  fill(black);
  text("ROLL", x, 550);
}

void drawDice(int num, float x, float y) {
  if (num == 1) {
    blackDot(x, y);
  } else if (num == 2) {
    blackDot(x-10, y-10);
    blackDot(x+10, y+10);
  } else if (num == 3) {
    blackDot(x, y);
    blackDot(x-10, y-10);
    blackDot(x+10, y+10);
  } else if (num == 4) {
    blackDot(x-10, y-10);
    blackDot(x+10, y-10);
    blackDot(x-10, y+10);
    blackDot(x+10, y+10);
  } else if (num == 5) {
    blackDot(x, y);
    blackDot(x-10, y-10);
    blackDot(x+10, y-10);
    blackDot(x-10, y+10);
    blackDot(x+10, y+10);
  } else if (num == 6) {
    blackDot(x-10, y-10);
    blackDot(x+10, y-10);
    blackDot(x-10, y+10);
    blackDot(x+10, y+10);
    blackDot(x-10, y);
    blackDot(x+10, y);
  }
}

void blackDot(float x, float y) {
  fill(black);
  circle(x, y, 8);
}

//-------------------------------------------------------------------------------------------------------------------------

void Board() {
  pushMatrix();
  translate(333, 300);
  halfBoard();
  popMatrix();

  pushMatrix();
  translate(667, 300);
  halfBoard();
  popMatrix();

  hinges();
}

void halfBoard() {
  noStroke();

  //board
  fill(blueGreen);
  rect(0, 0, 300, 450);

  //trim
  fill(lightBrown);
  rect(-157.5, 0, 15, 450);
  rect(157.5, 0, 15, 450);

  fill(darkBrown);
  rect(0, -232.5, 330, 15);
  rect(0, 232.5, 330, 15);

  fill(lightBrown);
  triangle(-165, -240, -150, -225, -165, -225);
  triangle(165, -240, 150, -225, 165, -225);
  triangle(165, 240, 150, 225, 165, 225);
  triangle(-165, 240, -150, 225, -165, 225);

  rowOfTriangles(0, 225);

  pushMatrix();
  rotate(PI/-1);
  rowOfTriangles(0, 225);
  popMatrix();
}

void hinges() {
  fill(gold);
  stroke(goldRim);
  strokeWeight(1.5);
  rect(500, 200, 15, 30);
  rect(500, 400, 15, 30);

  rowOfNails(495, 200);
  rowOfNails(504, 200);
  rowOfNails(495, 400);
  rowOfNails(504, 400);
}

void rowOfNails(float x, float y) {
  fill(goldRim);
  circle(x, y, 2);
  circle(x, y-10, 2);
  circle(x, y+10, 2);
}

void twoTriangles(float x, float y) {
  fill(bone);
  triangle(x, y, x+50, y, x+25, y-200);
  fill(smokeyBlack);
  triangle(x, y, x-50, y, x-25, y-200);
}

void rowOfTriangles(float x, float y) {
  twoTriangles(x, y);
  twoTriangles(x-100, y);
  twoTriangles(x+100, y);
}
