import 'dart:math';

void main() {
  print('lesson day 06 - functions');
  print(sqrt(4));
  print(max(4, 5));
  print(maxFunc(4, 5));  // call maxFunc with values 4, 5
  print(maxFunc(4, 4));  // call maxFunc with values 4, 4
  print(maxFunc(10, -2)); // call maxFunc with values 10, -2
  print(giveGravity());

  print(division(10));
  print(division(10, y: 5));
}

// default value of function

double division (int x, {int y = 1}){
  return x / y;
}

// define max find function
int maxFunc(int a, int b) {
  if (a > b) {
    return a;
  } else {
    return b;
  }
}
// define give gravity function
double giveGravity(){
  return 9.78;
}