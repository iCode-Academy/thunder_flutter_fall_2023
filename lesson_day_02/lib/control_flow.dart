import 'dart:io';
void main(){
  int a = 5;
  int b = 6;

  print('give me a number a');
  String? input = stdin.readLineSync();
  a = int.parse(input!);
  print('give me a number b');
  input = stdin.readLineSync();
  b = int.parse(input!);

  if (a < b){// condition boolean
    print('b is greater than a');
  } else {
    print('a is greater than b');
  }
}