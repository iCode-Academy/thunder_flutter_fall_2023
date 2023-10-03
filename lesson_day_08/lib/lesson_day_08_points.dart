class Point {
  double x, y;

  Point(this.x, this.y);

  set setX(double x) => this.x = x;
  set setY(double y) => this.y = y;

  get getX => x;
  get getY => y;

  factory Point.origin() {
    return Point(0, 0);
  }

  @override
  String toString() {
    return 'Point{x: $x, y: $y}';
  }
}

void main() {
  print('Point Class with Factory Constructor');
  final Point point = Point(10.0, 20.0);
  print(point.x);
  print(point.y);
  point.setX = 100.0;
  point.setY = 200.0;
  print(point.getX);
  print(point.getY);
  print(point);
}
