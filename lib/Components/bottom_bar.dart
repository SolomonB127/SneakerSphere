import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class BottomBar extends StatelessWidget {
  final void Function(int)? onTabChange;
  const BottomBar({super.key, required this.onTabChange});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: GNav(
        color: Colors.grey[400],
        activeColor: Colors.black,
        tabActiveBorder: Border.all(color: Colors.black),
        tabBackgroundColor: Colors.grey.shade300,
        tabBorderRadius: 16.0,
        mainAxisAlignment: MainAxisAlignment.center,
        onTabChange: (value) => onTabChange!(value),
        tabs: const [
          GButton(
            icon: Icons.home,
            text: "Shop",
          ),
          GButton(
            icon: Icons.shopping_cart,
            text: "Cart",
          )
        ],
      ),
    );
  }
}
