import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:sneaker_sphere/modules/cart_data.dart';
import 'package:sneaker_sphere/modules/shoe_data.dart';

import '../Components/shoe_tile.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
        builder: (context, value, child) => Column(
              children: <Widget>[
                // Search bar
                Container(
                  padding: const EdgeInsets.all(12),
                  margin: const EdgeInsets.symmetric(horizontal: 25),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8)),
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
                ),

                // Message text
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 25.0),
                  child: Text(
                    "You miss 100% of the shots you don’t take.",
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                ),

                // Hot Picks/Trending
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      Text(
                        "Trending",
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 24.0,
                            fontWeight: FontWeight.bold),
                      ),
                      Text("See all",
                          style: TextStyle(
                              color: Colors.blue, fontWeight: FontWeight.bold)),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),

                Expanded(
                    child: ListView.builder(
                  itemCount: 4,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    // get shoe from shoe list
                    Shoe shoe = value.getShoeList()[index];

                    // return shoes
                    return ShoeTile(
                      shoe: shoe,
                    );
                  },
                ))
              ],
            ));
  }
}
