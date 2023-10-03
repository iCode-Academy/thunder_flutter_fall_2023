class Animal {
  String name;
  int age;

  Animal(this.name, [this.age = 0]);

  printInfo() {
    print('name: $name, age: $age');
  }

  @override
  String toString() {
    return 'Animal{name: $name, age: $age}';
  }
}

void main() {
  print('Animal Class with Initializer List');
  final Animal animal = Animal('Dog', 10);
  print(animal.name);
  print(animal.age);
  animal.printInfo();
  print(animal);

  final Animal animal2 = Animal('Cat');
  print(animal2.name);
  print(animal2.age);
  animal2.printInfo();
  print(animal2);
}
