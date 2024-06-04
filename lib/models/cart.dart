import 'package:flutter/foundation.dart';
import 'package:local_shop/models/shoe.dart';

class Cart extends ChangeNotifier{
  //list of shoes for sale
  List<Shoe> shoesShop = [
    Shoe(
        name: 'Nike 01',
        price: '199',
        imagePath: 'lib/images/nike_01.png',
        description: 'nike 01 is the best,nike 01 is the best,nike 01 is the best'
    ),

    Shoe(
      name: 'Nike 02',
      price: '235',
      imagePath: 'lib/images/nike_02.png',
      description: 'nike 02 is the best,nike 02 is the best,nike 02 is the best'
    ),

    Shoe(
        name: 'Nike 03',
        price: '400',
        imagePath: 'lib/images/nike_03.png',
        description: 'nike 03 is the best,nike 02 is the best,nike 02 is the best'
    ),

    Shoe(
        name: 'Nike 04',
        price: '500',
        imagePath: 'lib/images/nike_04.png',
        description: 'nike 04 is the best,nike 02 is the best,nike 02 is the best'
    ),

    Shoe(
        name: 'Nike 05',
        price: '211',
        imagePath: 'lib/images/nike_05.png',
        description: 'nike 05 is normal,nike 05 is normal,nike 05 is normal'
    ),
  ];

  //list of items in user cart
  List<Shoe> userCart = [];

  //get list of shoes for sale
  List<Shoe> getShoeShopList(){
    return shoesShop;
  }

  //get cart
  List<Shoe> getShoeCartList(){
    return userCart;
  }

  //add Items to cart
  void addItemCart(Shoe shoe){
    userCart.add(shoe);
    notifyListeners();
  }

  //remove item from cart
  void deleteItemCart(Shoe shoe){
    userCart.remove(shoe);
    notifyListeners();
  }
}