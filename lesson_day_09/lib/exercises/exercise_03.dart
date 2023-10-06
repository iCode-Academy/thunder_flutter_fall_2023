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
  final Car car = Car("Green");
  assert(car.color == "Green");
}