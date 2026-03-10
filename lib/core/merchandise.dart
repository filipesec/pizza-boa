import 'product.dart';

abstract class Merchandise extends Product {
  const Merchandise(String name, double price) : super(name, price);
}

//camisa
class Shirt extends Merchandise {
  const Shirt() : super('Camisa PizzaBoa', 22);
}

//caneca
class Mug extends Merchandise {
  const Mug() : super('Caneca PizzaBoa', 8);
}
