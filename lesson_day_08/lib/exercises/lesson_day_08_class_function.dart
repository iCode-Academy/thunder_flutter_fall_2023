void main() {
  print('Class functions');
  final Insects fly = Insects('Yalaa', 6);
  print(fly);
  fly.changeName('Baasnii yalaa');
  print(fly.hasManyFeet());
}

class Insects {
  String name;
  int feet;

  Insects(this.name, this.feet);

  void changeName(String name) {
    this.name = name;
  }

  bool hasManyFeet() {
    return feet > 4;
  }

  @override
  String toString() {
    return 'The Insects is $name and has $feet feet.';
  }
}
