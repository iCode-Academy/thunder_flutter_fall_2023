class Pizza {
  String size;
  List<String> toppings;

  Pizza(this.size, [this.toppings = const []]);

  void addTopping(String topping) {
    toppings.add(topping);
    print("$topping added!");
  }

  double calculatePrice() {
    double basePrice = (size == "large") ? 10.0 : 6.0;
    return basePrice + (toppings.length * 0.5);
  }
}

void main() {
  // create 3 test here
  final Pizza pizza = Pizza("large", ["cheese", "pepperoni", "mushrooms"]);
  print(pizza.size);
  print(pizza.toppings);
  print(pizza.calculatePrice());
  pizza.addTopping("olives");
  print(pizza.size);
  print(pizza.toppings);
  print(pizza.calculatePrice());

  final Pizza pizza2 = Pizza("medium", ["cheese", "pepperoni"]);
  print(pizza2.size);
  print(pizza2.toppings);
  print(pizza2.calculatePrice());
  pizza2.addTopping("mushrooms");
  print(pizza2.size);
  print(pizza2.toppings);
  print(pizza2.calculatePrice());

  final Pizza pizza3 = Pizza("small");
  print(pizza3.size);
  print(pizza3.toppings);
  print(pizza3.calculatePrice());
  pizza3.addTopping("cheese");
  print(pizza3.size);
  print(pizza3.toppings);
  print(pizza3.calculatePrice());
}