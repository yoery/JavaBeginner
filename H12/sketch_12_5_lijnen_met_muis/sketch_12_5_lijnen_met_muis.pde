int beginX;
int beginY;

void setup(){
  size(500,500);
  background(255,255,255);
}

void draw(){
  
}

void mouseClicked(){
  line(beginX,beginY,mouseX,mouseY);

  beginX = mouseX;
  beginY = mouseY;
  }
