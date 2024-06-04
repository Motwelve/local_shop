import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:local_shop/models/cart.dart';
import 'package:provider/provider.dart';

import '../components/shoe_tile.dart';
import '../models/shoe.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  void addShoeToCart(Shoe shoe){
    Provider.of<Cart>(context,listen: false).addItemCart(shoe);

    showDialog(context: context, builder: (context) => AlertDialog(
      title: Text('Successfully added!'),
      content: Text('Check your cart'),
    ));
  }
  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(builder: (context,value,child)=>
        Column(
          children: [
            Container(
              padding: const EdgeInsets.all(20),
              margin: EdgeInsets.symmetric(horizontal: 25),
              decoration: BoxDecoration(
                  color: Colors.grey[200], borderRadius: BorderRadius.circular(8)),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Search', style: TextStyle(color: Colors.grey)),
                  Icon(
                    Icons.search,
                    color: Colors.grey,
                  )
                ],
              ),
            ),

            //message
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 25),
              child: Text(
                'everyone flies.. some fly longer than others',
                style: TextStyle(color: Colors.grey[600]),
              ),
            ),

            //hot picks
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    'Hot Picks 🔥',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'See all',
                    style: TextStyle(fontSize: 14,color: Colors.blue),),
                ],
              ),
            ),
            const SizedBox(height: 10),
            Expanded(child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 4,
                itemBuilder: (context,index){
                  // Shoe shoe = Shoe(name: 'Nike 01', price: '240', imagePath: 'lib/images/nike_01.png', description: 'nike is the best');
                  Shoe shoe = value.getShoeShopList()[index];
                  return ShoeTile(
                    shoe: shoe,
                    onTap: ()=>addShoeToCart(shoe),
                  );
                })),
            const Padding(
              padding: EdgeInsets.only(top: 25.0,left: 25,right: 25),
              child: Divider(color: Colors.transparent),
            )
          ],
        ));
  }
}
