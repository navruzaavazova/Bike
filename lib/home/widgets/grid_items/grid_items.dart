import 'package:bike/home/widgets/grid_items/scroll_item_button.dart';
import 'package:bike/utils/app_icons.dart';
import 'package:bike/utils/app_images.dart';
import 'package:bike/utils/app_string.dart';
import 'package:flutter/material.dart';

class GridItems extends StatelessWidget {
  final int selectedImage;
  final Function(int) func;
  const GridItems({
    super.key,
    required this.selectedImage,
    required this.func,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 20,
        mainAxisSpacing: 10,
        childAspectRatio: 0.75,
      ),
      itemCount: 6,
      itemBuilder: (context, index) {
        if (index % 4 == 0 || index % 4 == 3) {
          return ScrollItemButton(
            path: AppImages.orangeBike.path,
            subject: AppString.orangeBikeType,
            name: AppString.orangeBikeName,
            price: AppString.orangeBikePrice,
            height: 88,
            func: () {
              func(index);
            },
            index: index,
            isSelected: selectedImage == index,
            heartPath: AppIcons.homeBlueHeart.path,
          );
        } else {
          return ScrollItemButton(
            path: AppImages.bicycleHat.path,
            subject: 'Road Helmet',
            name: 'SMITH - Trade',
            price: '\$ 120',
            height: 121,
            func: () {},
            isSelected: selectedImage == index,
            index: index,
            heartPath: AppIcons.homeHeart.path,
          );
        }
      },
    );
  }
}
