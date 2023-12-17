
import 'package:flutter/material.dart';


class CartModel extends ChangeNotifier{
  final List _shopItems = [
    ["Apple","35","assests/images/apple.png"],
    ["Banana","60","assests/images/banana.png"],
    ["Grapes","90","assests/images/grapes.png"],
    ["Carrot","10","assests/images/carrot.png"],
    ["Tomato","10","assests/images/tomato.png"],
    ["Brinjal","17","assests/images/brinjal.png"],
  ];

  //cart items list

  List _cartItems = [];

  get shopItems => _shopItems;
  get cartItems => _cartItems;


  //add item to cart
  void addItemToCart(int index){
    _cartItems.add(_shopItems[index]);
    notifyListeners();
  }

  //remove item from cart

  void removeItemFromCart(int index){
    _cartItems.removeAt(index);
    notifyListeners();
  }

  //calculate total price
  String calculatTotal(){
    double totalPrice = 0;
    for(int i=0; i<_cartItems.length; i++){
      totalPrice += double.parse(_cartItems[i][1]);
    }
    return totalPrice.toStringAsFixed(2);
  }
}