import 'package:flutter/material.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';

class InfoContainer extends StatelessWidget {
  final Widget child;

  const InfoContainer({
    super.key,
    required this.child,
  });
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            colors: <Color>[Color(0xFF353F54), Color(0xFF222834)],
            begin: Alignment.topLeft,
            end: Alignment.center,
            stops: [0.0, 1.0],
          ),
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
          border: GradientBoxBorder(
            gradient: LinearGradient(
              colors: <Color>[
                const Color(0xFFFFFFFF).withOpacity(0.2),
                const Color(0xFF000000).withOpacity(0.2),
              ],
            ),
          ),
          boxShadow: [
            BoxShadow(
              blurRadius: 60,
              offset: const Offset(0, -20),
              color: const Color.fromARGB(0, 0, 0, 0).withOpacity(.15),
            ),
          ],
        ),
        child: child,
      ),
    );
  }
}
