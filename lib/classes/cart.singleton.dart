import 'dart:async';

import 'package:test/models/cart.model.dart';

class Cart {
  static final Cart _cart = Cart._internal();
  factory Cart() {
    return _cart;
  }
  Cart._internal();

  final StreamController<bool> _cartController =
      StreamController<bool>.broadcast();
  Stream<bool> getCartStream() => _cartController.stream;

  List<CartItem> _items = [];
  List<CartItem> getCartItems() => _items;
  removeFromCart(CartItem item) {
    _items.removeWhere((element) => element.id == item.id);
    _cartController.sink.add(true);
  }

  add2cart(CartItem item) {
    var index = _items.indexWhere((element) => element.id == item.id);
    if (index >= 0) {
      _items[index].count += item.count;
    } else {
      _items.add(item);
    }

    _cartController.sink.add(true);
  }
}
