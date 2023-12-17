import 'dart:async';

import 'package:flutter/material.dart';
import 'package:grocery_app/home_screen.dart';
import 'package:grocery_app/model/cart_model.dart';
import 'package:grocery_app/slider_page.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(create: (context) => CartModel(),
      child:MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primaryColor: Colors.black),
        home: HomeScreen(),
      ), );
  }
}


