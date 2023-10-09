void main() {
  print('Lesson Day 10 Abstract');
  final Horse horse = Horse('Animali', 3, 'Ulaan huren');
  horse.printInfo();
  horse.shout();
  final Dog dog = Dog('Animali', 2, 'Bankhar');
  dog.printInfo();
  dog.shout();
}

abstract class Animal {
  String name;
  int age;
  String species;

  Animal(this.species, this.age, this.name);

  void shout();

  void printInfo() {
    print('The animal is $name, age is $age, species of $species.');
  }
}

class Horse extends Animal {
  Horse(super.species, super.age, super.name);

  @override
  void shout() {
    print('Iin hoo Iin hoo');
  }
}

class Dog extends Animal {
  Dog(super.species, super.age, super.name);

  @override
  void shout() {
    print('Woof Woof!');
  }
}
