import 'dart:io';

void main() {
  stdout.write("Enter a number (1-7): ");
  int day = int.parse(stdin.readLineSync() ?? '');

  String dayName;
  switch (day) {
    case 1:
      dayName = "Monday";
      break;
    case 2:
      dayName = "Tuesday";
      break;
    case 3:
      dayName = "Wednesday";
      break;
    case 4:
      dayName = "Thursday";
      break;
    case 5:
      dayName = "Friday";
      break;
    case 6:
      dayName = "Saturday";
      break;
    case 7:
      dayName = "Sunday";
      break;
    default:
      dayName = "Invalid day";
      break;
  }

  print("The day is $dayName.");
}