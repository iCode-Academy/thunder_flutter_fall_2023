class Printer {
  void printData() {
    print("Printing data");
  }
}

class ColorPrinter extends Printer {
  void printInColor() {
    print("Printing in color");
  }
}

void main() {
  final ColorPrinter cp = ColorPrinter();
  cp.printData();      // Should print "Printing data"
  cp.printInColor();   // Should print "Printing in color"

  final Printer p = Printer();
  p.printData();       // Should print "Printing data"
  // p.printInColor(); // Should give an error

  final ColorPrinter cp2 = Printer() as ColorPrinter;
  cp2.printData();     // Should print "Printing data"
  cp2.printInColor();  // Should print "Printing in color"
}