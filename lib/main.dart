import 'package:flutter/material.dart';
import 'home_page.dart';

void main() {
  runApp(const ShoppingBag());
}

class ShoppingBag extends StatelessWidget {
  const ShoppingBag({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}





