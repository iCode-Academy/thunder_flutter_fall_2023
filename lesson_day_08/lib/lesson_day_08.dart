void main(){
  print('Lesson Day - 08 - class constructor');
  final Vehicle bicycle = Vehicle('Bicycle', 2); // bicycle object - constructor
  print(bicycle.type);
  // bicycle.type = 'Test';
  print(bicycle.wheels);
  final Vehicle car = Vehicle('Car', 4); //
  print(car.type);
  print(car.wheels);
  final Building mnTower = Building('MN Tower', 20);
  print(mnTower.stock);
  print(mnTower.name);
}

class Building {
  String name;
  int stock;
  Building (this.name, this.stock);
}


class Vehicle {
  String type;
  int wheels;

  Vehicle(this.type,this.wheels);
}