import 'package:bike/main/main_page.dart';
import 'package:bike/utils/app_colors.dart';
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
      home: const MainPage(),
    );
  }
}
