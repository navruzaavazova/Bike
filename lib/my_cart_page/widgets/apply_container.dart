import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';

class ApplyContainer extends StatelessWidget {
  final Widget child;
  const ApplyContainer({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 44,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: const Color(0xFF242C3B),
        boxShadow: const [
          BoxShadow(
            color: Color(0xFF191E29),
            blurRadius: 40,
            offset: Offset(4, 10),
            inset: true,
          ),
        ],
      ),
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: TextFormField(
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Enter promocode',
                  hintStyle: TextStyle(color: Colors.white60),
                  contentPadding: EdgeInsets.symmetric(vertical: 10),
                ),
                style: const TextStyle(color: Colors.white),
              ),
            ),
          ),
          child,
        ],
      ),
    );
  }
}
