class Gadget {
  void turnOn() {
    print("Gadget turns on");
  }

  void charge() {
    print("Charging gadget");
  }
}

class Smartphone extends Gadget {
  @override
  void turnOn() {
    print("Smartphone turns on");
  }

  @override
  void charge() {
    print("Charging smartphone");
  }
}

void main() {
  final Smartphone phone = Smartphone();
  phone.turnOn();   // Should print "Smartphone turns on"
  phone.charge();   // Should print "Charging smartphone"

  final Gadget gadget = Gadget();
  gadget.turnOn();  // Should print "Gadget turns on"
  gadget.charge();  // Should print "Charging gadget"

  final Smartphone phone2 = Gadget() as Smartphone;
  phone2.turnOn();  // Should print "Smartphone turns on"
  phone2.charge();  // Should print "Charging smartphone"
  
}