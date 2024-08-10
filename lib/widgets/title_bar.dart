import 'package:bike/utils/app_icons.dart';
import 'package:bike/widgets/icon_gradient_button.dart';
import 'package:flutter/material.dart';

class TitleBar extends StatelessWidget {
  final Function() func;
  final String textTitle;

  const TitleBar({super.key, required this.func, required this.textTitle});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: func,
          child: IconGradientButton(path: AppIcons.chevronLeft.path),
        ),
        const SizedBox(
          width: 56,
        ),
        Text(
          textTitle,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.w700,
          ),
        )
      ],
    );
  }
}
