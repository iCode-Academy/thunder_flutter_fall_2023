abstract class FoodMenu {
  String name;
  List<String> ingredients;
  FoodMenu(this.name, this.ingredients);
  
  bool isVegetarian();
  double calories();
}

class Pizza extends FoodMenu {
  Pizza(String name, List<String> ingredients) : super(name, ingredients);
  
  @override
  bool isVegetarian() {
    return ingredients.every((ingredient) => ingredient != "Meat");
  }
  
  @override
  double calories() {
    return ingredients.length * 100.0;
  }
}

class Salad extends FoodMenu {
  Salad(String name, List<String> ingredients) : super(name, ingredients);
  
  @override
  bool isVegetarian() {
    return ingredients.every((ingredient) => ingredient != "Meat");
  }
  
  @override
  double calories() {
    return ingredients.length * 50.0;
  }
}

class Burger extends FoodMenu {
  Burger(String name, List<String> ingredients) : super(name, ingredients);
  
  @override
  bool isVegetarian() {
    return ingredients.every((ingredient) => ingredient != "Meat");
  }
  
  @override
  double calories() {
    return ingredients.length * 200.0;
  }
}

void main(){
  final Pizza pizza = Pizza("Pepperoni Pizza", ["Dough", "Tomato Sauce", "Cheese", "Pepperoni"]);
  print("Is ${pizza.name} vegetarian? ${pizza.isVegetarian()}");  // Should print "Is Pepperoni Pizza vegetarian? false"
  print("Calories in ${pizza.name}: ${pizza.calories()}");  // Should print "Calories in Pepperoni Pizza: 400"
  
  final Salad salad = Salad("Greek Salad", ["Lettuce", "Tomato", "Cucumber", "Olives"]);
  print("Is ${salad.name} vegetarian? ${salad.isVegetarian()}");  // Should print "Is Greek Salad vegetarian? true"
  print("Calories in ${salad.name}: ${salad.calories()}");  // Should print "Calories in Greek Salad: 200"
  
  final Burger burger = Burger("Cheeseburger", ["Bun", "Cheese", "Beef Patty"]);
  print("Is ${burger.name} vegetarian? ${burger.isVegetarian()}");  // Should print "Is Cheeseburger vegetarian? false"
  print("Calories in ${burger.name}: ${burger.calories()}");  // Should print "Calories in Cheeseburger: 600"
}