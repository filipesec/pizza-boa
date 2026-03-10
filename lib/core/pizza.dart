import 'product.dart';

abstract class Pizza extends Product implements Nutrition {
  final double calories;

  const Pizza(String name, double price, this.calories) : super(name, price);

  @override
  String getName() => name;
  @override
  double getPrice() => price;
  @override
  double getCalories() => calories;
}

//pizzas fixas  MARGHERITA | HAWAIIAN PIZZA | SALAMI PIZZA
class Margherita extends Pizza {
  const Margherita() : super('Margherita', 10.0, 1104);
}

class HawaiianPizza extends Pizza {
  const HawaiianPizza() : super('Hawaiian Pizza', 11.0, 1024);
}

class SalamiPizza extends Pizza {
  const SalamiPizza() : super('Salami Pizza', 12.0, 1160);
}

//decorator base para criação de pizzas personalizadas
abstract class PizzaDecorator extends Pizza {
  final Pizza pizza;

  PizzaDecorator(this.pizza) : super(pizza.name, pizza.price, pizza.calories);

  @override
  String getName() => pizza.getName();
  @override
  double getPrice() => pizza.getPrice();
  @override
  double getCalories() => pizza.getCalories();
}

//ingredientes
class Cheese extends PizzaDecorator {
  Cheese(super.pizza);

  @override
  String getName() => "${pizza.getName()} + Queijo";
  @override
  double getPrice() => pizza.getPrice() + 0.69;
  @override
  double getCalories() => pizza.getCalories() + 92;
}

class Ham extends PizzaDecorator {
  Ham(super.pizza);

  @override
  String getName() => "${pizza.getName()} + Presunto";
  @override
  double getPrice() => pizza.getPrice() + 0.99;
  @override
  double getCalories() => pizza.getCalories() + 35;
}

class Onion extends PizzaDecorator {
  Onion(super.pizza);

  @override
  String getName() => "${pizza.getName()} + Cebola";
  @override
  double getPrice() => pizza.getPrice() + 0.69;
  @override
  double getCalories() => pizza.getCalories() + 22;
}

class Pineapple extends PizzaDecorator {
  Pineapple(super.pizza);

  @override
  String getName() => "${pizza.getName()} + Abacaxi";
  @override
  double getPrice() => pizza.getPrice() + 0.79;
  @override
  double getCalories() => pizza.getCalories() + 24;
}

//tamanho
class FamilySize extends PizzaDecorator {
  FamilySize(super.pizza);

  @override
  String getName() => "${pizza.getName()} + Tamanho Família";
  @override
  double getPrice() => pizza.getPrice() + 4.15;
  @override
  double getCalories() => pizza.getCalories() * 1.95;
}
