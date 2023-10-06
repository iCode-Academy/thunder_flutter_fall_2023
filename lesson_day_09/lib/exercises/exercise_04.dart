class Person {
  void greet() {
    print("Hello!");
  }
}

class Employee extends Person {
  @override
  void greet() {
    super.greet();
    print("I'm an employee");
  }
}

void main() {
  final Employee emp = Employee();
  emp.greet();  // Should print "Hello!" followed by "I'm an employee"

  final Person person = Person();
  person.greet();  // Should print "Hello!"

  final Employee emp2 = Person() as Employee;
  emp2.greet();  // Should print "Hello!" followed by "I'm an employee"
  
}