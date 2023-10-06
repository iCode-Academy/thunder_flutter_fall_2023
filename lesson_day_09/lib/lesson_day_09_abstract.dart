abstract class GameCharacter {
  String name;

  GameCharacter(this.name);

  void attack();
  void defend();
}

class Warrior extends GameCharacter {
  Warrior(String name) : super(name);

  @override
  void attack() {
    print('$name swings a sword!');
  }

  @override
  void defend() {
    print('$name raises a shield!');
  }
}

class Archer extends GameCharacter {
  Archer(String name) : super(name);

  @override
  void attack() {
    print('$name shoots an arrow!');
  }

  @override
  void defend() {
    print('$name dodges quickly!');
  }
}

abstract class Shape {
  void draw();
}

class Circle extends Shape {
  @override
  void draw() {
    print('Drawing a circle');
  }
}

class Square extends Shape {
  @override
  void draw() {
    print('Drawing a square');
  }
}

void main() {
  GameCharacter warrior = Warrior("Lancelot");
  GameCharacter archer = Archer("Robin");

  warrior.attack(); // Outputs: Lancelot swings a sword!
  archer.attack(); // Outputs: Robin shoots an arrow!

  Shape circle = Circle();
  circle.draw(); // Outputs: Drawing a circle

  Shape square = Square();
  square.draw(); // Outputs: Drawing a square
}
