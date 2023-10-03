class TravelDestination {
  String city;
  String country;
  List<String> attractions;

  TravelDestination(this.city, this.country, this.attractions);

  void displayAttractions() {
    print("Top attractions in $city:");
    for (var attraction in attractions) {
      print("- $attraction");
    }
  }

  bool isAttractionPresent(String attraction) {
    return attractions.contains(attraction);
  }
}

void main(){
  // Tests here
  final TravelDestination destination = TravelDestination("Paris", "France", ["Eiffel Tower", "Louvre Museum", "Notre Dame Cathedral"]);
  print(destination.city);
  print(destination.country);
  print(destination.attractions);
  destination.displayAttractions();
  print(destination.isAttractionPresent("Eiffel Tower"));
  print(destination.isAttractionPresent("Louvre Museum"));
  print(destination.isAttractionPresent("Notre Dame Cathedral"));
  print(destination.isAttractionPresent("Arc de Triomphe"));
  print(destination.isAttractionPresent("Champs-Elysees"));
  print(destination.isAttractionPresent("Palace of Versailles"));
  print(destination.isAttractionPresent("Musee d'Orsay"));
  print(destination.isAttractionPresent("Centre Pompidou"));
  print(destination.isAttractionPresent("Musee de l'Orangerie"));

}