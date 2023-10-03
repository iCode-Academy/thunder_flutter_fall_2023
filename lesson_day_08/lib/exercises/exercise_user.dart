class User {
  String name;
  int age;

  User(this.name, this.age);

  void greet() {
    print("Hello, I'm $name and I'm $age years old.");
  }

  bool isAdult() {
    return age >= 18;
  }
}

void main(){
  print('Exercise User Class');
  final User user = User('John', 30);
  user.greet();
  print(user.isAdult());
  
}