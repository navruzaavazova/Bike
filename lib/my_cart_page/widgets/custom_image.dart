import 'package:flutter/material.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';

class CustomImage extends StatelessWidget {
  final String imagePath;
  const CustomImage({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        gradient: const LinearGradient(
          colors: [
            Color(0xFF363E51),
            Color(0xFF4C5770),
          ],
          transform: GradientRotation(145),
          stops: [0, 1]
        ),
        border: GradientBoxBorder(
          gradient: LinearGradient(
            colors: <Color>[Color(0xFFffffff).withOpacity(.2), Color(0xFF000000).withOpacity(.2)],
            transform: GradientRotation(73),
            stops: [0.0, 1.0],
          ),
        ),
      ),
      width: 100,
      height: 90,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 16),
        child:Image.asset(imagePath),),
    );
  }
}
