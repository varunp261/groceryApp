import 'dart:async';

import 'package:flutter/material.dart';
import 'package:grocery_app/slider_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.black),
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 5),
            () => Navigator.push(
            context, MaterialPageRoute(builder: (context) => SliderPage())));

    //context, MaterialPageRoute(builder: (context) => NavigationScreen())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        width: double.infinity, // need to know
        child: Container(
          child: Padding(
            padding: EdgeInsets.all(30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: new CircleAvatar(
                    backgroundColor: Colors.transparent,
                    radius: 200,
                    child: Image.asset('assests/images/logo.png'),
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  child: new CircleAvatar(
                    backgroundColor: Colors.transparent,
                    radius: 102,
                    child: Image.asset('assests/images/loading.gif'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
