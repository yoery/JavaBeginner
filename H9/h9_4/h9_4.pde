
void setup(){
 size(500,500);
 
}

void draw(){
  background(0);
  //rect(100,100,100,100);
  stroke(255);
  vierkant(100,100,100,100);
}

void vierkant(int x,int y,int w, int h){
  //bovenste lijn 
  line(x,y,x+w,y);
  //onderste lijn
  line(x,y+h,x+w,y+h);
  //linker lijn
  line(x,y,x,y+h);
  //rechter lijn
  line(x+w,y,x+w,y+h);
}
