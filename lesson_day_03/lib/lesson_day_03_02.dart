import 'dart:io';

void main() {
  stdout.write("Enter the first number: ");
  double num1 = double.parse(stdin.readLineSync() ?? '');

  stdout.write("Enter the second number: ");
  double num2 = double.parse(stdin.readLineSync() ?? '');

  stdout.write("Enter the third number: ");
  double num3 = double.parse(stdin.readLineSync() ?? '');

  double max = num1;

  if (num2 > max) {
    max = num2;
  }
  if (num3 > max) {
    max = num3;
  }

  print("The largest number is $max.");
}