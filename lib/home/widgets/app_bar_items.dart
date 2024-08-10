import 'package:bike/utils/app_icons.dart';
import 'package:bike/widgets/icon_gradient_button.dart';
import 'package:flutter/material.dart';

class AppBarItems extends StatelessWidget {
  const AppBarItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          'Choose Your Bike',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        IconGradientButton(
          path: AppIcons.homeSearch.path,
        ),
      ],
    );
  }
}
