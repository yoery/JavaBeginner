int[] array = new int[10];

int teller = 0;
int gezocht = 3;

void setup(){
  array[0] = 5;
  array[1] = 3;
  array[2] = 7;
  array[3] = 1;
  array[4] = 5;
  array[5] = 7;
  array[6] = 3;
  array[7] = 5;
  array[8] = 6;
  array[9] = 0;
  
  println(array);
  for(int i=0; i<array.length; i++){
    if(gezocht == array[i]){
      teller++;
    }
  }
  
  println(teller);
}

void draw(){
  
}
