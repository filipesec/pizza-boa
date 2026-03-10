# Biblioteca SGP – PizzaBoa

## Descrição

A biblioteca **SGP (Sistema de Gerenciamento de Pedidos)** permite criar e gerenciar pedidos da pizzaria PizzaBoa.

A classe `System` funciona como **Facade**, fornecendo uma interface simples para criar pedidos, adicionar produtos e finalizar a compra.

---

# Como utilizar a biblioteca

## 1. Criar o sistema

Primeiro, crie uma instância do sistema:

```dart
final system = System();
```

---

## 2. Iniciar um novo pedido

Antes de adicionar produtos, é necessário iniciar um pedido:

```dart
system.startNewRequest();
```

---

## 3. Criar uma pizza

Para criar uma pizza, basta instanciar uma das pizzas disponíveis.
Por exemplo, para criar uma **Pizza Margherita**:

```dart
Pizza pizza = Margherita();
```

---

## 4. Adicionar ingredientes extras

Ingredientes adicionais podem ser adicionados à pizza:

```dart
pizza = Cheese(pizza);
pizza = Onion(pizza);
```

Isso cria uma pizza Margherita com **queijo e cebola adicionais**.

---

## 5. Definir tamanho família

A pizza também pode ser transformada em **tamanho família**:

```dart
pizza = FamilySize(pizza);
```

Isso aumenta o preço e as calorias da pizza.

---

## 6. Adicionar pizza ao pedido

Após configurar a pizza, ela pode ser adicionada ao pedido:

```dart
system.addPizza(pizza);
```

---

## 7. Adicionar bebidas

Bebidas podem ser adicionadas ao pedido:

```dart
system.addDrink(Lemonade());
system.addDrink(Wine());
```

---

## 8. Adicionar produtos da franquia

Itens da franquia também podem ser incluídos:

```dart
system.addMerchandise(Mug());
```

---

## 9. Finalizar o pedido

Para finalizar o pedido e gerar o recibo:

```dart
system.checkout();
```

O sistema exibirá no console os itens do pedido, calorias totais e preço final.
