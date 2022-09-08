void setup() {
  size(250, 250);
}

void draw() {
  background(255, 255, 255);
  stroke(0, 0, 0);
  strokeWeight(3);
  vierkant(80, 0, 100, 100);
}

void vierkant( int x, int y, int w, int h) {
  line(x, y, x+w, h);
  line(x, y+h, x+w, y+h);
  line(x, y, x, y+h);
}
