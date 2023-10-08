import 'dart:math';

abstract class Shape {
  double area();
  double perimeter();
}

class Circle extends Shape {
  double radius;
  Circle(this.radius);
  @override
  double area() {
    return 3.14 * radius * radius;
  }

  @override
  double perimeter() {
    return 2 * 3.14 * radius;
  }
}

class Rectangle extends Shape {
  double length;
  double width;
  Rectangle(this.length, this.width);
  @override
  double area() {
    return length * width;
  }

  @override
  double perimeter() {
    return 2 * (length + width);
  }
}

class Triangle extends Shape {
  double side1;
  double side2;
  double side3;
  Triangle(this.side1, this.side2, this.side3);
  @override
  double area() {
    double s = (side1 + side2 + side3) / 2;
    return sqrt(s * (s - side1) * (s - side2) * (s - side3));
  }

  @override
  double perimeter() {
    return side1 + side2 + side3;
  }
}


void main(){
  final Circle circle = Circle(5);
  print("Circle area: ${circle.area()}");  // Should print "Circle area: 78.5"
  print("Circle perimeter: ${circle.perimeter()}");  // Should print "Circle perimeter: 31.400000000000002"
  
  final Rectangle rectangle = Rectangle(5, 10);
  print("Rectangle area: ${rectangle.area()}");  // Should print "Rectangle area: 50"
  print("Rectangle perimeter: ${rectangle.perimeter()}");  // Should print "Rectangle perimeter: 30"
  
  final Triangle triangle = Triangle(5, 10, 5);
  print("Triangle area: ${triangle.area()}");  // Should print "Triangle area: 11.180339887498949"
  print("Triangle perimeter: ${triangle.perimeter()}");  // Should print "Triangle perimeter: 20"
}