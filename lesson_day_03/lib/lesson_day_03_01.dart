import 'dart:io';

void main() {
  stdout.write("Enter the length of side A: ");
  int sideA = int.parse(stdin.readLineSync() ?? '');

  stdout.write("Enter the length of side B: ");
  int sideB = int.parse(stdin.readLineSync() ?? '');

  stdout.write("Enter the length of side C: ");
  int sideC = int.parse(stdin.readLineSync() ?? '');

  if (sideA == sideB && sideB == sideC) {
    print("It's an equilateral triangle.");
  } else if (sideA == sideB || sideA == sideC || sideB == sideC) {
    print("It's an isosceles triangle.");
  } else {
    print("It's a scalene triangle.");
  }
}