class Song {
  String title;
  String artist;

  Song(this.title, this.artist);

  void play() {
    print("Playing '$title' by $artist...");
  }

  bool isByArtist(String artistName) {
    return artist == artistName;
  }
}

void main(){
  // write 3 classes here
  print('Exercise Song Class');
  final Song song = Song('The Alchemist', 'Paulo Coelho');
  song.play();
  print(song.isByArtist('Paulo Coelho'));
  print(song.isByArtist('J. K. Rowling'));

  // another example
  final Song song2 = Song('Harry Potter', 'J. K. Rowling');
  song2.play();
  print(song2.isByArtist('Paulo Coelho'));
  print(song2.isByArtist('J. K. Rowling'));

  // another example
  final Song song3 = Song('The Witcher', 'Andrzej Sapkowski');
  song3.play();
  print(song3.isByArtist('Paulo Coelho'));
  print(song3.isByArtist('J. K. Rowling'));
}