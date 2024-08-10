import 'package:flutter/material.dart';

class TextRow extends StatelessWidget {
  final String leftText;
  final String rightText;
  double sizeRight;
  Color colorRight;
  FontWeight fontWeight;
  TextRow({
    super.key,
    required this.leftText,
    required this.rightText,
    this.sizeRight = 15,
    this.colorRight = Colors.white60,
    this.fontWeight = FontWeight.w400,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          leftText,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 15,
            fontWeight: FontWeight.w500,
          ),
        ),
        Text(
          rightText,
          style: TextStyle(
            color: colorRight,
            fontSize: sizeRight,
            fontWeight: fontWeight,
          ),
        ),
      ],
    );
  }
}
