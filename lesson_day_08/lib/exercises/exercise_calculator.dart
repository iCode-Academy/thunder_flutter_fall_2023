class Calculator {
  double value;

  Calculator(this.value);

  double add(double number) {
    value += number;
    return value;
  }

  double subtract(double number) {
    value -= number;
    return value;
  }
}

void main(){
  print('Exercise Calculator Class');
  final Calculator calculator = Calculator(10.0);
  print(calculator.value);
  print(calculator.add(20.0));
  print(calculator.subtract(5.0));
  print(calculator);
  final Calculator calculator2 = Calculator(100.0);
  print(calculator2.value);
  print(calculator2.add(200.0));
  print(calculator2.subtract(50.0));
  print(calculator2);
}