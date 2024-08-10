import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';

class Checkout extends StatelessWidget {
  final String checkoutText;
  final Widget child;
  const Checkout({
    super.key,
    required this.checkoutText,
    required this.child,
  });

  Widget build(BuildContext context) {
    return Container(
      height: 44,
      width: 174,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: const Color(0xFF242C3B),
        boxShadow: const [
          BoxShadow(
            color: Color(0xFF11161E),
            blurRadius: 30,
            offset: Offset(4, 4),
            inset: true,
          ),
          BoxShadow(
            color: Color(0xFF2B3545),
            blurRadius: 8,
            offset: Offset(-2, -2),
            inset: true,
          ),

        ],
      ),
      child: Row(
        children: [
          child,
          Expanded(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Text(
                  checkoutText,
                  style: const TextStyle(color: Colors.white60, fontSize: 15),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
