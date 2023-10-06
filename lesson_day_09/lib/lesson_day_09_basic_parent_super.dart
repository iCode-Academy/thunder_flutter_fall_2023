class Parent {
  void show() {
    print("I'm from Parent class");
  }
}

class Child extends Parent {
  @override
  void show() {
    super.show();  // Call Parent's method
    print("Then, I'm from Child class");
  }
}

void main() {
  final Child child = Child();
  child.show();
}