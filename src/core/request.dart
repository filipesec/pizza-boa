import 'pizza.dart';
import 'drink.dart';
import 'merchandise.dart';

//representa um pedido (comanda) do cliente
class Request {
  //lista de pizzas do pedido
  final List<Pizza> pizzas;

  // lista de bebidas do pedido
  final List<Drink> drinks;

  //lista de produtos de merchandise
  final List<Merchandise> merchandises;

  //construtor const para manter imutabilidade
  const Request({
    this.pizzas = const [],
    this.drinks = const [],
    this.merchandises = const [],
  });

  //adiciona uma pizza ao pedido
  Request addPizza(Pizza pizza) {
    return Request(
      pizzas: [...pizzas, pizza],
      drinks: drinks,
      merchandises: merchandises,
    );
  }

  //adiciona uma bebida ao pedido
  Request addDrink(Drink drink) {
    return Request(
      pizzas: pizzas,
      drinks: [...drinks, drink],
      merchandises: merchandises,
    );
  }

  //adiciona um item de merchandise ao pedido
  Request addMerchandise(Merchandise merchandise) {
    return Request(
      pizzas: pizzas,
      drinks: drinks,
      merchandises: [...merchandises, merchandise],
    );
  }

  //calcula o preco total do pedido
  double getTotalPrice() {
    double total = 0;

    //soma o preco das pizzas
    for (final pizza in pizzas) {
      total += pizza.getPrice();
    }

    //soma o preco das bebidas
    for (final drink in drinks) {
      total += drink.getPrice();
    }

    //soma o preco do merchandise
    for (final merch in merchandises) {
      total += merch.getPrice();
    }

    return total;
  }

  //calcula as calorias totais do pedido
  double getTotalCalories() {
    double total = 0;

    for (final pizza in pizzas) {
      total += pizza.getCalories();
    }

    for (final drink in drinks) {
      total += drink.getCalories();
    }

    return total;
  }

  //imprime o recibo do pedido no console
  void printReceipt() {
    print("------ Pedido PizzaBoa ------");

    for (final pizza in pizzas) {
      print(
        "${pizza.getName()} "
        "- ${pizza.getCalories()} cal "
        "- \$${pizza.getPrice().toStringAsFixed(2)}",
      );
    }

    for (final drink in drinks) {
      print(
        "${drink.getName()} "
        "- ${drink.getCalories()} cal "
        "- \$${drink.getPrice().toStringAsFixed(2)}",
      );
    }

    for (final merch in merchandises) {
      print(
        "${merch.getName()} "
        "- \$${merch.getPrice().toStringAsFixed(2)}",
      );
    }

    print("-----------------------------");

    //mostra totais
    print("Calorias totais: ${getTotalCalories()} cal");
    print("Total: \$${getTotalPrice().toStringAsFixed(2)}");
  }
}
