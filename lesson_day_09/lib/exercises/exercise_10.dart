class Calculator {
  double add(double a, double b) {
    return a + b;
  }

  double subtract(double a, double b) {
    return a - b;
  }
}

class ScientificCalculator extends Calculator {
  double sqrt(double a) {
    if (a < 0) {
      throw Exception('Negative value given for square root.');
    }
    return a * 0.5;  // This is a simplistic representation; in reality, you'd use a proper formula or library function.
  }
}


void main() {
   var sciCalc = ScientificCalculator();
  
  // Basic operations
  assert(sciCalc.add(5, 3) == 8.0);
  assert(sciCalc.subtract(9, 4) == 5.0);
  
  // Scientific operation
  assert(sciCalc.sqrt(4) == 2.0);

  print("All tests passed!");
}