class Student {
  String name;
  int grade;

  Student(this.name, this.grade);

  Student.freshman(String name) : this(name, 1);

  printStudentProfile() {
    print('name: $name, grade: $grade');
  }

  @override
  String toString() {
    return 'Student{name: $name, grade: $grade}';
  }
}

void main() {
  print('Student Class with Redirecting Constructors');
  final Student student = Student('John', 30);
  print(student.name);
  print(student.grade);
  print(student);
  print(student.printStudentProfile());
  final Student student2 = Student('Khangai', 41);
  print(student2.name);
  print(student2.grade);
  print(student2);
  print(student2.printStudentProfile());
  final Student student3 = Student.freshman('Khangai');
  print(student3.name);
  print(student3.grade);
  print(student3);
  print(student3.printStudentProfile());
}
