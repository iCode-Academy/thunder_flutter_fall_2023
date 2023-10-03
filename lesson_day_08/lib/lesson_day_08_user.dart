class User {
  String name;
  int age;

  User(this.name, this.age);

  @override
  String toString() {
    return 'User{name: $name, age: $age}';
  }
}

void main() {
  print('Simple User Class with Default Constructor');
  final User user = User('John', 30);
  print(user.name);
  print(user.age);
  print(user);
  final User user2 = User('Khangai', 41);
  print(user2.name);
  print(user2.age);
  print(user2);
}

int calculate() {
  return 6 * 7;
}
