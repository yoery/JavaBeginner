//importeer je library
import controlP5.*;

//declareer je variable
ControlP5 cp;

//declareer je variable
Button knop1;

//declareer je variabele
Button knop2;

//Deze gunctie gebeurd 1 keer aan het begin van de applicatie
void setup(){
  size(500,500);
  
  //assign je variabele
  cp = new ControlP5(this);
  
  //assign je variabele
  knop1 = cp.addButton ("Knop1")
  .setPosition(125,100)
  .setSize(100,100)
  .setCaptionLabel("Klik mij")
  .setColorBackground(color(0,225,225))
  .setColorForeground(color(0));
   
   //assigne je variabele
   cp = new ControlP5(this);
   
   //assign je variabele
   knop2 = cp.addButton ("Knop2")
  .setPosition(250,100)
  .setSize(100,100)
  .setCaptionLabel("Klik mij")
  .setColorBackground(color(0,225,0))
  .setColorForeground(color(0));
}

//deze functie gebeurd meerdere keren per seconde
void draw(){
  
  
}
void Knop1(){
  println("Goed gedaan!");
}

void Knop2(){
  println("Helaas fout!");
}
