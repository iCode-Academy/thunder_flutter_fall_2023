class Shape {
  String type;

  Shape(this.type);

  void describe() {
    print("This is a $type.");
  }

  bool isTypeOf(String shapeType) {
    return type == shapeType;
  }
}

void main(){
  // write 3 classes here
  print('Exercise Shape Class');
  final Shape shape = Shape('Square');
  shape.describe();
  print(shape.isTypeOf('Square'));
  print(shape.isTypeOf('Circle'));

  // another example
  final Shape shape2 = Shape('Circle');
  shape2.describe();
  print(shape2.isTypeOf('Square'));
  print(shape2.isTypeOf('Circle'));

  // another example
  final Shape shape3 = Shape('Triangle');
  shape3.describe();
  print(shape3.isTypeOf('Square'));
  print(shape3.isTypeOf('Triangle'));
}