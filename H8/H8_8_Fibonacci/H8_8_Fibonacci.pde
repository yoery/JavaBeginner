int A1 = 0;
int B2 = 1;
int C3 = 0;


println(A1);
println(B2);

C3 = A1 + B2;

while (C3 <= 30) {

  println(C3);

  A1 = B2;
  B2 = C3;
  C3 = A1 + B2;
}
