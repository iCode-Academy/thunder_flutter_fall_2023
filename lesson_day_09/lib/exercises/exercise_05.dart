class Shape {
  String name;
  Shape(this.name);
}

class Circle extends Shape {
  double radius;

  Circle(this.radius) : super('') {
    name = "Circle";
  }
}

void main() {
  final Circle circle = Circle(5.0);
  assert(circle.name == "Circle");
  assert(circle.radius == 5.0);

  final Shape shape = Shape("Square");
  assert(shape.name == "Square");

  final Circle circle2 = Circle(10.0);
  assert(circle2.name == "Circle");
  assert(circle2.radius == 10.0);
}