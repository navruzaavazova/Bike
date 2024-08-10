import 'package:flutter/material.dart';

class Dots extends StatelessWidget {
  final int selectedDotIndex;
  final Function(int) func;

  const Dots({super.key, required this.selectedDotIndex, required this.func});
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ...List.generate(
          3,
          (index) {
            return GestureDetector(
              onTap: () {
                func(index);
              },
              child: Container(
                width: 6,
                height: 6,
                margin: const EdgeInsets.all(7),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: selectedDotIndex == index
                      ? Colors.white
                      : const Color(0x00FFFFFF).withOpacity(.2),
                ),
              ),
            );
          },
        ),
      ],
    );
  }
}
