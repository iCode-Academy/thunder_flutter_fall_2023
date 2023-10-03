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

void main(){
  // create 3 test here
  final Movie movie = Movie("The Shawshank Redemption", "Drama", 9.3);

  print(movie.title);
  print(movie.genre);
  print(movie.rating);
  print(movie.isHighlyRated());
  movie.watch();

  final Movie movie2 = Movie("The Godfather", "Crime", 9.2);
  print(movie2.title);
  print(movie2.genre);
  print(movie2.rating);
  print(movie2.isHighlyRated());
  movie2.watch();

  final Movie movie3 = Movie("The Dark Knight", "Action", 9.0);
  print(movie3.title);
  print(movie3.genre);
  print(movie3.rating);
  print(movie3.isHighlyRated());
  movie3.watch();
  

}