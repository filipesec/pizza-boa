//classe abstrata base para todos os produtos
abstract class Product {
  final String name;
  final double price;

  const Product(this.name, this.price);

  String getName() => name;
  double getPrice() => price;
}

//interface para implementar calorias em pizzas e bebidas
abstract class Nutrition {
  double getCalories();
}
