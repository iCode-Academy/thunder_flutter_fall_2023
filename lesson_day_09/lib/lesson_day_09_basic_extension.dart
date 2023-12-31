class Parent {
  void show() {
    print("I'm from Parent class");
  }
}

class Child extends Parent {
  void display() {
    print("I'm from Child class");
  }
}

void main() {
  final Parent parent = Parent();
  parent.show(); // Only from Parent

  final Child child = Child();
  child.show();     // From Parent
  child.display();  // From Child

  // parent.display() // It is not possible
}