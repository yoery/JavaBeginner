int getal = 0;
long milliSeconds = 0;

int seconden;  
int gedrukt = 0;
boolean racen = true;

void setup(){
  size(500,500);  
}

void draw(){
  background(255,255,255);
  
seconden = millis()/1000;
if(seconden >= 10){
  racen = false;
}
  fill(255,0,0);
    text("spaties: " + gedrukt, 250,250);
}

void keyReleased(){
  if(key == 32 && racen){
  println(gedrukt++);
}}
