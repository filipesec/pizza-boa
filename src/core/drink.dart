import 'product.dart';

//classe abstrata base para bebidas
abstract class Drink extends Product implements Nutrition {
  final double _calories;

  //construtor da classe drink e da classe pai(Product)
  const Drink(String name, double price, this._calories) : super(name, price);
  @override
  String getName() => super.getName();
  @override
  double getPrice() => super.getPrice();
  @override
  double getCalories() => _calories;
}
//classes filhas da classe Drink

//limonada
class Lemonade extends Drink {
  const Lemonade() : super('Limonada', 4, 138);
}

//agua
class Water extends Drink {
  const Water() : super('Água sem gás', 2.50, 0);
}

//vinho
class Wine extends Drink {
  const Wine() : super('Vinho', 21, 607);
}
