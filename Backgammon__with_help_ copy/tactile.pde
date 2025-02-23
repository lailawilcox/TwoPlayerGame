//tactile

void tactile(float x, float y, float w, float h, int on, int off ) {
 if ( mouseX < x + w/2 && mouseX > x - w/2 && mouseY < y + h/2 && mouseY > y - h/2) {
    strokeWeight(on);
  } else {
    strokeWeight(off);
  }
}
