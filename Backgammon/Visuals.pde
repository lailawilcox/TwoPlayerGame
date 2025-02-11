void backgroundDisplay() {
  background(bone);
}

void boardDisplay(){
  board();
  pushMatrix();
  translate(380, 0);
  board();
  popMatrix();
}

void board() {
  noStroke();

  //board
  fill(blueGreen);
  rect(310, height/2, 355, 430);

  //trim
  fill(lightBrown);
  rect(130, height/2, 16, 450);
  rect(490, height/2, 16, 456);


  fill(darkBrown);
  rect(310, 80, 375, 16);
  rect(310, 520, 375, 16);

  fill(lightBrown);
  triangle(138, 88, 122, 88, 122, 72);
  triangle(138, 512, 122, 528, 122, 512);
  triangle(498, 88, 482, 88, 498, 72);
  triangle(482, 512, 498, 528, 498, 512);
}
