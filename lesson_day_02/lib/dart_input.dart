import 'dart:io';
void main(){
  print('Get Input from Keyboard');
  String? input = stdin.readLineSync();
  print('You have given a number: $input');

  // Нэрээ асуугаад түүнийг myName гэдэг хувьсагчид оноогоорой
  print('Say your name');
  String? myName = stdin.readLineSync();
  print('Your name is $myName');
  print('Nice to meet you');

  print ('How old are you?');
  String? yourAge = stdin.readLineSync();
  print('Your age is $yourAge');

  // хэрэглэгчээс 2 тоо аваад түүний нийлбэрийг нь бодож өгдөг болгоё.
  print('Give me your first number');
  String? firstNumber = stdin.readLineSync();
  int a = int.parse(firstNumber!);
  print('Give me your second number');
  String? secondNumber = stdin.readLineSync();
  int b = int.parse(secondNumber!);
  print(firstNumber);
  print(secondNumber);
  print('Sum: ${a + b} ');
}