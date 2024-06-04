import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../models/shoe.dart';

class ShoeTile extends StatelessWidget {
  Shoe shoe;
  void Function()? onTap;
  ShoeTile({super.key,required this.shoe,
  required this.onTap});

  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: EdgeInsets.only(left: 25),
      width:  280,
        decoration: BoxDecoration(
          color: Colors.grey[100],
          borderRadius: BorderRadius.circular(12),
        ),
      child: Padding(
        padding: const EdgeInsets.only(left: 25.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image(image: AssetImage(shoe.imagePath)),
            ),
            Text(
              shoe.description,
              style: TextStyle(color: Colors.grey[600])
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //shoe name
                    Text(
                      shoe.name,
                      style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20
                    ),),
                    const SizedBox(height: 5),
                    //shoe price
                    Text(
                        '\$'+shoe.price,
                    style: TextStyle(color: Colors.grey),)
                  ],
                ),
                GestureDetector(
                  onTap: onTap,
                  child: Container(
                      padding: const EdgeInsets.all(20),
                      decoration:const BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(20),bottomRight: Radius.circular(20))
                      ),
                      child:const Icon(Icons.add,color: Colors.white)
                  ),
                )
              ],)
          ],
        ),
      ),
    );
  }
}
