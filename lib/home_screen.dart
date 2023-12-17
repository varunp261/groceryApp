import 'package:flutter/material.dart';
import 'package:grocery_app/cart_page.dart';
import 'package:grocery_app/components/grocery_item_tile.dart';
import 'package:grocery_app/model/cart_model.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          onPressed: () => Navigator.push(
              context, MaterialPageRoute(
              builder: (context){
                return CartPage();
              },
          ),
          ),
        backgroundColor: Colors.transparent,
        child: Icon(Icons.shopping_bag),
      ),

      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 48,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Text("Welcome Buddy",style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold,
              ),),
            ),
            const SizedBox(height: 14,),
            //Let's order fresh items for you
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Text("Let's order some items",
                style: TextStyle(
                fontSize: 20
              ),
              ),
            ),

            // divider
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.0),
              child: Divider(),
            ),

            const SizedBox(height: 14,),
            //fresh  items+ grid
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Text("Fresh Items",
                style: TextStyle(
                    fontSize: 16
                ),
              ),
            ),

            Expanded(
                child:Consumer<CartModel>(
                  builder: (context,value,child) {
                    return GridView.builder(
                        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                          childAspectRatio: 1 / 1.3
                        ),
                        itemCount:value.shopItems.length ,// to make sure you won't get that range error
                        itemBuilder: (context,index){
                          return GroceryItemTile(
                              itemName: value.shopItems[index][0],
                              itemPrice: value.shopItems[index][1],
                              imagePath: value.shopItems[index][2],
                              onPressed: (){
                                Provider.of<CartModel>(context,listen:false )
                                    .addItemToCart(index);
                              },
                              //color: value.shopItems[index][3]
                          );
                        }

                    );
                  },
                )

            ),

          ],
        ),
      ),
    );
  }
}
