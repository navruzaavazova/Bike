import 'package:bike/my_cart_page/widgets/apply_container.dart';
import 'package:bike/my_cart_page/widgets/cart_items.dart';
import 'package:bike/my_cart_page/widgets/checkout.dart';
import 'package:bike/my_cart_page/widgets/custom_image.dart';
import 'package:bike/my_cart_page/widgets/text_row.dart';
import 'package:bike/utils/app_colors.dart';
import 'package:bike/utils/app_icons.dart';
import 'package:bike/utils/app_images.dart';
import 'package:bike/utils/app_string.dart';
import 'package:bike/widgets/blue_gradient_button.dart';
import 'package:bike/widgets/icon_gradient_button.dart';
import 'package:bike/widgets/title_bar.dart';
import 'package:flutter/material.dart';

class MyCartPage extends StatefulWidget {
  const MyCartPage({super.key});

  @override
  MyCartPageState createState() => MyCartPageState();
}

class MyCartPageState extends State<MyCartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(64),
        child: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: AppColors.backgroundColor,
          flexibleSpace: Padding(
            padding: const EdgeInsets.only(
              top: 60,
              right: 20,
              left: 20,
            ),
            child: TitleBar(
                func: () {
                  Navigator.pop(context);
                },
                textTitle: AppString.myCartTitle),
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: ListView(
                children: [
                  CartItem(
                    imageChild:
                        CustomImage(imagePath: AppImages.orangeBike.path),
                    bikeName: AppString.orangeBikeName,
                    priceText: AppString.orangeBikePrice,
                  ),
                  CartItem(
                    imageChild:
                        CustomImage(imagePath: AppImages.blackBike.path),
                    bikeName: AppString.blackBikeName,
                    priceText: AppString.blackBikePrice,
                  ),
                  CartItem(
                    imageChild:
                        CustomImage(imagePath: AppImages.bicycleHat.path),
                    bikeName: AppString.hatName,
                    priceText: AppString.hatPrice,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  
                  SizedBox(
                    height: 71,
                    child: Center(
                      child: Text(
                        AppString.freeShipping,
                        style: const TextStyle(
                          color: Colors.white60,
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                  ApplyContainer(
                    child: BlueGradientButton(
                      buttonText: AppString.apply,
                      func: () {},
                      width: 114,
                      isShadow: false,
                    ),
                  ),
                  const SizedBox(height: 16),
                  TextRow(
                    leftText: AppString.subtotal,
                    rightText: AppString.subPrice,
                    sizeRight: 15,
                    colorRight: Colors.white60,
                  ),
                  const SizedBox(height: 8),
                  TextRow(
                    leftText: AppString.deliveryFee,
                    rightText: AppString.feePrice,
                  ),
                  const SizedBox(height: 8),
                  TextRow(
                    leftText: AppString.discountMyCart,
                    rightText: AppString.discountPrice,
                  ),
                  const SizedBox(height: 24),
                  TextRow(
                    leftText: AppString.total,
                    rightText: AppString.totalPrice,
                    sizeRight: 17,
                    colorRight: const Color(0xFF38B8EA),
                    fontWeight: FontWeight.bold,
                  ),
                  Center(
                    child: Checkout(
                      checkoutText: AppString.checkout,
                      child: IconGradientButton(
                          path: AppIcons.chevronForward.path),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
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
