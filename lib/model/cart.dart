import 'package:flutter/material.dart';
import 'package:flutter_fashion_app/model/product.dart';

class Cart extends ChangeNotifier {
  final List<Product> productsInCart = [];

  void addProductToCart(Product newProduct) {
    productsInCart.add(newProduct);
    notifyListeners();
    print(productsInCart.length.toString());
  }

  void removeProductFromCart(Product myProduct) {
    productsInCart.remove(myProduct);
    notifyListeners();
  }

  int showItemsNumber() {
    return productsInCart.length;
  }
}
