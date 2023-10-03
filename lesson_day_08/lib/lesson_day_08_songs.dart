class Song {
  final String _title;
  final String _artist;

  const Song(this._title, this._artist);

  get getTitle => _title;
  get getArtist => _artist;
  set setTitle(String title) => title = title;
  set setArtist(String artist) => artist = artist;

  showArtist() {
    print(_artist);
  }

  showTitle() {
    print(_title);
  }

  @override
  String toString() {
    return 'Song{title: $_title, artist: $_artist}';
  }
}

void main() {
  print('Song Class with Constant Constructor');
  final Song song = Song("The Alchemist", "Paulo Coelho");
  print(song.getTitle);
  print(song.getArtist);
  print(song);

  final Song song2 = Song("The Alchemist", "Paulo Coelho");
  print(song2.getTitle);
  print(song2.getArtist);
  print(song2);
}
