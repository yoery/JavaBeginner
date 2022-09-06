float c1 = 8;
float c2 = 8;
float c3 = 8;
float c4 = 8;
float c5 = 8;
float c6 = 8;
float c7 = 8;
boolean cumclaude = true;
boolean diploma = false;

if(c1 + c2 + c3 + c4 + c5 + c6 + c7 >= 5.5){
  diploma = true;
}

if(c1 + c2 + c3 + c4 + c5 + c6 + c7 <= 5.5){
  cumclaude = false;
}


if(cumclaude && diploma){
  println("Gefeliciteerd");
}
