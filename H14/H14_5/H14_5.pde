PImage img;
int x = 10;
int y = 10;

void setup(){
  size(1800,1920);
background(255,255,255);
 img = loadImage("images/wiljan.jpg");
}


void draw(){
for(int i = 0; i < 20; i++)
     image(img,i*100,y,100,100);
    
}
