import 'package:bike/home/widgets/main_custom_card/custom_card_view.dart';
import 'package:bike/utils/app_images.dart';
import 'package:flutter/material.dart';

class CustomCardItems extends StatelessWidget {
  const CustomCardItems({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomCardView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 17, vertical: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              image: AssetImage(
                AppImages.whiteBike.path,
              ),
              height: 153,
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Text(
                '30% off',
                style: TextStyle(
                  color: Colors.white.withOpacity(.6),
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
