Pong pong; 

Paneel paneelLeft;
Paneel paneelRight;
//score
int scoreLeft = 0;
int scoreRight = 0;

void setup(){
  size(800,600);
  //grootte en snelheid van de pong
  pong = new Pong(width/2, height/2, 50); 
  pong.speedX = 5; 
  pong.speedY = random(-3,3);
  
  //grootte van paneel
  paneelLeft = new Paneel(15, height/2, 30,200);
  paneelRight = new Paneel(width-15, height/2, 30,200);

}

void draw(){
  background(0); 
  pong.move(); 
  pong.display(); //tekent de pong
  
  paneelLeft.move();
  paneelLeft.display();//tekent 1 paneel
  paneelRight.move();
  paneelRight.display(); //tekent 1 paneel

  //de pong collision
  if (pong.right() > width) {
    scoreLeft = scoreLeft + 1;
    pong.x = width/2;
    pong.y = height/2;
  }
  if (pong.left() < 0) {
    scoreRight = scoreRight + 1;
    pong.x = width/2;
    pong.y = height/2;
  }

  if (pong.bottom() > height) {
    pong.speedY = -pong.speedY;
  }

  if (pong.top() < 0) {
    pong.speedY = -pong.speedY;
  }
  //de panelen collision
  if (paneelLeft.bottom() > height) {
    paneelLeft.y = height-paneelLeft.h/2;
  }

  if (paneelLeft.top() < 0) {
    paneelLeft.y = paneelLeft.h/2;
  }
    
  if (paneelRight.bottom() > height) {
    paneelRight.y = height-paneelRight.h/2;
  }

  if (paneelRight.top() < 0) {
    paneelRight.y = paneelRight.h/2;
  }
   
  //voor als de pong achter de paneel komt
  if ( pong.left() < paneelLeft.right() && pong.y > paneelLeft.top() && pong.y < paneelLeft.bottom()){
    pong.speedX = -pong.speedX;
    pong.speedY = map(pong.y - paneelLeft.y, -paneelLeft.h/2, paneelLeft.h/2, -10, 10);
  }

  if ( pong.right() > paneelRight.left() && pong.y > paneelRight.top() && pong.y < paneelRight.bottom()) {
    pong.speedX = -pong.speedX;
    pong.speedY = map(pong.y - paneelRight.y, -paneelRight.h/2, paneelRight.h/2, -10, 10);
  }
  
  
  textSize(40);
  textAlign(CENTER);
  text(scoreRight, width/2+30, 30); // rechter kant score
  text(scoreLeft, width/2-30, 30); // linker kant score
}
//voor het bewegen van de panelen
void keyPressed(){
  if(keyCode == UP){
    paneelRight.speedY=-3;
  }
  if(keyCode == DOWN){
    paneelRight.speedY=3;
  }
  if(key == 'w'){
    paneelLeft.speedY=-3;
  }
  if(key == 's'){
    paneelLeft.speedY=3;
  }
}

void keyReleased(){
  if(keyCode == UP){
    paneelRight.speedY=0;
  }
  if(keyCode == DOWN){
    paneelRight.speedY=0;
  }
  if(key == 'w'){
    paneelLeft.speedY=0;
  }
  if(key == 's'){
    paneelLeft.speedY=0;
  }
}


class Pong {
  float x;
  float y;
  float speedX;
  float speedY;
  float diameter;
  color c; //kleur
  
  
  Pong(float tempX, float tempY, float tempDiameter) {
    x = tempX;
    y = tempY;
    diameter = tempDiameter;
    speedX = 0;
    speedY = 0;
    c = (225); 
  }
  
  void move() {
    // voeg snelheid tot locatie toe
    y = y + speedY;
    x = x + speedX;
  }
  
  void display() {
    fill(c); 
    ellipse(x,y,diameter,diameter); 
  }
  
  //help functies voor de collision
  float left(){
    return x-diameter/2;
  }
  float right(){
    return x+diameter/2;
  }
  float top(){
    return y-diameter/2;
  }
  float bottom(){
    return y+diameter/2;
  }

}




class Paneel{

  float x;
  float y;
  float w;
  float h;
  float speedY;
  float speedX;
  color c;
  
  Paneel(float tempX, float tempY, float tempW, float tempH){
    x = tempX;
    y = tempY;
    w = tempW;
    h = tempH;
    speedY = 0;
    speedX = 0;
    c=(255);
  }

  void move(){
    y += speedY;
    x += speedX;
  }

  void display(){
    fill(c);
    rect(x-w/2,y-h/2,w,h);
  } 
  
  //helper functions
  float left(){
    return x-w/2;
  }
  float right(){
    return x+w/2;
  }
  float top(){
    return y-h/2;
  }
  float bottom(){
    return y+h/2;
  }
}
