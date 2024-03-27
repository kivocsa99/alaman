import 'dart:math' as math;

import 'package:flutter/material.dart';

//Add this CustomPaint widget to the Widget Tree

//Copy this CustomPainter code to the Bottom of the File

extension DrawOnPathExtension on Canvas {
  void drawOnPath(
    Path path, {
    required double spacing,
    required int steps,
    required Color defaultColor,
    required Color stepCompletedColor,
    required double
        offsetFromPath, // The fixed distance from the center of the path
  }) {
    final paint = Paint()..style = PaintingStyle.fill;
    final pathMetrics = path.computeMetrics();
    double distance = 0.0;
    int shapeCounter = 0;

    // Define a function to determine if the offset should be on the right based on the tangent angle
    bool isRightSide(Offset vector) {
      // A vector with a positive y component means we're moving "downwards" on the canvas,
      // which is to the "right" from the perspective of the path direction.
      return vector.dy > 0;
    }

    for (final metric in pathMetrics) {
      while (distance < metric.length) {
        final tangent = metric.getTangentForOffset(distance);
        if (tangent == null) continue;

        final normal =
            Offset(-tangent.vector.dy, tangent.vector.dx).normalize();
        // Only offset to the right side
        final offsetPosition = isRightSide(tangent.vector)
            ? tangent.position + normal * offsetFromPath
            : tangent.position - normal * offsetFromPath;

        // Determine the color based on the step count
        paint.color =
            shapeCounter < steps * 5 ? defaultColor : stepCompletedColor;

        // Draw a circle at the offset position
        drawCircle(this, offsetPosition, paint);

        // Increment distance and shape counter
        distance += spacing;
        shapeCounter++;
      }

      // Reset distance for the next metric
      distance = 0.0;
    }
  }

  void drawCircle(Canvas canvas, Offset position, Paint paint) {
    canvas.drawCircle(position, 5.0, paint); // Circle radius of 5.0
  }
}

extension on Offset {
  // Normalize the Offset to get a unit vector
  Offset normalize() {
    final length = math.sqrt(dx * dx + dy * dy);
    return Offset(dx / length, dy / length);
  }
}

class RPSCustomPainter1 extends CustomPainter {
  final int stepNumber;

