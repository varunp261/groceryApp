import 'dart:async';

import 'package:flutter/material.dart';
import 'package:grocery_app/home_screen.dart';

import 'package:lecle_flutter_carousel_pro/lecle_flutter_carousel_pro.dart';

class SliderPage extends StatefulWidget {
  const SliderPage({super.key});

  @override
  State<SliderPage> createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Carousel(
        showIndicator: false,
        animationDuration: Duration(milliseconds: 600),
        images: [
          Image.asset("assests/images/slider2.gif"),
        ],
      ),

      floatingActionButton: FloatingActionButton.extended(
        onPressed: (){
          showDialog(
              context: context,
              barrierDismissible: false,
              builder: (BuildContext context){
                return Center(
                  child: Opacity(opacity: 1.0,
                    child: CircularProgressIndicator(
                      valueColor: new AlwaysStoppedAnimation<Color>(
                          Colors.orangeAccent
                      ),
                    ),
                  ),
                );
              });
          Timer(Duration(seconds: 3),
                  () => Navigator.push(context,MaterialPageRoute
                (builder: (context) => HomeScreen()))
          );
        },
        label: Text("Start"),
        icon: Icon(Icons.arrow_right),
        backgroundColor: Colors.orangeAccent,
        elevation: 10,
      ),


    );
  }
}