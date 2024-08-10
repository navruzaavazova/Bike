import 'package:bike/home/widgets/grid_items/scroll_item_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ScrollItemButton extends StatelessWidget {
  final String path;
  final String subject;
  final String name;
  final String price;
  final double height;
  final bool isSelected;
  final Function() func;
  final int index;
  final String heartPath;

  const ScrollItemButton({
    super.key,
    required this.path,
    required this.subject,
    required this.name,
    required this.price,
    required this.height,
    required this.isSelected,
    required this.func,
    required this.index, required this.heartPath,
  });
  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.transparent,
      hoverColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: func,
      child: ScrollItemView(
        isSelected: isSelected,
        child: Padding(
          padding: const EdgeInsets.only(
            top: 14,
            right: 8,
            left: 16,
            bottom: 19,
          ),
          child: Stack(
            children: [
              Positioned(
                top: (index % 4 == 0 || index % 4 == 3)
                    ? 25
                    : 20, //reduce repeating this condition
                left: 0,
                right: 10,
                child: Column(
                  children: [
                    Image.asset(
                      path,
                      height: height,
                    ),
                    Container(
                      alignment: Alignment.bottomLeft,
                      padding: EdgeInsets.only(
                          top: (index % 4 == 0 || index % 4 == 3) ? 20 : 13),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            subject,
                            style: const TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w500,
                              color: Colors.white60,
                            ),
                          ),
                          Text(
                            name,
                            style: const TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            price,
                            style: const TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w500,
                              color: Colors.white60,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.topRight,
                child: IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset(
                    heartPath,
                    width: 24,
                    height: 24,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
