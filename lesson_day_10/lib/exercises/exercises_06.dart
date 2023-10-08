abstract class Media {
  String title;
  int duration;
  Media(this.title, this.duration);

  void play();
  void stop();
}

class Song extends Media {
  String artist;
  Song(String title, int duration, this.artist) : super(title, duration);

  @override
  void play() {
    print("Playing $title by $artist");
  }

  @override
  void stop() {
    print("Stopped $title by $artist");
  }
}

class Movie extends Media {
  String director;
  Movie(String title, int duration, this.director) : super(title, duration);

  @override
  void play() {
    print("Playing $title by $director");
  }

  @override
  void stop() {
    print("Stopped $title by $director");
  }
}

void main(){
  final Song song = Song("Bohemian Rhapsody", 60, "Queen");
  song.play();  // Should print "Playing Bohemian Rhapsody by Queen"
  song.stop();  // Should print "Stopped Bohemian Rhapsody by Queen"

  final Movie movie = Movie("The Shawshank Redemption", 120, "Frank Darabont");
  movie.play();  // Should print "Playing The Shawshank Redemption by Frank Darabont"
  movie.stop();  // Should print "Stopped The Shawshank Redemption by Frank Darabont"
}