import 'package:bike/home/widgets/app_bar_items.dart';
import 'package:bike/home/widgets/catalogs/catalogs.dart';
import 'package:bike/home/widgets/grid_items/grid_items.dart';
import 'package:bike/home/widgets/main_custom_card/custom_card_items.dart';
import 'package:bike/utils/app_background_image.dart';
import 'package:bike/utils/app_colors.dart';
import 'package:bike/utils/app_images.dart';
import 'package:bike/utils/app_routes_names.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  int selectedIndex = -1;
  int selectedImage = -1;

  void navigationButtonFunc(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  void scrollButtonFunc(int index) {
    setState(() {
      selectedImage = index;
    });
    Navigator.pushNamed(context, AppRoutesNames.description);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(64),
        child: AppBar(
          backgroundColor: AppColors.backgroundColor,
          flexibleSpace: const Padding(
            padding: EdgeInsets.only(
              top: 60,
              right: 20,
              left: 20,
            ),
            child: AppBarItems(),
          ),
        ),
      ),
      body: Container(
        decoration: AppBackgroundImage.decoration(AppImages.backgroundRec.path),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(
              left: 20,
              right: 20,
            ),
            child: Column(
              children: [
                const SizedBox(
                  height: 24,
                ),
                const CustomCardItems(),
                const SizedBox(
                  height: 26,
                ),
                Catalogs(
                  func: navigationButtonFunc,
                  selectedIndex: selectedIndex,
                ),
                GridItems(
                  selectedImage: selectedImage,
                  func: scrollButtonFunc,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
