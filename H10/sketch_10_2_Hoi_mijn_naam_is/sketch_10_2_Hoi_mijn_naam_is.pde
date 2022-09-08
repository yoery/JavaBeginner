import controlP5.*;

ControlP5 cp;

Button Knop1;

Textfield tekstveld1;

void setup(){
  size(500,300);
  background(255);
  cp = new ControlP5(this);
   cp.addButton("Knop1")
   .setSize(150,50)
   .setPosition(325,100)
   .setColorForeground(color(0))
   .setColorBackground(color(0,0,255))
   .setCaptionLabel("Submit");
   
   tekstveld1 = cp
                .addTextfield("TextInput1")
                .setPosition(100,100)
                .setSize(100,50)
                .setColorLabel(color(0))
                .setCaptionLabel("Hoi(druk op enter wanneer je kan typen")
                .setText("Type hier je naam");
                
}
void draw(){}

void Knop1(){
  println("Ik ben Jans aangenaam kennis met je te maken :)");
  println("Hoi mijn naam is: " + tekstveld1.getText());
  
}
