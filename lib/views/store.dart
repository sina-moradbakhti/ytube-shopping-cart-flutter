import 'package:flutter/material.dart';
import 'package:test/classes/cart.singleton.dart';
import 'package:test/models/cart.model.dart';
import 'package:test/views/cart.widget.dart';
import 'package:test/views/store.item.dart';

class StoreView extends StatefulWidget {
  const StoreView({Key? key}) : super(key: key);

  @override
  State<StoreView> createState() => _StoreViewState();
}

class _StoreViewState extends State<StoreView> {
  final List<CartItem> items = [
    CartItem(id: 0, count: 1, price: 250, title: 'iPhone 6'),
    CartItem(id: 1, count: 1, price: 350, title: 'iPhone 7'),
    CartItem(id: 2, count: 1, price: 450, title: 'iPhone 8'),
    CartItem(id: 3, count: 1, price: 500, title: 'iPhone x'),
    CartItem(id: 4, count: 1, price: 550, title: 'iPhone 11'),
    CartItem(id: 5, count: 1, price: 650, title: 'iPhone 12'),
    CartItem(id: 6, count: 1, price: 750, title: 'iPhone 13'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
        'Store',
        style: TextStyle(fontSize: 25),
      )),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          padding: const EdgeInsets.only(bottom: 200),
          children: [
            for (var item in items)
              StoreItemView(
                  cartItem: item, onPressed: (cartItem) => add2Cart(cartItem)),
          ],
        ),
      ),
      bottomSheet: Container(
        color: Colors.blue,
        height: 200,
        child: const CartView(),
      ),
    );
  }

  void add2Cart(CartItem item) {
    Cart().add2cart(item);
  }
}
