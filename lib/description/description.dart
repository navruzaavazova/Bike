import 'package:bike/description/widgets/buttons_container.dart';
import 'package:bike/description/widgets/dots.dart';
import 'package:bike/description/widgets/info_container.dart';
import 'package:bike/description/widgets/price_container.dart';
import 'package:bike/description/widgets/text_container.dart';
import 'package:bike/widgets/blue_gradient_button.dart';
import 'package:bike/widgets/title_bar.dart';
import 'package:bike/utils/app_background_image.dart';
import 'package:bike/utils/app_colors.dart';
import 'package:bike/utils/app_images.dart';
import 'package:bike/utils/app_routes_names.dart';
import 'package:bike/utils/app_string.dart';
import 'package:flutter/material.dart';

class Description extends StatefulWidget {
  const Description({
    super.key,
  });

  @override
  DescriptionState createState() => DescriptionState();
}

class DescriptionState extends State<Description> {
  int selectedDotIndex = 0;
  int selectedButtonIndex = -1;
  bool isSelect = false;

  void dotFunc(int index) {
    setState(() {
      selectedDotIndex = index;
    });
  }

  void buttonFunc(int index) {
    setState(() {
      selectedButtonIndex = index;
    });
  }
  void addCartFunc(){
    Navigator.pushNamed(context, AppRoutesNames.myCart);
  }

  void backToPreviousPage(){
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: Container(
        decoration:
            AppBackgroundImage.decoration(AppImages.backgroundImage.path),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 65, left: 20, right: 20),
              child: TitleBar(
                func: backToPreviousPage,
                textTitle: AppString.orangeBikeName,
              ),
            ),
            const SizedBox(
              height: 35,
            ),
            Image(
              image: AssetImage(
                AppImages.orangeBike.path,
              ),
              height: 210,
            ),
            const SizedBox(
              height: 8,
            ),
            Dots(
              selectedDotIndex: selectedDotIndex,
              func: dotFunc,
            ),
            const SizedBox(
              height: 60,
            ),
            InfoContainer(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 32,
                      left: 44,
                      right: 41,
                    ),
                    child: ButtonsContainer(
                      buttonFunc: buttonFunc,
                      selectedButtonIndex: selectedButtonIndex,
                      description: AppString.description,
                      specification: AppString.specification,
                    ),
                  ),
                  const TextContainer(),
                  const SizedBox(
                    height: 24,
                  ),
                  PriceContainer(
                    func: addCartFunc,
                    buttonChild: BlueGradientButton(buttonText: AppString.addToCart, func: addCartFunc, width: 160, isShadow: true),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
