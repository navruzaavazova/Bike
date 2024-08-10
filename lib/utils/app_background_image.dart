import 'package:flutter/material.dart';

class AppBackgroundImage {
  final String path;

  AppBackgroundImage({required this.path});

  static BoxDecoration decoration(String path) {
    return BoxDecoration(
      image: DecorationImage(
        image: AssetImage(path),
        fit: BoxFit.fitWidth,
      ),
    );
  }
}