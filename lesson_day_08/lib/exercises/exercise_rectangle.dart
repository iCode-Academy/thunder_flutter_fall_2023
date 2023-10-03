class Rectangle {
  double width;
  double height;

  Rectangle(this.width, this.height);

  double area() {
    return width * height;
  }

  double perimeter() {
    return 2 * (width + height);
  }
}

void main(){
  print('Rectangle Class with Named Constructor');
  final Rectangle rectangle = Rectangle(10.0, 20.0);
  print(rectangle.width);
  print(rectangle.height);
  print(rectangle.area());
  print(rectangle.perimeter());
  print(rectangle);
  final Rectangle rectangle2 = Rectangle(100.0, 200.0);
  print(rectangle2.width);
  print(rectangle2.height);
  print(rectangle2.area());
  print(rectangle2.perimeter());
  print(rectangle2);
}