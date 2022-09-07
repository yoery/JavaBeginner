int cijfer = 11;

switch(cijfer){
  case 1:
  case 2:
  case 3:
   println("Slecht cijfer");
   break;
  case 4:
   println("Onvoldoende cijfer");
   break;
  case 5:
   println("Matig cijfer");
   break;
  case 6:
  case 7:
   println("Voldoende cijfer");
   break;
  case 8:
  case 9:
  case 10:
   println("GOED cijfer");
   break;
 default:
  println("Warning: VERKEERD CIJFER INGEVOERD!!!");
  break;
}
