class Student {
  String name;
  int grade;

  Student(this.name, this.grade);

  void promote() {
    grade++;
    print("$name is now in grade $grade.");
  }

  bool isHigherGradeThan(int gradeToCompare) {
    return grade > gradeToCompare;
  }
}

void main(){
  // write 3 classes here
  print('Exercise Student Class');
  final Student student = Student('John', 11);
  student.promote();
  print(student.isHigherGradeThan(10));
  print(student.isHigherGradeThan(11));

  // another example
  final Student student2 = Student('Jane', 12);
  student2.promote();
  print(student2.isHigherGradeThan(10));
  print(student2.isHigherGradeThan(12));

  // another example
  final Student student3 = Student('Jack', 10);
  student3.promote();
  print(student3.isHigherGradeThan(10));
  print(student3.isHigherGradeThan(9));
}