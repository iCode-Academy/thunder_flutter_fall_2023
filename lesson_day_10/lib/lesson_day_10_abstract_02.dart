// Abstract class for a Sportsperson
abstract class Sportsperson {
  String name;
  int age;
  double stamina;

  Sportsperson(this.name, this.age, this.stamina);

  // Abstract methods that every sportsperson should implement
  void train();
  void rest();
  void compete();
  void hydrate();
  String statistics();

  // A concrete method that can be used by derived classes
  void introduce() {
    print("Hello, my name is $name and I am a sportsperson!");
  }
}

// A concrete implementation for a Footballer
class Footballer extends Sportsperson {
  int goalsScored;

  Footballer(String name, int age, double stamina, this.goalsScored) : super(name, age, stamina);

  @override
  void train() {
    print("$name is training on the football field.");
  }

  @override
  void rest() {
    print("$name is resting after a football match.");
  }

  @override
  void compete() {
    print("$name is competing in a football match.");
  }

  @override
  void hydrate() {
    print("$name is drinking water during halftime.");
  }

  @override
  String statistics() {
    return "$name has scored $goalsScored goals!";
  }
}

// A concrete implementation for a Cricketer
class Cricketer extends Sportsperson {
  int runsScored;

  Cricketer(String name, int age, double stamina, this.runsScored) : super(name, age, stamina);

  @override
  void train() {
    print("$name is training in the nets.");
  }

  @override
  void rest() {
    print("$name is resting after a cricket game.");
  }

  @override
  void compete() {
    print("$name is competing in a cricket match.");
  }

  @override
  void hydrate() {
    print("$name is drinking an energy drink during a drinks break.");
  }

  @override
  String statistics() {
    return "$name has scored $runsScored runs!";
  }
}

void main() {
  Footballer leo = Footballer("Leo Messi", 35, 90.5, 700);
  leo.introduce();
  leo.train();
  print(leo.statistics());

  Cricketer virat = Cricketer("Virat Kohli", 33, 92.0, 12000);
  virat.introduce();
  virat.train();
  print(virat.statistics());
}