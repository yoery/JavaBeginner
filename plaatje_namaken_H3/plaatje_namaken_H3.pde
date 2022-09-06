size(1000,450);
background(255,255,255);

// Lijn
stroke(0,0,0);
strokeWeight(3);
line(10,10,300,10);
fill(0,0,0);
text("Lijn", 145,30,90);

// Rechthoek
fill(255,255,255);
rect(10,40,300,150);
fill(0,0,0);
text("Rechthoek", 130,210,90);

// Afgeronde rechthoek
fill(255,255,255);
rect(10,220,300,170,20);
fill(0,0,0);
text("Afgeronde rechtoek", 110,410,90);

// Gevulde rechthoek met ovaal
fill(191,64,191);
rect(320,40,300,150);
ellipse(470,115,300,150);
fill(0,0,0);
text("Gevulde rechthoek met ovaal", 400,210,90);

// Gevulde ovaal
fill(191, 64, 191);
ellipse(470,300,300,150);
fill(0,0,0);
text("Gevulde ovaal", 430,400,90);

// Taartpunt met ovaal eromheen
fill(255,255,255);
ellipse(780,120,300,150);
fill(191,64,191);
arc(780,113,300,130,PI*1.6,PI*2);
fill(0,0,0);
text("Taartpunt met ovaal eromheen", 710,210,90);

// Cirkel
fill(255,255,255);
arc(780,300,150,150,PI,PI*4);
fill(0,0,0);
text("Cirkel", 765,400,90);
