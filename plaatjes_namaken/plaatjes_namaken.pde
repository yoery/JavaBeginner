size(9000, 600);
background(225,225,225);

//lijn
stroke(0,0,0);
strokeWeight(2);
line(20,20,500,20);
color(0,0,0);
fill(0,0,0);
text("lijn", 250,35);

//rechthoek
noFill();
strokeWeight(2);
rect(20,45,500,150);
text("Rechthoek", 250, 215);

//ronde rechthoek weet niet hoe je het rond maakt ook met opzoeken niet
noFill();
strokeWeight(2);
rect(20, 250, 500, 150);

//gevulde rechthoek met ovaal
fill(255,20,147);
strokeWeight(2);
rect(550,45,500,150);
ellipse(800,120,500,150);
fill(0,0,0);
text("Gevulde rechthoek met ovaal", 700, 215);

//Gevulde ovaal
strokeWeight(2);
fill(255,30,147);
ellipse(800,325,500,150);
fill(0,0,0);
text("gevulde ovaal", 765,415);

//taartpunt met ovaal eroverheen
strokeWeight(2);
fill(255,255,255);
ellipse(1350,130,500,250);
fill(255,20,147);
arc(1400,10,250,250,PI*0.5,PI*0.75);
fill(0,0,0);
text("taartpunt met ovaal er over heen", 1275,265);

//cirkel
strokeWeight(2);
fill(255,255,255);
ellipse( 1350,400, 200,200);
fill(0,0,0);
text("cirkel",1340,515);
