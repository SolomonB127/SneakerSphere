import 'package:flutter/material.dart';
import 'package:sneaker_sphere/modules/shoe_data.dart';

class Cart extends ChangeNotifier {
  // list of shoes for sale
  List<Shoe> shoeShop = [
    Shoe(
        name: "Superstar",
        price: "236",
        imgPath: "assets/Images/img3.png",
        description: "Quick cuts, explosive power."),
    Shoe(
        name: "Louis Vuitton",
        price: "500",
        imgPath: "assets/Images/img2.png",
        description: "Fast, responsive, unbeatable."),
    Shoe(
        name: "Chuck Taylor",
        price: "240",
        imgPath: "assets/Images/img1.png",
        description: "Light, precise, unstoppable."),
    Shoe(
        name: "Air Force",
        price: "236",
        imgPath: "assets/Images/img4.png",
        description: "Grip the court, dominate."),
    Shoe(
        name: "BMW M1",
        price: "650",
        imgPath: "assets/Images/img5.png",
        description: "Relentless pace, no limits."),
    Shoe(
        name: "SK8-HI",
        price: "400",
        imgPath: "assets/Images/img6.png",
        description: "Dynamic moves, perfect fit."),
    Shoe(
        name: "Roshe",
        price: "650",
        imgPath: "assets/Images/img7.png",
        description: "Precision and power, always."),
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
