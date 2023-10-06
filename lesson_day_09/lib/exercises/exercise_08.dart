class Building {
  int _floors;

  Building(this._floors);

  int get floors => _floors;

  set floors(int value) {
    if (value > 0) {
      _floors = value;
    }
  }
}

class Apartment extends Building {
  int unitsPerFloor;

  Apartment(this.unitsPerFloor) : super(0);
}

void testPropertiesAndGettersSetters() {
  final Apartment apt = Apartment(3);
  apt.floors = 5;
  assert(apt.floors == 5);
  assert(apt.unitsPerFloor == 3);

  final Building building = Building(10);
  assert(building.floors == 10);

  final Apartment apt2 = Apartment(5);
  apt2.floors = 10;
  assert(apt2.floors == 10);
  assert(apt2.unitsPerFloor == 5);
  
}