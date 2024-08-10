import 'package:bike/home/widgets/catalogs/icon_catalog_button.dart';
import 'package:bike/utils/app_icons.dart';
import 'package:flutter/material.dart';

class Catalogs extends StatelessWidget {
  final Function(int) func;
  final int selectedIndex;
  const Catalogs({
    super.key,
    required this.func,
    required this.selectedIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: List.generate(
        5,
        (index) {
          String pathSelected;
          String pathUnselected;
          switch (index) {
            case 0:
              pathSelected = AppIcons.homeAll.path;
              pathUnselected = AppIcons.homeAll.path;
              break;
            case 1:
              pathSelected = AppIcons.homeElectroBikeSelected.path;
              pathUnselected = AppIcons.homeElectroBikeUnselected.path;
              break;
            case 2:
              pathSelected = AppIcons.homeRoadSelected.path;
              pathUnselected = AppIcons.homeRoadUnselected.path;
              break;
            case 3:
              pathSelected = AppIcons.homeMountainSelected.path;
              pathUnselected = AppIcons.homeMountainUnselected.path;
              break;
            case 4:
              pathSelected = AppIcons.homeMilitaryHatSelected.path;
              pathUnselected = AppIcons.homeMilitaryHatUnselected.path;
              break;
            default:
              pathSelected = '';
              pathUnselected = '';
          }
          return Transform.translate(
            offset: Offset(0, -10.0 * index),
            child: IconCatalogButton(
              pathSelected: pathSelected,
              pathUnSelected: pathUnselected,
              func: () {
                func(index);
              },
              isSelected: selectedIndex == index,
              index: index < 3,
            ),
          );
        },
      ),
    );
  }
}
