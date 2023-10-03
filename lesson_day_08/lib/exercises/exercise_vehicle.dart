class Vehicle {
  String type;
  int wheels;

  Vehicle(this.type, this.wheels);

  void printType() {
    print("This vehicle is a $type.");
  }

  bool hasMoreWheelsThan(int count) {
    return wheels > count;
  }
}

void main(){
  // write 3 classes here
  print('Exercise Vehicle Class');
  final Vehicle vehicle = Vehicle('Car', 4);
  vehicle.printType();
  print(vehicle.hasMoreWheelsThan(3));
  print(vehicle.hasMoreWheelsThan(5));

  // another example
  final Vehicle vehicle2 = Vehicle('Bike', 2);
  vehicle2.printType();
  print(vehicle2.hasMoreWheelsThan(3));
  print(vehicle2.hasMoreWheelsThan(1));

  // another example
  final Vehicle vehicle3 = Vehicle('Truck', 6);
  vehicle3.printType();
  print(vehicle3.hasMoreWheelsThan(3));
  print(vehicle3.hasMoreWheelsThan(7));
}