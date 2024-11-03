import 'package:flutter/material.dart';
import 'package:navigator_pages/coffee/pages/cart/widgets/list_cart.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Cart',
          ),
        ),
      ),
      body: const SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Item(20)',
              style: TextStyle(fontSize: 25),
            ),
            ListCart(),
          ],
        ),
      ),
    );
  }
}
