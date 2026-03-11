//classe abstrata base para todos os produtos
abstract class Product {
  final String _name;
  final double _price;

  const Product(this._name, this._price);

  String getName() => _name;
  double getPrice() => _price;
}

//interface para implementar calorias em pizzas e bebidas
abstract class Nutrition {
  double getCalories();
}
