import 'package:flutter/material.dart';
import 'dart:ui' as ui;

import 'hh.dart';

class PathPainter extends CustomPainter {
  final int steps;
  final double spacing;
  final Paint pathPaint;

  PathPainter({required this.steps, this.spacing = 20.0})
      : pathPaint = Paint()
          ..color = Colors.grey
          ..style = PaintingStyle.stroke
          ..strokeWidth = 3;

  @override
  void paint(Canvas canvas, Size size) {
    double startX = 0;
    double startY = size.height / 2;

    Path path = Path();
    path.moveTo(startX, startY);

    for (int i = 0; i < steps; i++) {
      // Draw a line for each step, horizontally for simplicity
      startX += spacing;
      path.lineTo(startX, startY);

      // If not the last step, draw a small gap for the heart icon
      if (i < steps - 1) {
        startX += spacing; // Gap for the heart icon
        path.moveTo(startX, startY);
      }
    }

    // Draw the path
    canvas.drawPath(path, pathPaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}

class DynamicPathWidget extends StatefulWidget {
  final int steps;

  const DynamicPathWidget({Key? key, required this.steps}) : super(key: key);

  @override
  _DynamicPathWidgetState createState() => _DynamicPathWidgetState();
}

class _DynamicPathWidgetState extends State<DynamicPathWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 2),
    );

    _animation =
        Tween<double>(begin: 0.0, end: 1.0).animate(_animationController)
          ..addListener(() {
            setState(() {});
          });

    _animationController.forward();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: SingleChildScrollView(
        child: CustomPaint(
          size: Size(
              MediaQuery.of(context).size.width,
              (MediaQuery.of(context).size.height * 1.1073181615350292)
                  .toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
          painter: RPSCustomPainter(),
        ),
      ),
    );
  }
}
