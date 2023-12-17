import 'package:flutter/material.dart';

class GroceryItemTile extends StatelessWidget {

  final String itemName;
  final String itemPrice;
  final String imagePath;
  void Function()? onPressed;
 // final Color color;

   GroceryItemTile({super.key,
  required this.itemName,
  required this.itemPrice,
  required this.imagePath,
  required this.onPressed,




  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(

      decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(12),
      ),
        child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
          Image.asset(
            imagePath,
            height: 90,
          ),
          Text(itemName),

          MaterialButton(
            onPressed: onPressed,
            color: Color.fromARGB(255, 206, 222, 181),
            child: Text(
              '\Rs '+itemPrice,
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold
              ),
            ),
          )

        ],
      ),
      ),
    );
  }
}

