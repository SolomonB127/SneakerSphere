import 'package:flutter/material.dart';

import '../modules/shoe_data.dart';

class ShoeTile extends StatelessWidget {
  final Shoe shoe;
  const ShoeTile({super.key, required this.shoe});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 25),
      width: 200,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(12)),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            // Shoe pic
            ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  shoe.imgPath,
                  width: 200.0,
                )),

            // description
            Text(
              shoe.description,
              style: const TextStyle(
                  color: Colors.grey, fontWeight: FontWeight.bold),
            ),

            // price & details
            Padding(
              padding: const EdgeInsets.only(left: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      // shoe name
                      Text(
                        shoe.name,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),

                      const SizedBox(
                        height: 5,
                      ),
                      // price
                      Text(
                        '\$${shoe.price}',
                        style: const TextStyle(color: Colors.grey),
                      )
                    ],
                  ),

                  // plus btn
                  Container(
                      padding: const EdgeInsets.all(10),
                      decoration: const BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(12),
                              bottomRight: Radius.circular(12))),
                      child: GestureDetector(
                        onTap: () {},
                        child: const Icon(
                          (Icons.add),
                          color: Colors.white,
                        ),
                      ))
                ],
              ),
            )
            // add to cart button
          ]),
    );
  }
}