  RPSCustomPainter1({required this.stepNumber});

  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.7180468, size.height * 0.02709575);
    path_0.lineTo(size.width * 0.7585899, size.height * 0.04322462);
    path_0.lineTo(size.width * 0.5463654, size.height * 0.1534690);
    path_0.lineTo(size.width * 0.5066828, size.height * 0.1674390);
    path_0.lineTo(size.width * 0.4452413, size.height * 0.1719870);
    path_0.lineTo(size.width * 0.3967298, size.height * 0.1617205);
    path_0.lineTo(size.width * 0.2607467, size.height * 0.09137139);
    path_0.lineTo(size.width * 0.1801492, size.height * 0.04966274);
    path_0.lineTo(size.width * 0.1535241, size.height * 0.03829289);
    path_0.lineTo(size.width * 0.1110580, size.height * 0.03719908);
    path_0.lineTo(size.width * 0.07781390, size.height * 0.04915422);
    path_0.lineTo(size.width * 0.06558509, size.height * 0.06854533);
    path_0.lineTo(size.width * 0.08100125, size.height * 0.09115071);
    path_0.lineTo(size.width * 0.3775313, size.height * 0.2422786);
    path_0.lineTo(size.width * 0.5260088, size.height * 0.3199390);
    path_0.lineTo(size.width * 0.5832749, size.height * 0.3077632);
    path_0.lineTo(size.width * 0.6205457, size.height * 0.2884680);
    path_0.lineTo(size.width * 0.7098659, size.height * 0.2422786);
    path_0.lineTo(size.width * 0.7729755, size.height * 0.2284525);
    path_0.lineTo(size.width * 0.8304328, size.height * 0.2393905);
    path_0.lineTo(size.width * 0.8658337, size.height * 0.2554810);
    path_0.lineTo(size.width * 0.9350524, size.height * 0.2889861);
    path_0.lineTo(size.width * 0.9755636, size.height * 0.3107759);
    path_0.lineTo(size.width * 0.9982788, size.height * 0.3450582);
    path_0.lineTo(size.width * 0.9873037, size.height * 0.3732573);
    path_0.lineTo(size.width * 0.9598287, size.height * 0.3941836);
    path_0.lineTo(size.width * 0.9035826, size.height * 0.4244648);
    path_0.lineTo(size.width * 0.7605979, size.height * 0.4929238);
    path_0.lineTo(size.width * 0.6050551, size.height * 0.5751610);
    path_0.lineTo(size.width * 0.5392469, size.height * 0.6110743);
    path_0.lineTo(size.width * 0.4607637, size.height * 0.6302256);
    path_0.lineTo(size.width * 0.3966235, size.height * 0.6215039);
    path_0.lineTo(size.width * 0.3524150, size.height * 0.6004145);
    path_0.lineTo(size.width * 0.2721787, size.height * 0.5561536);
    path_0.lineTo(size.width * 0.2467648, size.height * 0.5403798);
    path_0.lineTo(size.width * 0.2365122, size.height * 0.5156923);
    path_0.lineTo(size.width * 0.2399545, size.height * 0.4979611);
    path_0.lineTo(size.width * 0.2555832, size.height * 0.4740029);
    path_0.lineTo(size.width * 0.2765772, size.height * 0.4647535);
    path_0.lineTo(size.width * 0.2883704, size.height * 0.4458325);
    path_0.lineTo(size.width * 0.2851406, size.height * 0.4353166);
    path_0.lineTo(size.width * 0.2691613, size.height * 0.4266237);
    path_0.lineTo(size.width * 0.1527698, size.height * 0.3681721);
    path_0.lineTo(size.width * 0.1179639, size.height * 0.3632883);
    path_0.lineTo(size.width * 0.09614118, size.height * 0.3655431);
    path_0.lineTo(size.width * 0.07278851, size.height * 0.3788031);
    path_0.lineTo(size.width * 0.06388517, size.height * 0.3943659);
    path_0.lineTo(size.width * 0.07820701, size.height * 0.4161270);
    path_0.lineTo(size.width * 0.1041414, size.height * 0.4326012);
    path_0.lineTo(size.width * 0.1138416, size.height * 0.4567322);
    path_0.lineTo(size.width * 0.1047683, size.height * 0.4849218);
    path_0.lineTo(size.width * 0.08567604, size.height * 0.4976637);
    path_0.lineTo(size.width * 0.06644568, size.height * 0.5117584);
    path_0.lineTo(size.width * 0.06388517, size.height * 0.5238287);
    path_0.lineTo(size.width * 0.07097172, size.height * 0.5405237);
    path_0.lineTo(size.width * 0.3899620, size.height * 0.7089222);
    path_0.lineTo(size.width * 0.5029536, size.height * 0.7667981);
    path_0.lineTo(size.width * 0.5419349, size.height * 0.7749921);
    path_0.lineTo(size.width * 0.5645120, size.height * 0.7719985);
    path_0.lineTo(size.width * 0.6117592, size.height * 0.7522140);
    path_0.lineTo(size.width * 0.6923780, size.height * 0.7080011);
    path_0.lineTo(size.width * 0.7431206, size.height * 0.6833137);
    path_0.lineTo(size.width * 0.8080151, size.height * 0.6485037);
    path_0.lineTo(size.width * 0.8541361, size.height * 0.6376711);
    path_0.lineTo(size.width * 0.8930962, size.height * 0.6366445);
    path_0.lineTo(size.width * 0.9610293, size.height * 0.6549898);
    path_0.lineTo(size.width * 0.9933278, size.height * 0.6862209);
    path_0.lineTo(size.width * 0.9846051, size.height * 0.7166077);
    path_0.lineTo(size.width * 0.9506279, size.height * 0.7450563);
    path_0.lineTo(size.width * 0.8039672, size.height * 0.8161442);
    path_0.lineTo(size.width * 0.7521408, size.height * 0.8452837);
    path_0.lineTo(size.width * 0.7301375, size.height * 0.8622089);
    path_0.lineTo(size.width * 0.7290750, size.height * 0.8811587);
    path_0.lineTo(size.width * 0.7547226, size.height * 0.8975274);
    path_0.lineTo(size.width * 0.7695332, size.height * 0.9127160);
    path_0.lineTo(size.width * 0.7793927, size.height * 0.9243449);
    path_0.lineTo(size.width * 0.7789465, size.height * 0.9451848);
    path_0.lineTo(size.width * 0.7551476, size.height * 0.9706687);
    path_0.lineTo(size.width * 0.7082404, size.height * 0.9895033);
    path_0.lineTo(size.width * 0.6569877, size.height * 0.9948572);
    path_0.lineTo(size.width * 0.6282378, size.height * 0.9920267);
    path_0.lineTo(size.width * 0.5725016, size.height * 0.9744298);
    path_0.lineTo(size.width * 0.5310873, size.height * 0.9512775);
    path_0.lineTo(size.width * 0.4816515, size.height * 0.9247095);
    path_0.lineTo(size.width * 0.4392491, size.height * 0.9106531);
    path_0.lineTo(size.width * 0.3966235, size.height * 0.9176190);
    path_0.lineTo(size.width * 0.3565054, size.height * 0.9344099);
    path_0.lineTo(size.width * 0.3246850, size.height * 0.9391881);
    path_0.lineTo(size.width * 0.2660696, size.height * 0.9344099);
    path_0.lineTo(size.width * 0.2456280, size.height * 0.9260816);
    path_0.lineTo(size.width * 0.1933873, size.height * 0.9024783);
    path_0.lineTo(size.width * 0.1445146, size.height * 0.8758240);
    path_0.lineTo(size.width * 0.1218737, size.height * 0.8622089);
    path_0.lineTo(size.width * 0.1673254, size.height * 0.8428274);
    path_0.lineTo(size.width * 0.2722318, size.height * 0.9009815);
    path_0.lineTo(size.width * 0.3126793, size.height * 0.9096649);
    path_0.lineTo(size.width * 0.3505557, size.height * 0.9011063);
    path_0.lineTo(size.width * 0.3743227, size.height * 0.8880286);
    path_0.lineTo(size.width * 0.4257134, size.height * 0.8826651);
    path_0.lineTo(size.width * 0.4815771, size.height * 0.8886042);
    path_0.lineTo(size.width * 0.5185823, size.height * 0.9014133);
    path_0.lineTo(size.width * 0.5595397, size.height * 0.9229153);
    path_0.lineTo(size.width * 0.6098468, size.height * 0.9499439);
    path_0.lineTo(size.width * 0.6647543, size.height * 0.9672241);
    path_0.lineTo(size.width * 0.7005801, size.height * 0.9561229);
    path_0.lineTo(size.width * 0.7179512, size.height * 0.9415292);
    path_0.lineTo(size.width * 0.7179512, size.height * 0.9280293);
    path_0.lineTo(size.width * 0.7068911, size.height * 0.9127160);
    path_0.lineTo(size.width * 0.6867045, size.height * 0.8975274);
    path_0.lineTo(size.width * 0.6740613, size.height * 0.8811587);
    path_0.lineTo(size.width * 0.6740613, size.height * 0.8651929);
    path_0.lineTo(size.width * 0.6790973, size.height * 0.8498892);
    path_0.lineTo(size.width * 0.6906037, size.height * 0.8335492);
    path_0.lineTo(size.width * 0.8937549, size.height * 0.7272099);
    path_0.lineTo(size.width * 0.9333312, size.height * 0.7059382);
    path_0.lineTo(size.width * 0.9358705, size.height * 0.6904426);
    path_0.lineTo(size.width * 0.9233973, size.height * 0.6779502);
    path_0.lineTo(size.width * 0.9100635, size.height * 0.6667722);
    path_0.lineTo(size.width * 0.8955292, size.height * 0.6680003);
    path_0.lineTo(size.width * 0.8606489, size.height * 0.6648341);
    path_0.lineTo(size.width * 0.8164722, size.height * 0.6822486);
    path_0.lineTo(size.width * 0.7452668, size.height * 0.7216737);
    path_0.lineTo(size.width * 0.6578271, size.height * 0.7673066);
    path_0.lineTo(size.width * 0.5956312, size.height * 0.7950644);
    path_0.lineTo(size.width * 0.5511995, size.height * 0.8046592);
    path_0.lineTo(size.width * 0.4933703, size.height * 0.7980100);
    path_0.lineTo(size.width * 0.4545909, size.height * 0.7847692);
    path_0.lineTo(size.width * 0.03892820, size.height * 0.5665064);
    path_0.lineTo(size.width * 0.008340239, size.height * 0.5365131);
    path_0.lineTo(size.width * 0.003527337, size.height * 0.5134759);
    path_0.lineTo(size.width * 0.01826353, size.height * 0.4914078);
    path_0.lineTo(size.width * 0.04395359, size.height * 0.4764591);
    path_0.lineTo(size.width * 0.05453560, size.height * 0.4598985);
    path_0.lineTo(size.width * 0.05588492, size.height * 0.4498047);
    path_0.lineTo(size.width * 0.03163979, size.height * 0.4302409);
    path_0.lineTo(size.width * 0.01340813, size.height * 0.4089884);
    path_0.lineTo(size.width * 0.008340239, size.height * 0.3902881);
    path_0.lineTo(size.width * 0.02125964, size.height * 0.3624440);
    path_0.lineTo(size.width * 0.04919147, size.height * 0.3438013);
    path_0.lineTo(size.width * 0.08431610, size.height * 0.3354250);
    path_0.lineTo(size.width * 0.1433352, size.height * 0.3320572);
    path_0.lineTo(size.width * 0.1968190, size.height * 0.3464974);
    path_0.lineTo(size.width * 0.2771828, size.height * 0.3903361);
    path_0.lineTo(size.width * 0.3188096, size.height * 0.4118381);
    path_0.lineTo(size.width * 0.3344808, size.height * 0.4280629);
    path_0.lineTo(size.width * 0.3424385, size.height * 0.4426662);
    path_0.lineTo(size.width * 0.3355751, size.height * 0.4748568);
    path_0.lineTo(size.width * 0.3045834, size.height * 0.4914078);
    path_0.lineTo(size.width * 0.2930027, size.height * 0.5031039);
    path_0.lineTo(size.width * 0.2930027, size.height * 0.5199236);
    path_0.lineTo(size.width * 0.3055609, size.height * 0.5349395);
    path_0.lineTo(size.width * 0.3848516, size.height * 0.5768400);
    path_0.lineTo(size.width * 0.4280402, size.height * 0.5960393);
    path_0.lineTo(size.width * 0.4721532, size.height * 0.6004145);
    path_0.lineTo(size.width * 0.4980876, size.height * 0.5913186);
    path_0.lineTo(size.width * 0.9008627, size.height * 0.3799353);
    path_0.lineTo(size.width * 0.9333100, size.height * 0.3623480);
    path_0.lineTo(size.width * 0.9405559, size.height * 0.3441083);
    path_0.lineTo(size.width * 0.9300695, size.height * 0.3320572);
    path_0.lineTo(size.width * 0.8011411, size.height * 0.2642315);
    path_0.lineTo(size.width * 0.7637322, size.height * 0.2617081);
    path_0.lineTo(size.width * 0.7242409, size.height * 0.2749969);
    path_0.lineTo(size.width * 0.6447908, size.height * 0.3163985);
    path_0.lineTo(size.width * 0.6063088, size.height * 0.3347917);
    path_0.lineTo(size.width * 0.5646183, size.height * 0.3454132);
    path_0.lineTo(size.width * 0.5051741, size.height * 0.3411435);
    path_0.lineTo(size.width * 0.4420539, size.height * 0.3163985);
    path_0.lineTo(size.width * 0.04462294, size.height * 0.1069150);
    path_0.lineTo(size.width * 0.02193961, size.height * 0.08686183);
    path_0.lineTo(size.width * 0.01177196, size.height * 0.06529269);
    path_0.lineTo(size.width * 0.02783621, size.height * 0.03075137);
    path_0.lineTo(size.width * 0.06909118, size.height * 0.01136985);
    path_0.lineTo(size.width * 0.1378318, size.height * 0.003444537);
    path_0.lineTo(size.width * 0.1783961, size.height * 0.01136985);
    path_0.lineTo(size.width * 0.3515544, size.height * 0.09681164);
    path_0.lineTo(size.width * 0.4009477, size.height * 0.1242528);
    path_0.lineTo(size.width * 0.4404709, size.height * 0.1401994);
    path_0.lineTo(size.width * 0.4821083, size.height * 0.1407367);
    path_0.lineTo(size.width * 0.5315229, size.height * 0.1189277);
    path_0.lineTo(size.width * 0.6837296, size.height * 0.03577905);
    path_0.lineTo(size.width * 0.7055524, size.height * 0.02407338);
    path_0.lineTo(size.width * 0.7180468, size.height * 0.02709575);
    path_0.close();

    Paint paint_0_fill = Paint()..style = PaintingStyle.fill;
    paint_0_fill.color = Color(0xffffc629).withOpacity(1.0);
    canvas.drawPath(path_0, paint_0_fill);
    // Set your colors and spacing here
    final Color defaultColor = Colors.blue;
    final Color stepCompletedColor = Colors.blue.shade100;
    final double spacing = 20.0; // Adjust spacing based on your requirement

    // Use the drawOnPath method
    canvas.drawOnPath(
      path_0,
      spacing: spacing,
      offsetFromPath: 10,
      steps: stepNumber,
      defaultColor: defaultColor,
      stepCompletedColor: stepCompletedColor,
    );
  }

  void drawCircle(Canvas canvas, Offset position, Paint paint) {
    canvas.drawCircle(position, 10.0, paint); // Circle radius of 10
  }

  // Simplified heart drawing function, you'll want to replace this with your actual heart drawing logic
  void drawHeart(Canvas canvas, Offset position, Paint paint) {
    Path heartPath = Path();
    // This is a placeholder, implement your heart drawing logic here
    heartPath.addOval(Rect.fromCircle(center: position, radius: 10));
    canvas.drawPath(heartPath, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
