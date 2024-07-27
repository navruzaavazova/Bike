import 'package:flutter/material.dart';

class CustomSelectedItemWidget extends StatelessWidget {
  const CustomSelectedItemWidget({
    required this.child,
    super.key,
  });
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: _CurvePainter(),
      child: child,
    );
  }
}

class _CurvePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final Rect rect = Rect.fromLTWH(0.0, 0.0, size.width, size.height);

    Gradient gradient = const LinearGradient(
      colors: <Color>[
        Color(0xFF34C8E8),
        Color(0xFF4E4AF2),
      ],
      transform: GradientRotation(38),
      stops: [0.0, 1.0],
    );

    final Paint paint = Paint()..shader = gradient.createShader(rect);
    paint.style = PaintingStyle.fill;

    Path path = Path();
    path.moveTo(0, size.height * 0.3249643);
    path.cubicTo(0, size.height * 0.2398429, size.width * 0.05607667, size.height * 0.1665550, size.width * 0.1339807,
        size.height * 0.1498613);
    path.lineTo(size.width * 0.8006467, size.height * 0.007004161);
    path.cubicTo(size.width * 0.9037800, size.height * -0.01509555, size.width, size.height * 0.06942089, size.width,
        size.height * 0.1821071);
    path.lineTo(size.width, size.height * 0.6750357);
    path.cubicTo(size.width, size.height * 0.7601571, size.width * 0.9439233, size.height * 0.8334446,
        size.width * 0.8660200, size.height * 0.8501393);
    path.lineTo(size.width * 0.1993533, size.height * 0.9929964);
    path.cubicTo(
        size.width * 0.09622083, size.height * 1.015096, 0, size.height * 0.9305786, 0, size.height * 0.8178929);
    path.lineTo(0, size.height * 0.3249643);
    path.close();

    final Rect rectShadow = Rect.fromLTWH(0, 0, size.width, size.height);

    canvas.drawShadow(
      Path()..addRect(rectShadow),
      const Color(0xFF10141C).withOpacity(.6),
      30.0,
      true,
    );

    canvas.drawPath(path, paint);

    Gradient borderGradient = LinearGradient(
      colors: <Color>[
        Colors.white.withOpacity(.6),
        Colors.black.withOpacity(.6),
      ],
      transform: const GradientRotation(45),
      stops: const [0.0, 1.0],
    );

    final Paint borderPaint = Paint()
      ..shader = borderGradient.createShader(rect)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1.0;

    canvas.drawPath(path, borderPaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
