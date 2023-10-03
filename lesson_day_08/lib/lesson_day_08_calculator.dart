class Calculator {
  double value;

  Calculator([this.value = 0.0]);
  @override
  String toString() {
    return 'Calculator{value: $value}';
  }
}

void main() {
  print('Calculator Class with Initial Values');
  final Calculator calculator = Calculator(10.0);
  print(calculator.value);
  print(calculator);
}
