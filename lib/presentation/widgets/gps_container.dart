import 'package:flutter/material.dart';

class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.5000000, 0);
    path_0.cubicTo(size.width * 0.2238971, 0, 0, size.height * 0.1879390, 0,
        size.height * 0.3935438);
    path_0.cubicTo(0, size.height * 0.7209649, size.width * 0.4758272,
        size.height, size.width * 0.5000000, size.height);
    path_0.cubicTo(size.width * 0.5241728, size.height, size.width,
        size.height * 0.7299752, size.width, size.height * 0.3935438);
    path_0.cubicTo(size.width, size.height * 0.1879390, size.width * 0.7761029,
        0, size.width * 0.5000000, 0);
    path_0.close();

    Paint paint_0_fill = Paint()..style = PaintingStyle.fill;
    paint_0_fill.color = const Color(0xffffc629).withOpacity(1.0);
    canvas.drawPath(path_0, paint_0_fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
