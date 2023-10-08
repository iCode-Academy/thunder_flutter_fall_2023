abstract class Vehicle{
  double speed;
  double fuel;
  Vehicle(this.speed, this.fuel);

  void accelerate();
  void brake();
  void fuelEfficiency();
}

class Car extends Vehicle {
  Car(double speed, double fuel) : super(speed, fuel);

  @override
  void accelerate() {
    speed += 10;
    fuel -= 5;
  }

  @override
  void brake() {
    speed -= 10;
    fuel -= 5;
  }

  @override
  void fuelEfficiency() {
    print("Fuel efficiency: ${speed / fuel}");
  }
}

class Bike extends Vehicle {
  Bike(double speed, double fuel) : super(speed, fuel);

  @override
  void accelerate() {
    speed += 5;
    fuel -= 2;
  }

  @override
  void brake() {
    speed -= 5;
    fuel -= 2;
  }

  @override
  void fuelEfficiency() {
    print("Fuel efficiency: ${speed / fuel}");
  }
}

class Bus extends Vehicle {
  Bus(double speed, double fuel) : super(speed, fuel);

  @override
  void accelerate() {
    speed += 2;
    fuel -= 10;
  }

  @override
  void brake() {
    speed -= 2;
    fuel -= 10;
  }

  @override
  void fuelEfficiency() {
    print("Fuel efficiency: ${speed / fuel}");
  }
}

void main(){
  final Car car = Car(100, 100);
  car.accelerate();
  car.brake();
  car.fuelEfficiency();

  final Bike bike = Bike(50, 50);
  bike.accelerate();
  bike.brake();
  bike.fuelEfficiency();

  final Bus bus = Bus(20, 20);
  bus.accelerate();
  bus.brake();
  bus.fuelEfficiency();
}