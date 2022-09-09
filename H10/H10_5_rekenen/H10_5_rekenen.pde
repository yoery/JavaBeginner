import controlP5.*;

ControlP5 cp;

Button knop1;
Button knop2;
Button knop3;
Button knop4;


float eindgetal;

Textfield tekstveld1;
Textfield tekstveld2;

void setup(){
  size(350,125);
  
  cp = new ControlP5(this);
  
  
  //keer button
  knop1 = cp.addButton("keer")
            .setPosition(50,80)
            .setSize(20,20)
            .setColorBackground(color(255,255,255))
            .setColorLabel(color(0,0,0))
            .setCaptionLabel("*");
  
 
 //deel button
  knop2 = cp.addButton("delen")
            .setPosition(80,80)
            .setSize(20,20)
            .setColorBackground(color(255,255,255))
            .setColorLabel(color(0,0,0))
            .setCaptionLabel("/");
            
  
  //plus button
  knop3 = cp.addButton("plus")
            .setPosition(110,80)
            .setSize(20,20)
            .setColorBackground(color(255,255,255))
            .setColorLabel(color(0,0,0))
            .setCaptionLabel("+");
            
  
  //min button
  knop4 = cp.addButton("minus")
            .setPosition(140,80)
            .setSize(20,20)
            .setColorBackground(color(255,255,255))
            .setColorLabel(color(0,0,0))
            .setCaptionLabel("-");
  
  
  //2ste cijfer
  tekstveld1 = cp
                .addTextfield("input1")
                .setAutoClear(false)
                .setPosition(10,10)
                .setText("")
                .setCaptionLabel("1ste getal")
                .setColorLabel(color(255,255,255));
  
  
  //2de cijfer
  tekstveld2 = cp
                .addTextfield("input2")
                .setAutoClear(false)
                .setPosition(10,45)
                .setText("")
                .setCaptionLabel("2de getal")
                .setColorLabel(color(255,255,255));
}

void draw(){
  background(0,0,255);
  
  text(eindgetal,250,40);
}

//keer berekeningen
void keer(){
  float getal1 = int(tekstveld1.getText());
  float getal2 = int(tekstveld2.getText());
  eindgetal = getal1 * getal2;
}

//delen berekening
void delen(){
  float getal1 = int(tekstveld1.getText());
  float getal2 = int(tekstveld2.getText());
  eindgetal = getal1 / getal2;
}

//plus berekenen
void plus(){
  float getal1 = int(tekstveld1.getText());
  float getal2 = int(tekstveld2.getText());
  eindgetal = getal1 + getal2;
}

//-berekenen
void minus(){
  float getal1 = int(tekstveld1.getText());
  float getal2 = int(tekstveld2.getText());
  eindgetal = getal1 - getal2;
}
