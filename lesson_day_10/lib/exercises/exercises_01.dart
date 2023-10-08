abstract class Animal {
  String name;
  int age;
  Animal(this.name, this.age);
  void sound();
  void move();
}

class Dog extends Animal {
  Dog(String name, int age) : super(name, age);
  @override
  void sound() {
    print("Woof!");
  }

  @override
  void move() {
    print("Run!");
  }
}

class Bird extends Animal {
  Bird(String name, int age) : super(name, age);
  @override
  void sound() {
    print("Chirp!");
  }

  @override
  void move() {
    print("Fly!");
  }
}

class Fish extends Animal {
  Fish(String name, int age) : super(name, age);
  @override
  void sound() {
    print("Blub!");
  }

  @override
  void move() {
    print("Swim!");
  }
}

void main() {
  final Dog dog = Dog("Fido", 2);
  dog.sound();  // Should print "Woof!"
  dog.move();  // Should print "Run!"
  
  final Bird bird = Bird("Tweety", 1);
  bird.sound();  // Should print "Chirp!"
  bird.move();  // Should print "Fly!"
  
  final Fish fish = Fish("Nemo", 1);
  fish.sound();  // Should print "Blub!"
  fish.move();  // Should print "Swim!"
}
