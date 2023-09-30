// Хичээл 2 дахь өдөр
import 'dart:math';
void main(){
  print('Lesson Day - 02');
  // бүхэл тоон хувьсагч
  int a = 5;
  print(a);
  // бутархай тоо
  double b = 2.5;
  print(b);
  // текст үсгэн тэмдэгт
  String c = 'Hello';
  print(c);
  // үнэн худал boolean
  bool d = true;
  print(d);
  // arithmetic operations
  print(4.5 + 5.5);
  print(4.5 * 8);
  print(5.6 - 2.3);
  print(8/2);

  // module operations
  int rest = 8 % 4;
  print(rest);
  // change variable values
  a = 10; // change variable value 5 into 10
  print(a);
  c = '2.5';
  print(c);
  // dart math гэдэг санг ашиглана.
  print(sin(45 * pi/ 180));
  print(cos(45 * pi/180));
  print(max(4, 5));

  bool unenHudal = true;
  // String interpolation
  print('$c');
  print('Mongolian Government is good: $unenHudal');
}