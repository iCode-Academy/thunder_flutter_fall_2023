void main() {
  final Student khangai = Student();
  khangai.name = ' Khangaikhuu';
  khangai.studentId = 'IT283745';
  khangai.grade = 93.5;
  khangai.showStudentInfo();
}

class Student {
  String? name;
  String? studentId;
  double? grade;

  void showStudentInfo() {
    print('The student name is $name. '
        'She has student id: $studentId.'
        ' She has the grade $grade');
  }
}
