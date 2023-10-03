class Pet {
  String name;
  String species;

  Pet(this.name, this.species);

  void play() {
    print("$name is playing around. Such a cute $species!");
  }

  bool isSpecies(String checkSpecies) {
    return species == checkSpecies;
  }
}

void main() {
  // create 3 test here
  final Pet pet = Pet("Mimi", "cat");
  print(pet.name);
  print(pet.species);
  print(pet.isSpecies("cat"));
  pet.play();

  final Pet pet2 = Pet("Mimi2", "cat");
  print(pet2.name);
  print(pet2.species);
  print(pet2.isSpecies("cat"));
  pet2.play();

  final Pet pet3 = Pet("Mimi3", "cat");
  print(pet3.name);
  print(pet3.species);
  print(pet3.isSpecies("cat"));
  pet3.play();
}
