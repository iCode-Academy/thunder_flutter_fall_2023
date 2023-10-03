class Product {
  String name;
  double price;
  int stock;

  Product(this.name, this.price, this.stock);

  double calculateTotalCost(int units) {
    return units * price;
  }

  bool isInStock() {
    return stock > 0;
  }
}

void main(){
  // create 3 test here
  final Product product = Product("iPhone 12", 799.99, 10);

  print(product.name);
  print(product.price);
  print(product.stock);
  print(product.isInStock());
  print(product.calculateTotalCost(5));

  final Product product2 = Product("iPhone 12 Pro", 999.99, 5);
  print(product2.name);
  print(product2.price);
  print(product2.stock);
  print(product2.isInStock());
  print(product2.calculateTotalCost(5));

  final Product product3 = Product("iPhone 12 Pro Max", 1099.99, 0);
  print(product3.name);
  print(product3.price);
  print(product3.stock);
  print(product3.isInStock());
  print(product3.calculateTotalCost(5));
}