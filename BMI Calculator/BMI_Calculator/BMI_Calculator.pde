float gewicht = 75.3;
float lengte = 1.78;
float leeftijd = 16;
float BMI = 0;


BMI = gewicht / (lengte*lengte);
BMI *= 10;
BMI = round(BMI);
BMI /= 10;

println(BMI);

size(300,300);
background(255,255,255);

//vakjes met tekst voor float
rect(20,150,120,30);
rect(20,50,120,30);
rect(20,100,120,30);

//Goed gewicht vakje
fill(0,255,0);
rect( 25,190,20,20);
fill(0,0,0);
text("Goed gewicht",50,205);

//Ondergewicht vakje
fill(255,255,0);
rect( 25,215,20,20);
fill(0,0,0);
text("Ondergewicht",50,230);

//Zwaar overgewicht vakje
fill(255,0,0);
rect( 25,240,20,20);
fill(0,0,0);
text("Zwaar overgewicht",50,255);

fill(0,0,0);
text("Gewicht = " + gewicht + "KG",25,170);
text("leeftijd = " + leeftijd + "jaar",25,120);
text("Lengte:" + lengte + "meter",25,70);



if(leeftijd < 70){
 if(BMI < 18.5){
    fill(255,255,0);
 }else if(BMI <25){
    fill(0,255,0);
 } else if(BMI < 30){
     fill(255,255,0);
 }else{
    fill(255,0,0);
  }
}else{
  if(BMI < 22){
    fill(255,255,0);
  }else if(BMI < 28){
    fill(0,255,0);
  }else if(BMI < 30){
     fill(255,255,0);
  }else{
    fill(255,0,0);
  }
}

textSize(30);
text("BMI:  " + BMI ,160,125);
