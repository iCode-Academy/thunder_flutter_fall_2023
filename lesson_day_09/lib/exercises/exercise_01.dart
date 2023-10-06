class Vehicle {
  String color;

  Vehicle(this.color);

  void drive() {
    print("The vehicle is driving");
  }
}

class Car extends Vehicle {
  Car(String color) : super(color);

  void honk() {
    print("Car honks!");
  }
}

void main() {
  final Car car = Car("Red");
  assert(car.color == "Red");
  car.drive();  // Should print "The vehicle is driving"
  car.honk();   // Should print "Car honks!"

  final Vehicle vehicle = Vehicle("Blue");
  assert(vehicle.color == "Blue");
  vehicle.drive();  // Should print "The vehicle is driving"
  // vehicle.honk();   // Should not compile

  // final Car car2 = Vehicle("Green");  // Should not compile

  // final Vehicle vehicle2 = Car("Yellow");  // Should not compile

  // final Car car3 = Vehicle("Green") as Car;  // Should not compile

  // 2 more examples
  final Car lamborghini = Car("Yellow");
  assert(lamborghini.color == "Yellow");
  lamborghini.drive();  // Should print "The vehicle is driving"
  lamborghini.honk();   // Should print "Car honks!"

  final Vehicle vehicle2 = Vehicle("Green");
  assert(vehicle2.color == "Green");
  vehicle2.drive();  // Should print "The vehicle is driving"

  


}