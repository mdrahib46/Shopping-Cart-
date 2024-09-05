class MyBag{
  final String productImage;
  final String productName;
  final String productColor;
  final String productSize;
  final int price;
  int quantity;
  double totalAmount = 0;

  MyBag({required this.productImage, required this.productName, required this.productColor, required this.productSize, required this.price, this.quantity = 1});



}