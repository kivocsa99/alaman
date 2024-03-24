import 'package:flutter/material.dart';
import 'dart:math' as math;

class DashedCirclePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.blue // Color of the dashes
      ..strokeWidth = 2 // Thickness of the dashes
      ..style = PaintingStyle.stroke;

    double dashWidth = 10.0;
    double dashSpace = 5.0;
    double radius = size.width /
        10; // Use the width of the CustomPaint to determine the radius

    // Ensure the dash pattern scales correctly by calculating the circumference and adjusting the dashWidth and dashSpace if necessary
    double circumference = 2 * math.pi * radius;
    int totalDashes = (circumference / (dashWidth + dashSpace)).floor();
    double adjustedDashSpace =
        (circumference - (totalDashes * dashWidth)) / totalDashes;

    void drawDash(Offset start, Offset end) {
      canvas.drawLine(start, end, paint);
    }

    // Draw the dashed circle
    for (int i = 0; i < totalDashes; i++) {
      double angle = (2 * math.pi / totalDashes) * i;
      double xStart = radius + radius * math.cos(angle);
      double yStart = radius + radius * math.sin(angle);
      double xEnd = radius + radius * math.cos(angle + dashWidth / radius);
      double yEnd = radius + radius * math.sin(angle + dashWidth / radius);
      drawDash(Offset(xStart, yStart), Offset(xEnd, yEnd));
      angle += dashWidth / radius + adjustedDashSpace / radius;
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
