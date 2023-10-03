class Rectangle {
  double width;
  double height;

  Rectangle({this.width = 0.0, this.height = 0.0});

  double get area => width * height;

  void printInfo() {
    print('width: $width, height: $height');
  }

  double calculateLength() {
    return width * 2 + height * 2;
  }

  @override
  String toString() {
    return 'Rectangle{width: $width, height: $height}';
  }
}

void main() {
  print('Rectangle Class with Optional Parameters');
  final Rectangle rectangle = Rectangle(width: 10.0, height: 20.0);
  print(rectangle.width);
  print(rectangle.height);
  print(rectangle.area);
  rectangle.printInfo();
  print(rectangle.calculateLength());
  final Rectangle rectangle2 = Rectangle();
  print(rectangle2.width);
  print(rectangle2.height);
  print(rectangle2.area);
  rectangle2.printInfo();
  print(rectangle2.calculateLength());
}
