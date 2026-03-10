import 'product.dart';

//classe abstrata base para bebidas
abstract class Drink extends Product implements Nutrition {
  final double calories;

  //construtor da classe drink e da classe pai(Product)
  const Drink(String name, double price, this.calories) : super(name, price);
  @override
  String getName() => name;
  @override
  double getPrice() => price;
  @override
  double getCalories() => calories;
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
