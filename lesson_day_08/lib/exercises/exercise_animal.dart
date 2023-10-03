class Animal {
  String name;
  int age;

  Animal(this.name, this.age);

  void makeSound() {
    print("$name makes a sound!");
  }

  bool isOlderThan(int years) {
    return age > years;
  }
}

void main(){
  // write 3 classes here
  print('Exercise Animal Class');
  final Animal animal = Animal('Dog', 5);
  animal.makeSound();
  print(animal.isOlderThan(10));
  print(animal.isOlderThan(1));

  // another example
  final Animal animal2 = Animal('Cat', 2);
  animal2.makeSound();
  print(animal2.isOlderThan(10));
  print(animal2.isOlderThan(1));

  // another example
  final Animal animal3 = Animal('Bird', 1);
  animal3.makeSound();
  print(animal3.isOlderThan(10));
  print(animal3.isOlderThan(1));
}