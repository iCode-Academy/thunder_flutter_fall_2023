void main(){
  print('Lesson Day - 07');
  print('Dart classes');

  final Human khangai = Human();
  khangai.name = 'khangaikhuu'; // after my birth, i get my first name
  khangai.age = 41;
  khangai.gender = 'male';
  print(khangai.name);
  print(khangai.age);
  print(khangai.gender);

  final Human anna = Human();
  anna.name = 'Anna';
  anna.age = 25;
  anna.gender = 'female';
  print(anna.name);
  print(anna.age);
  print(anna.gender);

  final Human putin = Human();
  putin.name = 'Putin';
  putin.age = 70;
  putin.gender = 'male';
  print(putin.name);
  print(putin.age);
  print(putin.gender);

}

class Human {
  String name = 'human'; // class property
  int age = 0;
  int body = 1;
  int eyes = 2;
  int feet = 2;
  int hands = 2;
  String gender = 'woman';
}

