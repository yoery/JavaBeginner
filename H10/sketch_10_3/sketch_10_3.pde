import controlP5.*;
int geenbtw = 0;
String tekst = "0";
float metbtw = 0;

ControlP5 cp;

Button Knop1;

Textfield tekstveld1;

void setup(){
  
  size(500,300);
  background(255);
  cp = new ControlP5(this);
   cp.addButton("Knop1")
   .setSize(150,50)
   .setPosition(100,140)
   .setColorForeground(color(0))
   .setColorBackground(color(0,0,255))
   .setCaptionLabel("Reken");
   
   tekstveld1 = cp
                .addTextfield("TextInput1")
                .setAutoClear(false)
                .setPosition(100,100)
                .setSize(100,20)
                .setColorLabel(color(0))
                .setCaptionLabel("BTW rekener zet een bedrag erin")
                .setText(" ");
                
}

void draw(){}

void Knop1(){
   tekst = tekstveld1.getText();
   geenbtw = int(tekst);
   metbtw = geenbtw * 1.21;
   metbtw *= 100;
   metbtw = int(metbtw);
   metbtw /= 100;
   println("€" + metbtw);  
}
