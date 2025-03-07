import 'package:flutter/material.dart';
import 'package:instagram_clone/util/ShopGride.dart';
class Shop extends StatelessWidget {
  const Shop({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title:Text("SHOP",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 19),)
            ,actions: [
              IconButton(onPressed: (){},
                  icon:Icon(Icons.shopping_cart) ),
              IconButton(onPressed: (){},
                  icon:Icon(Icons.menu_sharp) )
          ],
        ), body:ShopGride()
    );
  }
}
