class Movie {
  String title;
  String genre;
  double rating;

  Movie(this.title, this.genre, this.rating);

  void watch() {
    print("Now watching $title - $genre. Rated: $rating/10");
  }

  bool isHighlyRated() {
    return rating > 8.0;
  }
}