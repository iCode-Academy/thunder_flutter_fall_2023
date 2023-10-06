class Vehicle {
  String color;

  Vehicle(this.color);

  void drive() {
    print("The vehicle is driving");
  }
}

class Bike extends Vehicle {
  Bike(String color) : super(color);

  @override
  void drive() {
    print("The bike is pedaling");
  }
}

void testOverriding() {
  final Bike bike = Bike("Blue");
  assert(bike.color == "Blue");
  bike.drive();  // Should print "The bike is pedaling"

  final Vehicle vehicle = Vehicle("Red");
  assert(vehicle.color == "Red");
  vehicle.drive();  // Should print "The vehicle is driving"

  final Bike mountainBike = Bike("Green");
  assert(mountainBike.color == "Green");
  mountainBike.drive();  // Should print "The bike is pedaling"
  
}