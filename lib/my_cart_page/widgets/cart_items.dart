import 'package:bike/my_cart_page/widgets/add_remove_container.dart';
import 'package:bike/my_cart_page/widgets/custom_image.dart';
import 'package:bike/my_cart_page/widgets/items.dart';
import 'package:flutter/material.dart';

class CartItem extends StatefulWidget {
  final CustomImage imageChild;
  final String bikeName;
  final String priceText;

  const CartItem({
    required this.imageChild,
    required this.bikeName,
    required this.priceText,
    super.key,
  });

  @override
  CartItemState createState() => CartItemState();
}

class CartItemState extends State<CartItem> {
  int number = 1;

  void addFunc() {
    setState(() {
      number += 1;
    });
  }

  void removeFunc() {
    setState(() {
      if (number > 1) {
        number -= 1;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Items(
          imageChild: widget.imageChild,
          bikeName: widget.bikeName,
          priceText: widget.priceText,
          addRemoveChild: AddRemoveContainer(
            number: number,
            addFunc: addFunc,
            removeFunc: removeFunc,
          ),
        ),
        const Divider(
          color: Colors.white30,
          thickness: 0.5,
          height: 32.5,
        ),
      ],
    );
  }
}
