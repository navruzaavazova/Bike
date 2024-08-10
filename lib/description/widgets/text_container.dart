import 'package:bike/utils/app_string.dart';
import 'package:flutter/material.dart';

class TextContainer extends StatelessWidget {
  const TextContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 29, left: 20, right: 3),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            AppString.orangeBikeName,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 19,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          RichText(
            text: TextSpan(
              text: AppString.fullTextDescription,
              style: const TextStyle(
                  color: Colors.white60,
                  fontSize: 19,
                  fontWeight: FontWeight.normal,
                  letterSpacing: -0.3),
            ),
          ),
        ],
      ),
    );
  }
}
