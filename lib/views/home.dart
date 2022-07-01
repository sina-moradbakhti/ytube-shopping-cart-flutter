import 'package:flutter/material.dart';
import 'package:test/views/cart.widget.dart';
import 'package:test/views/store.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
            'Home',
            style: TextStyle(fontSize: 25),
          ),
          actions: [
            IconButton(
                onPressed: () => Navigator.of(context).push(
                    MaterialPageRoute(builder: (contex) => const StoreView())),
                icon: const Icon(Icons.shopping_cart))
          ]),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 50),
            child: Text(
              'Shopping Cart',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 20),
            height: 200,
            child: CartView(),
            color: Colors.blue,
          ),
          const Padding(
            padding: EdgeInsets.only(top: 50),
            child: Text(
              'Books',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 50),
            child: Text(
              'Internet',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
