import 'dart:io';
void main() {
  // string
  // string literal
  String singleQuoted = 'This is a single-quoted string.';
  String doubleQuoted = "This is a double-quoted string.";
  // string concatenation
  String firstName = 'John';
  String lastName = 'Doe';
  String fullName = firstName + ' ' + lastName; // 'John Doe'
  // String interpolation
  String name = 'Alice';
  String greeting = 'Hello, $name!'; // 'Hello, Alice!'
  // string length
  String text = 'Hello, World!';
  int length = text.length; // 13
  // string methods , trim, toUpperCase, toLowerCase, substring, split
  String sentence = '   Dart programming is fun!   ';
  String trimmed = sentence.trim(); // 'Dart programming is fun!'

  // string comparison
  String str1 = 'apple';
  String str2 = 'apple';
  bool isEqual = str1 == str2; // true
  // string multiline
  String multiline = '''
  This is a
  multiline
  string.
''';
  // raw strings
  String rawString = r'This is a \n raw string';

  // string to integer/double
  String numberStr = '42';
  int parsedInt = int.parse(numberStr); // 42
  String doubleStr = '45.6';
  double parseDouble = double.parse(doubleStr); // 45.6

  // logical operator - boolean operator
  bool isEven = true;
  bool isOdd = false;

  bool result = (5 == 5); // true
  result = 6 > 7; // false
  result = 8 >= 7; // true
  result = 7 <= 8; // true
  int age = 24;
  result = 5 < age && age < 25; // true
  // AND (&&) boolean operator
  // true && true = true
  // false && false = false
  // false && true = false
  // true && false = false
  String nationity = 'Mongolian';
  String gender = 'man';
  result = (nationity == 'Mongolian' || gender == 'man'); // true
  // OR (||) boolean operator
  // true && true = true
  // false && false = false
  // false && true = true
  // true && false = true
  result = (nationity != 'Mongolian'); // false

  print(result);

  print("Enter an integer: ");
  int number = int.parse(stdin.readLineSync()!);
  if (number > 0) {
    print("$number is positive.");
  } else if (number < 0) {
    print("$number is negative.");
  } else {
    print("$number is zero.");
  }

  // case switch
  String b = 'Mongolian';
  switch(b) {
    case 'Moroccian':
      print('You are morrocian');
      break;
    case 'Mongolian':
      print('You are Mongolian');
      break;
    case 'Turkish':
      print('You are Turkish');
      break;
    default: {
      print('Your nationality is not included');
      break;
    }
  }

}
