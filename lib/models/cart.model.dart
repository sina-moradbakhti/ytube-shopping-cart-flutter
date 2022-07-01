class CartItem {
  final int id;
  final String title;
  final double price;
  int count;

  CartItem(
      {required this.id,
      required this.count,
      required this.price,
      required this.title});
}
