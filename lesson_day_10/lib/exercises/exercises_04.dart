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
  print('Car is accelerating.');
  car.accelerate();
  print('Car is speed: ${car.speed}');
  print('Car is braking');
  car.brake();
  print('Car is speed: ${car.speed}');
  car.fuelEfficiency();

  final Bike bike = Bike(50, 50);
  print('Bike is accelerating');
  bike.accelerate();
  print('Bike is speed: ${bike.speed}');
  print('Bike is braking');
  bike.brake();
  print('Bike is speed: ${bike.speed}');
  bike.fuelEfficiency();

  final Bus bus = Bus(20, 20);
  print('Bus is accelerating');
  print('Bus is speed: ${bus.speed}');
  bus.accelerate();
  print('Bus is braking');
  print('Bus is speed: ${bus.speed}');
  bus.brake();
  bus.fuelEfficiency();
}