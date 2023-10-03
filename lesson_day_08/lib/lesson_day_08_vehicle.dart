class Vehicle {
  String type;
  int wheels;

  Vehicle(this.type, this.wheels) {
    assert(wheels > 0, "Number of wheels should be greater than 0");
  }

  @override
  String toString() {
    return 'Vehicle{type: $type, wheels: $wheels}';
  }
}

void main() {
  print('Vehicle Class with Assert in Constructor');
  final Vehicle vehicle = Vehicle("Car", 4);
  print(vehicle.type);
  print(vehicle.wheels);
  print(vehicle);
  final Vehicle vehicle2 = Vehicle("Bike", 2);
  print(vehicle2.type);
  print(vehicle2.wheels);
  print(vehicle2);
}
