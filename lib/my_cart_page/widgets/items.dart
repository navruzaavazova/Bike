import 'package:bike/utils/app_colors.dart';
import 'package:flutter/material.dart';

class Items extends StatelessWidget {
  final Widget imageChild;
  final Widget addRemoveChild;
  final String bikeName;
  final String priceText;
  const Items({
    super.key,
    required this.imageChild,
    required this.bikeName,
    required this.priceText,
    required this.addRemoveChild,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      margin: const EdgeInsets.symmetric(
        horizontal: 20,
      ),
      child: Row(
        children: [
          imageChild,
          const SizedBox(
            width: 16,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 6.5,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    bikeName,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        priceText,
                        style: const TextStyle(
                          color: AppColors.priceColor,
                          fontSize: 13,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      addRemoveChild,
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
