class Computer {
  String brand;
  int ramSize;

  Computer(this.brand, this.ramSize);

  void boot() {
    print("Computer boots up");
  }

  void shutDown() {
    print("Computer shuts down");
  }
}

class Laptop extends Computer {
  int batteryLife;
  bool isTouchScreen;

  Laptop(String brand, int ramSize, this.batteryLife, this.isTouchScreen) : super(brand, ramSize);

  void fold() {
    print("Laptop is folded");
  }
}

void testComplexInheritance() {
  final Laptop laptop = Laptop("Dell", 16, 5, true);
  assert(laptop.brand == "Dell");
  assert(laptop.ramSize == 16);
  assert(laptop.batteryLife == 5);
  assert(laptop.isTouchScreen == true);
  laptop.boot();        // Should print "Computer boots up"
  laptop.shutDown();    // Should print "Computer shuts down"
  laptop.fold();        // Should print "Laptop is folded"

  final Computer computer = Computer("Apple", 8);
  assert(computer.brand == "Apple");
  assert(computer.ramSize == 8);
  computer.boot();      // Should print "Computer boots up"
  computer.shutDown();  // Should print "Computer shuts down"
  //computer.fold();      // Should throw NoSuchMethodError

  final Laptop laptop2 = Computer("HP", 16) as Laptop;
  assert(laptop2.brand == "HP");
  assert(laptop2.ramSize == 16);
  
  laptop2.boot();       // Should print "Computer boots up"
  laptop2.shutDown();   // Should print "Computer shuts down"
  laptop2.fold();       // Should print "Laptop is folded"
}