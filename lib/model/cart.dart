import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class Cart extends ChangeNotifier {
  Map<String, Item> _productsInCart = {};

  Map<String, Item> get productsInCart {
    return {..._productsInCart};
  }

  void addProductToCart(Item item) {
    if (_productsInCart.containsKey(item.id)) {
      _productsInCart.update(
          item.id,
          (existingItemInCart) => Item(
                id: existingItemInCart.id,
                name: existingItemInCart.name,
                photo: existingItemInCart.photo,
                price: existingItemInCart.price,
                quantity: existingItemInCart.quantity + 1,
              ));
    } else {
      _productsInCart.putIfAbsent(
          item.id,
          () => Item(
                id: item.id,
                name: item.name,
                photo: item.photo,
                price: item.price,
                quantity: item.quantity,
              ));
    }
    notifyListeners();
    // final itemInCart = _productsInCart.firstWhereOrNull((a) => a.id == item.id);
    // if (itemInCart == null) {
    //   _productsInCart.add(item);
    //   notifyListeners();
    // } else {
    //   print(_productsInCart[
    //           _productsInCart.indexWhere((element) => element.id == item.id)]
    //       .id);
    //   notifyListeners();
    // }
  }

  void removeProductFromCart(Item item) {
    _productsInCart.remove(item.id);
    notifyListeners();
  }

  void removeSingleItem(Item item) {
    if (!_productsInCart.containsKey(item.id)) {
      return;
    }
    if (_productsInCart[item.id]!.quantity > 1) {
      _productsInCart.update(
        item.id,
        (existingCartIem) => Item(
            id: existingCartIem.id,
            name: existingCartIem.name,
            photo: existingCartIem.photo,
            price: existingCartIem.price,
            quantity: existingCartIem.quantity - 1),
      );
      notifyListeners();
    } else {
      _productsInCart.remove(item.id);
      notifyListeners();
    }
    notifyListeners();
  }

  void clearCart() {
    _productsInCart = {};
    notifyListeners();
  }

  int quantity(int id) {
    return _productsInCart[id]!.quantity;
  }

  int showCartQuantity() {
    int totalProducts = 0;
    _productsInCart.forEach((key, item) => totalProducts += item.quantity);
    return totalProducts;
  }

  double showCartTotalPrice() {
    double totalSum = 0;
    _productsInCart
        .forEach((key, item) => totalSum += item.price * item.quantity);
    return totalSum;
  }
}

class Item {
  final String id;
  final String name;
  final String photo;
  int quantity;
  double price;

  Item({
    required this.id,
    required this.name,
    required this.photo,
    required this.quantity,
    required this.price,
  });
}
