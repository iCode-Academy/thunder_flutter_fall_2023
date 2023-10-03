class Shape {
  String type;

  Shape._(this.type);

  static Shape createCircle() {
    return Shape._('Circle');
  }

  @override
  String toString() {
    return 'Shape{type: $type}';
  }
}

void main() {
  print('Shape Class with Private Constructor and Static Method');
  final Shape shape = Shape.createCircle();
  print(shape.type);
  print(shape);
}
