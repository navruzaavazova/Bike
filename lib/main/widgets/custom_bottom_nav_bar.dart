import 'package:flutter/material.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({
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
        Color(0xFF363E51),
        Color(0xFF181C24),
      ],
      stops: [0.0, 1.0],
    );

    final Paint paint = Paint()..shader = gradient.createShader(rect);
    paint.style = PaintingStyle.fill;

    Path path = Path();
    path.moveTo(0, size.height * 0.1923077);
    path.lineTo(size.width, 0);
    path.lineTo(size.width, size.height * 0.9951923);
    path.lineTo(0, size.height * 0.9951923);
    path.lineTo(0, size.height * 0.1923077);
    path.close();

    canvas.drawPath(path, paint);

    Gradient borderGradient = LinearGradient(
      colors: <Color>[
        Colors.white.withOpacity(.2),
        Colors.black.withOpacity(0),
      ],
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
