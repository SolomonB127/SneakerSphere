import 'package:flutter/material.dart';
import 'package:sneaker_sphere/Components/bottom_bar.dart';

import 'cart_page.dart';
import 'shop_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // Bottom navigation bar
  int _selectedIndex = 0;

  // Method to update selected index based on usr tap
  navigationBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  // Pages to display
  final List<Widget> _bottomNavPages = [
    // shop page
    const ShopPage(),

    // cart page
    const CartPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      bottomNavigationBar: BottomBar(
        onTabChange: (index) => navigationBottomBar(index),
      ),
    );
  }
}
