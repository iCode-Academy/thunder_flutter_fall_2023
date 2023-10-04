void main() {
  print('Lesson day 08: named parameter constructor');
  final Point origin = Point(x: 0.0, y: 0.0);
  print(origin);
  // print('The Origin of the Point is : x = ${origin.x} y = ${origin.y}');
  final Rectangle quadrat = Rectangle(a: 5.0, b: 5.0);
  print(quadrat);
  final Text text =
      Text('Hello World', style: 'Theme.of(context).textTheme.headlineMedium');
}

class Text {
  String text;
  String style;

  Text(this.text, {required this.style});
}

class Point {
  double x;
  double y;

  Point({required this.x, required this.y});

  @override
  String toString() {
    return 'The Origin of the Point is : x = $x y = $y';
  }
}

class Rectangle {
  double a;
  double b;

  Rectangle({required this.a, required this.b});

  @override
  String toString() {
    return 'The side of the rectange is $a, and $b';
  }
}
