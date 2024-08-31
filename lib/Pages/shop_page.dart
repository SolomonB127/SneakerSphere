import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        // Search bar
        Container(
          padding: const EdgeInsets.all(12),
          margin: const EdgeInsets.symmetric(horizontal: 25),
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(8)),
          child: TextField(
            decoration: InputDecoration(
                hintText: "Search",
                hintStyle: const TextStyle(color: Colors.grey),
                border: InputBorder.none,
                icon: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.search),
                )),
          ),
        )

        // Message text

        // Hot Picks/Trending
      ],
    );
  }
}
