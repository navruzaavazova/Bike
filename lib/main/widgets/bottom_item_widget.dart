import 'package:bike/main/widgets/custom_selected_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomItemWidget extends StatelessWidget {
  const BottomItemWidget({
    required this.iconSelected,
    required this.iconUnselected,
    required this.onTap,
    this.isSelected = false,
    this.color,
    super.key,
  });
  final String iconUnselected;
  final String iconSelected;
  final Function() onTap;
  final Color? color;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      splashColor: Colors.transparent,
      hoverColor: Colors.transparent,
      highlightColor: Colors.transparent,
      child: Container(
        width: 75,
        height: 60,
        alignment: Alignment.bottomCenter,
        child: isSelected
            ? SizedBox(
                height: 60,
                width: 60,
                child: CustomSelectedItemWidget(
                  child: Center(
                    child: SvgPicture.asset(
                      iconSelected,
                    ),
                  ),
                ),
              )
            : Padding(
                padding: const EdgeInsets.only(bottom: 8),
                child: SvgPicture.asset(
                  iconUnselected,
                  color: color,
                ),
              ),
      ),
    );
  }
}
