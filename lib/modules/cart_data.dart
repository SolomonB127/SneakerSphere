import 'package:flutter/material.dart';
import 'package:sneaker_sphere/modules/shoe_data.dart';

class Cart extends ChangeNotifier {
  // list of shoes for sale
  List<Shoe> shoeShop = [
    Shoe(
        name: "Air Force",
        price: "236",
        imgPath: "assets/Images/img3.png",
        description: "The forward-thinking design of his latest shoe"),
    Shoe(
        name: "Louis Vuitton",
        price: "500",
        imgPath: "assets/Images/img2.png",
        description:
            "You've got the hops and the speed-lace up in shoes that enhances what you bring to the court"),
    Shoe(
        name: "Chuck Taylor",
        price: "240",
        imgPath: "assets/Images/img1.png",
        description: "A secure mid foot strap for"),
    Shoe(
        name: "Air Force",
        price: "236",
        imgPath: "assets/Images/img4.png",
        description: "The forward-thinking design of his latest shoe"),
  ];

  // list of items in cart
  List<Shoe> userCart = [];

  // get list of items for sale
  List<Shoe> getShoeList() {
    return shoeShop;
  }

  // get cart
  List<Shoe> getUserCart() {
    return userCart;
  }

  // add items to cart
  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  // remove items to cart
  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
