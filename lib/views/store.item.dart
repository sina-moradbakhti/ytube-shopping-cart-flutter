import 'package:flutter/material.dart';
import 'package:test/models/cart.model.dart';

class StoreItemView extends StatelessWidget {
  final CartItem cartItem;
  final Function(CartItem) onPressed;
  const StoreItemView(
      {Key? key, required this.cartItem, required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: InkWell(
        child: Card(
          child: SizedBox(
            width: double.infinity,
            height: 150,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Icon(Icons.phone_iphone, size: 40),
                  Text(cartItem.title, style: const TextStyle(fontSize: 24))
                ],
              ),
            ),
          ),
        ),
        onTap: () => onPressed(cartItem),
      ),
    );
  }
}
