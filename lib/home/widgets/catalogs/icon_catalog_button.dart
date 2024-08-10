import 'package:bike/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gradient_borders/gradient_borders.dart';

class IconCatalogButton extends StatelessWidget {
  const IconCatalogButton({
    super.key,
    required this.pathSelected,
    required this.func,
    required this.isSelected,
    required this.pathUnSelected,
    required this.index,
  });
  final Function() func;
  final bool isSelected;
  final String pathSelected;
  final String pathUnSelected;
  final bool index;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.transparent,
      hoverColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: func,
      child: Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: GradientBoxBorder(
            gradient: LinearGradient(
              colors: isSelected
                  ? AppColors.blueGradient
                  : <Color>[const Color(0xFF353F54).withOpacity(.2), const Color(0xFF222834).withOpacity(.2)],
              transform: const GradientRotation(45),
              stops: const [0.0, 1.0],
            ),
          ),
          gradient: LinearGradient(
            colors: isSelected
                ? AppColors.blueGradient
                : <Color>[
                    index
                        ? const Color(0xFF353F54)
                        : const Color(0xFF363E51).withOpacity(.6),
                    index
                        ? const Color(0xFF222834)
                        : const Color(0xFF191E26).withOpacity(.6),
                  ],
            transform: const GradientRotation(21),
            stops: const [0.0, 1.0],
          ),
          boxShadow: index
              ? [
                  const BoxShadow(
                    color: Color(0xFF10141C),
                    blurRadius: 30,
                    offset: Offset(0, 20),
                  ),
                  BoxShadow(
                    color: const Color(0xFF2B3445).withOpacity(.5),
                    blurRadius: 30,
                    offset: const Offset(0, -20),
                  ),
                ]
              : [],
        ),
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: SvgPicture.asset(isSelected ? pathSelected : pathUnSelected),
        ),
      ),
    );
  }
}
