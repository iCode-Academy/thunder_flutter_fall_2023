void main() {
  print('Dart class named constructor');
  final Building mnTower = Building('Mn tower', 20);
  print(mnTower.stock);
  print(mnTower.name);

  final Building newBuilding = Building.createBuilding('New Building', 10);
  print(newBuilding.name);
  print(newBuilding.stock);

  final Building defaultBuilding =
      Building.createDefaultBuilding('Default New Building');
  print(defaultBuilding.stock);
  print(defaultBuilding.name);
}

class Building {
  String name;
  int stock;

  Building.createBuilding(this.name, this.stock); // named constructor

  // named constructor with default parameter stock = 10
  Building.createDefaultBuilding(this.name, [this.stock = 10]);

  Building(this.name, this.stock); // constructor
}
