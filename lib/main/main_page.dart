import 'package:bike/cart/cart_page.dart';
import 'package:bike/doc/doc_page.dart';
import 'package:bike/home/home_page.dart';
import 'package:bike/main/widgets/bottom_item_widget.dart';
import 'package:bike/main/widgets/custom_bottom_nav_bar.dart';
import 'package:bike/map/map_page.dart';
import 'package:bike/profile/profile_page.dart';
import 'package:bike/utils/app_colors.dart';
import 'package:bike/utils/app_icons.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final pageController = PageController();
  final currentPageIndex = ValueNotifier(0);

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      backgroundColor: AppColors.backgroundColor,
      body: PageView(
        controller: pageController,
        physics: const NeverScrollableScrollPhysics(),
        onPageChanged: (value) {
          currentPageIndex.value = value;
        },
        children: const [
          HomePage(),
          MapPage(),
          CartPage(),
          ProfilePage(),
          DocPage(),
        ],
      ),
      bottomNavigationBar: CustomBottomNavBar(
        child: ValueListenableBuilder(
            valueListenable: currentPageIndex,
            builder: (context, value, child) {
              return Container(
                height: 104,
                color: Colors.transparent,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    BottomItemWidget(
                      onTap: () {
                        pageController.jumpToPage(0);
                      },
                      iconSelected: AppIcons.menuBikeSelected.path,
                      iconUnselected: AppIcons.menuBikeUnselected.path,
                      isSelected: value == 0,
                    ),
                    BottomItemWidget(
                      onTap: () {
                        pageController.jumpToPage(1);
                      },
                      iconSelected: AppIcons.menuMapSelected.path,
                      iconUnselected: AppIcons.menuMapUnselected.path,
                      isSelected: value == 1,
                    ),
                    BottomItemWidget(
                      onTap: () {
                        pageController.jumpToPage(2);
                      },
                      iconSelected: AppIcons.menuCartSelected.path,
                      iconUnselected: AppIcons.menuCartUnselected.path,
                      isSelected: value == 2,
                    ),
                    BottomItemWidget(
                      onTap: () {
                        pageController.jumpToPage(3);
                      },
                      iconSelected: AppIcons.menuProfileSelected.path,
                      iconUnselected: AppIcons.menuProfileUnselected.path,
                      isSelected: value == 3,
                    ),
                    BottomItemWidget(
                      onTap: () {
                        pageController.jumpToPage(4);
                      },
                      iconSelected: AppIcons.menuDocSelected.path,
                      iconUnselected: AppIcons.menuDocUnselected.path,
                      isSelected: value == 4,
                    ),
                  ],
                ),
              );
            }),
      ),
    );
  }
}
