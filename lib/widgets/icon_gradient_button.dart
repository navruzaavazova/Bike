import 'package:bike/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gradient_borders/gradient_borders.dart';

class IconGradientButton extends StatelessWidget {
  const IconGradientButton({super.key, required this.path});
  final String path;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 44,
      height: 44,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: GradientBoxBorder(
          gradient: LinearGradient(
            colors: <Color>[Color(0xFFffffff).withOpacity(.6), Color(0xFF000000).withOpacity(.6)],
            transform: GradientRotation(45),
            stops: [0.0, 1.0],
          ),
        ),
        gradient: const LinearGradient(
          colors: AppColors.blueGradient,
          transform: GradientRotation(38),
          stops: [0.0, 1.0],
        ),
        boxShadow: [
          const BoxShadow(
            color: Color(0xFF2B3445),
            blurRadius: 30,
            offset: Offset(0, 20),
          ),
          BoxShadow(
            color: const Color(0xFF2B3445).withOpacity(.5),
            blurRadius: 30,
            offset: const Offset(0, 20),
          )
        ]
      ),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: SvgPicture.asset(path),
      ),
    );
  }
}
