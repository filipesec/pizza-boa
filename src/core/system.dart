import 'pizza.dart';
import 'drink.dart';
import 'merchandise.dart';
import 'request.dart';

class System {
  //instancia unica do sistema
  static final System _instance = System._internal();

  //construtor factory que sempre retorna a mesma instancia
  factory System() {
    return _instance;
  }

  //construtor interno privado
  //impede que a classe seja instanciada diretamente
  System._internal();

  //pedido atual sendo manipulado pelo sistema
  Request _currentRequest = const Request();

  //getter para acessar o pedido atual
  Request get currentRequest => _currentRequest;

  //inicia um novo pedido
  void startNewRequest() {
    _currentRequest = const Request();
  }

  //adiciona uma pizza ao pedido atual
  void addPizza(Pizza pizza) {
    _currentRequest = _currentRequest.addPizza(pizza);
  }

  //adiciona uma bebida ao pedido atual
  void addDrink(Drink drink) {
    _currentRequest = _currentRequest.addDrink(drink);
  }

  //adiciona um item de merchandise
  void addMerchandise(Merchandise merchandise) {
    _currentRequest = _currentRequest.addMerchandise(merchandise);
  }

  //retorna o preco total do pedido
  double getTotalPrice() {
    return _currentRequest.getTotalPrice();
  }

  //finaliza o pedido e imprime o recibo
  void checkout() {
    _currentRequest.printReceipt();
  }
}
