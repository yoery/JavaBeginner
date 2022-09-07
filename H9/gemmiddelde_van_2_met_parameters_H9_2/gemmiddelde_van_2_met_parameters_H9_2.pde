int mijnGetal = 8;
int mijnGetal2 = 10;
int mijnGetal3 = 2;

void setup(){
mijnMethode(mijnGetal, mijnGetal2, mijnGetal3);
mijnMethode(mijnGetal, mijnGetal2, mijnGetal3);
}

void draw(){
}

void mijnMethode(int getal, int getaltwee, int getaldrie){
  int totaal = (getal + getaltwee) / getaldrie;
  println("Som " + getal + " " + getaltwee + " " + getaldrie + " " + totaal);
}
