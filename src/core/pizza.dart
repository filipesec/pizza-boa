import 'product.dart';

abstract class Pizza extends Product implements Nutrition {
  final double _calories;

  const Pizza(String name, double price, this._calories) : super(name, price);

  @override
  double getCalories() => _calories;
}

//pizzas fixas  MARGHERITA | HAWAIIAN PIZZA | SALAMI PIZZA
class MargheritaPizza extends Pizza {
  const MargheritaPizza() : super('Margherita', 10.0, 1104);
}

class HawaiianPizza extends Pizza {
  const HawaiianPizza() : super('Hawaiian Pizza', 11.0, 1024);
}

class SalamiPizza extends Pizza {
  const SalamiPizza() : super('Salami Pizza', 12.0, 1160);
}

//decorator base para criação de pizzas personalizadas
abstract class PizzaDecorator extends Pizza {
  final Pizza _pizza;

  PizzaDecorator(this._pizza)
    : super(_pizza.getName(), _pizza.getPrice(), _pizza.getCalories());

  @override
  String getName() => _pizza.getName();
  @override
  double getPrice() => _pizza.getPrice();
  @override
  double getCalories() => _pizza.getCalories();
}

//ingredientes
class Cheese extends PizzaDecorator {
  Cheese(super.pizza);

  @override
  String getName() => "${_pizza.getName()} + Queijo";
  @override
  double getPrice() => _pizza.getPrice() + 0.69;
  @override
  double getCalories() => _pizza.getCalories() + 92;
}

class Ham extends PizzaDecorator {
  Ham(super.pizza);

  @override
  String getName() => "${_pizza.getName()} + Presunto";
  @override
  double getPrice() => _pizza.getPrice() + 0.99;
  @override
  double getCalories() => _pizza.getCalories() + 35;
}

class Onion extends PizzaDecorator {
  Onion(super.pizza);

  @override
  String getName() => "${_pizza.getName()} + Cebola";
  @override
  double getPrice() => _pizza.getPrice() + 0.69;
  @override
  double getCalories() => _pizza.getCalories() + 22;
}

class Pineapple extends PizzaDecorator {
  Pineapple(super.pizza);

  @override
  String getName() => "${_pizza.getName()} + Abacaxi";
  @override
  double getPrice() => _pizza.getPrice() + 0.79;
  @override
  double getCalories() => _pizza.getCalories() + 24;
}

//tamanho
class FamilySize extends PizzaDecorator {
  FamilySize(super.pizza);

  @override
  String getName() => "${_pizza.getName()} + Tamanho Família";
  @override
  double getPrice() => _pizza.getPrice() + 4.15;
  @override
  double getCalories() => _pizza.getCalories() * 1.95;
}
