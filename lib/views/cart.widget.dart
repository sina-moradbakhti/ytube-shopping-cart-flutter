import 'package:flutter/material.dart';
import 'package:test/classes/cart.singleton.dart';

class CartView extends StatefulWidget {
  const CartView({Key? key}) : super(key: key);

  @override
  State<CartView> createState() => _CartViewState();
}

class _CartViewState extends State<CartView> {
  final Cart currentCart = Cart();

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
        stream: currentCart.getCartStream(),
        builder: ((context, snapshot) => Container(
              height: 200,
              child: ListView(
                padding: const EdgeInsets.all(16),
                children: [
                  for (var cartItem in currentCart.getCartItems())
                    Container(
                      margin: const EdgeInsets.only(bottom: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(cartItem.title,
                              style: const TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold)),
                          Text('(${cartItem.count})',
                              style: const TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold)),
                          Text('\$${cartItem.count * cartItem.price}',
                              style: const TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold)),
                          IconButton(
                              onPressed: () =>
                                  currentCart.removeFromCart(cartItem),
                              icon: const Icon(Icons.delete, size: 35))
                        ],
                      ),
                    )
                ],
              ),
            )));
  }
}
