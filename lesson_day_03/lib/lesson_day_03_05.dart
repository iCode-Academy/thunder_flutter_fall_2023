import 'dart:io';

void main() {
  stdout.write("Enter a temperature: ");
  double temperature = double.parse(stdin.readLineSync() ?? '');

  stdout.write("Is it in Celsius or Fahrenheit? (C/F): ");
  String unit = (stdin.readLineSync() ?? '').toUpperCase();

  double convertedTemperature;

  if (unit == "C") {
    convertedTemperature = (temperature * 9 / 5) + 32;
    print("$temperature°C is equal to $convertedTemperature°F.");
  } else if (unit == "F") {
    convertedTemperature = (temperature - 32) * 5 / 9;
    print("$temperature°F is equal to $convertedTemperature°C.");
  } else {
    print("Invalid unit. Please enter 'C' or 'F'.");
  }
}