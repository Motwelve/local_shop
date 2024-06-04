import 'package:flutter/cupertino.dart';
import 'package:local_shop/models/shoe.dart';
import 'package:provider/provider.dart';

import '../models/cart.dart';
import '../models/cart_item.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return  Consumer<Cart>(
      builder: (context,value,child)=> Padding(
          padding: EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          children: [
            Text('My Cart',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24)),

            const SizedBox(height: 10),

            Expanded(child: ListView.builder(
                itemCount: value.getShoeCartList().length,
                itemBuilder: (context,index){
                Shoe individualShoe = value.getShoeCartList()[index];
                return CartItem(shoe: individualShoe);
            }))
          ],
        ),
      ),);
  }
}
