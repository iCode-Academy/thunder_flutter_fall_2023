import 'dart:math';
class Point {
  double x, y;

  Point(this.x, this.y);

  void moveTo(double newX, double newY) {
    x = newX;
    y = newY;
    print("Moved to ($x, $y)");
  }

  double distanceFromOrigin() {
    return sqrt(x*x + y*y);
  }
}

void main(){
  print('Exercise Point Class');
  final Point point = Point(10.0, 20.0);
  print(point.x);
  print(point.y);
  print(point.distanceFromOrigin());
  point.moveTo(100.0, 200.0);
  print(point.x);
  print(point.y);
  print(point.distanceFromOrigin());
  print(point);
  final Point point2 = Point(1000.0, 2000.0);
  print(point2.x);
  print(point2.y);
  print(point2.distanceFromOrigin());
  point2.moveTo(10000.0, 20000.0);
  print(point2.x);
  print(point2.y);
  print(point2.distanceFromOrigin());
  print(point2);
}