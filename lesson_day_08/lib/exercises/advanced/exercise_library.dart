class Library {
  String name;
  List<String> books;

  Library(this.name, this.books);

  void addBook(String bookTitle) {
    books.add(bookTitle);
    print("$bookTitle added to the library.");
  }

  bool hasBook(String bookTitle) {
    return books.contains(bookTitle);
  }
}

void main(){
  // create 3 test here
  final Library library = Library("New York Public Library", ["The Great Gatsby", "The Catcher in the Rye", "The Grapes of Wrath"]);
  print(library.name);
  print(library.books);
  print(library.hasBook("The Great Gatsby"));
  print(library.hasBook("The Catcher in the Rye"));
  print(library.hasBook("The Grapes of Wrath"));
  print(library.hasBook("The Sun Also Rises"));

  library.addBook("The Sun Also Rises");
  print(library.name);
  print(library.books);
  print(library.hasBook("The Great Gatsby"));

  final Library library2 = Library("Brooklyn Public Library", ["The Great Gatsby", "The Catcher in the Rye", "The Grapes of Wrath"]);
  print(library2.name);
  print(library2.books);
  print(library2.hasBook("The Great Gatsby"));
  print(library2.hasBook("The Catcher in the Rye"));
  print(library2.hasBook("The Grapes of Wrath"));

}