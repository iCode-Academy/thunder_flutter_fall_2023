abstract class Product {
  int id;
  String name;
  double price;
  Product(this.id, this.name, this.price);
  void displayDetails();
  void category();
}

class Electronics extends Product {
  Electronics(int id, String name, double price) : super(id, name, price);

  @override
  void displayDetails() {
    print("ID: $id, Name: $name, Price: $price");
  }

  @override
  void category() {
    print("Category: Electronics");
  }
}

class Clothing extends Product {
  Clothing(int id, String name, double price) : super(id, name, price);

  @override
  void displayDetails() {
    print("ID: $id, Name: $name, Price: $price");
  }

  @override
  void category() {
    print("Category: Clothing");
  }
}

class Groceries extends Product {
  Groceries(int id, String name, double price) : super(id, name, price);

  @override
  void displayDetails() {
    print("ID: $id, Name: $name, Price: $price");
  }

  @override
  void category() {
    print("Category: Groceries");
  }
}

void main(){
  final Electronics electronics = Electronics(1, "Laptop", 1000);
  electronics.displayDetails();  // Should print "ID: 1, Name: Laptop, Price: 1000"
  electronics.category();  // Should print "Category: Electronics"
  
  final Clothing clothing = Clothing(2, "T-Shirt", 20);
  clothing.displayDetails();  // Should print "ID: 2, Name: T-Shirt, Price: 20"
  clothing.category();  // Should print "Category: Clothing"
  
  final Groceries groceries = Groceries(3, "Rice", 10);
  groceries.displayDetails();  // Should print "ID: 3, Name: Rice, Price: 10"
  groceries.category();  // Should print "Category: Groceries"
}