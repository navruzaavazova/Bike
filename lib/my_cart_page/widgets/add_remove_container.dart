import 'package:bike/utils/app_colors.dart';
import 'package:bike/utils/app_icons.dart';
import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';

class AddRemoveContainer extends StatelessWidget {
  final int number;
  final Function() addFunc;
  final Function() removeFunc;
  const AddRemoveContainer({
    super.key,
    required this.number,
    required this.addFunc,
    required this.removeFunc,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      width: 79,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        boxShadow: const [
          BoxShadow(
            blurRadius: 4,
            offset: Offset(2, 2),
            color: Color(0xFF1E2531),
            inset: true,
          ),
          BoxShadow(
            blurRadius: 4,
            offset: Offset(-2, -2),
            color: Color(0xFF273041),
            inset: true,
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: addFunc,
            child: Container(
              width: 24,
              height: 24,
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: AppColors.blueGradient,
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,

                  stops: [0, 1],
                ),
                borderRadius: BorderRadius.circular(5),
                border: GradientBoxBorder(
                  gradient: LinearGradient(
                    colors: <Color>[
                      const Color(0xFFffffff).withOpacity(.6),
                      const Color(0xFF000000).withOpacity(.6)
                    ],
                    transform: const GradientRotation(70),
                    stops: const [0.0, 1.0],
                  ),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: SvgPicture.asset(
                  AppIcons.plus.path,
                ),
              ),
            ),
          ),
          Text(
            number.toString(),
            style: const TextStyle(
              color: Colors.white60,
              fontSize: 13,
              fontWeight: FontWeight.w600,
            ),
          ),
          GestureDetector(
            onTap: removeFunc,
            child: Container(
              width: 24,
              height: 24,
              decoration: BoxDecoration(
                color: const Color(0xFF353F54),
                borderRadius: BorderRadius.circular(5),
                border: GradientBoxBorder(
                  gradient: LinearGradient(
                    colors: <Color>[
                      const Color(0xFFffffff).withOpacity(.2),
                      const Color(0xFF000000).withOpacity(.2)
                    ],
                    transform: const GradientRotation(70),
                    stops: const [0.0, 1.0],
                  ),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: SvgPicture.asset(
                  AppIcons.minus.path,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
