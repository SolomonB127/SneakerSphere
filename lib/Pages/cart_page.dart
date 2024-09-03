import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sneaker_sphere/modules/shoe_data.dart';

import '../Components/cart_item.dart';
import '../modules/cart_data.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, value, child) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          // Heading
          children: <Widget>[
            const Text(
              "My Cart",
              style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 10.0,
            ),
            Expanded(
                child: ListView.builder(
              itemCount: value.getUserCart().length,
              itemBuilder: (context, index) {
                // get shoes
                Shoe pickedShoe = value.getUserCart()[index];

                // return cart item
                return CartItem(
                  shoe: pickedShoe,
                );
              },
            ))
          ],
        ),
      ),
    );
  }
}
