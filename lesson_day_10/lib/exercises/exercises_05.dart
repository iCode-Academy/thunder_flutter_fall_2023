abstract class Person {
  String name;
  int age;
  Person(this.name, this.age);

  void details();
}

class Student extends Person {
  String school;
  Student(String name, int age, this.school) : super(name, age);

  @override
  void details() {
    print("Name: $name, Age: $age, School: $school");
  }
}

class Teacher extends Person {
  String subject;
  Teacher(String name, int age, this.subject) : super(name, age);

  @override
  void details() {
    print("Name: $name, Age: $age, Subject: $subject");
  }
}

void main(){
  final Student student = Student("John", 20, "ABC School");
  student.details();  // Should print "Name: John, Age: 20, School: ABC School"
  
  final Teacher teacher = Teacher("Jane", 30, "Mathematics");
  teacher.details();  // Should print "Name: Jane, Age: 30, Subject: Mathematics"
}
