PImage img;

int x = 10;
int y = 10;
void setup(){
  size(1000,1000);
  img = loadImage("images/wiljan.jpg");
  image(img,100,0, 100,200);
  img = loadImage("images/geenidee.jpg");
  image(img,100,300,100,200);
  img = loadImage("images/timo.jpg");
  image(img,100,600,100,200);
}

void draw(){
 
}
