class Book {
  String title;
  String author;

  Book(this.title, this.author);

  void printDetails() {
    print("Title: $title, Author: $author");
  }

  bool isWrittenBy(String authorName) {
    return author == authorName;
  }
}

void main(){
  // write 3 classes here
  print('Exercise Book Class');
  final Book book = Book('The Alchemist', 'Paulo Coelho');
  book.printDetails();
  print(book.isWrittenBy('Paulo Coelho'));
  print(book.isWrittenBy('J. K. Rowling'));

  // another example
  final Book book2 = Book('Harry Potter', 'J. K. Rowling');
  book2.printDetails();
  print(book2.isWrittenBy('Paulo Coelho'));
  print(book2.isWrittenBy('J. K. Rowling'));

  // another example
  final Book book3 = Book('The Witcher', 'Andrzej Sapkowski');
  book3.printDetails();
  print(book3.isWrittenBy('Paulo Coelho'));
  print(book3.isWrittenBy('J. K. Rowling'));
  
}