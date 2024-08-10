import 'package:bike/description/description.dart';
import 'package:bike/main/main_page.dart';
import 'package:bike/my_cart_page/my_cart_page.dart';
import 'package:bike/utils/app_colors.dart';
import 'package:bike/utils/app_routes_names.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Poppins',
        primaryColor: AppColors.primaryColor,
      ),
      home: const   MainPage(),
      initialRoute: AppRoutesNames.myCart,
      routes: {
        AppRoutesNames.homePage: (context) => const MainPage(),
        AppRoutesNames.description: (context) => const Description(),
        AppRoutesNames.myCart: (context) => const MyCartPage(),

      },
    );
  }
}
