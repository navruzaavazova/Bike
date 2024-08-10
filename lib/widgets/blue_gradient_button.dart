import 'package:bike/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';

class BlueGradientButton extends StatelessWidget {
  final String buttonText;
  final Function() func;
  final double width;
  final bool isShadow;
  const BlueGradientButton({
    super.key,
    required this.buttonText,
    required this.func,
    required this.width,
    required this.isShadow,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: func,
      child: Container(
        height: 44,
        width: width,
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            colors: AppColors.blueGradient,
            transform: GradientRotation(45),
          ),
          borderRadius: BorderRadius.circular(10),
          border: GradientBoxBorder(
            gradient: LinearGradient(
              colors: <Color>[
                const Color(0xFFffffff).withOpacity(.4),
                const Color(0xFF000000).withOpacity(.4)
              ],
              transform: const GradientRotation(45),
              stops: [0.0, 1.0],
            ),
            width: 2,
          ),
          boxShadow: isShadow == true
              ? [
                  const BoxShadow(
                    color: Color(0xFF1A1F2C),
                    blurRadius: 60,
                    offset: Offset(0, 30),
                  ),
                  BoxShadow(
                    color: const Color(0xFF2B3445).withOpacity(.5),
                    blurRadius: 30,
                    offset: const Offset(0, -20),
                  ),
                ]
              : [],
        ),
        child: Center(
          child: Text(
            buttonText,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 15,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}
