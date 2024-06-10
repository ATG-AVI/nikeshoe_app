import 'package:flutter/material.dart';
import 'package:nikeshoes/models/shoe.dart';

class Cart extends ChangeNotifier {
  // list of shoes for sale
  List<Shoe> shoeShop = [
    Shoe(
      name: 'Zoom FREAK',
      price: '235',
      description: 'The forward thinking design of latest signatrue shoes.',
      imagePath: 'lib/images/ZoomFreak.png',
    ),
    Shoe(
      name: 'Air Jordan',
      price: '253',
      description:
          'You\'have got the hops and the speed lace up in shoes that enhance what you bring to the court.',
      imagePath: 'lib/images/AirJordan.png',
    ),
    Shoe(
      name: 'KD Treys',
      price: '369',
      description:
          'A secure mid foot strap is suited for scoring binges and defensive',
      imagePath: 'lib/images/KDTREY.png',
    ),
    Shoe(
      name: 'Airforce',
      price: '263',
      description:
          'Bouncy cushioning is paired with soft yet suppotive foam for comfort ',
      imagePath: 'lib/images/Kyrie.png',
    ),
  ];

  // list of items in user cart
  List<Shoe> userCart = [];

  // get list of shoes for sale
  List<Shoe> getShoeList() {
    return shoeShop;
  }

  // get cart
  List<Shoe> getUserCart() {
    return userCart;
  }

  // add items to cart
  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  // remove items from cart
  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
