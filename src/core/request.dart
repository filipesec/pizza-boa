import 'pizza.dart';
import 'drink.dart';
import 'merchandise.dart';

//representa um pedido (comanda) do cliente
class Request {
  //lista de pizzas do pedido
  final List<Pizza> _pizzas;

  // lista de bebidas do pedido
  final List<Drink> _drinks;

  //lista de produtos de merchandise
  final List<Merchandise> _merchandises;

  //getters publicos para acessar as listas
  List<Pizza> get pizzas => List.unmodifiable(_pizzas);
  List<Drink> get drinks => List.unmodifiable(_drinks);
  List<Merchandise> get merchandises => List.unmodifiable(_merchandises);

  //construtor
  const Request({
    List<Pizza> pizzas = const [],
    List<Drink> drinks = const [],
    List<Merchandise> merchandises = const [],
  }) : _pizzas = pizzas,
       _drinks = drinks,
       _merchandises = merchandises;

  //adiciona uma pizza ao pedido
  Request addPizza(Pizza pizza) {
    return Request(
      pizzas: [..._pizzas, pizza],
      drinks: _drinks,
      merchandises: _merchandises,
    );
  }

  //adiciona uma bebida ao pedido
  Request addDrink(Drink drink) {
    return Request(
      pizzas: _pizzas,
      drinks: [..._drinks, drink],
      merchandises: _merchandises,
    );
  }

  //adiciona um item de merchandise ao pedido
  Request addMerchandise(Merchandise merchandise) {
    return Request(
      pizzas: _pizzas,
      drinks: _drinks,
      merchandises: [..._merchandises, merchandise],
    );
  }

  //calcula o preco total do pedido
  double getTotalPrice() {
    double total = 0;

    for (final pizza in _pizzas) {
      total += pizza.getPrice();
    }

    for (final drink in _drinks) {
      total += drink.getPrice();
    }

    for (final merch in _merchandises) {
      total += merch.getPrice();
    }

    return total;
  }

  //calcula as calorias totais do pedido
  double getTotalCalories() {
    double total = 0;

    for (final pizza in _pizzas) {
      total += pizza.getCalories();
    }

    for (final drink in _drinks) {
      total += drink.getCalories();
    }

    return total;
  }

  //imprime o recibo do pedido no console
  void printReceipt() {
    print("------ Pedido PizzaBoa ------");

    for (final pizza in _pizzas) {
      print(
        "${pizza.getName()} "
        "- ${pizza.getCalories()} cal "
        "- \$${pizza.getPrice().toStringAsFixed(2)}",
      );
    }

    for (final drink in _drinks) {
      print(
        "${drink.getName()} "
        "- ${drink.getCalories()} cal "
        "- \$${drink.getPrice().toStringAsFixed(2)}",
      );
    }

    for (final merch in _merchandises) {
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
