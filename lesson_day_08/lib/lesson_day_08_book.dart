class Book {
  String? title;
  String? author;

  Book(this.title, this.author);

  Book.guest() {
    title = "Unknown";
    author = "Guest";
  }

  @override
  String toString() {
    return 'Book{title: $title, author: $author}';
  }
}

void main() {
  print('Book Class with Named Constructors');
  final Book book = Book("The Alchemist", "Paulo Coelho");
  print(book.title);
  print(book.author);
  print(book);
  final Book book2 = Book.guest();
  print(book2.title);
  print(book2.author);
  print(book2);
}

int calculate() {
  return 6 * 7;
}
