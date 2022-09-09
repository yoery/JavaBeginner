import controlP5.*;

ControlP5 cp;

int tellen1 = 0;
int tellen2 = 0;
int totaal = 0;

Button knop1;
Button knop2;

void setup(){
  size(500,500);
  fill(0,0,0);
  cp = new ControlP5(this);
  
  knop1 = cp.addButton("Knop1")
            .setSize(100,50)
            .setPosition(100,100)
            .setColorBackground(color(0,255,0))
            .setColorForeground(color(0));
  knop1.setCaptionLabel("Ouders");
  
  knop2 = cp.addButton("Knop2")
            .setSize(100,50)
            .setPosition(300,100)
            .setColorBackground(color(255,0,0))
            .setColorForeground(color(0));
  knop2.setCaptionLabel("Studenten");
}

void draw(){
  background(255,255,255);
  text("Studenten: "+ tellen1, 110,200);
  text("Ouders: " + tellen2, 310,200);
  text("Totaal: " + totaal, 220,250);
}

void Knop1(){
  tellen1++;
  totaal++;
}

void Knop2(){
  tellen2++;
  totaal++;
}
