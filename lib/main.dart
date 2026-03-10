import 'core/system.dart';
import 'core/pizza.dart';
import 'core/drink.dart';
import 'core/merchandise.dart';

void main() {
  final system = System();

  // inicia um novo pedido
  system.startNewRequest();

  // cria uma pizza base
  Pizza pizza = const Margherita();
  Pizza pizza2 = const SalamiPizza();

  // adiciona ingredientes (decorator)
  pizza = Cheese(pizza);
  pizza = Onion(pizza);
  pizza = FamilySize(pizza);

  pizza2 = Ham(pizza2);

  // adiciona ao pedido
  system.addPizza(pizza);
  system.addPizza(pizza2);

  // adiciona bebida
  system.addDrink(const Lemonade());
  system.addDrink(const Wine());

  // adiciona merchandise
  system.addMerchandise(const Mug());

  // finaliza pedido
  system.checkout();
}
