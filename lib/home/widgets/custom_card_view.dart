import 'package:flutter/material.dart';

class CustomCardView extends StatelessWidget {
  const CustomCardView({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: const Size.fromHeight(240),
      painter: _CurvePainter(),
    );
  }
}

class _CurvePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final Rect rect = Rect.fromLTWH(0.0, 0.0, size.width, size.height);

    Gradient gradient = LinearGradient(
      colors: <Color>[
        const Color(0xFF353F54).withOpacity(.6),
        const Color(0xFF222834).withOpacity(.6),
      ],
      transform: const GradientRotation(-29),
      stops: const [0.0, 1.0],
    );

    final Paint paint = Paint()..shader = gradient.createShader(rect);
    paint.style = PaintingStyle.fill;

    Path path = Path();
    path.moveTo(0, size.height * 0.08403361);
    path.cubicTo(0, size.height * 0.03762311, size.width * 0.02558374, 0, size.width * 0.05714286, 0);
    path.lineTo(size.width * 0.9428571, 0);
    path.cubicTo(size.width * 0.9744171, 0, size.width, size.height * 0.03762315, size.width, size.height * 0.08403361);
    path.lineTo(size.width, size.height * 0.7653613);
    path.cubicTo(size.width, size.height * 0.8080798, size.width * 0.9782057, size.height * 0.8440000,
        size.width * 0.9493457, size.height * 0.8488487);
    path.lineTo(size.width * 0.06363114, size.height * 0.9977101);
    path.cubicTo(
        size.width * 0.02972257, size.height * 1.003408, 0, size.height * 0.9644076, 0, size.height * 0.9142185);
    path.lineTo(0, size.height * 0.08403361);
    path.close();

    final Rect rectShadowTop = Rect.fromLTWH(0, -50, size.width, size.height);
    final Rect rectShadowBottom = Rect.fromLTWH(0, -30, size.width, size.height);

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
        Colors.white.withOpacity(.2),
        Colors.black.withOpacity(.2),
      ],
      transform: const GradientRotation(-73),
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
