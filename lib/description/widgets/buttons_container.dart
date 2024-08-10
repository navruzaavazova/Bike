import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';

class ButtonsContainer extends StatelessWidget {
    final int selectedButtonIndex;
  final Function(int) buttonFunc;

  final String description;
  final String specification;
  const ButtonsContainer({super.key, required this.selectedButtonIndex, required this.buttonFunc, required this.description, required this.specification});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ...List.generate(
          2,
          (index) {
            return GestureDetector(
              onTap: () {
                buttonFunc(index);
              },
              child: Container(
                width: 133,
                height: 43,
                decoration: BoxDecoration(
                  color: selectedButtonIndex != index
                      ? const Color(0xff28303F)
                      : Colors.transparent,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: selectedButtonIndex != index
                      ? [
                          const BoxShadow(
                            blurRadius: 10,
                            offset: Offset(4, 4),
                            color: Color(0xFF252B39),
                            inset: false,
                          ),
                          const BoxShadow(
                            blurRadius: 10,
                            offset: Offset(-4, -4),
                            color: Color(0xFF38445A),
                            inset: false,
                          ),
                        ]
                      : [
                          const BoxShadow(
                            blurRadius: 8,
                            offset: Offset(4, 4),
                            color: Color(0xFF202633),
                            inset: true,
                          ),
                          const BoxShadow(
                            blurRadius: 8,
                            offset: Offset(-4, -4),
                            color: Color(0xFF364055),
                            inset: true,
                          ),
                        ],
                ),
                child: Center(
                  child: Text(
                    index == 0 ? description : specification,
                    style: selectedButtonIndex == index
                        ? const TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                          )
                        : const TextStyle(
                            color: Color(0xFF3CA4EB),
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                  ),
                ),
              ),
            );
          },
        ),
      ],
    );
  }
}
