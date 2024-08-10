import 'package:bike/utils/app_colors.dart';
import 'package:bike/utils/app_string.dart';
import 'package:flutter/material.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';

class PriceContainer extends StatelessWidget {
  final Function() func;
  final Widget buttonChild;
  const PriceContainer({
    super.key,
    required this.func, required this.buttonChild,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: double.infinity,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(50),
            topRight: Radius.circular(50),
          ),
          color: const Color(0xFF262E3D),
          border: GradientBoxBorder(
            gradient: LinearGradient(
              colors: <Color>[
                const Color(0xFFFFFFFF).withOpacity(.2),
                const Color(0xFF000000).withOpacity(.2),
              ],
            ),
          ),
          boxShadow: const [
            BoxShadow(
              blurRadius: 60,
              offset: Offset(0, -10),
              color: Color(0xFF1C222E),
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 35),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                AppString.orangeBikePrice,
                style: const TextStyle(
                  color: AppColors.priceDescription,
                  fontSize: 24,
                  fontWeight: FontWeight.normal,
                ),
              ),
              buttonChild,
            ],
          ),
        ),
      ),
    );
  }
}
