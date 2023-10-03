class Building {
  String address;
  int floors;

  Building(this.address, this.floors);

  void displayAddress() {
    print("Building is located at $address with $floors floors.");
  }

  bool isTallerThan(int floorCount) {
    return floors > floorCount;
  }
}

void main(){
  // create 3 test here
  final Building building = Building("New York", 10);

  print(building.address);
  print(building.floors);
  print(building.isTallerThan(5));
  building.displayAddress();

  final Building building2 = Building("Brooklyn", 5);
  print(building2.address);
  print(building2.floors);
  print(building2.isTallerThan(5));
  building2.displayAddress();

  final Building building3 = Building("Queens", 3);
  print(building3.address);
  print(building3.floors);
  print(building3.isTallerThan(5));
  building3.displayAddress();
}