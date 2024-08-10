import 'package:flutter/material.dart';

class ScrollItemView extends StatelessWidget {
  const ScrollItemView({super.key, required this.child, required this.isSelected});
  final Widget child;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: _CurvePainter(isSelected: isSelected),
      child: child,
    );
  }
}

class _CurvePainter extends CustomPainter {
  final bool isSelected;

  _CurvePainter({required this.isSelected});
  @override
  void paint(Canvas canvas, Size size) {
    final Rect rect = Rect.fromLTWH(0.0, 0.0, size.width, size.height);

    Gradient gradient = LinearGradient(
      colors: <Color>[
        isSelected?  const Color(0xFF353F54):const Color(0xFF353F54).withOpacity(.6),
        isSelected? const Color(0xFF222834): const Color(0xFF222834).withOpacity(.6),
      ],
      transform: isSelected?  const GradientRotation(-14): const GradientRotation(-20),
      stops: const [0.0, 1.0],
    );

    final Paint paint = Paint()..shader = gradient.createShader(rect);
    paint.style = PaintingStyle.fill;

    Path path = Path();
    path.moveTo(size.width * 0.006060667, size.height * 0.1882408);
    path.cubicTo(
        size.width * 0.006060606,
        size.height * 0.1443362,
        size.width * 0.04730242,
        size.height * 0.1069601,
        size.width * 0.1032885,
        size.height * 0.1001258);
    path.lineTo(size.width * 0.8608667, size.height * 0.007651972);
    path.cubicTo(
        size.width * 0.9307455,
        size.height * -0.0008781878,
        size.width * 0.9939394,
        size.height * 0.04096493,
        size.width * 0.9939394,
        size.height * 0.09576667);
    path.lineTo(size.width * 0.9939394, size.height * 0.7948732);
    path.cubicTo(
        size.width * 0.9939394,
        size.height * 0.8379859,
        size.width * 0.9541394,
        size.height * 0.8749249,
        size.width * 0.8993879,
        size.height * 0.8826385);
    path.lineTo(size.width * 0.1418115, size.height * 0.9893380);
    path.cubicTo(
        size.width * 0.07112667,
        size.height * 0.9992958,
        size.width * 0.006061091,
        size.height * 0.9572300,
        size.width * 0.006061091,
        size.height * 0.9015775);
    path.lineTo(size.width * 0.006060667, size.height * 0.1882408);
    path.close();

    final Rect rectShadowTop = Rect.fromLTWH(0, -50, size.width, size.height);
    final Rect rectShadowBottom =
        Rect.fromLTWH(0, -30, size.width, size.height);

    canvas.drawShadow(
      Path()..addRect(rectShadowTop),
      const Color(0xFF3B475F).withOpacity(.5),
      60.0,
      true,
    );
    canvas.drawShadow(
      Path()..addRect(rectShadowBottom),
      const Color(0xFF10141C).withOpacity(.6),
      50.0,
      true,
    );

    canvas.drawPath(path, paint);

    Gradient borderGradient = LinearGradient(
      colors: <Color>[
        Colors.white.withOpacity(.1),
        Colors.black.withOpacity(.2),
      ],
      transform: const GradientRotation(-62),
      stops: const [0.0, 1.0],
    );

    final Paint borderPaint = Paint()
      ..shader = borderGradient.createShader(rect)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2.0;

    canvas.drawPath(path, borderPaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
