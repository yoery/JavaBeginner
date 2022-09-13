void setup(){
  size(500,500);
  background(0,0,0);
}

void draw(){
  println(mouseX + "x");
    println(mouseY + "y");
}

void mouseMoved(){
  int r = floor(random(255));
  int g = floor(random(255));
  int b = floor(random(255));
  fill(r,g,b);
rect(mouseX,mouseY,10,10);
}
