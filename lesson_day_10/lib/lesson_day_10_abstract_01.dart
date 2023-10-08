abstract class Animal {
  void makeSound();
}

class Dog extends Animal {
  @override
  void makeSound() {
    print("Woof!");
  }
}

class Cat extends Animal {
  @override
  void makeSound() {
    print("Meow!");
  }
}

void main() {
  final Dog dog = Dog();
  dog.makeSound();  // Should print "Woof!"
  
  final Cat cat = Cat();
  cat.makeSound();  // Should print "Meow!"
}