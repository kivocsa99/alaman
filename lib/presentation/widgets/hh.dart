import 'dart:ui' as ui;
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:path_animator/path_animator.dart';

//Add this CustomPaint widget to the Widget Tree

//Copy this CustomPainter code to the Bottom of the File
class RPSCustomPainter extends CustomPainter {
  final AnimationController controller;

  RPSCustomPainter({super.repaint, required this.controller});
  @override
  void paint(Canvas canvas, Size size) {
    final Path path = createYourPath(size); // Your method to create the path
    Paint paint_fill = Paint()..style = PaintingStyle.fill;
    paint_fill.color = Color(0xffffc629).withOpacity(1.0);
    final Paint ovalPaint = Paint()
      ..color = Colors.blue
      ..style = PaintingStyle.fill;

    canvas.drawPath(path, paint_fill);
    // Path metrics to find points along the path
    final PathMetrics pathMetrics = path.computeMetrics();
    for (final PathMetric pathMetric in pathMetrics) {
      final double segmentLength =
          pathMetric.length / 50; // Number of ovals along the path

      for (double distance = 200;
          distance < pathMetric.length;
          distance += segmentLength) {
        final Tangent? tangent = pathMetric.getTangentForOffset(distance);
        if (tangent != null) {
          // Get the normal vector (perpe ndicular) to the path
          Offset normalVector = Offset(-tangent.vector.dy, tangent.vector.dx)
                  .normalize() *
              10; // 10 is the distance from the path to the center of the oval

          // Calculate the centers of both ovals
          Offset centerRight = tangent.position + normalVector;

          // Draw the ovals

          canvas.drawOval(
              Rect.fromCenter(center: centerRight, width: 10, height: 10),
              ovalPaint);
        }
      }
    }

    Path path_1 = Path();

    path_1.moveTo(size.width * 0.1883407, size.height * 0.3403855);
    path_1.cubicTo(
        size.width * 0.1856952,
        size.height * 0.3394260,
        size.width * 0.1830178,
        size.height * 0.3385241,
        size.width * 0.1803192,
        size.height * 0.3376894);
    path_1.cubicTo(
        size.width * 0.1740826,
        size.height * 0.3358280,
        size.width * 0.1677397,
        size.height * 0.3343120,
        size.width * 0.1613013,
        size.height * 0.3330935);
    path_1.cubicTo(
        size.width * 0.1484456,
        size.height * 0.3306852,
        size.width * 0.1352925,
        size.height * 0.3296201,
        size.width * 0.1221500,
        size.height * 0.3296489);
    path_1.cubicTo(
        size.width * 0.1090075,
        size.height * 0.3297257,
        size.width * 0.09585432,
        size.height * 0.3309058,
        size.width * 0.08301991,
        size.height * 0.3334485);
    path_1.cubicTo(
        size.width * 0.07662396,
        size.height * 0.3347150,
        size.width * 0.07027050,
        size.height * 0.3362789,
        size.width * 0.06406579,
        size.height * 0.3382171);
    path_1.cubicTo(
        size.width * 0.05899790,
        size.height * 0.3398290,
        size.width * 0.05401500,
        size.height * 0.3416712,
        size.width * 0.04919147,
        size.height * 0.3438013);
    path_1.cubicTo(
        size.width * 0.04562164,
        size.height * 0.3452789,
        size.width * 0.04218992,
        size.height * 0.3468620,
        size.width * 0.03892820,
        size.height * 0.3485699);
    path_1.lineTo(size.width * 0.04462294, size.height * 0.3515539);
    path_1.cubicTo(
        size.width * 0.05349440,
        size.height * 0.3469292,
        size.width * 0.06350269,
        size.height * 0.3432640,
        size.width * 0.07416969,
        size.height * 0.3405198);
    path_1.cubicTo(
        size.width * 0.07702769,
        size.height * 0.3398866,
        size.width * 0.07990693,
        size.height * 0.3393109,
        size.width * 0.08280742,
        size.height * 0.3388120);
    path_1.cubicTo(
        size.width * 0.09559933,
        size.height * 0.3365956,
        size.width * 0.1086250,
        size.height * 0.3354730,
        size.width * 0.1216506,
        size.height * 0.3354346);
    path_1.cubicTo(
        size.width * 0.1346763,
        size.height * 0.3353578,
        size.width * 0.1477019,
        size.height * 0.3363653,
        size.width * 0.1605363,
        size.height * 0.3384762);
    path_1.cubicTo(
        size.width * 0.1669429,
        size.height * 0.3395220,
        size.width * 0.1732964,
        size.height * 0.3408940,
        size.width * 0.1795436,
        size.height * 0.3425827);
    path_1.cubicTo(
        size.width * 0.1800854,
        size.height * 0.3427267,
        size.width * 0.1806166,
        size.height * 0.3428898,
        size.width * 0.1811585,
        size.height * 0.3430337);
    path_1.cubicTo(
        size.width * 0.1882982,
        size.height * 0.3453173,
        size.width * 0.1950447,
        size.height * 0.3480518,
        size.width * 0.2012388,
        size.height * 0.3512564);
    path_1.lineTo(size.width * 0.2009838, size.height * 0.3513908);
    path_1.lineTo(size.width * 0.2118527, size.height * 0.3570613);
    path_1.cubicTo(
        size.width * 0.2182487,
        size.height * 0.3606690,
        size.width * 0.2246765,
        size.height * 0.3642286,
        size.width * 0.2311468,
        size.height * 0.3677115);
    path_1.cubicTo(
        size.width * 0.2350673,
        size.height * 0.3698416,
        size.width * 0.2389983,
        size.height * 0.3719045,
        size.width * 0.2429294,
        size.height * 0.3740249);
    path_1.lineTo(size.width * 0.2547545, size.height * 0.3802424);
    path_1.lineTo(size.width * 0.2666539, size.height * 0.3863830);
    path_1.cubicTo(
        size.width * 0.2706275,
        size.height * 0.3884075,
        size.width * 0.2745904,
        size.height * 0.3904608,
        size.width * 0.2785746,
        size.height * 0.3924470);
    path_1.cubicTo(
        size.width * 0.2850662,
        size.height * 0.3957284,
        size.width * 0.2915896,
        size.height * 0.3989235,
        size.width * 0.2981556,
        size.height * 0.4020802);
    path_1.lineTo(size.width * 0.3070483, size.height * 0.4067144);
    path_1.lineTo(size.width * 0.3127218, size.height * 0.4037401);
    path_1.lineTo(size.width * 0.2607573, size.height * 0.3766443);
    path_1.lineTo(size.width * 0.2589405, size.height * 0.3756848);
    path_1.lineTo(size.width * 0.2570812, size.height * 0.3747253);
    path_1.lineTo(size.width * 0.2072629, size.height * 0.3487426);
    path_1.lineTo(size.width * 0.2075710, size.height * 0.3485795);
    path_1.cubicTo(
        size.width * 0.2016638,
        size.height * 0.3454804,
        size.width * 0.1952360,
        size.height * 0.3427554,
        size.width * 0.1883513,
        size.height * 0.3403951);
    path_1.close();

    Paint paint_1_fill = Paint()..style = PaintingStyle.fill;
    paint_1_fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path_1, paint_1_fill);

    Path path_2 = Path();
    path_2.moveTo(size.width * 0.07801577, size.height * 0.4162229);
    path_2.lineTo(size.width * 0.07820701, size.height * 0.4161270);
    path_2.cubicTo(
        size.width * 0.1204713,
        size.height * 0.4387515,
        size.width * 0.1199932,
        size.height * 0.4752022,
        size.width * 0.07692144,
        size.height * 0.4976637);
    path_2.lineTo(size.width * 0.08258431, size.height * 0.5006285);
    path_2.cubicTo(
        size.width * 0.08782219,
        size.height * 0.4978939,
        size.width * 0.09250760,
        size.height * 0.4949483,
        size.width * 0.09664053,
        size.height * 0.4918204);
    path_2.cubicTo(
        size.width * 0.1008266,
        size.height * 0.4887789,
        size.width * 0.1046833,
        size.height * 0.4853535,
        size.width * 0.1079663,
        size.height * 0.4814580);
    path_2.cubicTo(
        size.width * 0.1109199,
        size.height * 0.4779943,
        size.width * 0.1133741,
        size.height * 0.4741468,
        size.width * 0.1151484,
        size.height * 0.4700306);
    path_2.cubicTo(
        size.width * 0.1169015,
        size.height * 0.4659048,
        size.width * 0.1178789,
        size.height * 0.4615104,
        size.width * 0.1179533,
        size.height * 0.4570776);
    path_2.cubicTo(
        size.width * 0.1180277,
        size.height * 0.4526640,
        size.width * 0.1172096,
        size.height * 0.4482120,
        size.width * 0.1155947,
        size.height * 0.4440575);
    path_2.cubicTo(
        size.width * 0.1139585,
        size.height * 0.4398933,
        size.width * 0.1115998,
        size.height * 0.4359978,
        size.width * 0.1087206,
        size.height * 0.4324669);
    path_2.cubicTo(
        size.width * 0.1058626,
        size.height * 0.4289264,
        size.width * 0.1025053,
        size.height * 0.4257506,
        size.width * 0.09886105,
        size.height * 0.4228817);
    path_2.cubicTo(
        size.width * 0.09862731,
        size.height * 0.4226994,
        size.width * 0.09838295,
        size.height * 0.4225267,
        size.width * 0.09813859,
        size.height * 0.4223444);
    path_2.cubicTo(
        size.width * 0.09379316,
        size.height * 0.4189095,
        size.width * 0.08877839,
        size.height * 0.4156856,
        size.width * 0.08311553,
        size.height * 0.4127208);
    path_2.lineTo(size.width * 0.08293491, size.height * 0.4128167);
    path_2.cubicTo(
        size.width * 0.07872761,
        size.height * 0.4104564,
        size.width * 0.07541276,
        size.height * 0.4078274,
        size.width * 0.07303287,
        size.height * 0.4050258);
    path_2.cubicTo(
        size.width * 0.07259727,
        size.height * 0.4044597,
        size.width * 0.07217229,
        size.height * 0.4038840,
        size.width * 0.07180043,
        size.height * 0.4032891);
    path_2.cubicTo(
        size.width * 0.06990927,
        size.height * 0.4003627,
        size.width * 0.06871932,
        size.height * 0.3970141,
        size.width * 0.06869807,
        size.height * 0.3936271);
    path_2.cubicTo(
        size.width * 0.06862370,
        size.height * 0.3902306,
        size.width * 0.06972865,
        size.height * 0.3868724,
        size.width * 0.07152419,
        size.height * 0.3838884);
    path_2.cubicTo(
        size.width * 0.07187480,
        size.height * 0.3832935,
        size.width * 0.07227853,
        size.height * 0.3827274,
        size.width * 0.07268226,
        size.height * 0.3821613);
    path_2.cubicTo(
        size.width * 0.07535964,
        size.height * 0.3788415,
        size.width * 0.07926946,
        size.height * 0.3757232,
        size.width * 0.08440110,
        size.height * 0.3730175);
    path_2.lineTo(size.width * 0.07879136, size.height * 0.3700047);
    path_2.cubicTo(
        size.width * 0.07659208,
        size.height * 0.3711657,
        size.width * 0.07459467,
        size.height * 0.3723938,
        size.width * 0.07278851,
        size.height * 0.3736603);
    path_2.cubicTo(
        size.width * 0.07299037,
        size.height * 0.3734684,
        size.width * 0.07320286,
        size.height * 0.3732669,
        size.width * 0.07340473,
        size.height * 0.3730750);
    path_2.cubicTo(
        size.width * 0.06996239,
        size.height * 0.3751859,
        size.width * 0.06683878,
        size.height * 0.3779684,
        size.width * 0.06450139,
        size.height * 0.3814417);
    path_2.cubicTo(
        size.width * 0.06404454,
        size.height * 0.3821134,
        size.width * 0.06363018,
        size.height * 0.3828234,
        size.width * 0.06323708,
        size.height * 0.3835430);
    path_2.cubicTo(
        size.width * 0.06314145,
        size.height * 0.3837061,
        size.width * 0.06306708,
        size.height * 0.3838692,
        size.width * 0.06297146,
        size.height * 0.3840323);
    path_2.cubicTo(
        size.width * 0.06295021,
        size.height * 0.3840803,
        size.width * 0.06291834,
        size.height * 0.3841187,
        size.width * 0.06289709,
        size.height * 0.3841666);
    path_2.cubicTo(
        size.width * 0.06136716,
        size.height * 0.3870163,
        size.width * 0.06058095,
        size.height * 0.3899907,
        size.width * 0.06054907,
        size.height * 0.3930514);
    path_2.cubicTo(
        size.width * 0.06046408,
        size.height * 0.4017443,
        size.width * 0.06649880,
        size.height * 0.4100343,
        size.width * 0.07799452,
        size.height * 0.4162229);
    path_2.close();

    Paint paint_2_fill = Paint()..style = PaintingStyle.fill;
    paint_2_fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path_2, paint_2_fill);

    Path path_3 = Path();
    path_3.moveTo(size.width * 0.1408704, size.height * 0.6207267);
    path_3.lineTo(size.width * 0.1409129, size.height * 0.6207075);
    path_3.lineTo(size.width * 0.2457874, size.height * 0.6753979);
    path_3.lineTo(size.width * 0.2450543, size.height * 0.6757817);
    path_3.lineTo(size.width * 0.3511506, size.height * 0.7310958);
    path_3.lineTo(size.width * 0.3513844, size.height * 0.7309711);
    path_3.lineTo(size.width * 0.4571514, size.height * 0.7861125);
    path_3.lineTo(size.width * 0.4572151, size.height * 0.7860837);
    path_3.cubicTo(
        size.width * 0.4657147,
        size.height * 0.7904781,
        size.width * 0.4752449,
        size.height * 0.7941433,
        size.width * 0.4856888,
        size.height * 0.7969930);
    path_3.cubicTo(
        size.width * 0.4927328,
        size.height * 0.7992574,
        size.width * 0.4999894,
        size.height * 0.8010036,
        size.width * 0.5073415,
        size.height * 0.8022701);
    path_3.cubicTo(
        size.width * 0.5183698,
        size.height * 0.8041987,
        size.width * 0.5296105,
        size.height * 0.8050910,
        size.width * 0.5408300,
        size.height * 0.8050910);
    path_3.cubicTo(
        size.width * 0.5464397,
        size.height * 0.8050814,
        size.width * 0.5520495,
        size.height * 0.8048415,
        size.width * 0.5576592,
        size.height * 0.8043810);
    path_3.cubicTo(
        size.width * 0.5632371,
        size.height * 0.8038821,
        size.width * 0.5688149,
        size.height * 0.8032104,
        size.width * 0.5743184,
        size.height * 0.8022222);
    path_3.cubicTo(
        size.width * 0.5801619,
        size.height * 0.8012051,
        size.width * 0.5859417,
        size.height * 0.7998906,
        size.width * 0.5916045,
        size.height * 0.7982499);
    path_3.cubicTo(
        size.width * 0.6042477,
        size.height * 0.7951796,
        size.width * 0.6156903,
        size.height * 0.7909866,
        size.width * 0.6256986,
        size.height * 0.7857671);
    path_3.lineTo(size.width * 0.6200144, size.height * 0.7827831);
    path_3.cubicTo(
        size.width * 0.6042158,
        size.height * 0.7910154,
        size.width * 0.5848580,
        size.height * 0.7962542,
        size.width * 0.5645333,
        size.height * 0.7985282);
    path_3.cubicTo(
        size.width * 0.5623340,
        size.height * 0.7987584,
        size.width * 0.5601241,
        size.height * 0.7989695,
        size.width * 0.5579248,
        size.height * 0.7991230);
    path_3.cubicTo(
        size.width * 0.5523895,
        size.height * 0.7995452,
        size.width * 0.5468116,
        size.height * 0.7997563,
        size.width * 0.5412443,
        size.height * 0.7997467);
    path_3.cubicTo(
        size.width * 0.5356771,
        size.height * 0.7997659,
        size.width * 0.5301205,
        size.height * 0.7995548,
        size.width * 0.5245851,
        size.height * 0.7991518);
    path_3.cubicTo(
        size.width * 0.5223965,
        size.height * 0.7989983,
        size.width * 0.5202078,
        size.height * 0.7987968,
        size.width * 0.5180298,
        size.height * 0.7985665);
    path_3.cubicTo(
        size.width * 0.4975989,
        size.height * 0.7963213,
        size.width * 0.4781560,
        size.height * 0.7910634,
        size.width * 0.4623680,
        size.height * 0.7827735);
    path_3.lineTo(size.width * 0.4622724, size.height * 0.7828215);
    path_3.lineTo(size.width * 0.4529972, size.height * 0.7779857);
    path_3.cubicTo(
        size.width * 0.4458788,
        size.height * 0.7738983,
        size.width * 0.4386860,
        size.height * 0.7699164,
        size.width * 0.4314507,
        size.height * 0.7660209);
    path_3.cubicTo(
        size.width * 0.4278383,
        size.height * 0.7640348,
        size.width * 0.4241729,
        size.height * 0.7621063,
        size.width * 0.4205393,
        size.height * 0.7601585);
    path_3.lineTo(size.width * 0.4095748, size.height * 0.7543920);
    path_3.lineTo(size.width * 0.3985466, size.height * 0.7487023);
    path_3.cubicTo(
        size.width * 0.3948705,
        size.height * 0.7468313,
        size.width * 0.3911944,
        size.height * 0.7449315,
        size.width * 0.3874758,
        size.height * 0.7430893);
    path_3.cubicTo(
        size.width * 0.3801343,
        size.height * 0.7393761,
        size.width * 0.3727184,
        size.height * 0.7357685,
        size.width * 0.3652600,
        size.height * 0.7322376);
    path_3.lineTo(size.width * 0.3567816, size.height * 0.7278144);
    path_3.lineTo(size.width * 0.3565373, size.height * 0.7279391);
    path_3.lineTo(size.width * 0.3469646, size.height * 0.7229498);
    path_3.cubicTo(
        size.width * 0.3398568,
        size.height * 0.7188720,
        size.width * 0.3326746,
        size.height * 0.7148902,
        size.width * 0.3254499,
        size.height * 0.7109947);
    path_3.cubicTo(
        size.width * 0.3218376,
        size.height * 0.7090182,
        size.width * 0.3181722,
        size.height * 0.7070800,
        size.width * 0.3145386,
        size.height * 0.7051323);
    path_3.lineTo(size.width * 0.3035741, size.height * 0.6993658);
    path_3.lineTo(size.width * 0.2925458, size.height * 0.6936665);
    path_3.cubicTo(
        size.width * 0.2888698,
        size.height * 0.6917955,
        size.width * 0.2851937,
        size.height * 0.6898957,
        size.width * 0.2814751,
        size.height * 0.6880439);
    path_3.cubicTo(
        size.width * 0.2741442,
        size.height * 0.6843499,
        size.width * 0.2667495,
        size.height * 0.6807423,
        size.width * 0.2592911,
        size.height * 0.6772210);
    path_3.lineTo(size.width * 0.2517477, size.height * 0.6732871);
    path_3.lineTo(size.width * 0.2524702, size.height * 0.6729033);
    path_3.lineTo(size.width * 0.2426000, size.height * 0.6677605);
    path_3.cubicTo(
        size.width * 0.2354922,
        size.height * 0.6636731,
        size.width * 0.2283101,
        size.height * 0.6597008,
        size.width * 0.2210748,
        size.height * 0.6557957);
    path_3.cubicTo(
        size.width * 0.2174624,
        size.height * 0.6538192,
        size.width * 0.2137970,
        size.height * 0.6518811,
        size.width * 0.2101634,
        size.height * 0.6499333);
    path_3.lineTo(size.width * 0.1991989, size.height * 0.6441668);
    path_3.lineTo(size.width * 0.1881707, size.height * 0.6384771);
    path_3.cubicTo(
        size.width * 0.1844946,
        size.height * 0.6366157,
        size.width * 0.1808185,
        size.height * 0.6347064,
        size.width * 0.1770999,
        size.height * 0.6328546);
    path_3.cubicTo(
        size.width * 0.1698009,
        size.height * 0.6291701,
        size.width * 0.1624487,
        size.height * 0.6255913,
        size.width * 0.1550328,
        size.height * 0.6220796);
    path_3.lineTo(size.width * 0.1464164, size.height * 0.6175892);
    path_3.lineTo(size.width * 0.1463632, size.height * 0.6176180);
    path_3.lineTo(size.width * 0.1367056, size.height * 0.6125807);
    path_3.cubicTo(
        size.width * 0.1295978,
        size.height * 0.6085029,
        size.width * 0.1224156,
        size.height * 0.6045307,
        size.width * 0.1151803,
        size.height * 0.6006256);
    path_3.cubicTo(
        size.width * 0.1115680,
        size.height * 0.5986491,
        size.width * 0.1079025,
        size.height * 0.5967109,
        size.width * 0.1042689,
        size.height * 0.5947632);
    path_3.lineTo(size.width * 0.09330443, size.height * 0.5889967);
    path_3.lineTo(size.width * 0.08227619, size.height * 0.5832974);
    path_3.cubicTo(
        size.width * 0.07860011,
        size.height * 0.5814360,
        size.width * 0.07492403,
        size.height * 0.5795362,
        size.width * 0.07120546,
        size.height * 0.5776748);
    path_3.cubicTo(
        size.width * 0.06383205,
        size.height * 0.5739616,
        size.width * 0.05638427,
        size.height * 0.5703252,
        size.width * 0.04888336,
        size.height * 0.5667847);
    path_3.lineTo(size.width * 0.04099998, size.height * 0.5626781);
    path_3.lineTo(size.width * 0.04118060, size.height * 0.5625822);
    path_3.cubicTo(
        size.width * 0.02397952,
        size.height * 0.5533136,
        size.width * 0.01377999,
        size.height * 0.5417230,
        size.width * 0.01055014,
        size.height * 0.5297007);
    path_3.cubicTo(
        size.width * 0.01048639,
        size.height * 0.5294609,
        size.width * 0.01042264,
        size.height * 0.5292210,
        size.width * 0.01036952,
        size.height * 0.5289715);
    path_3.cubicTo(
        size.width * 0.01032702,
        size.height * 0.5287892,
        size.width * 0.01029515,
        size.height * 0.5286069,
        size.width * 0.01025265,
        size.height * 0.5284342);
    path_3.cubicTo(
        size.width * 0.009774548,
        size.height * 0.5261698,
        size.width * 0.009530184,
        size.height * 0.5238671,
        size.width * 0.009551433,
        size.height * 0.5215451);
    path_3.cubicTo(
        size.width * 0.009572682,
        size.height * 0.5176592,
        size.width * 0.01033765,
        size.height * 0.5137925,
        size.width * 0.01174008,
        size.height * 0.5100985);
    path_3.cubicTo(
        size.width * 0.01311064,
        size.height * 0.5064141,
        size.width * 0.01515055,
        size.height * 0.5029408,
        size.width * 0.01756231,
        size.height * 0.4996978);
    path_3.cubicTo(
        size.width * 0.01998470,
        size.height * 0.4964643,
        size.width * 0.02281082,
        size.height * 0.4934803,
        size.width * 0.02591318,
        size.height * 0.4907362);
    path_3.cubicTo(
        size.width * 0.02897303,
        size.height * 0.4879633,
        size.width * 0.03236225,
        size.height * 0.4854783,
        size.width * 0.03584709,
        size.height * 0.4831371);
    path_3.cubicTo(
        size.width * 0.03575147,
        size.height * 0.4831947,
        size.width * 0.03565585,
        size.height * 0.4832523,
        size.width * 0.03556023,
        size.height * 0.4833002);
    path_3.cubicTo(
        size.width * 0.03756826,
        size.height * 0.4820433,
        size.width * 0.03967192,
        size.height * 0.4808056,
        size.width * 0.04190306,
        size.height * 0.4796254);
    path_3.lineTo(size.width * 0.03947005, size.height * 0.4782150);
    path_3.lineTo(size.width * 0.04191369, size.height * 0.4795007);
    path_3.cubicTo(
        size.width * 0.05402563,
        size.height * 0.4731873,
        size.width * 0.06015597,
        size.height * 0.4653004,
        size.width * 0.06020909,
        size.height * 0.4567226);
    path_3.cubicTo(
        size.width * 0.06026221,
        size.height * 0.4481448,
        size.width * 0.05410000,
        size.height * 0.4400372,
        size.width * 0.04249803,
        size.height * 0.4339541);
    path_3.lineTo(size.width * 0.04234929, size.height * 0.4340309);
    path_3.cubicTo(
        size.width * 0.02580693,
        size.height * 0.4248582,
        size.width * 0.01594739,
        size.height * 0.4135172,
        size.width * 0.01278128,
        size.height * 0.4017443);
    path_3.cubicTo(
        size.width * 0.01271754,
        size.height * 0.4015045,
        size.width * 0.01266441,
        size.height * 0.4012742,
        size.width * 0.01261129,
        size.height * 0.4010343);
    path_3.cubicTo(
        size.width * 0.01255817,
        size.height * 0.4008424,
        size.width * 0.01252630,
        size.height * 0.4006505,
        size.width * 0.01248380,
        size.height * 0.4004490);
    path_3.cubicTo(
        size.width * 0.01200569,
        size.height * 0.3981943,
        size.width * 0.01176133,
        size.height * 0.3959011,
        size.width * 0.01178258,
        size.height * 0.3935983);
    path_3.cubicTo(
        size.width * 0.01180383,
        size.height * 0.3897124,
        size.width * 0.01256879,
        size.height * 0.3858361,
        size.width * 0.01397123,
        size.height * 0.3821517);
    path_3.cubicTo(
        size.width * 0.01534179,
        size.height * 0.3784673,
        size.width * 0.01738170,
        size.height * 0.3749940,
        size.width * 0.01979346,
        size.height * 0.3717510);
    path_3.cubicTo(
        size.width * 0.02221585,
        size.height * 0.3685271,
        size.width * 0.02504197,
        size.height * 0.3655335,
        size.width * 0.02814432,
        size.height * 0.3627894);
    path_3.cubicTo(
        size.width * 0.03120418,
        size.height * 0.3600165,
        size.width * 0.03459340,
        size.height * 0.3575314,
        size.width * 0.03807824,
        size.height * 0.3551807);
    path_3.cubicTo(
        size.width * 0.03800387,
        size.height * 0.3552191,
        size.width * 0.03794012,
        size.height * 0.3552671,
        size.width * 0.03786575,
        size.height * 0.3553055);
    path_3.cubicTo(
        size.width * 0.03985253,
        size.height * 0.3540581,
        size.width * 0.04192431,
        size.height * 0.3528396,
        size.width * 0.04414483,
        size.height * 0.3516690);
    path_3.lineTo(size.width * 0.03880071, size.height * 0.3485699);
    path_3.cubicTo(
        size.width * 0.03466777,
        size.height * 0.3507479,
        size.width * 0.03085357,
        size.height * 0.3530795,
        size.width * 0.02736873,
        size.height * 0.3555357);
    path_3.cubicTo(
        size.width * 0.02168462,
        size.height * 0.3593065,
        size.width * 0.01648924,
        size.height * 0.3637969,
        size.width * 0.01232443,
        size.height * 0.3691220);
    path_3.cubicTo(
        size.width * 0.009625805,
        size.height * 0.3725377,
        size.width * 0.007405283,
        size.height * 0.3763277,
        size.width * 0.005811606,
        size.height * 0.3803479);
    path_3.cubicTo(
        size.width * 0.004249803,
        size.height * 0.3843873,
        size.width * 0.003389218,
        size.height * 0.3886858,
        size.width * 0.003346720,
        size.height * 0.3930035);
    path_3.cubicTo(
        size.width * 0.003314847,
        size.height * 0.3973211,
        size.width * 0.004101060,
        size.height * 0.4016196,
        size.width * 0.005609741,
        size.height * 0.4056782);
    path_3.cubicTo(
        size.width * 0.007139670,
        size.height * 0.4097368,
        size.width * 0.009296445,
        size.height * 0.4135460,
        size.width * 0.01196320,
        size.height * 0.4170097);
    path_3.cubicTo(
        size.width * 0.01503368,
        size.height * 0.4210299,
        size.width * 0.01869914,
        size.height * 0.4245512,
        size.width * 0.02270457,
        size.height * 0.4276791);
    path_3.cubicTo(
        size.width * 0.02705000,
        size.height * 0.4312292,
        size.width * 0.03207539,
        size.height * 0.4345490,
        size.width * 0.03775950,
        size.height * 0.4376097);
    path_3.lineTo(size.width * 0.03791887, size.height * 0.4375234);
    path_3.cubicTo(
        size.width * 0.04768279,
        size.height * 0.4429541,
        size.width * 0.05248507,
        size.height * 0.4498239,
        size.width * 0.05236820,
        size.height * 0.4567034);
    path_3.cubicTo(
        size.width * 0.05236820,
        size.height * 0.4570584,
        size.width * 0.05233633,
        size.height * 0.4574230,
        size.width * 0.05230446,
        size.height * 0.4577780);
    path_3.cubicTo(
        size.width * 0.05230446,
        size.height * 0.4578548,
        size.width * 0.05230446,
        size.height * 0.4579220,
        size.width * 0.05229383,
        size.height * 0.4579987);
    path_3.cubicTo(
        size.width * 0.05192197,
        size.height * 0.4612514,
        size.width * 0.05039204,
        size.height * 0.4643985,
        size.width * 0.04813965,
        size.height * 0.4671426);
    path_3.cubicTo(
        size.width * 0.04574913,
        size.height * 0.4700594,
        size.width * 0.04262553,
        size.height * 0.4725540,
        size.width * 0.03924693,
        size.height * 0.4748376);
    path_3.cubicTo(
        size.width * 0.03830135,
        size.height * 0.4754133,
        size.width * 0.03732390,
        size.height * 0.4759794,
        size.width * 0.03627207,
        size.height * 0.4765263);
    path_3.lineTo(size.width * 0.03642082, size.height * 0.4766031);
    path_3.cubicTo(
        size.width * 0.03237288,
        size.height * 0.4787523,
        size.width * 0.02861180,
        size.height * 0.4810455,
        size.width * 0.02519071,
        size.height * 0.4834537);
    path_3.cubicTo(
        size.width * 0.01948535,
        size.height * 0.4872341,
        size.width * 0.01426872,
        size.height * 0.4917341,
        size.width * 0.01008266,
        size.height * 0.4970784);
    path_3.cubicTo(
        size.width * 0.007384033,
        size.height * 0.5004941,
        size.width * 0.005163511,
        size.height * 0.5042841,
        size.width * 0.003569835,
        size.height * 0.5083139);
    path_3.cubicTo(
        size.width * 0.002008032,
        size.height * 0.5123437,
        size.width * 0.001147447,
        size.height * 0.5166422,
        size.width * 0.001104949,
        size.height * 0.5209599);
    path_3.cubicTo(
        size.width * 0.001073075,
        size.height * 0.5252775,
        size.width * 0.001859289,
        size.height * 0.5295856,
        size.width * 0.003367969,
        size.height * 0.5336346);
    path_3.cubicTo(
        size.width * 0.004897898,
        size.height * 0.5376836,
        size.width * 0.007054674,
        size.height * 0.5415024,
        size.width * 0.009721425,
        size.height * 0.5449565);
    path_3.cubicTo(
        size.width * 0.01279191,
        size.height * 0.5489767,
        size.width * 0.01644674,
        size.height * 0.5524980,
        size.width * 0.02045218,
        size.height * 0.5556163);
    path_3.cubicTo(
        size.width * 0.02467011,
        size.height * 0.5590609,
        size.width * 0.02953613,
        size.height * 0.5622943,
        size.width * 0.03500776,
        size.height * 0.5652879);
    path_3.lineTo(size.width * 0.03481651, size.height * 0.5653838);
    path_3.lineTo(size.width * 0.1409022, size.height * 0.6206979);
    path_3.close();

    Paint paint_3_fill = Paint()..style = PaintingStyle.fill;
    paint_3_fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path_3, paint_3_fill);

    Path path_4 = Path();
    path_4.moveTo(size.width * 0.07913134, size.height * 0.01088052);
    path_4.cubicTo(
        size.width * 0.08201058,
        size.height * 0.01024726,
        size.width * 0.08491107,
        size.height * 0.009661975,
        size.width * 0.08782219,
        size.height * 0.009153450);
    path_4.cubicTo(
        size.width * 0.1006247,
        size.height * 0.006937048,
        size.width * 0.1136397,
        size.height * 0.005814456,
        size.width * 0.1266654,
        size.height * 0.005776076);
    path_4.cubicTo(
        size.width * 0.1396910,
        size.height * 0.005699318,
        size.width * 0.1527061,
        size.height * 0.006716368,
        size.width * 0.1655511,
        size.height * 0.008827226);
    path_4.cubicTo(
        size.width * 0.1719577,
        size.height * 0.009873061,
        size.width * 0.1783111,
        size.height * 0.01123552,
        size.width * 0.1845583,
        size.height * 0.01293381);
    path_4.cubicTo(
        size.width * 0.1851214,
        size.height * 0.01308732,
        size.width * 0.1856845,
        size.height * 0.01325043,
        size.width * 0.1862476,
        size.height * 0.01341355);
    path_4.cubicTo(
        size.width * 0.1935360,
        size.height * 0.01574509,
        size.width * 0.2004314,
        size.height * 0.01854677,
        size.width * 0.2067317,
        size.height * 0.02184738);
    path_4.lineTo(size.width * 0.2066573, size.height * 0.02188576);
    path_4.lineTo(size.width * 0.2176749, size.height * 0.02763306);
    path_4.cubicTo(
        size.width * 0.2240178,
        size.height * 0.03121192,
        size.width * 0.2304031,
        size.height * 0.03474281,
        size.width * 0.2368309,
        size.height * 0.03819694);
    path_4.cubicTo(
        size.width * 0.2407407,
        size.height * 0.04032699,
        size.width * 0.2446718,
        size.height * 0.04238988,
        size.width * 0.2486135,
        size.height * 0.04450073);
    path_4.lineTo(size.width * 0.2604386, size.height * 0.05071817);
    path_4.lineTo(size.width * 0.2723274, size.height * 0.05685885);
    path_4.cubicTo(
        size.width * 0.2763010,
        size.height * 0.05888336,
        size.width * 0.2802639,
        size.height * 0.06093665,
        size.width * 0.2842481,
        size.height * 0.06293237);
    path_4.cubicTo(
        size.width * 0.2907291,
        size.height * 0.06620420,
        size.width * 0.2972631,
        size.height * 0.06940886,
        size.width * 0.3038184,
        size.height * 0.07255596);
    path_4.lineTo(size.width * 0.3126262, size.height * 0.07715188);
    path_4.lineTo(size.width * 0.3124668, size.height * 0.07723823);
    path_4.lineTo(size.width * 0.3234419, size.height * 0.08296633);
    path_4.cubicTo(
        size.width * 0.3298060,
        size.height * 0.08655479,
        size.width * 0.3362020,
        size.height * 0.09009528,
        size.width * 0.3426404,
        size.height * 0.09355900);
    path_4.cubicTo(
        size.width * 0.3465502,
        size.height * 0.09568905,
        size.width * 0.3504813,
        size.height * 0.09775194,
        size.width * 0.3544124,
        size.height * 0.09986279);
    path_4.lineTo(size.width * 0.3662481, size.height * 0.1060802);
    path_4.lineTo(size.width * 0.3781369, size.height * 0.1122209);
    path_4.cubicTo(
        size.width * 0.3821105,
        size.height * 0.1142454,
        size.width * 0.3860734,
        size.height * 0.1162891,
        size.width * 0.3900576,
        size.height * 0.1182848);
    path_4.cubicTo(
        size.width * 0.3965492,
        size.height * 0.1215663,
        size.width * 0.4030832,
        size.height * 0.1247709,
        size.width * 0.4096492,
        size.height * 0.1279276);
    path_4.lineTo(size.width * 0.4185206, size.height * 0.1325523);
    path_4.lineTo(size.width * 0.4187756, size.height * 0.1324180);
    path_4.cubicTo(
        size.width * 0.4235885,
        size.height * 0.1348839,
        size.width * 0.4290602,
        size.height * 0.1368700,
        size.width * 0.4349780,
        size.height * 0.1383476);
    path_4.cubicTo(
        size.width * 0.4314507,
        size.height * 0.1375896,
        size.width * 0.4279658,
        size.height * 0.1366877,
        size.width * 0.4245447,
        size.height * 0.1355651);
    path_4.cubicTo(
        size.width * 0.4303563,
        size.height * 0.1382037,
        size.width * 0.4366673,
        size.height * 0.1399691,
        size.width * 0.4430739,
        size.height * 0.1411109);
    path_4.cubicTo(
        size.width * 0.4462825,
        size.height * 0.1416962,
        size.width * 0.4495336,
        size.height * 0.1420800,
        size.width * 0.4528059,
        size.height * 0.1423486);
    path_4.cubicTo(
        size.width * 0.4560570,
        size.height * 0.1426077,
        size.width * 0.4593400,
        size.height * 0.1427132,
        size.width * 0.4626124,
        size.height * 0.1427036);
    path_4.cubicTo(
        size.width * 0.4658953,
        size.height * 0.1426652,
        size.width * 0.4691571,
        size.height * 0.1425117,
        size.width * 0.4724082,
        size.height * 0.1421951);
    path_4.cubicTo(
        size.width * 0.4756593,
        size.height * 0.1418593,
        size.width * 0.4788997,
        size.height * 0.1414083,
        size.width * 0.4820977,
        size.height * 0.1407559);
    path_4.cubicTo(
        size.width * 0.4884830,
        size.height * 0.1394702,
        size.width * 0.4947302,
        size.height * 0.1375224,
        size.width * 0.5004569,
        size.height * 0.1347207);
    path_4.cubicTo(
        size.width * 0.4991713,
        size.height * 0.1351813,
        size.width * 0.4978751,
        size.height * 0.1356035,
        size.width * 0.4965683,
        size.height * 0.1360160);
    path_4.cubicTo(
        size.width * 0.4998938,
        size.height * 0.1348359,
        size.width * 0.5030599,
        size.height * 0.1334734,
        size.width * 0.5060347,
        size.height * 0.1319191);
    path_4.lineTo(size.width * 0.5059922, size.height * 0.1318999);
    path_4.lineTo(size.width * 0.5137694, size.height * 0.1278509);
    path_4.cubicTo(
        size.width * 0.5203353,
        size.height * 0.1246942,
        size.width * 0.5268694,
        size.height * 0.1214895,
        size.width * 0.5333610,
        size.height * 0.1182081);
    path_4.cubicTo(
        size.width * 0.5373558,
        size.height * 0.1162124,
        size.width * 0.5413187,
        size.height * 0.1141687,
        size.width * 0.5452923,
        size.height * 0.1121442);
    path_4.lineTo(size.width * 0.5571811, size.height * 0.1060035);
    path_4.lineTo(size.width * 0.5690168, size.height * 0.09978604);
    path_4.cubicTo(
        size.width * 0.5729479,
        size.height * 0.09767518,
        size.width * 0.5768789,
        size.height * 0.09560270,
        size.width * 0.5807888,
        size.height * 0.09348224);
    path_4.cubicTo(
        size.width * 0.5872272,
        size.height * 0.09001852,
        size.width * 0.5936232,
        size.height * 0.08647803,
        size.width * 0.5999873,
        size.height * 0.08288957);
    path_4.lineTo(size.width * 0.6109624, size.height * 0.07716147);
    path_4.lineTo(size.width * 0.6052995, size.height * 0.07418708);
    path_4.lineTo(size.width * 0.5547906, size.height * 0.1005248);
    path_4.lineTo(size.width * 0.5530057, size.height * 0.1014459);
    path_4.lineTo(size.width * 0.5511783, size.height * 0.1024054);
    path_4.lineTo(size.width * 0.4994369, size.height * 0.1293860);
    path_4.cubicTo(
        size.width * 0.4831070,
        size.height * 0.1375416,
        size.width * 0.4598394,
        size.height * 0.1395086,
        size.width * 0.4404496,
        size.height * 0.1350758);
    path_4.cubicTo(
        size.width * 0.4399822,
        size.height * 0.1349702,
        size.width * 0.4395253,
        size.height * 0.1348647,
        size.width * 0.4390578,
        size.height * 0.1347495);
    path_4.cubicTo(
        size.width * 0.4387178,
        size.height * 0.1346632,
        size.width * 0.4383779,
        size.height * 0.1345768,
        size.width * 0.4380379,
        size.height * 0.1344809);
    path_4.cubicTo(
        size.width * 0.4354880,
        size.height * 0.1337996,
        size.width * 0.4329487,
        size.height * 0.1330033,
        size.width * 0.4304626,
        size.height * 0.1320630);
    path_4.cubicTo(
        size.width * 0.4304945,
        size.height * 0.1320822,
        size.width * 0.4305370,
        size.height * 0.1321014,
        size.width * 0.4305795,
        size.height * 0.1321205);
    path_4.cubicTo(
        size.width * 0.4282739,
        size.height * 0.1312474,
        size.width * 0.4260747,
        size.height * 0.1302688,
        size.width * 0.4239923,
        size.height * 0.1291749);
    path_4.lineTo(size.width * 0.4237160, size.height * 0.1293189);
    path_4.lineTo(size.width * 0.3717091, size.height * 0.1021943);
    path_4.lineTo(size.width * 0.3704235, size.height * 0.1015131);
    path_4.lineTo(size.width * 0.3691698, size.height * 0.1008607);
    path_4.lineTo(size.width * 0.3182359, size.height * 0.07430222);
    path_4.lineTo(size.width * 0.3183953, size.height * 0.07421586);
    path_4.lineTo(size.width * 0.2662608, size.height * 0.04703376);
    path_4.lineTo(size.width * 0.2646140, size.height * 0.04616064);
    path_4.lineTo(size.width * 0.2629460, size.height * 0.04529710);
    path_4.lineTo(size.width * 0.2124902, size.height * 0.01898813);
    path_4.lineTo(size.width * 0.2125964, size.height * 0.01893056);
    path_4.cubicTo(
        size.width * 0.2066998,
        size.height * 0.01583144,
        size.width * 0.2002826,
        size.height * 0.01310651,
        size.width * 0.1934086,
        size.height * 0.01075578);
    path_4.cubicTo(
        size.width * 0.1907524,
        size.height * 0.009786707,
        size.width * 0.1880751,
        size.height * 0.008884795,
        size.width * 0.1853552,
        size.height * 0.008040452);
    path_4.cubicTo(
        size.width * 0.1791186,
        size.height * 0.006179058,
        size.width * 0.1727651,
        size.height * 0.004672673,
        size.width * 0.1663373,
        size.height * 0.003454132);
    path_4.cubicTo(
        size.width * 0.1534710,
        size.height * 0.001036240,
        size.width * 0.1403073,
        size.height * -0.00002878443,
        size.width * 0.1271754,
        0);
    path_4.cubicTo(
        size.width * 0.1140329,
        size.height * 0.00007675849,
        size.width * 0.1008797,
        size.height * 0.001256920,
        size.width * 0.08804530,
        size.height * 0.003799545);
    path_4.cubicTo(
        size.width * 0.08164935,
        size.height * 0.005066060,
        size.width * 0.07529589,
        size.height * 0.006639609,
        size.width * 0.06909118,
        size.height * 0.008568166);
    path_4.cubicTo(
        size.width * 0.06401266,
        size.height * 0.01018969,
        size.width * 0.05902977,
        size.height * 0.01203189,
        size.width * 0.05419562,
        size.height * 0.01416194);
    path_4.cubicTo(
        size.width * 0.05063641,
        size.height * 0.01563954,
        size.width * 0.04720469,
        size.height * 0.01722269,
        size.width * 0.04395359,
        size.height * 0.01892097);
    path_4.lineTo(size.width * 0.04964833, size.height * 0.02189536);
    path_4.cubicTo(
        size.width * 0.05850917,
        size.height * 0.01728025,
        size.width * 0.06849621,
        size.height * 0.01361504,
        size.width * 0.07914196,
        size.height * 0.01088052);
    path_4.close();

    Paint paint_4_fill = Paint()..style = PaintingStyle.fill;
    paint_4_fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path_4, paint_4_fill);

    Path path_5 = Path();
    path_5.moveTo(size.width * 0.7148913, size.height * 0.2370110);
    path_5.cubicTo(
        size.width * 0.7098234,
        size.height * 0.2386325,
        size.width * 0.7048405,
        size.height * 0.2404652,
        size.width * 0.7000170,
        size.height * 0.2425952);
    path_5.cubicTo(
        size.width * 0.6964472,
        size.height * 0.2440728,
        size.width * 0.6930154,
        size.height * 0.2456559,
        size.width * 0.6897537,
        size.height * 0.2473638);
    path_5.lineTo(size.width * 0.6954485, size.height * 0.2503382);
    path_5.cubicTo(
        size.width * 0.7043093,
        size.height * 0.2457135,
        size.width * 0.7143070,
        size.height * 0.2420579,
        size.width * 0.7249527,
        size.height * 0.2393138);
    path_5.cubicTo(
        size.width * 0.7278320,
        size.height * 0.2386805,
        size.width * 0.7307218,
        size.height * 0.2380952,
        size.width * 0.7336329,
        size.height * 0.2375963);
    path_5.cubicTo(
        size.width * 0.7464249,
        size.height * 0.2353799,
        size.width * 0.7594505,
        size.height * 0.2342573,
        size.width * 0.7724655,
        size.height * 0.2342093);
    path_5.cubicTo(
        size.width * 0.7854912,
        size.height * 0.2341326,
        size.width * 0.7985168,
        size.height * 0.2351496,
        size.width * 0.8113618,
        size.height * 0.2372605);
    path_5.cubicTo(
        size.width * 0.8177578,
        size.height * 0.2383063,
        size.width * 0.8241113,
        size.height * 0.2396688,
        size.width * 0.8303691,
        size.height * 0.2413671);
    path_5.cubicTo(
        size.width * 0.8309322,
        size.height * 0.2415110,
        size.width * 0.8314847,
        size.height * 0.2416837,
        size.width * 0.8320478,
        size.height * 0.2418372);
    path_5.cubicTo(
        size.width * 0.8393893,
        size.height * 0.2441879,
        size.width * 0.8463377,
        size.height * 0.2470088,
        size.width * 0.8526699,
        size.height * 0.2503382);
    path_5.lineTo(size.width * 0.8583859, size.height * 0.2473638);
    path_5.cubicTo(
        size.width * 0.8524787,
        size.height * 0.2442647,
        size.width * 0.8460509,
        size.height * 0.2415398,
        size.width * 0.8391768,
        size.height * 0.2391890);
    path_5.cubicTo(
        size.width * 0.8365313,
        size.height * 0.2382296,
        size.width * 0.8338539,
        size.height * 0.2373181,
        size.width * 0.8311447,
        size.height * 0.2364833);
    path_5.cubicTo(
        size.width * 0.8249081,
        size.height * 0.2346219,
        size.width * 0.8185546,
        size.height * 0.2331155,
        size.width * 0.8121268,
        size.height * 0.2318874);
    path_5.cubicTo(
        size.width * 0.7992712,
        size.height * 0.2294791,
        size.width * 0.7861180,
        size.height * 0.2284141,
        size.width * 0.7729755,
        size.height * 0.2284429);
    path_5.cubicTo(
        size.width * 0.7598330,
        size.height * 0.2285196,
        size.width * 0.7466798,
        size.height * 0.2296998,
        size.width * 0.7338454,
        size.height * 0.2322424);
    path_5.cubicTo(
        size.width * 0.7274601,
        size.height * 0.2335089,
        size.width * 0.7210960,
        size.height * 0.2350825,
        size.width * 0.7148913,
        size.height * 0.2370110);
    path_5.close();

    Paint paint_5_fill = Paint()..style = PaintingStyle.fill;
    paint_5_fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path_5, paint_5_fill);

    Path path_6 = Path();
    path_6.moveTo(size.width * 0.2680457, size.height * 0.09036393);
    path_6.cubicTo(
        size.width * 0.2609167,
        size.height * 0.08626695,
        size.width * 0.2537133,
        size.height * 0.08228510,
        size.width * 0.2464567,
        size.height * 0.07837042);
    path_6.cubicTo(
        size.width * 0.2428338,
        size.height * 0.07639389,
        size.width * 0.2391896,
        size.height * 0.07445573,
        size.width * 0.2355454,
        size.height * 0.07250799);
    path_6.lineTo(size.width * 0.2245809, size.height * 0.06674151);
    path_6.lineTo(size.width * 0.2135526, size.height * 0.06104219);
    path_6.cubicTo(
        size.width * 0.2098765,
        size.height * 0.05917120,
        size.width * 0.2062005,
        size.height * 0.05727143,
        size.width * 0.2024819,
        size.height * 0.05542922);
    path_6.cubicTo(
        size.width * 0.1950979,
        size.height * 0.05170644,
        size.width * 0.1876501,
        size.height * 0.04807000,
        size.width * 0.1801492,
        size.height * 0.04451992);
    path_6.lineTo(size.width * 0.1717877, size.height * 0.04016388);
    path_6.lineTo(size.width * 0.1717346, size.height * 0.04019266);
    path_6.cubicTo(
        size.width * 0.1629693,
        size.height * 0.03560634,
        size.width * 0.1519942,
        size.height * 0.03263195,
        size.width * 0.1400841,
        size.height * 0.03143260);
    path_6.cubicTo(
        size.width * 0.1392342,
        size.height * 0.03133665,
        size.width * 0.1383948,
        size.height * 0.03125030,
        size.width * 0.1375449,
        size.height * 0.03117354);
    path_6.cubicTo(
        size.width * 0.1343469,
        size.height * 0.03089529,
        size.width * 0.1311277,
        size.height * 0.03076096,
        size.width * 0.1279191,
        size.height * 0.03075137);
    path_6.cubicTo(
        size.width * 0.1247105,
        size.height * 0.03077056,
        size.width * 0.1215019,
        size.height * 0.03089529,
        size.width * 0.1183039,
        size.height * 0.03116395);
    path_6.cubicTo(
        size.width * 0.1158815,
        size.height * 0.03138463,
        size.width * 0.1134698,
        size.height * 0.03167247,
        size.width * 0.1110686,
        size.height * 0.03205626);
    path_6.cubicTo(
        size.width * 0.1012091,
        size.height * 0.03350508,
        size.width * 0.09213574,
        size.height * 0.03626839,
        size.width * 0.08431610,
        size.height * 0.04033659);
    path_6.lineTo(size.width * 0.09000021, size.height * 0.04332057);
    path_6.cubicTo(
        size.width * 0.09427126,
        size.height * 0.04109458,
        size.width * 0.09906292,
        size.height * 0.03930994,
        size.width * 0.1041414,
        size.height * 0.03797626);
    path_6.cubicTo(
        size.width * 0.1058201,
        size.height * 0.03765004,
        size.width * 0.1074988,
        size.height * 0.03735260,
        size.width * 0.1091987,
        size.height * 0.03710313);
    path_6.cubicTo(
        size.width * 0.1123223,
        size.height * 0.03666177,
        size.width * 0.1154565,
        size.height * 0.03629717,
        size.width * 0.1186120,
        size.height * 0.03609568);
    path_6.cubicTo(
        size.width * 0.1217675,
        size.height * 0.03587500,
        size.width * 0.1249442,
        size.height * 0.03575986,
        size.width * 0.1280891,
        size.height * 0.03577905);
    path_6.cubicTo(
        size.width * 0.1312658,
        size.height * 0.03575986,
        size.width * 0.1344213,
        size.height * 0.03588459,
        size.width * 0.1375661,
        size.height * 0.03610527);
    path_6.cubicTo(
        size.width * 0.1407216,
        size.height * 0.03630677,
        size.width * 0.1438665,
        size.height * 0.03667137,
        size.width * 0.1469901,
        size.height * 0.03711273);
    path_6.cubicTo(
        size.width * 0.1491787,
        size.height * 0.03742936,
        size.width * 0.1513674,
        size.height * 0.03784194,
        size.width * 0.1535348,
        size.height * 0.03828330);
    path_6.cubicTo(
        size.width * 0.1580289,
        size.height * 0.03955941,
        size.width * 0.1622681,
        size.height * 0.04119052,
        size.width * 0.1660823,
        size.height * 0.04319584);
    path_6.lineTo(size.width * 0.1661567, size.height * 0.04315746);
    path_6.lineTo(size.width * 0.2721043, size.height * 0.09839479);
    path_6.lineTo(size.width * 0.2719343, size.height * 0.09848114);
    path_6.lineTo(size.width * 0.3773294, size.height * 0.1534306);
    path_6.lineTo(size.width * 0.3772975, size.height * 0.1534498);
    path_6.cubicTo(
        size.width * 0.3859353,
        size.height * 0.1579882,
        size.width * 0.3956779,
        size.height * 0.1617397,
        size.width * 0.4063556,
        size.height * 0.1646661);
    path_6.cubicTo(
        size.width * 0.4133996,
        size.height * 0.1669305,
        size.width * 0.4206668,
        size.height * 0.1686864,
        size.width * 0.4280296,
        size.height * 0.1699625);
    path_6.cubicTo(
        size.width * 0.4390578,
        size.height * 0.1718814,
        size.width * 0.4502985,
        size.height * 0.1727738,
        size.width * 0.4615180,
        size.height * 0.1727834);
    path_6.cubicTo(
        size.width * 0.4671384,
        size.height * 0.1727642,
        size.width * 0.4727481,
        size.height * 0.1725339,
        size.width * 0.4783473,
        size.height * 0.1720733);
    path_6.cubicTo(
        size.width * 0.4839357,
        size.height * 0.1715840,
        size.width * 0.4895030,
        size.height * 0.1709028,
        size.width * 0.4950065,
        size.height * 0.1699145);
    path_6.cubicTo(
        size.width * 0.5008712,
        size.height * 0.1688975,
        size.width * 0.5066722,
        size.height * 0.1675734,
        size.width * 0.5123457,
        size.height * 0.1659327);
    path_6.cubicTo(
        size.width * 0.5249676,
        size.height * 0.1628623,
        size.width * 0.5363889,
        size.height * 0.1586790,
        size.width * 0.5463760,
        size.height * 0.1534690);
    path_6.lineTo(size.width * 0.5461635, size.height * 0.1533539);
    path_6.lineTo(size.width * 0.6515374, size.height * 0.09841398);
    path_6.lineTo(size.width * 0.6458533, size.height * 0.09542999);
    path_6.lineTo(size.width * 0.6374068, size.height * 0.09983401);
    path_6.cubicTo(
        size.width * 0.6299271,
        size.height * 0.1033649,
        size.width * 0.6225112,
        size.height * 0.1069821,
        size.width * 0.6151590,
        size.height * 0.1106953);
    path_6.cubicTo(
        size.width * 0.6114405,
        size.height * 0.1125471,
        size.width * 0.6077750,
        size.height * 0.1144469,
        size.width * 0.6040883,
        size.height * 0.1163083);
    path_6.lineTo(size.width * 0.5930601, size.height * 0.1220076);
    path_6.lineTo(size.width * 0.5820956, size.height * 0.1277741);
    path_6.cubicTo(
        size.width * 0.5784514,
        size.height * 0.1297218,
        size.width * 0.5747965,
        size.height * 0.1316504,
        size.width * 0.5711842,
        size.height * 0.1336365);
    path_6.cubicTo(
        size.width * 0.5639277,
        size.height * 0.1375416,
        size.width * 0.5567243,
        size.height * 0.1415331,
        size.width * 0.5495952,
        size.height * 0.1456204);
    path_6.lineTo(size.width * 0.5397782, size.height * 0.1507441);
    path_6.lineTo(size.width * 0.5399588, size.height * 0.1508400);
    path_6.cubicTo(
        size.width * 0.5243832,
        size.height * 0.1588229,
        size.width * 0.5054397,
        size.height * 0.1639273,
        size.width * 0.4855400,
        size.height * 0.1661821);
    path_6.cubicTo(
        size.width * 0.4832239,
        size.height * 0.1664316,
        size.width * 0.4809078,
        size.height * 0.1666523,
        size.width * 0.4785916,
        size.height * 0.1668154);
    path_6.cubicTo(
        size.width * 0.4730456,
        size.height * 0.1672376,
        size.width * 0.4674784,
        size.height * 0.1674486,
        size.width * 0.4619111,
        size.height * 0.1674390);
    path_6.cubicTo(
        size.width * 0.4563439,
        size.height * 0.1674582,
        size.width * 0.4507873,
        size.height * 0.1672472,
        size.width * 0.4452519,
        size.height * 0.1668442);
    path_6.cubicTo(
        size.width * 0.4430633,
        size.height * 0.1666907,
        size.width * 0.4408640,
        size.height * 0.1664892,
        size.width * 0.4386753,
        size.height * 0.1662685);
    path_6.cubicTo(
        size.width * 0.4182444,
        size.height * 0.1640233,
        size.width * 0.3988122,
        size.height * 0.1587653,
        size.width * 0.3830242,
        size.height * 0.1504754);
    path_6.lineTo(size.width * 0.3830242, size.height * 0.1504754);
    path_6.cubicTo(
        size.width * 0.3830242,
        size.height * 0.1504754,
        size.width * 0.3737915,
        size.height * 0.1456588,
        size.width * 0.3737915,
        size.height * 0.1456588);
    path_6.cubicTo(
        size.width * 0.3666837,
        size.height * 0.1415810,
        size.width * 0.3595121,
        size.height * 0.1376088,
        size.width * 0.3522875,
        size.height * 0.1337229);
    path_6.cubicTo(
        size.width * 0.3486645,
        size.height * 0.1317368,
        size.width * 0.3450097,
        size.height * 0.1298082,
        size.width * 0.3413761,
        size.height * 0.1278605);
    path_6.lineTo(size.width * 0.3304116, size.height * 0.1220940);
    path_6.lineTo(size.width * 0.3193834, size.height * 0.1163947);
    path_6.cubicTo(
        size.width * 0.3156966,
        size.height * 0.1145237,
        size.width * 0.3120312,
        size.height * 0.1126239,
        size.width * 0.3083126,
        size.height * 0.1107817);
    path_6.cubicTo(
        size.width * 0.3009498,
        size.height * 0.1070685,
        size.width * 0.2935127,
        size.height * 0.1034417,
        size.width * 0.2860330,
        size.height * 0.09990117);
    path_6.lineTo(size.width * 0.2777034, size.height * 0.09555472);
    path_6.lineTo(size.width * 0.2778628, size.height * 0.09546837);
    path_6.lineTo(size.width * 0.2680564, size.height * 0.09035434);
    path_6.close();

    Paint paint_6_fill = Paint()..style = PaintingStyle.fill;
    paint_6_fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path_6, paint_6_fill);

    Path path_7 = Path();
    path_7.moveTo(size.width * 0.01695672, size.height * 0.08737035);
    path_7.cubicTo(
        size.width * 0.02003782,
        size.height * 0.09140017,
        size.width * 0.02372453,
        size.height * 0.09494066,
        size.width * 0.02775122,
        size.height * 0.09806856);
    path_7.cubicTo(
        size.width * 0.03162916,
        size.height * 0.1012349,
        size.width * 0.03604896,
        size.height * 0.1042092,
        size.width * 0.04099998,
        size.height * 0.1069917);
    path_7.lineTo(size.width * 0.04045813, size.height * 0.1072700);
    path_7.lineTo(size.width * 0.1448333, size.height * 0.1616918);
    path_7.lineTo(size.width * 0.1442915, size.height * 0.1619700);
    path_7.lineTo(size.width * 0.2493997, size.height * 0.2167756);
    path_7.lineTo(size.width * 0.2486666, size.height * 0.2171594);
    path_7.lineTo(size.width * 0.3547523, size.height * 0.2724734);
    path_7.lineTo(size.width * 0.3549861, size.height * 0.2723487);
    path_7.lineTo(size.width * 0.4607531, size.height * 0.3274901);
    path_7.lineTo(size.width * 0.4608168, size.height * 0.3274517);
    path_7.cubicTo(
        size.width * 0.4693058,
        size.height * 0.3318461,
        size.width * 0.4788360,
        size.height * 0.3355018,
        size.width * 0.4892692,
        size.height * 0.3383610);
    path_7.cubicTo(
        size.width * 0.4963133,
        size.height * 0.3406254,
        size.width * 0.5035805,
        size.height * 0.3423812,
        size.width * 0.5109326,
        size.height * 0.3436478);
    path_7.cubicTo(
        size.width * 0.5219609,
        size.height * 0.3455667,
        size.width * 0.5332016,
        size.height * 0.3464590,
        size.width * 0.5444211,
        size.height * 0.3464686);
    path_7.cubicTo(
        size.width * 0.5500414,
        size.height * 0.3464494,
        size.width * 0.5556512,
        size.height * 0.3462192,
        size.width * 0.5612503,
        size.height * 0.3457586);
    path_7.cubicTo(
        size.width * 0.5668388,
        size.height * 0.3452693,
        size.width * 0.5724060,
        size.height * 0.3445785,
        size.width * 0.5779095,
        size.height * 0.3435998);
    path_7.cubicTo(
        size.width * 0.5837849,
        size.height * 0.3425827,
        size.width * 0.5895965,
        size.height * 0.3412491,
        size.width * 0.5952912,
        size.height * 0.3396083);
    path_7.cubicTo(
        size.width * 0.6078919,
        size.height * 0.3365380,
        size.width * 0.6193132,
        size.height * 0.3323547,
        size.width * 0.6292896,
        size.height * 0.3271543);
    path_7.lineTo(size.width * 0.6235949, size.height * 0.3241703);
    path_7.cubicTo(
        size.width * 0.6078388,
        size.height * 0.3323834,
        size.width * 0.5885447,
        size.height * 0.3376126,
        size.width * 0.5682837,
        size.height * 0.3398866);
    path_7.cubicTo(
        size.width * 0.5660207,
        size.height * 0.3401265,
        size.width * 0.5637577,
        size.height * 0.3403375,
        size.width * 0.5614947,
        size.height * 0.3405007);
    path_7.cubicTo(
        size.width * 0.5559487,
        size.height * 0.3409228,
        size.width * 0.5503814,
        size.height * 0.3411339,
        size.width * 0.5448142,
        size.height * 0.3411243);
    path_7.cubicTo(
        size.width * 0.5392469,
        size.height * 0.3411435,
        size.width * 0.5336903,
        size.height * 0.3409324,
        size.width * 0.5281549,
        size.height * 0.3405294);
    path_7.cubicTo(
        size.width * 0.5260194,
        size.height * 0.3403855,
        size.width * 0.5238839,
        size.height * 0.3401840,
        size.width * 0.5217590,
        size.height * 0.3399729);
    path_7.cubicTo(
        size.width * 0.5012643,
        size.height * 0.3377374,
        size.width * 0.4817683,
        size.height * 0.3324794,
        size.width * 0.4659272,
        size.height * 0.3241607);
    path_7.lineTo(size.width * 0.4658316, size.height * 0.3242087);
    path_7.lineTo(size.width * 0.4565883, size.height * 0.3193921);
    path_7.cubicTo(
        size.width * 0.4494592,
        size.height * 0.3153047,
        size.width * 0.4422558,
        size.height * 0.3113132,
        size.width * 0.4350099,
        size.height * 0.3074082);
    path_7.cubicTo(
        size.width * 0.4313975,
        size.height * 0.3054220,
        size.width * 0.4277321,
        size.height * 0.3034935,
        size.width * 0.4240985,
        size.height * 0.3015457);
    path_7.lineTo(size.width * 0.4131340, size.height * 0.2957792);
    path_7.lineTo(size.width * 0.4021058, size.height * 0.2900799);
    path_7.cubicTo(
        size.width * 0.3984191,
        size.height * 0.2882089,
        size.width * 0.3947536,
        size.height * 0.2863092,
        size.width * 0.3910350,
        size.height * 0.2844670);
    path_7.cubicTo(
        size.width * 0.3836616,
        size.height * 0.2807442,
        size.width * 0.3762245,
        size.height * 0.2771173,
        size.width * 0.3687342,
        size.height * 0.2735768);
    path_7.lineTo(size.width * 0.3603408, size.height * 0.2692016);
    path_7.lineTo(size.width * 0.3601071, size.height * 0.2693263);
    path_7.lineTo(size.width * 0.3506300, size.height * 0.2643850);
    path_7.cubicTo(
        size.width * 0.3434904,
        size.height * 0.2602880,
        size.width * 0.3362869,
        size.height * 0.2562966,
        size.width * 0.3290198,
        size.height * 0.2523819);
    path_7.cubicTo(
        size.width * 0.3254074,
        size.height * 0.2504054,
        size.width * 0.3217420,
        size.height * 0.2484672,
        size.width * 0.3181084,
        size.height * 0.2465195);
    path_7.lineTo(size.width * 0.3071439, size.height * 0.2407530);
    path_7.lineTo(size.width * 0.2961157, size.height * 0.2350537);
    path_7.cubicTo(
        size.width * 0.2924396,
        size.height * 0.2331827,
        size.width * 0.2887635,
        size.height * 0.2312829,
        size.width * 0.2850449,
        size.height * 0.2294407);
    path_7.cubicTo(
        size.width * 0.2776928,
        size.height * 0.2257275,
        size.width * 0.2702769,
        size.height * 0.2221103,
        size.width * 0.2627972,
        size.height * 0.2185794);
    path_7.lineTo(size.width * 0.2553176, size.height * 0.2146839);
    path_7.lineTo(size.width * 0.2560400, size.height * 0.2143001);
    path_7.lineTo(size.width * 0.2461486, size.height * 0.2091477);
    path_7.cubicTo(
        size.width * 0.2390408,
        size.height * 0.2050699,
        size.width * 0.2318693,
        size.height * 0.2010976,
        size.width * 0.2246340,
        size.height * 0.1972022);
    path_7.cubicTo(
        size.width * 0.2210217,
        size.height * 0.1952256,
        size.width * 0.2173562,
        size.height * 0.1932875,
        size.width * 0.2137226,
        size.height * 0.1913397);
    path_7.lineTo(size.width * 0.2027581, size.height * 0.1855732);
    path_7.lineTo(size.width * 0.1917299, size.height * 0.1798739);
    path_7.cubicTo(
        size.width * 0.1880538,
        size.height * 0.1780029,
        size.width * 0.1843777,
        size.height * 0.1761032,
        size.width * 0.1806591,
        size.height * 0.1742610);
    path_7.cubicTo(
        size.width * 0.1733070,
        size.height * 0.1705478,
        size.width * 0.1658805,
        size.height * 0.1669305,
        size.width * 0.1584114,
        size.height * 0.1633900);
    path_7.lineTo(size.width * 0.1516755, size.height * 0.1598783);
    path_7.lineTo(size.width * 0.1521961, size.height * 0.1596001);
    path_7.lineTo(size.width * 0.1423578, size.height * 0.1544669);
    path_7.cubicTo(
        size.width * 0.1352394,
        size.height * 0.1503795,
        size.width * 0.1280466,
        size.height * 0.1463976,
        size.width * 0.1207900,
        size.height * 0.1424925);
    path_7.cubicTo(
        size.width * 0.1171777,
        size.height * 0.1405160,
        size.width * 0.1135123,
        size.height * 0.1385779,
        size.width * 0.1098787,
        size.height * 0.1366301);
    path_7.lineTo(size.width * 0.09891418, size.height * 0.1308636);
    path_7.lineTo(size.width * 0.08788594, size.height * 0.1251643);
    path_7.cubicTo(
        size.width * 0.08420986,
        size.height * 0.1232933,
        size.width * 0.08053378,
        size.height * 0.1213936,
        size.width * 0.07681520,
        size.height * 0.1195513);
    path_7.cubicTo(
        size.width * 0.06944179,
        size.height * 0.1158286,
        size.width * 0.06200463,
        size.height * 0.1122017,
        size.width * 0.05451435,
        size.height * 0.1086612);
    path_7.lineTo(size.width * 0.04791653, size.height * 0.1052167);
    path_7.lineTo(size.width * 0.04839464, size.height * 0.1049576);
    path_7.cubicTo(
        size.width * 0.03119356,
        size.height * 0.09568905,
        size.width * 0.02100465,
        size.height * 0.08410811,
        size.width * 0.01777480,
        size.height * 0.07208582);
    path_7.cubicTo(
        size.width * 0.01771106,
        size.height * 0.07182676,
        size.width * 0.01763668,
        size.height * 0.07156770,
        size.width * 0.01758356,
        size.height * 0.07129904);
    path_7.cubicTo(
        size.width * 0.01755169,
        size.height * 0.07116471,
        size.width * 0.01753044,
        size.height * 0.07103039,
        size.width * 0.01749857,
        size.height * 0.07089606);
    path_7.cubicTo(
        size.width * 0.01700984,
        size.height * 0.06860290,
        size.width * 0.01675485,
        size.height * 0.06627136,
        size.width * 0.01677610,
        size.height * 0.06393023);
    path_7.cubicTo(
        size.width * 0.01679735,
        size.height * 0.06004433,
        size.width * 0.01756231,
        size.height * 0.05616802,
        size.width * 0.01896475,
        size.height * 0.05248362);
    path_7.cubicTo(
        size.width * 0.02033531,
        size.height * 0.04879921,
        size.width * 0.02237522,
        size.height * 0.04532589,
        size.width * 0.02478698,
        size.height * 0.04208284);
    path_7.cubicTo(
        size.width * 0.02720937,
        size.height * 0.03885899,
        size.width * 0.03003549,
        size.height * 0.03586540,
        size.width * 0.03313784,
        size.height * 0.03312129);
    path_7.cubicTo(
        size.width * 0.03619770,
        size.height * 0.03034839,
        size.width * 0.03958692,
        size.height * 0.02786333,
        size.width * 0.04307176,
        size.height * 0.02551260);
    path_7.cubicTo(
        size.width * 0.04299739,
        size.height * 0.02556058,
        size.width * 0.04291239,
        size.height * 0.02560855,
        size.width * 0.04283802,
        size.height * 0.02564693);
    path_7.cubicTo(
        size.width * 0.04483543,
        size.height * 0.02439960,
        size.width * 0.04691783,
        size.height * 0.02317147,
        size.width * 0.04913835,
        size.height * 0.02200090);
    path_7.lineTo(size.width * 0.04379422, size.height * 0.01890178);
    path_7.cubicTo(
        size.width * 0.03966129,
        size.height * 0.02108939,
        size.width * 0.03583647,
        size.height * 0.02341134,
        size.width * 0.03235163,
        size.height * 0.02587721);
    path_7.cubicTo(
        size.width * 0.02666752,
        size.height * 0.02964797,
        size.width * 0.02147213,
        size.height * 0.03413834,
        size.width * 0.01730732,
        size.height * 0.03946346);
    path_7.cubicTo(
        size.width * 0.01460870,
        size.height * 0.04287921,
        size.width * 0.01238818,
        size.height * 0.04666916,
        size.width * 0.01079450,
        size.height * 0.05068939);
    path_7.cubicTo(
        size.width * 0.009232698,
        size.height * 0.05472880,
        size.width * 0.008372113,
        size.height * 0.05902728,
        size.width * 0.008329615,
        size.height * 0.06334494);
    path_7.cubicTo(
        size.width * 0.008297741,
        size.height * 0.06766261,
        size.width * 0.009083955,
        size.height * 0.07196108,
        size.width * 0.01059264,
        size.height * 0.07601969);
    path_7.cubicTo(
        size.width * 0.01212256,
        size.height * 0.08006870,
        size.width * 0.01427934,
        size.height * 0.08387784,
        size.width * 0.01694609,
        size.height * 0.08734157);
    path_7.close();

    Paint paint_7_fill = Paint()..style = PaintingStyle.fill;
    paint_7_fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path_7, paint_7_fill);

    Path path_8 = Path();
    path_8.moveTo(size.width * 0.6208538, size.height * 0.07264232);
    path_8.cubicTo(
        size.width * 0.6274197,
        size.height * 0.06948562,
        size.width * 0.6339538,
        size.height * 0.06628096,
        size.width * 0.6404454,
        size.height * 0.06300912);
    path_8.cubicTo(
        size.width * 0.6444296,
        size.height * 0.06101340,
        size.width * 0.6484031,
        size.height * 0.05896971,
        size.width * 0.6523661,
        size.height * 0.05693561);
    path_8.lineTo(size.width * 0.6642549, size.height * 0.05079493);
    path_8.lineTo(size.width * 0.6760800, size.height * 0.04457749);
    path_8.cubicTo(
        size.width * 0.6800110,
        size.height * 0.04246663,
        size.width * 0.6839421,
        size.height * 0.04039415,
        size.width * 0.6878626,
        size.height * 0.03827370);
    path_8.cubicTo(
        size.width * 0.6943010,
        size.height * 0.03480997,
        size.width * 0.7007076,
        size.height * 0.03126949,
        size.width * 0.7070610,
        size.height * 0.02768103);
    path_8.lineTo(size.width * 0.7180362, size.height * 0.02196252);
    path_8.lineTo(size.width * 0.7123733, size.height * 0.01897854);
    path_8.lineTo(size.width * 0.6614713, size.height * 0.04551778);
    path_8.lineTo(size.width * 0.6600795, size.height * 0.04623739);
    path_8.lineTo(size.width * 0.6587408, size.height * 0.04693782);
    path_8.lineTo(size.width * 0.6062982, size.height * 0.07428303);
    path_8.lineTo(size.width * 0.6119717, size.height * 0.07725742);
    path_8.lineTo(size.width * 0.6208432, size.height * 0.07263272);
    path_8.close();

    Paint paint_8_fill = Paint()..style = PaintingStyle.fill;
    paint_8_fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path_8, paint_8_fill);

    Path path_9 = Path();
    path_9.moveTo(size.width * 0.7001232, size.height * 0.06682786);
    path_9.lineTo(size.width * 0.6891588, size.height * 0.07259434);
    path_9.cubicTo(
        size.width * 0.6855252,
        size.height * 0.07454209,
        size.width * 0.6818597,
        size.height * 0.07647064,
        size.width * 0.6782474,
        size.height * 0.07845677);
    path_9.cubicTo(
        size.width * 0.6709802,
        size.height * 0.08237145,
        size.width * 0.6637768,
        size.height * 0.08636289,
        size.width * 0.6566371,
        size.height * 0.09045988);
    path_9.lineTo(size.width * 0.6468520, size.height * 0.09556432);
    path_9.lineTo(size.width * 0.6525148, size.height * 0.09854831);
    path_9.lineTo(size.width * 0.7586005, size.height * 0.04323422);
    path_9.lineTo(size.width * 0.7529164, size.height * 0.04025023);
    path_9.lineTo(size.width * 0.7445549, size.height * 0.04460628);
    path_9.cubicTo(
        size.width * 0.7370540,
        size.height * 0.04815636,
        size.width * 0.7295956,
        size.height * 0.05178320,
        size.width * 0.7222116,
        size.height * 0.05551558);
    path_9.cubicTo(
        size.width * 0.7184930,
        size.height * 0.05736738,
        size.width * 0.7148276,
        size.height * 0.05926715,
        size.width * 0.7111515,
        size.height * 0.06112854);
    path_9.lineTo(size.width * 0.7001232, size.height * 0.06682786);
    path_9.close();

    Paint paint_9_fill = Paint()..style = PaintingStyle.fill;
    paint_9_fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path_9, paint_9_fill);

    Path path_10 = Path();
    path_10.moveTo(size.width * 0.5980111, size.height * 0.3010084);
    path_10.cubicTo(
        size.width * 0.6045770,
        size.height * 0.2978517,
        size.width * 0.6111111,
        size.height * 0.2946471,
        size.width * 0.6176027,
        size.height * 0.2913656);
    path_10.cubicTo(
        size.width * 0.6215869,
        size.height * 0.2893699,
        size.width * 0.6255498,
        size.height * 0.2873262,
        size.width * 0.6295234,
        size.height * 0.2852921);
    path_10.lineTo(size.width * 0.6414122, size.height * 0.2791514);
    path_10.lineTo(size.width * 0.6532479, size.height * 0.2729340);
    path_10.cubicTo(
        size.width * 0.6571790,
        size.height * 0.2708231,
        size.width * 0.6611100,
        size.height * 0.2687507,
        size.width * 0.6650305,
        size.height * 0.2666302);
    path_10.cubicTo(
        size.width * 0.6714583,
        size.height * 0.2631665,
        size.width * 0.6778543,
        size.height * 0.2596356,
        size.width * 0.6841971,
        size.height * 0.2560471);
    path_10.lineTo(size.width * 0.6952041, size.height * 0.2503094);
    path_10.lineTo(size.width * 0.6895412, size.height * 0.2473254);
    path_10.lineTo(size.width * 0.6385648, size.height * 0.2739031);
    path_10.lineTo(size.width * 0.6372368, size.height * 0.2745843);
    path_10.lineTo(size.width * 0.6359937, size.height * 0.2752368);
    path_10.lineTo(size.width * 0.5834449, size.height * 0.3026395);
    path_10.lineTo(size.width * 0.5891184, size.height * 0.3056139);
    path_10.lineTo(size.width * 0.5979898, size.height * 0.3009892);
    path_10.close();

    Paint paint_10_fill = Paint()..style = PaintingStyle.fill;
    paint_10_fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path_10, paint_10_fill);

    Path path_11 = Path();
    path_11.moveTo(size.width * 0.7356091, size.height * 0.2716771);
    path_11.lineTo(size.width * 0.7358003, size.height * 0.2717730);
    path_11.cubicTo(
        size.width * 0.7400926,
        size.height * 0.2695374,
        size.width * 0.7448949,
        size.height * 0.2677528,
        size.width * 0.7499841,
        size.height * 0.2664095);
    path_11.cubicTo(
        size.width * 0.7516415,
        size.height * 0.2660833,
        size.width * 0.7533095,
        size.height * 0.2657955,
        size.width * 0.7549882,
        size.height * 0.2655460);
    path_11.cubicTo(
        size.width * 0.7581118,
        size.height * 0.2651046,
        size.width * 0.7612460,
        size.height * 0.2647400,
        size.width * 0.7644015,
        size.height * 0.2645481);
    path_11.cubicTo(
        size.width * 0.7675570,
        size.height * 0.2643275,
        size.width * 0.7707337,
        size.height * 0.2642123,
        size.width * 0.7738786,
        size.height * 0.2642315);
    path_11.cubicTo(
        size.width * 0.7770553,
        size.height * 0.2642123,
        size.width * 0.7802108,
        size.height * 0.2643370,
        size.width * 0.7833556,
        size.height * 0.2645577);
    path_11.cubicTo(
        size.width * 0.7865217,
        size.height * 0.2647592,
        size.width * 0.7896560,
        size.height * 0.2651238,
        size.width * 0.7927796,
        size.height * 0.2655652);
    path_11.cubicTo(
        size.width * 0.7949789,
        size.height * 0.2658914,
        size.width * 0.7971569,
        size.height * 0.2662944,
        size.width * 0.7993349,
        size.height * 0.2667453);
    path_11.cubicTo(
        size.width * 0.8038291,
        size.height * 0.2680215,
        size.width * 0.8080576,
        size.height * 0.2696526,
        size.width * 0.8118825,
        size.height * 0.2716579);
    path_11.lineTo(size.width * 0.8175984, size.height * 0.2686739);
    path_11.cubicTo(
        size.width * 0.8088226,
        size.height * 0.2640780,
        size.width * 0.7978262,
        size.height * 0.2610844,
        size.width * 0.7858949,
        size.height * 0.2598851);
    path_11.cubicTo(
        size.width * 0.7850449,
        size.height * 0.2597891,
        size.width * 0.7841950,
        size.height * 0.2597028,
        size.width * 0.7833450,
        size.height * 0.2596164);
    path_11.cubicTo(
        size.width * 0.7801470,
        size.height * 0.2593381,
        size.width * 0.7769278,
        size.height * 0.2592038,
        size.width * 0.7737192,
        size.height * 0.2591942);
    path_11.cubicTo(
        size.width * 0.7705106,
        size.height * 0.2592134,
        size.width * 0.7673020,
        size.height * 0.2593381,
        size.width * 0.7641040,
        size.height * 0.2596068);
    path_11.cubicTo(
        size.width * 0.7616710,
        size.height * 0.2598275,
        size.width * 0.7592486,
        size.height * 0.2601249,
        size.width * 0.7568475,
        size.height * 0.2605087);
    path_11.cubicTo(
        size.width * 0.7470623,
        size.height * 0.2619575,
        size.width * 0.7380527,
        size.height * 0.2646825,
        size.width * 0.7302756,
        size.height * 0.2687123);
    path_11.lineTo(size.width * 0.7300844, size.height * 0.2686163);
    path_11.lineTo(size.width * 0.7216379, size.height * 0.2730204);
    path_11.cubicTo(
        size.width * 0.7141688,
        size.height * 0.2765512,
        size.width * 0.7067423,
        size.height * 0.2801781,
        size.width * 0.6993902,
        size.height * 0.2838913);
    path_11.cubicTo(
        size.width * 0.6956716,
        size.height * 0.2857431,
        size.width * 0.6919955,
        size.height * 0.2876428,
        size.width * 0.6883194,
        size.height * 0.2895042);
    path_11.lineTo(size.width * 0.6772912, size.height * 0.2952036);
    path_11.lineTo(size.width * 0.6663267, size.height * 0.3009700);
    path_11.cubicTo(
        size.width * 0.6626931,
        size.height * 0.3029178,
        size.width * 0.6590276,
        size.height * 0.3048463,
        size.width * 0.6554153,
        size.height * 0.3068325);
    path_11.cubicTo(
        size.width * 0.6481694,
        size.height * 0.3107376,
        size.width * 0.6409872,
        size.height * 0.3147098,
        size.width * 0.6338688,
        size.height * 0.3187972);
    path_11.lineTo(size.width * 0.6240093, size.height * 0.3239400);
    path_11.lineTo(size.width * 0.6296721, size.height * 0.3269240);
    path_11.lineTo(size.width * 0.7356197, size.height * 0.2716867);
    path_11.close();

    Paint paint_11_fill = Paint()..style = PaintingStyle.fill;
    paint_11_fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path_11, paint_11_fill);

    Path path_12 = Path();
    path_12.moveTo(size.width * 0.4460700, size.height * 0.9087917);
    path_12.cubicTo(
        size.width * 0.4452307,
        size.height * 0.9086958,
        size.width * 0.4443807,
        size.height * 0.9086094,
        size.width * 0.4435307,
        size.height * 0.9085231);
    path_12.cubicTo(
        size.width * 0.4403328,
        size.height * 0.9082448,
        size.width * 0.4371135,
        size.height * 0.9081105,
        size.width * 0.4339049,
        size.height * 0.9081009);
    path_12.cubicTo(
        size.width * 0.4306963,
        size.height * 0.9081201,
        size.width * 0.4274877,
        size.height * 0.9082352,
        size.width * 0.4242898,
        size.height * 0.9085135);
    path_12.cubicTo(
        size.width * 0.4218567,
        size.height * 0.9087438,
        size.width * 0.4194344,
        size.height * 0.9090316,
        size.width * 0.4170332,
        size.height * 0.9094154);
    path_12.cubicTo(
        size.width * 0.4073755,
        size.height * 0.9108450,
        size.width * 0.3984722,
        size.height * 0.9135220,
        size.width * 0.3907588,
        size.height * 0.9174654);
    path_12.lineTo(size.width * 0.3907269, size.height * 0.9174462);
    path_12.cubicTo(
        size.width * 0.3749283,
        size.height * 0.9256786,
        size.width * 0.3555704,
        size.height * 0.9309174,
        size.width * 0.3352564,
        size.height * 0.9331817);
    path_12.cubicTo(
        size.width * 0.3330465,
        size.height * 0.9334120,
        size.width * 0.3308472,
        size.height * 0.9336231,
        size.width * 0.3286373,
        size.height * 0.9337766);
    path_12.cubicTo(
        size.width * 0.3230913,
        size.height * 0.9341988,
        size.width * 0.3175241,
        size.height * 0.9344099,
        size.width * 0.3119568,
        size.height * 0.9344003);
    path_12.cubicTo(
        size.width * 0.3063896,
        size.height * 0.9344099,
        size.width * 0.3008330,
        size.height * 0.9342084,
        size.width * 0.2952976,
        size.height * 0.9338054);
    path_12.cubicTo(
        size.width * 0.2931514,
        size.height * 0.9336519,
        size.width * 0.2910053,
        size.height * 0.9334600,
        size.width * 0.2888591,
        size.height * 0.9332393);
    path_12.cubicTo(
        size.width * 0.2685345,
        size.height * 0.9310133,
        size.width * 0.2491872,
        size.height * 0.9258129,
        size.width * 0.2334205,
        size.height * 0.9176094);
    path_12.lineTo(size.width * 0.2336223, size.height * 0.9175038);
    path_12.lineTo(size.width * 0.2238053, size.height * 0.9123898);
    path_12.cubicTo(
        size.width * 0.2166762,
        size.height * 0.9083024,
        size.width * 0.2094728,
        size.height * 0.9043109,
        size.width * 0.2022163,
        size.height * 0.9004059);
    path_12.cubicTo(
        size.width * 0.1985933,
        size.height * 0.8984197,
        size.width * 0.1949491,
        size.height * 0.8964912,
        size.width * 0.1913049,
        size.height * 0.8945434);
    path_12.lineTo(size.width * 0.1803404, size.height * 0.8887769);
    path_12.lineTo(size.width * 0.1693122, size.height * 0.8830872);
    path_12.cubicTo(
        size.width * 0.1656361,
        size.height * 0.8812162,
        size.width * 0.1619600,
        size.height * 0.8793165,
        size.width * 0.1582521,
        size.height * 0.8774647);
    path_12.cubicTo(
        size.width * 0.1508680,
        size.height * 0.8737323,
        size.width * 0.1434096,
        size.height * 0.8700959,
        size.width * 0.1359087,
        size.height * 0.8665554);
    path_12.cubicTo(
        size.width * 0.1359087,
        size.height * 0.8665554,
        size.width * 0.1359087,
        size.height * 0.8665554,
        size.width * 0.1359193,
        size.height * 0.8665554);
    path_12.lineTo(size.width * 0.1275579, size.height * 0.8621897);
    path_12.lineTo(size.width * 0.1218737, size.height * 0.8651737);
    path_12.lineTo(size.width * 0.2275982, size.height * 0.9202959);
    path_12.lineTo(size.width * 0.2273539, size.height * 0.9204206);
    path_12.cubicTo(
        size.width * 0.2359916,
        size.height * 0.9249494,
        size.width * 0.2457236,
        size.height * 0.9287010,
        size.width * 0.2563906,
        size.height * 0.9316274);
    path_12.cubicTo(
        size.width * 0.2634453,
        size.height * 0.9339013,
        size.width * 0.2707125,
        size.height * 0.9356572,
        size.width * 0.2780753,
        size.height * 0.9369237);
    path_12.cubicTo(
        size.width * 0.2891035,
        size.height * 0.9388427,
        size.width * 0.3003336,
        size.height * 0.9397350,
        size.width * 0.3115637,
        size.height * 0.9397446);
    path_12.cubicTo(
        size.width * 0.3171841,
        size.height * 0.9397254,
        size.width * 0.3227938,
        size.height * 0.9394951,
        size.width * 0.3283929,
        size.height * 0.9390250);
    path_12.cubicTo(
        size.width * 0.3339814,
        size.height * 0.9385356,
        size.width * 0.3395593,
        size.height * 0.9378544,
        size.width * 0.3450522,
        size.height * 0.9368661);
    path_12.cubicTo(
        size.width * 0.3509381,
        size.height * 0.9358395,
        size.width * 0.3567604,
        size.height * 0.9345058,
        size.width * 0.3624551,
        size.height * 0.9328651);
    path_12.cubicTo(
        size.width * 0.3748645,
        size.height * 0.9298427,
        size.width * 0.3861053,
        size.height * 0.9257362,
        size.width * 0.3959754,
        size.height * 0.9206413);
    path_12.lineTo(size.width * 0.3959967, size.height * 0.9206413);
    path_12.cubicTo(
        size.width * 0.4002677,
        size.height * 0.9184345,
        size.width * 0.4050381,
        size.height * 0.9166595,
        size.width * 0.4100954,
        size.height * 0.9153162);
    path_12.cubicTo(
        size.width * 0.4117847,
        size.height * 0.9149900,
        size.width * 0.4134846,
        size.height * 0.9146925,
        size.width * 0.4151845,
        size.height * 0.9144335);
    path_12.cubicTo(
        size.width * 0.4183082,
        size.height * 0.9139921,
        size.width * 0.4214424,
        size.height * 0.9136275,
        size.width * 0.4245979,
        size.height * 0.9134260);
    path_12.cubicTo(
        size.width * 0.4277533,
        size.height * 0.9131957,
        size.width * 0.4309301,
        size.height * 0.9130806,
        size.width * 0.4340749,
        size.height * 0.9131094);
    path_12.cubicTo(
        size.width * 0.4372517,
        size.height * 0.9130902,
        size.width * 0.4404071,
        size.height * 0.9132053,
        size.width * 0.4435520,
        size.height * 0.9134356);
    path_12.cubicTo(
        size.width * 0.4467075,
        size.height * 0.9136371,
        size.width * 0.4498523,
        size.height * 0.9140017,
        size.width * 0.4529759,
        size.height * 0.9144527);
    path_12.cubicTo(
        size.width * 0.4551646,
        size.height * 0.9147693,
        size.width * 0.4573320,
        size.height * 0.9151723,
        size.width * 0.4594994,
        size.height * 0.9156232);
    path_12.cubicTo(
        size.width * 0.4640042,
        size.height * 0.9168993,
        size.width * 0.4682433,
        size.height * 0.9185305,
        size.width * 0.4720682,
        size.height * 0.9205358);
    path_12.lineTo(size.width * 0.4777842, size.height * 0.9175518);
    path_12.cubicTo(
        size.width * 0.4690083,
        size.height * 0.9129559,
        size.width * 0.4580119,
        size.height * 0.9099623,
        size.width * 0.4460700,
        size.height * 0.9087725);
    path_12.close();

    Paint paint_12_fill = Paint()..style = PaintingStyle.fill;
    paint_12_fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path_12, paint_12_fill);

    Path path_13 = Path();
    path_13.moveTo(size.width * 0.5832749, size.height * 0.3026203);
    path_13.cubicTo(
        size.width * 0.5668707,
        size.height * 0.3111693,
        size.width * 0.5430505,
        size.height * 0.3132706,
        size.width * 0.5232889,
        size.height * 0.3087322);
    path_13.cubicTo(
        size.width * 0.5228639,
        size.height * 0.3086363,
        size.width * 0.5224496,
        size.height * 0.3085403,
        size.width * 0.5220246,
        size.height * 0.3084348);
    path_13.cubicTo(
        size.width * 0.5216740,
        size.height * 0.3083484,
        size.width * 0.5213234,
        size.height * 0.3082525,
        size.width * 0.5209728,
        size.height * 0.3081661);
    path_13.cubicTo(
        size.width * 0.5184229,
        size.height * 0.3074849,
        size.width * 0.5158943,
        size.height * 0.3066885,
        size.width * 0.5134081,
        size.height * 0.3057483);
    path_13.cubicTo(
        size.width * 0.5134506,
        size.height * 0.3057674,
        size.width * 0.5134825,
        size.height * 0.3057866,
        size.width * 0.5135250,
        size.height * 0.3058058);
    path_13.cubicTo(
        size.width * 0.5112195,
        size.height * 0.3049327,
        size.width * 0.5090096,
        size.height * 0.3039540,
        size.width * 0.5069378,
        size.height * 0.3028602);
    path_13.lineTo(size.width * 0.5065766, size.height * 0.3030521);
    path_13.lineTo(size.width * 0.4546971, size.height * 0.2760043);
    path_13.lineTo(size.width * 0.4531884, size.height * 0.2752080);
    path_13.lineTo(size.width * 0.4516797, size.height * 0.2744308);
    path_13.lineTo(size.width * 0.4008946, size.height * 0.2479491);
    path_13.lineTo(size.width * 0.4006608, size.height * 0.2480738);
    path_13.lineTo(size.width * 0.3486964, size.height * 0.2209781);
    path_13.lineTo(size.width * 0.3471983, size.height * 0.2201913);
    path_13.lineTo(size.width * 0.3455834, size.height * 0.2193566);
    path_13.lineTo(size.width * 0.2958819, size.height * 0.1934410);
    path_13.lineTo(size.width * 0.2966150, size.height * 0.1930572);
    path_13.lineTo(size.width * 0.2442362, size.height * 0.1657504);
    path_13.lineTo(size.width * 0.2428231, size.height * 0.1650116);
    path_13.lineTo(size.width * 0.2414207, size.height * 0.1642824);
    path_13.lineTo(size.width * 0.1922399, size.height * 0.1386354);
    path_13.lineTo(size.width * 0.1927711, size.height * 0.1383572);
    path_13.lineTo(size.width * 0.1404985, size.height * 0.1110983);
    path_13.lineTo(size.width * 0.1389898, size.height * 0.1103019);
    path_13.lineTo(size.width * 0.1374280, size.height * 0.1094960);
    path_13.lineTo(size.width * 0.08822592, size.height * 0.08383946);
    path_13.lineTo(size.width * 0.08870402, size.height * 0.08358040);
    path_13.cubicTo(
        size.width * 0.08414611,
        size.height * 0.08112413,
        size.width * 0.08061877,
        size.height * 0.07835123,
        size.width * 0.07809014,
        size.height * 0.07540562);
    path_13.cubicTo(
        size.width * 0.07765453,
        size.height * 0.07482993,
        size.width * 0.07721893,
        size.height * 0.07424465,
        size.width * 0.07683645,
        size.height * 0.07364018);
    path_13.cubicTo(
        size.width * 0.07494528,
        size.height * 0.07071376,
        size.width * 0.07375534,
        size.height * 0.06736517,
        size.width * 0.07374471,
        size.height * 0.06397820);
    path_13.cubicTo(
        size.width * 0.07367034,
        size.height * 0.06058164,
        size.width * 0.07476467,
        size.height * 0.05722345,
        size.width * 0.07657083,
        size.height * 0.05423947);
    path_13.cubicTo(
        size.width * 0.07693207,
        size.height * 0.05364459,
        size.width * 0.07732517,
        size.height * 0.05307850,
        size.width * 0.07773953,
        size.height * 0.05251240);
    path_13.cubicTo(
        size.width * 0.08041691,
        size.height * 0.04919260,
        size.width * 0.08431610,
        size.height * 0.04608388,
        size.width * 0.08944774,
        size.height * 0.04336855);
    path_13.lineTo(size.width * 0.08383800, size.height * 0.04035578);
    path_13.cubicTo(
        size.width * 0.08163872,
        size.height * 0.04151675,
        size.width * 0.07964132,
        size.height * 0.04274488,
        size.width * 0.07783515,
        size.height * 0.04401140);
    path_13.cubicTo(
        size.width * 0.07803702,
        size.height * 0.04381950,
        size.width * 0.07824951,
        size.height * 0.04361801,
        size.width * 0.07845137,
        size.height * 0.04342612);
    path_13.cubicTo(
        size.width * 0.07501966,
        size.height * 0.04553697,
        size.width * 0.07188543,
        size.height * 0.04831947,
        size.width * 0.06954803,
        size.height * 0.05179279);
    path_13.cubicTo(
        size.width * 0.06909118,
        size.height * 0.05246443,
        size.width * 0.06867682,
        size.height * 0.05317444,
        size.width * 0.06828372,
        size.height * 0.05389405);
    path_13.cubicTo(
        size.width * 0.06818810,
        size.height * 0.05405717,
        size.width * 0.06810310,
        size.height * 0.05422987,
        size.width * 0.06800748,
        size.height * 0.05440258);
    path_13.cubicTo(
        size.width * 0.06798623,
        size.height * 0.05444096,
        size.width * 0.06796498,
        size.height * 0.05447934,
        size.width * 0.06794373,
        size.height * 0.05451772);
    path_13.cubicTo(
        size.width * 0.06641380,
        size.height * 0.05736738,
        size.width * 0.06561697,
        size.height * 0.06035136,
        size.width * 0.06559572,
        size.height * 0.06341211);
    path_13.cubicTo(
        size.width * 0.06551072,
        size.height * 0.07171162,
        size.width * 0.07102484,
        size.height * 0.07964653,
        size.width * 0.08155373,
        size.height * 0.08572964);
    path_13.lineTo(size.width * 0.08101188, size.height * 0.08601748);
    path_13.lineTo(size.width * 0.09201887, size.height * 0.09175518);
    path_13.cubicTo(
        size.width * 0.09837233,
        size.height * 0.09533404,
        size.width * 0.1047577,
        size.height * 0.09887453,
        size.width * 0.1111855,
        size.height * 0.1023287);
    path_13.cubicTo(
        size.width * 0.1151059,
        size.height * 0.1044587,
        size.width * 0.1190370,
        size.height * 0.1065216,
        size.width * 0.1229681,
        size.height * 0.1086325);
    path_13.lineTo(size.width * 0.1347931, size.height * 0.1148499);
    path_13.lineTo(size.width * 0.1466926, size.height * 0.1209906);
    path_13.cubicTo(
        size.width * 0.1506662,
        size.height * 0.1230151,
        size.width * 0.1546291,
        size.height * 0.1250684,
        size.width * 0.1586239,
        size.height * 0.1270641);
    path_13.cubicTo(
        size.width * 0.1651155,
        size.height * 0.1303455,
        size.width * 0.1716496,
        size.height * 0.1335502,
        size.width * 0.1782261,
        size.height * 0.1367069);
    path_13.lineTo(size.width * 0.1853764, size.height * 0.1404393);
    path_13.lineTo(size.width * 0.1848452, size.height * 0.1407175);
    path_13.lineTo(size.width * 0.1958203, size.height * 0.1464360);
    path_13.cubicTo(
        size.width * 0.2021844,
        size.height * 0.1500245,
        size.width * 0.2085804,
        size.height * 0.1535650,
        size.width * 0.2150294,
        size.height * 0.1570383);
    path_13.cubicTo(
        size.width * 0.2189499,
        size.height * 0.1591587,
        size.width * 0.2228809,
        size.height * 0.1612312,
        size.width * 0.2268120,
        size.height * 0.1633421);
    path_13.lineTo(size.width * 0.2386371, size.height * 0.1695595);
    path_13.lineTo(size.width * 0.2505365, size.height * 0.1757002);
    path_13.cubicTo(
        size.width * 0.2545101,
        size.height * 0.1777247,
        size.width * 0.2584730,
        size.height * 0.1797780,
        size.width * 0.2624572,
        size.height * 0.1817737);
    path_13.cubicTo(
        size.width * 0.2689488,
        size.height * 0.1850455,
        size.width * 0.2754723,
        size.height * 0.1882502,
        size.width * 0.2820382,
        size.height * 0.1914069);
    path_13.lineTo(size.width * 0.2899535, size.height * 0.1955327);
    path_13.lineTo(size.width * 0.2892310, size.height * 0.1959164);
    path_13.lineTo(size.width * 0.3002167, size.height * 0.2016446);
    path_13.cubicTo(
        size.width * 0.3065702,
        size.height * 0.2052330,
        size.width * 0.3129662,
        size.height * 0.2087735,
        size.width * 0.3194046,
        size.height * 0.2122372);
    path_13.cubicTo(
        size.width * 0.3233250,
        size.height * 0.2143577,
        size.width * 0.3272561,
        size.height * 0.2164302,
        size.width * 0.3311872,
        size.height * 0.2185410);
    path_13.lineTo(size.width * 0.3430123, size.height * 0.2247585);
    path_13.lineTo(size.width * 0.3549117, size.height * 0.2308991);
    path_13.cubicTo(
        size.width * 0.3588853,
        size.height * 0.2329236,
        size.width * 0.3628482,
        size.height * 0.2349673,
        size.width * 0.3668324,
        size.height * 0.2369631);
    path_13.cubicTo(
        size.width * 0.3733027,
        size.height * 0.2402349,
        size.width * 0.3798262,
        size.height * 0.2434300,
        size.width * 0.3863709,
        size.height * 0.2465771);
    path_13.lineTo(size.width * 0.3952955, size.height * 0.2512305);
    path_13.lineTo(size.width * 0.3955398, size.height * 0.2511058);
    path_13.lineTo(size.width * 0.4061750, size.height * 0.2566516);
    path_13.cubicTo(
        size.width * 0.4125390,
        size.height * 0.2602401,
        size.width * 0.4189456,
        size.height * 0.2637901,
        size.width * 0.4253947,
        size.height * 0.2672539);
    path_13.cubicTo(
        size.width * 0.4293151,
        size.height * 0.2693839,
        size.width * 0.4332462,
        size.height * 0.2714564,
        size.width * 0.4371667,
        size.height * 0.2735577);
    path_13.lineTo(size.width * 0.4490024, size.height * 0.2797751);
    path_13.lineTo(size.width * 0.4608912, size.height * 0.2859158);
    path_13.cubicTo(
        size.width * 0.4648648,
        size.height * 0.2879403,
        size.width * 0.4688277,
        size.height * 0.2899840,
        size.width * 0.4728225,
        size.height * 0.2919797);
    path_13.cubicTo(
        size.width * 0.4793247,
        size.height * 0.2952611,
        size.width * 0.4858694,
        size.height * 0.2984658,
        size.width * 0.4924353,
        size.height * 0.3016321);
    path_13.lineTo(size.width * 0.5012856, size.height * 0.3062472);
    path_13.lineTo(size.width * 0.5016255, size.height * 0.3060745);
    path_13.cubicTo(
        size.width * 0.5064597,
        size.height * 0.3085595,
        size.width * 0.5119632,
        size.height * 0.3105648,
        size.width * 0.5179023,
        size.height * 0.3120424);
    path_13.cubicTo(
        size.width * 0.5143856,
        size.height * 0.3112845,
        size.width * 0.5109007,
        size.height * 0.3103825,
        size.width * 0.5074797,
        size.height * 0.3092600);
    path_13.cubicTo(
        size.width * 0.5132913,
        size.height * 0.3118985,
        size.width * 0.5196022,
        size.height * 0.3136640,
        size.width * 0.5260194,
        size.height * 0.3148058);
    path_13.cubicTo(
        size.width * 0.5292280,
        size.height * 0.3153910,
        size.width * 0.5324791,
        size.height * 0.3157748,
        size.width * 0.5357515,
        size.height * 0.3160531);
    path_13.cubicTo(
        size.width * 0.5390026,
        size.height * 0.3163121,
        size.width * 0.5422855,
        size.height * 0.3164177,
        size.width * 0.5455579,
        size.height * 0.3164081);
    path_13.cubicTo(
        size.width * 0.5488409,
        size.height * 0.3163697,
        size.width * 0.5521132,
        size.height * 0.3162162,
        size.width * 0.5553643,
        size.height * 0.3158996);
    path_13.cubicTo(
        size.width * 0.5586154,
        size.height * 0.3155637,
        size.width * 0.5618559,
        size.height * 0.3151128,
        size.width * 0.5650539,
        size.height * 0.3144603);
    path_13.cubicTo(
        size.width * 0.5714392,
        size.height * 0.3131746,
        size.width * 0.5776864,
        size.height * 0.3112269,
        size.width * 0.5834024,
        size.height * 0.3084252);
    path_13.cubicTo(
        size.width * 0.5821168,
        size.height * 0.3088858,
        size.width * 0.5808313,
        size.height * 0.3093079,
        size.width * 0.5795244,
        size.height * 0.3097109);
    path_13.cubicTo(
        size.width * 0.5828393,
        size.height * 0.3085307,
        size.width * 0.5860054,
        size.height * 0.3071683,
        size.width * 0.5889803,
        size.height * 0.3056139);
    path_13.lineTo(size.width * 0.5832855, size.height * 0.3026299);
    path_13.close();

    Paint paint_13_fill = Paint()..style = PaintingStyle.fill;
    paint_13_fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path_13, paint_13_fill);

    Path path_14 = Path();
    path_14.moveTo(size.width * 0.6350375, size.height * 0.7324871);
    path_14.lineTo(size.width * 0.6336563, size.height * 0.7332067);
    path_14.lineTo(size.width * 0.6321689, size.height * 0.7339839);
    path_14.lineTo(size.width * 0.5798644, size.height * 0.7612619);
    path_14.lineTo(size.width * 0.5855379, size.height * 0.7642459);
    path_14.lineTo(size.width * 0.5944731, size.height * 0.7595828);
    path_14.cubicTo(
        size.width * 0.6010178,
        size.height * 0.7564357,
        size.width * 0.6075307,
        size.height * 0.7532406,
        size.width * 0.6140010,
        size.height * 0.7499784);
    path_14.cubicTo(
        size.width * 0.6179852,
        size.height * 0.7479827,
        size.width * 0.6219481,
        size.height * 0.7459294,
        size.width * 0.6259323,
        size.height * 0.7439049);
    path_14.lineTo(size.width * 0.6378211, size.height * 0.7377642);
    path_14.lineTo(size.width * 0.6496568, size.height * 0.7315564);
    path_14.cubicTo(
        size.width * 0.6535879,
        size.height * 0.7294455,
        size.width * 0.6575190,
        size.height * 0.7273730,
        size.width * 0.6614394,
        size.height * 0.7252430);
    path_14.cubicTo(
        size.width * 0.6678991,
        size.height * 0.7217697,
        size.width * 0.6743163,
        size.height * 0.7182196,
        size.width * 0.6806910,
        size.height * 0.7146215);
    path_14.lineTo(size.width * 0.6916130, size.height * 0.7089318);
    path_14.lineTo(size.width * 0.6859501, size.height * 0.7059478);
    path_14.lineTo(size.width * 0.6350375, size.height * 0.7324967);
    path_14.close();

    Paint paint_14_fill = Paint()..style = PaintingStyle.fill;
    paint_14_fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path_14, paint_14_fill);

    Path path_15 = Path();
    path_15.moveTo(size.width * 0.7179512, size.height * 0.7316523);
    path_15.cubicTo(
        size.width * 0.7104928,
        size.height * 0.7351736,
        size.width * 0.7030981,
        size.height * 0.7387813,
        size.width * 0.6957672,
        size.height * 0.7424849);
    path_15.cubicTo(
        size.width * 0.6920486,
        size.height * 0.7443271,
        size.width * 0.6883832,
        size.height * 0.7462268,
        size.width * 0.6846965,
        size.height * 0.7480978);
    path_15.lineTo(size.width * 0.6736682, size.height * 0.7537971);
    path_15.lineTo(size.width * 0.6627037, size.height * 0.7595636);
    path_15.cubicTo(
        size.width * 0.6590701,
        size.height * 0.7615114,
        size.width * 0.6554047,
        size.height * 0.7634495,
        size.width * 0.6517924,
        size.height * 0.7654261);
    path_15.cubicTo(
        size.width * 0.6445146,
        size.height * 0.7693407,
        size.width * 0.6373005,
        size.height * 0.7733418,
        size.width * 0.6301609,
        size.height * 0.7774388);
    path_15.lineTo(size.width * 0.6301821, size.height * 0.7774388);
    path_15.cubicTo(
        size.width * 0.6301821,
        size.height * 0.7774388,
        size.width * 0.6203969,
        size.height * 0.7825336,
        size.width * 0.6203969,
        size.height * 0.7825336);
    path_15.lineTo(size.width * 0.6260598, size.height * 0.7855080);
    path_15.lineTo(size.width * 0.7321455, size.height * 0.7301939);
    path_15.lineTo(size.width * 0.7264614, size.height * 0.7272099);
    path_15.lineTo(size.width * 0.7179512, size.height * 0.7316427);
    path_15.close();

    Paint paint_15_fill = Paint()..style = PaintingStyle.fill;
    paint_15_fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path_15, paint_15_fill);

    Path path_16 = Path();
    path_16.moveTo(size.width * 0.5796732, size.height * 0.7612235);
    path_16.cubicTo(
        size.width * 0.5632477,
        size.height * 0.7697821,
        size.width * 0.5393638,
        size.height * 0.7718834,
        size.width * 0.5195810,
        size.height * 0.7673162);
    path_16.cubicTo(
        size.width * 0.5192197,
        size.height * 0.7672299,
        size.width * 0.5188479,
        size.height * 0.7671531,
        size.width * 0.5184866,
        size.height * 0.7670572);
    path_16.cubicTo(
        size.width * 0.5180935,
        size.height * 0.7669612,
        size.width * 0.5177111,
        size.height * 0.7668557,
        size.width * 0.5173179,
        size.height * 0.7667597);
    path_16.cubicTo(
        size.width * 0.5147893,
        size.height * 0.7660785,
        size.width * 0.5122713,
        size.height * 0.7652917,
        size.width * 0.5098064,
        size.height * 0.7643610);
    path_16.cubicTo(
        size.width * 0.5098383,
        size.height * 0.7643802,
        size.width * 0.5098702,
        size.height * 0.7643898,
        size.width * 0.5099127,
        size.height * 0.7644090);
    path_16.cubicTo(
        size.width * 0.5076178,
        size.height * 0.7635359,
        size.width * 0.5054079,
        size.height * 0.7625572,
        size.width * 0.5033361,
        size.height * 0.7614730);
    path_16.lineTo(size.width * 0.5029749, size.height * 0.7616649);
    path_16.lineTo(size.width * 0.4509360, size.height * 0.7345308);
    path_16.lineTo(size.width * 0.4495761, size.height * 0.7338207);
    path_16.lineTo(size.width * 0.4483011, size.height * 0.7331587);
    path_16.lineTo(size.width * 0.3972823, size.height * 0.7065523);
    path_16.lineTo(size.width * 0.3970379, size.height * 0.7066770);
    path_16.lineTo(size.width * 0.3455728, size.height * 0.6798403);
    path_16.lineTo(size.width * 0.3435754, size.height * 0.6787849);
    path_16.lineTo(size.width * 0.3412805, size.height * 0.6775952);
    path_16.lineTo(size.width * 0.2922590, size.height * 0.6520346);
    path_16.lineTo(size.width * 0.2929921, size.height * 0.6516508);
    path_16.lineTo(size.width * 0.2411020, size.height * 0.6245934);
    path_16.lineTo(size.width * 0.2392002, size.height * 0.6235956);
    path_16.lineTo(size.width * 0.2371922, size.height * 0.6225593);
    path_16.lineTo(size.width * 0.1868957, size.height * 0.5963367);
    path_16.lineTo(size.width * 0.1868532, size.height * 0.5963559);
    path_16.lineTo(size.width * 0.1341875, size.height * 0.5688955);
    path_16.lineTo(size.width * 0.1332845, size.height * 0.5684254);
    path_16.lineTo(size.width * 0.1323283, size.height * 0.5679361);
    path_16.lineTo(size.width * 0.08122437, size.height * 0.5412913);
    path_16.lineTo(size.width * 0.08140499, size.height * 0.5411953);
    path_16.cubicTo(
        size.width * 0.07684707,
        size.height * 0.5387390,
        size.width * 0.07331973,
        size.height * 0.5359661,
        size.width * 0.07080173,
        size.height * 0.5330205);
    path_16.cubicTo(
        size.width * 0.07036612,
        size.height * 0.5324449,
        size.width * 0.06993052,
        size.height * 0.5318596,
        size.width * 0.06954803,
        size.height * 0.5312551);
    path_16.cubicTo(
        size.width * 0.06765687,
        size.height * 0.5283287,
        size.width * 0.06646693,
        size.height * 0.5249897,
        size.width * 0.06644568,
        size.height * 0.5215931);
    path_16.cubicTo(
        size.width * 0.06637131,
        size.height * 0.5182062,
        size.width * 0.06747625,
        size.height * 0.5148384,
        size.width * 0.06927180,
        size.height * 0.5118640);
    path_16.cubicTo(
        size.width * 0.06963303,
        size.height * 0.5112691,
        size.width * 0.07003676,
        size.height * 0.5106934,
        size.width * 0.07044049,
        size.height * 0.5101273);
    path_16.cubicTo(
        size.width * 0.07311787,
        size.height * 0.5068075,
        size.width * 0.07701706,
        size.height * 0.5036988,
        size.width * 0.08214870,
        size.height * 0.5009931);
    path_16.lineTo(size.width * 0.07653896, size.height * 0.4979803);
    path_16.cubicTo(
        size.width * 0.07433969,
        size.height * 0.4991413,
        size.width * 0.07234228,
        size.height * 0.5003694,
        size.width * 0.07053611,
        size.height * 0.5016359);
    path_16.cubicTo(
        size.width * 0.07073798,
        size.height * 0.5014440,
        size.width * 0.07095047,
        size.height * 0.5012425,
        size.width * 0.07115233,
        size.height * 0.5010506);
    path_16.cubicTo(
        size.width * 0.06770999,
        size.height * 0.5031615,
        size.width * 0.06458639,
        size.height * 0.5059440,
        size.width * 0.06224900,
        size.height * 0.5094173);
    path_16.cubicTo(
        size.width * 0.06178152,
        size.height * 0.5100985,
        size.width * 0.06136716,
        size.height * 0.5108181,
        size.width * 0.06097405,
        size.height * 0.5115570);
    path_16.cubicTo(
        size.width * 0.06091031,
        size.height * 0.5116721,
        size.width * 0.06085719,
        size.height * 0.5117872,
        size.width * 0.06079344,
        size.height * 0.5119024);
    path_16.cubicTo(
        size.width * 0.06075094,
        size.height * 0.5119983,
        size.width * 0.06069782,
        size.height * 0.5120847,
        size.width * 0.06064470,
        size.height * 0.5121806);
    path_16.cubicTo(
        size.width * 0.05912539,
        size.height * 0.5150207,
        size.width * 0.05833918,
        size.height * 0.5179855,
        size.width * 0.05830730,
        size.height * 0.5210462);
    path_16.cubicTo(
        size.width * 0.05822231,
        size.height * 0.5296720,
        size.width * 0.06417203,
        size.height * 0.5379043,
        size.width * 0.07549776,
        size.height * 0.5440642);
    path_16.lineTo(size.width * 0.07532777, size.height * 0.5441601);
    path_16.lineTo(size.width * 0.08615414, size.height * 0.5498019);
    path_16.cubicTo(
        size.width * 0.09256072,
        size.height * 0.5534191,
        size.width * 0.09900980,
        size.height * 0.5569884,
        size.width * 0.1055014,
        size.height * 0.5604809);
    path_16.cubicTo(
        size.width * 0.1094218,
        size.height * 0.5626013,
        size.width * 0.1133529,
        size.height * 0.5646738,
        size.width * 0.1172733,
        size.height * 0.5667847);
    path_16.lineTo(size.width * 0.1291090, size.height * 0.5730021);
    path_16.lineTo(size.width * 0.1409979, size.height * 0.5791332);
    path_16.cubicTo(
        size.width * 0.1449714,
        size.height * 0.5811673,
        size.width * 0.1489344,
        size.height * 0.5832110,
        size.width * 0.1529186,
        size.height * 0.5851971);
    path_16.cubicTo(
        size.width * 0.1594208,
        size.height * 0.5884881,
        size.width * 0.1659654,
        size.height * 0.5917024,
        size.width * 0.1725420,
        size.height * 0.5948591);
    path_16.lineTo(size.width * 0.1813816, size.height * 0.5994742);
    path_16.lineTo(size.width * 0.1814347, size.height * 0.5994454);
    path_16.lineTo(size.width * 0.1921761, size.height * 0.6050488);
    path_16.cubicTo(
        size.width * 0.1985402,
        size.height * 0.6086372,
        size.width * 0.2049361,
        size.height * 0.6121873,
        size.width * 0.2113852,
        size.height * 0.6156511);
    path_16.cubicTo(
        size.width * 0.2153057,
        size.height * 0.6177811,
        size.width * 0.2192367,
        size.height * 0.6198440,
        size.width * 0.2231678,
        size.height * 0.6219548);
    path_16.lineTo(size.width * 0.2350035, size.height * 0.6281723);
    path_16.lineTo(size.width * 0.2469030, size.height * 0.6343130);
    path_16.cubicTo(
        size.width * 0.2508765,
        size.height * 0.6363375,
        size.width * 0.2548395,
        size.height * 0.6383908,
        size.width * 0.2588237,
        size.height * 0.6403769);
    path_16.cubicTo(
        size.width * 0.2653259,
        size.height * 0.6436679,
        size.width * 0.2718812,
        size.height * 0.6468822,
        size.width * 0.2784684,
        size.height * 0.6500485);
    path_16.lineTo(size.width * 0.2863199, size.height * 0.6541454);
    path_16.lineTo(size.width * 0.2855974, size.height * 0.6545292);
    path_16.lineTo(size.width * 0.2964450, size.height * 0.6601902);
    path_16.cubicTo(
        size.width * 0.3028516,
        size.height * 0.6637978,
        size.width * 0.3092901,
        size.height * 0.6673671,
        size.width * 0.3157710,
        size.height * 0.6708500);
    path_16.cubicTo(
        size.width * 0.3196915,
        size.height * 0.6729801,
        size.width * 0.3236225,
        size.height * 0.6750525,
        size.width * 0.3275536,
        size.height * 0.6771538);
    path_16.lineTo(size.width * 0.3393787, size.height * 0.6833712);
    path_16.lineTo(size.width * 0.3512675, size.height * 0.6895119);
    path_16.cubicTo(
        size.width * 0.3552517,
        size.height * 0.6915364,
        size.width * 0.3592040,
        size.height * 0.6935897,
        size.width * 0.3631882,
        size.height * 0.6955758);
    path_16.cubicTo(
        size.width * 0.3696585,
        size.height * 0.6988477,
        size.width * 0.3761714,
        size.height * 0.7020427,
        size.width * 0.3827160,
        size.height * 0.7051802);
    path_16.lineTo(size.width * 0.3916619, size.height * 0.7098433);
    path_16.lineTo(size.width * 0.3919062, size.height * 0.7097186);
    path_16.lineTo(size.width * 0.4026264, size.height * 0.7153124);
    path_16.cubicTo(
        size.width * 0.4089692,
        size.height * 0.7188816,
        size.width * 0.4153439,
        size.height * 0.7224125,
        size.width * 0.4217611,
        size.height * 0.7258667);
    path_16.cubicTo(
        size.width * 0.4256816,
        size.height * 0.7279967,
        size.width * 0.4296126,
        size.height * 0.7300692,
        size.width * 0.4335437,
        size.height * 0.7321704);
    path_16.lineTo(size.width * 0.4453794, size.height * 0.7383879);
    path_16.lineTo(size.width * 0.4572682, size.height * 0.7445286);
    path_16.cubicTo(
        size.width * 0.4612418,
        size.height * 0.7465531,
        size.width * 0.4652047,
        size.height * 0.7485968,
        size.width * 0.4691889,
        size.height * 0.7506021);
    path_16.cubicTo(
        size.width * 0.4756699,
        size.height * 0.7538643,
        size.width * 0.4821827,
        size.height * 0.7570690,
        size.width * 0.4887380,
        size.height * 0.7602161);
    path_16.lineTo(size.width * 0.4976520, size.height * 0.7648696);
    path_16.lineTo(size.width * 0.4979920, size.height * 0.7646873);
    path_16.cubicTo(
        size.width * 0.5028261,
        size.height * 0.7671819,
        size.width * 0.5083296,
        size.height * 0.7691776,
        size.width * 0.5142900,
        size.height * 0.7706648);
    path_16.cubicTo(
        size.width * 0.5107626,
        size.height * 0.7699068,
        size.width * 0.5072778,
        size.height * 0.7690049,
        size.width * 0.5038567,
        size.height * 0.7678823);
    path_16.cubicTo(
        size.width * 0.5096683,
        size.height * 0.7705209,
        size.width * 0.5159793,
        size.height * 0.7722863,
        size.width * 0.5223858,
        size.height * 0.7734281);
    path_16.cubicTo(
        size.width * 0.5255944,
        size.height * 0.7740134,
        size.width * 0.5288455,
        size.height * 0.7743972,
        size.width * 0.5321073,
        size.height * 0.7746755);
    path_16.cubicTo(
        size.width * 0.5353584,
        size.height * 0.7749345,
        size.width * 0.5386413,
        size.height * 0.7750401,
        size.width * 0.5419137,
        size.height * 0.7750305);
    path_16.cubicTo(
        size.width * 0.5451967,
        size.height * 0.7749921,
        size.width * 0.5484584,
        size.height * 0.7748290,
        size.width * 0.5517095,
        size.height * 0.7745219);
    path_16.cubicTo(
        size.width * 0.5549606,
        size.height * 0.7741861,
        size.width * 0.5582011,
        size.height * 0.7737352,
        size.width * 0.5613990,
        size.height * 0.7730827);
    path_16.cubicTo(
        size.width * 0.5677844,
        size.height * 0.7717970,
        size.width * 0.5740316,
        size.height * 0.7698493,
        size.width * 0.5797582,
        size.height * 0.7670380);
    path_16.cubicTo(
        size.width * 0.5785151,
        size.height * 0.7674889,
        size.width * 0.5772508,
        size.height * 0.7678919,
        size.width * 0.5759865,
        size.height * 0.7682949);
    path_16.cubicTo(
        size.width * 0.5792695,
        size.height * 0.7671243,
        size.width * 0.5824037,
        size.height * 0.7657715,
        size.width * 0.5853467,
        size.height * 0.7642363);
    path_16.lineTo(size.width * 0.5796413, size.height * 0.7612523);
    path_16.close();

    Paint paint_16_fill = Paint()..style = PaintingStyle.fill;
    paint_16_fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path_16, paint_16_fill);

    Path path_17 = Path();
    path_17.moveTo(size.width * 0.9965683, size.height * 0.3339954);
    path_17.cubicTo(
        size.width * 0.9949427,
        size.height * 0.3298312,
        size.width * 0.9925735,
        size.height * 0.3259453,
        size.width * 0.9896942,
        size.height * 0.3224048);
    path_17.cubicTo(
        size.width * 0.9868362,
        size.height * 0.3188644,
        size.width * 0.9834895,
        size.height * 0.3156885,
        size.width * 0.9798453,
        size.height * 0.3128292);
    path_17.cubicTo(
        size.width * 0.9796009,
        size.height * 0.3126469,
        size.width * 0.9793566,
        size.height * 0.3124646,
        size.width * 0.9791016,
        size.height * 0.3122823);
    path_17.cubicTo(
        size.width * 0.9747668,
        size.height * 0.3088474,
        size.width * 0.9697520,
        size.height * 0.3056235,
        size.width * 0.9640892,
        size.height * 0.3026683);
    path_17.lineTo(size.width * 0.9640360, size.height * 0.3026971);
    path_17.lineTo(size.width * 0.9124222, size.height * 0.2757933);
    path_17.lineTo(size.width * 0.9106904, size.height * 0.2748817);
    path_17.lineTo(size.width * 0.9090648, size.height * 0.2740374);
    path_17.lineTo(size.width * 0.8583965, size.height * 0.2476229);
    path_17.lineTo(size.width * 0.8527337, size.height * 0.2505973);
    path_17.lineTo(size.width * 0.8636876, size.height * 0.2563158);
    path_17.cubicTo(
        size.width * 0.8700516,
        size.height * 0.2599042,
        size.width * 0.8764582,
        size.height * 0.2634447,
        size.width * 0.8829179,
        size.height * 0.2669085);
    path_17.cubicTo(
        size.width * 0.8868277,
        size.height * 0.2690385,
        size.width * 0.8907694,
        size.height * 0.2711110,
        size.width * 0.8946899,
        size.height * 0.2732218);
    path_17.lineTo(size.width * 0.9065256, size.height * 0.2794297);
    path_17.lineTo(size.width * 0.9184144, size.height * 0.2855704);
    path_17.cubicTo(
        size.width * 0.9223773,
        size.height * 0.2875949,
        size.width * 0.9263403,
        size.height * 0.2896482,
        size.width * 0.9303351,
        size.height * 0.2916343);
    path_17.cubicTo(
        size.width * 0.9368267,
        size.height * 0.2949157,
        size.width * 0.9433501,
        size.height * 0.2981108,
        size.width * 0.9499267,
        size.height * 0.3012675);
    path_17.lineTo(size.width * 0.9588088, size.height * 0.3058922);
    path_17.lineTo(size.width * 0.9588513, size.height * 0.3058730);
    path_17.cubicTo(
        size.width * 1.001445,
        size.height * 0.3284880,
        size.width * 1.001073,
        size.height * 0.3650730,
        size.width * 0.9578844,
        size.height * 0.3875920);
    path_17.lineTo(size.width * 0.9577570, size.height * 0.3875152);
    path_17.lineTo(size.width * 0.9493317, size.height * 0.3919097);
    path_17.cubicTo(
        size.width * 0.9418521,
        size.height * 0.3954501,
        size.width * 0.9344255,
        size.height * 0.3990674,
        size.width * 0.9270627,
        size.height * 0.4027902);
    path_17.cubicTo(
        size.width * 0.9233335,
        size.height * 0.4046324,
        size.width * 0.9196681,
        size.height * 0.4065321,
        size.width * 0.9159814,
        size.height * 0.4084031);
    path_17.lineTo(size.width * 0.9049531, size.height * 0.4140929);
    path_17.lineTo(size.width * 0.8939887, size.height * 0.4198593);
    path_17.cubicTo(
        size.width * 0.8903657,
        size.height * 0.4218071,
        size.width * 0.8867002,
        size.height * 0.4237356,
        size.width * 0.8830879,
        size.height * 0.4257218);
    path_17.cubicTo(
        size.width * 0.8758739,
        size.height * 0.4295981,
        size.width * 0.8687342,
        size.height * 0.4335607,
        size.width * 0.8616689,
        size.height * 0.4376193);
    path_17.lineTo(size.width * 0.8516819, size.height * 0.4428197);
    path_17.lineTo(size.width * 0.8573553, size.height * 0.4458037);
    path_17.lineTo(size.width * 0.9634517, size.height * 0.3904896);
    path_17.lineTo(size.width * 0.9635686, size.height * 0.3905472);
    path_17.cubicTo(
        size.width * 0.9687852,
        size.height * 0.3878223,
        size.width * 0.9734600,
        size.height * 0.3848863,
        size.width * 0.9775929,
        size.height * 0.3817775);
    path_17.cubicTo(
        size.width * 0.9817790,
        size.height * 0.3787264,
        size.width * 0.9856569,
        size.height * 0.3752914,
        size.width * 0.9889611,
        size.height * 0.3713768);
    path_17.cubicTo(
        size.width * 0.9919254,
        size.height * 0.3679130,
        size.width * 0.9943690,
        size.height * 0.3640655,
        size.width * 0.9961327,
        size.height * 0.3599493);
    path_17.cubicTo(
        size.width * 0.9978857,
        size.height * 0.3558236,
        size.width * 0.9988632,
        size.height * 0.3514291,
        size.width * 0.9989482,
        size.height * 0.3469963);
    path_17.cubicTo(
        size.width * 0.9990225,
        size.height * 0.3425731,
        size.width * 0.9981938,
        size.height * 0.3381307,
        size.width * 0.9965895,
        size.height * 0.3339666);
    path_17.close();

    Paint paint_17_fill = Paint()..style = PaintingStyle.fill;
    paint_17_fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path_17, paint_17_fill);

    Path path_18 = Path();
    path_18.moveTo(size.width * 0.7451605, size.height * 0.4981050);
    path_18.lineTo(size.width * 0.7367990, size.height * 0.5024707);
    path_18.cubicTo(
        size.width * 0.7292981,
        size.height * 0.5060207,
        size.width * 0.7218397,
        size.height * 0.5096476,
        size.width * 0.7144557,
        size.height * 0.5133800);
    path_18.cubicTo(
        size.width * 0.7107478,
        size.height * 0.5152318,
        size.width * 0.7070610,
        size.height * 0.5171219,
        size.width * 0.7033850,
        size.height * 0.5189929);
    path_18.lineTo(size.width * 0.6923567, size.height * 0.5246922);
    path_18.lineTo(size.width * 0.6814029, size.height * 0.5304491);
    path_18.cubicTo(
        size.width * 0.6777587,
        size.height * 0.5324065,
        size.width * 0.6741038,
        size.height * 0.5343254,
        size.width * 0.6704809,
        size.height * 0.5363116);
    path_18.cubicTo(
        size.width * 0.6632456,
        size.height * 0.5402071,
        size.width * 0.6560740,
        size.height * 0.5441889,
        size.width * 0.6489662,
        size.height * 0.5482667);
    path_18.lineTo(size.width * 0.6392661, size.height * 0.5533232);
    path_18.lineTo(size.width * 0.6389367, size.height * 0.5531505);
    path_18.lineTo(size.width * 0.6305752, size.height * 0.5575161);
    path_18.cubicTo(
        size.width * 0.6230743,
        size.height * 0.5610662,
        size.width * 0.6156159,
        size.height * 0.5646930,
        size.width * 0.6082425,
        size.height * 0.5684254);
    path_18.cubicTo(
        size.width * 0.6045345,
        size.height * 0.5702676,
        size.width * 0.6008478,
        size.height * 0.5721674,
        size.width * 0.5971718,
        size.height * 0.5740384);
    path_18.lineTo(size.width * 0.5861435, size.height * 0.5797281);
    path_18.lineTo(size.width * 0.5751790, size.height * 0.5854946);
    path_18.cubicTo(
        size.width * 0.5715454,
        size.height * 0.5874423,
        size.width * 0.5678906,
        size.height * 0.5893709,
        size.width * 0.5642677,
        size.height * 0.5913570);
    path_18.cubicTo(
        size.width * 0.5570217,
        size.height * 0.5952525,
        size.width * 0.5498396,
        size.height * 0.5992343,
        size.width * 0.5427211,
        size.height * 0.6033217);
    path_18.lineTo(size.width * 0.5328722, size.height * 0.6084549);
    path_18.lineTo(size.width * 0.5330635, size.height * 0.6085605);
    path_18.cubicTo(
        size.width * 0.5175092,
        size.height * 0.6165338,
        size.width * 0.4985976,
        size.height * 0.6216286,
        size.width * 0.4787404,
        size.height * 0.6238930);
    path_18.cubicTo(
        size.width * 0.4763923,
        size.height * 0.6241425,
        size.width * 0.4740443,
        size.height * 0.6243631,
        size.width * 0.4716857,
        size.height * 0.6245263);
    path_18.cubicTo(
        size.width * 0.4661397,
        size.height * 0.6249484,
        size.width * 0.4605724,
        size.height * 0.6251595,
        size.width * 0.4550052,
        size.height * 0.6251499);
    path_18.cubicTo(
        size.width * 0.4494486,
        size.height * 0.6251595,
        size.width * 0.4438920,
        size.height * 0.6249580,
        size.width * 0.4383460,
        size.height * 0.6245550);
    path_18.cubicTo(
        size.width * 0.4362423,
        size.height * 0.6244111,
        size.width * 0.4341280,
        size.height * 0.6242192,
        size.width * 0.4320244,
        size.height * 0.6239985);
    path_18.cubicTo(
        size.width * 0.4114978,
        size.height * 0.6217630,
        size.width * 0.3919806,
        size.height * 0.6165050,
        size.width * 0.3761289,
        size.height * 0.6081863);
    path_18.lineTo(size.width * 0.3669387, size.height * 0.6033889);
    path_18.cubicTo(
        size.width * 0.3598202,
        size.height * 0.5993015,
        size.width * 0.3526381,
        size.height * 0.5953292,
        size.width * 0.3453922,
        size.height * 0.5914146);
    path_18.cubicTo(
        size.width * 0.3417692,
        size.height * 0.5894380,
        size.width * 0.3381250,
        size.height * 0.5875095,
        size.width * 0.3344808,
        size.height * 0.5855617);
    path_18.lineTo(size.width * 0.3235163, size.height * 0.5797952);
    path_18.lineTo(size.width * 0.3124880, size.height * 0.5740959);
    path_18.cubicTo(
        size.width * 0.3088120,
        size.height * 0.5722345,
        size.width * 0.3051359,
        size.height * 0.5703348,
        size.width * 0.3014173,
        size.height * 0.5684830);
    path_18.cubicTo(
        size.width * 0.2940333,
        size.height * 0.5647602,
        size.width * 0.2865855,
        size.height * 0.5611141,
        size.width * 0.2790846,
        size.height * 0.5575833);
    path_18.lineTo(size.width * 0.2710525, size.height * 0.5533999);
    path_18.lineTo(size.width * 0.2715837, size.height * 0.5531121);
    path_18.cubicTo(
        size.width * 0.2543932,
        size.height * 0.5438435,
        size.width * 0.2442043,
        size.height * 0.5322626,
        size.width * 0.2409639,
        size.height * 0.5202498);
    path_18.cubicTo(
        size.width * 0.2409001,
        size.height * 0.5199908,
        size.width * 0.2408257,
        size.height * 0.5197221,
        size.width * 0.2407726,
        size.height * 0.5194535);
    path_18.cubicTo(
        size.width * 0.2407407,
        size.height * 0.5193192,
        size.width * 0.2407195,
        size.height * 0.5191848,
        size.width * 0.2406770,
        size.height * 0.5190409);
    path_18.cubicTo(
        size.width * 0.2401883,
        size.height * 0.5167477,
        size.width * 0.2399333,
        size.height * 0.5144258,
        size.width * 0.2399545,
        size.height * 0.5120751);
    path_18.cubicTo(
        size.width * 0.2399652,
        size.height * 0.5081892,
        size.width * 0.2407407,
        size.height * 0.5043225,
        size.width * 0.2421432,
        size.height * 0.5006381);
    path_18.cubicTo(
        size.width * 0.2435244,
        size.height * 0.4969536,
        size.width * 0.2455643,
        size.height * 0.4934803,
        size.width * 0.2479654,
        size.height * 0.4902277);
    path_18.cubicTo(
        size.width * 0.2503878,
        size.height * 0.4870038,
        size.width * 0.2532139,
        size.height * 0.4840198,
        size.width * 0.2563163,
        size.height * 0.4812661);
    path_18.cubicTo(
        size.width * 0.2593761,
        size.height * 0.4784932,
        size.width * 0.2627653,
        size.height * 0.4760082,
        size.width * 0.2662608,
        size.height * 0.4736670);
    path_18.cubicTo(
        size.width * 0.2661864,
        size.height * 0.4737054,
        size.width * 0.2661121,
        size.height * 0.4737534,
        size.width * 0.2660377,
        size.height * 0.4737918);
    path_18.cubicTo(
        size.width * 0.2677801,
        size.height * 0.4727076,
        size.width * 0.2695863,
        size.height * 0.4716425,
        size.width * 0.2715093,
        size.height * 0.4706159);
    path_18.lineTo(size.width * 0.2715306, size.height * 0.4706159);
    path_18.cubicTo(
        size.width * 0.2836425,
        size.height * 0.4643217,
        size.width * 0.2897728,
        size.height * 0.4564348,
        size.width * 0.2898366,
        size.height * 0.4478570);
    path_18.cubicTo(
        size.width * 0.2898791,
        size.height * 0.4392696,
        size.width * 0.2837275,
        size.height * 0.4311620,
        size.width * 0.2721255,
        size.height * 0.4250885);
    path_18.lineTo(size.width * 0.2664308, size.height * 0.4280533);
    path_18.cubicTo(
        size.width * 0.2775759,
        size.height * 0.4339061,
        size.width * 0.2827075,
        size.height * 0.4415916,
        size.width * 0.2819107,
        size.height * 0.4491523);
    path_18.cubicTo(
        size.width * 0.2815389,
        size.height * 0.4524049,
        size.width * 0.2800089,
        size.height * 0.4555520,
        size.width * 0.2777565,
        size.height * 0.4582962);
    path_18.cubicTo(
        size.width * 0.2753554,
        size.height * 0.4612130,
        size.width * 0.2721999,
        size.height * 0.4637268,
        size.width * 0.2688001,
        size.height * 0.4660200);
    path_18.cubicTo(
        size.width * 0.2680457,
        size.height * 0.4664709,
        size.width * 0.2672701,
        size.height * 0.4669123,
        size.width * 0.2664627,
        size.height * 0.4673537);
    path_18.cubicTo(
        size.width * 0.2625422,
        size.height * 0.4694453,
        size.width * 0.2589087,
        size.height * 0.4716617,
        size.width * 0.2555938,
        size.height * 0.4739933);
    path_18.cubicTo(
        size.width * 0.2498884,
        size.height * 0.4777736,
        size.width * 0.2446718,
        size.height * 0.4822736,
        size.width * 0.2404964,
        size.height * 0.4876083);
    path_18.cubicTo(
        size.width * 0.2377978,
        size.height * 0.4910241,
        size.width * 0.2355772,
        size.height * 0.4948044,
        size.width * 0.2339942,
        size.height * 0.4988438);
    path_18.cubicTo(
        size.width * 0.2324218,
        size.height * 0.5028832,
        size.width * 0.2315718,
        size.height * 0.5071817,
        size.width * 0.2315187,
        size.height * 0.5115090);
    path_18.cubicTo(
        size.width * 0.2314868,
        size.height * 0.5158170,
        size.width * 0.2322730,
        size.height * 0.5201251,
        size.width * 0.2337817,
        size.height * 0.5241933);
    path_18.cubicTo(
        size.width * 0.2353116,
        size.height * 0.5282327,
        size.width * 0.2374578,
        size.height * 0.5320515,
        size.width * 0.2401351,
        size.height * 0.5355056);
    path_18.cubicTo(
        size.width * 0.2432056,
        size.height * 0.5395450,
        size.width * 0.2469030,
        size.height * 0.5430855,
        size.width * 0.2509296,
        size.height * 0.5462230);
    path_18.cubicTo(
        size.width * 0.2551688,
        size.height * 0.5496771,
        size.width * 0.2600667,
        size.height * 0.5529202,
        size.width * 0.2655915,
        size.height * 0.5559138);
    path_18.lineTo(size.width * 0.2650284, size.height * 0.5562112);
    path_18.lineTo(size.width * 0.3704235, size.height * 0.6111703);
    path_18.lineTo(size.width * 0.3703916, size.height * 0.6111703);
    path_18.cubicTo(
        size.width * 0.3790400,
        size.height * 0.6157182,
        size.width * 0.3887720,
        size.height * 0.6194698,
        size.width * 0.3994497,
        size.height * 0.6224058);
    path_18.cubicTo(
        size.width * 0.4065043,
        size.height * 0.6246702,
        size.width * 0.4137715,
        size.height * 0.6264164,
        size.width * 0.4211236,
        size.height * 0.6276925);
    path_18.cubicTo(
        size.width * 0.4321519,
        size.height * 0.6296019,
        size.width * 0.4433926,
        size.height * 0.6305038,
        size.width * 0.4546121,
        size.height * 0.6305134);
    path_18.cubicTo(
        size.width * 0.4602325,
        size.height * 0.6305038,
        size.width * 0.4658422,
        size.height * 0.6302640,
        size.width * 0.4714413,
        size.height * 0.6298034);
    path_18.cubicTo(
        size.width * 0.4770192,
        size.height * 0.6293141,
        size.width * 0.4825864,
        size.height * 0.6286328,
        size.width * 0.4880899,
        size.height * 0.6276446);
    path_18.cubicTo(
        size.width * 0.4939334,
        size.height * 0.6266275,
        size.width * 0.4997025,
        size.height * 0.6253130,
        size.width * 0.5053654,
        size.height * 0.6236723);
    path_18.cubicTo(
        size.width * 0.5180085,
        size.height * 0.6206116,
        size.width * 0.5294618,
        size.height * 0.6164090,
        size.width * 0.5394807,
        size.height * 0.6111895);
    path_18.lineTo(size.width * 0.5392576, size.height * 0.6110743);
    path_18.lineTo(size.width * 0.6444402, size.height * 0.5562304);
    path_18.lineTo(size.width * 0.6447589, size.height * 0.5564031);
    path_18.lineTo(size.width * 0.7508553, size.height * 0.5010890);
    path_18.lineTo(size.width * 0.7451818, size.height * 0.4981050);
    path_18.close();

    Paint paint_18_fill = Paint()..style = PaintingStyle.fill;
    paint_18_fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path_18, paint_18_fill);

    Path path_19 = Path();
    path_19.moveTo(size.width * 0.8570154, size.height * 0.4457461);
    path_19.lineTo(size.width * 0.8513313, size.height * 0.4427717);
    path_19.lineTo(size.width * 0.8429698, size.height * 0.4471182);
    path_19.cubicTo(
        size.width * 0.8429698,
        size.height * 0.4471182,
        size.width * 0.8429166,
        size.height * 0.4471470,
        size.width * 0.8428954,
        size.height * 0.4471566);
    path_19.cubicTo(
        size.width * 0.8354157,
        size.height * 0.4506971,
        size.width * 0.8280105,
        size.height * 0.4543047,
        size.width * 0.8206370,
        size.height * 0.4580275);
    path_19.cubicTo(
        size.width * 0.8169078,
        size.height * 0.4598793,
        size.width * 0.8132424,
        size.height * 0.4617695,
        size.width * 0.8095663,
        size.height * 0.4636405);
    path_19.lineTo(size.width * 0.7985381, size.height * 0.4693398);
    path_19.lineTo(size.width * 0.7875736, size.height * 0.4750967);
    path_19.cubicTo(
        size.width * 0.7839400,
        size.height * 0.4770540,
        size.width * 0.7802852,
        size.height * 0.4789730,
        size.width * 0.7766622,
        size.height * 0.4809591);
    path_19.cubicTo(
        size.width * 0.7694269,
        size.height * 0.4848546,
        size.width * 0.7622554,
        size.height * 0.4888268,
        size.width * 0.7551476,
        size.height * 0.4929142);
    path_19.lineTo(size.width * 0.7452562, size.height * 0.4980666);
    path_19.lineTo(size.width * 0.7509190, size.height * 0.5010506);
    path_19.lineTo(size.width * 0.8570154, size.height * 0.4457365);
    path_19.close();

    Paint paint_19_fill = Paint()..style = PaintingStyle.fill;
    paint_19_fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path_19, paint_19_fill);

    Path path_20 = Path();
    path_20.moveTo(size.width * 0.9864538, size.height * 0.6694971);
    path_20.cubicTo(
        size.width * 0.9835958,
        size.height * 0.6659567,
        size.width * 0.9802384,
        size.height * 0.6627712,
        size.width * 0.9765836,
        size.height * 0.6599119);
    path_20.cubicTo(
        size.width * 0.9763498,
        size.height * 0.6597296,
        size.width * 0.9761161,
        size.height * 0.6595665,
        size.width * 0.9758824,
        size.height * 0.6593938);
    path_20.cubicTo(
        size.width * 0.9715794,
        size.height * 0.6559876,
        size.width * 0.9666178,
        size.height * 0.6528022,
        size.width * 0.9610293,
        size.height * 0.6498566);
    path_20.lineTo(size.width * 0.9611355, size.height * 0.6497990);
    path_20.cubicTo(
        size.width * 0.9552708,
        size.height * 0.6467191,
        size.width * 0.9488961,
        size.height * 0.6440133,
        size.width * 0.9420752,
        size.height * 0.6416722);
    path_20.cubicTo(
        size.width * 0.9393766,
        size.height * 0.6406935,
        size.width * 0.9366567,
        size.height * 0.6397724,
        size.width * 0.9338943,
        size.height * 0.6389185);
    path_20.cubicTo(
        size.width * 0.9276577,
        size.height * 0.6370571,
        size.width * 0.9213043,
        size.height * 0.6355507,
        size.width * 0.9148764,
        size.height * 0.6343322);
    path_20.cubicTo(
        size.width * 0.9020208,
        size.height * 0.6319239,
        size.width * 0.8888570,
        size.height * 0.6308492,
        size.width * 0.8757251,
        size.height * 0.6308876);
    path_20.cubicTo(
        size.width * 0.8625826,
        size.height * 0.6309644,
        size.width * 0.8494295,
        size.height * 0.6321445,
        size.width * 0.8365951,
        size.height * 0.6346872);
    path_20.cubicTo(
        size.width * 0.8302097,
        size.height * 0.6359537,
        size.width * 0.8238563,
        size.height * 0.6375272,
        size.width * 0.8176409,
        size.height * 0.6394558);
    path_20.cubicTo(
        size.width * 0.8125518,
        size.height * 0.6410773,
        size.width * 0.8075477,
        size.height * 0.6429291,
        size.width * 0.8027135,
        size.height * 0.6450687);
    path_20.cubicTo(
        size.width * 0.7991649,
        size.height * 0.6465463,
        size.width * 0.7957544,
        size.height * 0.6481103,
        size.width * 0.7925140,
        size.height * 0.6498086);
    path_20.lineTo(size.width * 0.7925671, size.height * 0.6498374);
    path_20.lineTo(size.width * 0.7412720, size.height * 0.6765877);
    path_20.lineTo(size.width * 0.7405070, size.height * 0.6769811);
    path_20.lineTo(size.width * 0.7396783, size.height * 0.6774224);
    path_20.lineTo(size.width * 0.6867257, size.height * 0.7050363);
    path_20.lineTo(size.width * 0.6923992, size.height * 0.7080107);
    path_20.lineTo(size.width * 0.7012069, size.height * 0.7034148);
    path_20.cubicTo(
        size.width * 0.7077941,
        size.height * 0.7002485,
        size.width * 0.7143495,
        size.height * 0.6970246,
        size.width * 0.7208623,
        size.height * 0.6937432);
    path_20.cubicTo(
        size.width * 0.7248571,
        size.height * 0.6917475,
        size.width * 0.7288200,
        size.height * 0.6897038,
        size.width * 0.7327936,
        size.height * 0.6876697);
    path_20.lineTo(size.width * 0.7446824, size.height * 0.6815386);
    path_20.lineTo(size.width * 0.7565181, size.height * 0.6753116);
    path_20.cubicTo(
        size.width * 0.7604492,
        size.height * 0.6732007,
        size.width * 0.7643803,
        size.height * 0.6711378,
        size.width * 0.7682901,
        size.height * 0.6690078);
    path_20.cubicTo(
        size.width * 0.7746967,
        size.height * 0.6655633,
        size.width * 0.7810501,
        size.height * 0.6620420,
        size.width * 0.7873717,
        size.height * 0.6584823);
    path_20.lineTo(size.width * 0.7984637, size.height * 0.6526966);
    path_20.lineTo(size.width * 0.7984318, size.height * 0.6526774);
    path_20.cubicTo(
        size.width * 0.8072502,
        size.height * 0.6481007,
        size.width * 0.8171841,
        size.height * 0.6444643,
        size.width * 0.8277661,
        size.height * 0.6417489);
    path_20.cubicTo(
        size.width * 0.8306241,
        size.height * 0.6411157,
        size.width * 0.8335033,
        size.height * 0.6405400,
        size.width * 0.8364038,
        size.height * 0.6400315);
    path_20.cubicTo(
        size.width * 0.8491957,
        size.height * 0.6378151,
        size.width * 0.8622214,
        size.height * 0.6366925,
        size.width * 0.8752470,
        size.height * 0.6366541);
    path_20.cubicTo(
        size.width * 0.8882833,
        size.height * 0.6365773,
        size.width * 0.9012877,
        size.height * 0.6375944,
        size.width * 0.9141327,
        size.height * 0.6396957);
    path_20.cubicTo(
        size.width * 0.9205287,
        size.height * 0.6407511,
        size.width * 0.9268821,
        size.height * 0.6421135,
        size.width * 0.9331400,
        size.height * 0.6438022);
    path_20.cubicTo(
        size.width * 0.9336924,
        size.height * 0.6439462,
        size.width * 0.9342343,
        size.height * 0.6441093,
        size.width * 0.9347868,
        size.height * 0.6442628);
    path_20.cubicTo(
        size.width * 0.9420646,
        size.height * 0.6465943,
        size.width * 0.9489492,
        size.height * 0.6493960,
        size.width * 0.9552496,
        size.height * 0.6526774);
    path_20.lineTo(size.width * 0.9551752, size.height * 0.6527158);
    path_20.cubicTo(
        size.width * 0.9982151,
        size.height * 0.6752924,
        size.width * 0.9980026,
        size.height * 0.7120309,
        size.width * 0.9547608,
        size.height * 0.7346267);
    path_20.lineTo(size.width * 0.9546440, size.height * 0.7345691);
    path_20.lineTo(size.width * 0.9462719, size.height * 0.7389348);
    path_20.cubicTo(
        size.width * 0.9387710,
        size.height * 0.7424849,
        size.width * 0.9313232,
        size.height * 0.7461213,
        size.width * 0.9239498,
        size.height * 0.7498441);
    path_20.cubicTo(
        size.width * 0.9202312,
        size.height * 0.7516959,
        size.width * 0.9165551,
        size.height * 0.7535957,
        size.width * 0.9128790,
        size.height * 0.7554570);
    path_20.lineTo(size.width * 0.9018508, size.height * 0.7611564);
    path_20.lineTo(size.width * 0.8908863, size.height * 0.7669228);
    path_20.cubicTo(
        size.width * 0.8872527,
        size.height * 0.7688706,
        size.width * 0.8835873,
        size.height * 0.7708087,
        size.width * 0.8799749,
        size.height * 0.7727853);
    path_20.cubicTo(
        size.width * 0.8727184,
        size.height * 0.7767000,
        size.width * 0.8655150,
        size.height * 0.7806818,
        size.width * 0.8583753,
        size.height * 0.7847788);
    path_20.lineTo(size.width * 0.8485689, size.height * 0.7898928);
    path_20.lineTo(size.width * 0.8542317, size.height * 0.7928768);
    path_20.lineTo(size.width * 0.9602218, size.height * 0.7376107);
    path_20.lineTo(size.width * 0.9603175, size.height * 0.7376587);
    path_20.cubicTo(
        size.width * 0.9655553,
        size.height * 0.7349337,
        size.width * 0.9702408,
        size.height * 0.7319881,
        size.width * 0.9743737,
        size.height * 0.7288506);
    path_20.cubicTo(
        size.width * 0.9785597,
        size.height * 0.7258091,
        size.width * 0.9824058,
        size.height * 0.7223837,
        size.width * 0.9856994,
        size.height * 0.7184882);
    path_20.cubicTo(
        size.width * 0.9886530,
        size.height * 0.7150245,
        size.width * 0.9911073,
        size.height * 0.7111770,
        size.width * 0.9928816,
        size.height * 0.7070608);
    path_20.cubicTo(
        size.width * 0.9946346,
        size.height * 0.7029351,
        size.width * 0.9956121,
        size.height * 0.6985406,
        size.width * 0.9956971,
        size.height * 0.6941078);
    path_20.cubicTo(
        size.width * 0.9957714,
        size.height * 0.6896846,
        size.width * 0.9949427,
        size.height * 0.6852422,
        size.width * 0.9933278,
        size.height * 0.6810781);
    path_20.cubicTo(
        size.width * 0.9917023,
        size.height * 0.6769139,
        size.width * 0.9893330,
        size.height * 0.6730184,
        size.width * 0.9864538,
        size.height * 0.6694875);
    path_20.close();

    Paint paint_20_fill = Paint()..style = PaintingStyle.fill;
    paint_20_fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path_20, paint_20_fill);

    Path path_21 = Path();
    path_21.moveTo(size.width * 0.8691061, size.height * 0.3980791);
    path_21.lineTo(size.width * 0.8809418, size.height * 0.3918617);
    path_21.cubicTo(
        size.width * 0.8848728,
        size.height * 0.3897508,
        size.width * 0.8888039,
        size.height * 0.3876783,
        size.width * 0.8927243,
        size.height * 0.3855579);
    path_21.cubicTo(
        size.width * 0.8991734,
        size.height * 0.3820846,
        size.width * 0.9055800,
        size.height * 0.3785441,
        size.width * 0.9119547,
        size.height * 0.3749460);
    path_21.lineTo(size.width * 0.9226748, size.height * 0.3693523);
    path_21.lineTo(size.width * 0.9228661, size.height * 0.3694578);
    path_21.cubicTo(
        size.width * 0.9349674,
        size.height * 0.3631444,
        size.width * 0.9411083,
        size.height * 0.3552575,
        size.width * 0.9411615,
        size.height * 0.3466797);
    path_21.cubicTo(
        size.width * 0.9412146,
        size.height * 0.3381020,
        size.width * 0.9350630,
        size.height * 0.3299943,
        size.width * 0.9234504,
        size.height * 0.3239016);
    path_21.lineTo(size.width * 0.9234079, size.height * 0.3239208);
    path_21.lineTo(size.width * 0.9140796, size.height * 0.3190563);
    path_21.cubicTo(
        size.width * 0.9069612,
        size.height * 0.3149689,
        size.width * 0.8997790,
        size.height * 0.3109870,
        size.width * 0.8925331,
        size.height * 0.3070915);
    path_21.cubicTo(
        size.width * 0.8889208,
        size.height * 0.3051150,
        size.width * 0.8852553,
        size.height * 0.3031768,
        size.width * 0.8816217,
        size.height * 0.3012291);
    path_21.lineTo(size.width * 0.8706572, size.height * 0.2954626);
    path_21.lineTo(size.width * 0.8596290, size.height * 0.2897633);
    path_21.cubicTo(
        size.width * 0.8559423,
        size.height * 0.2879019,
        size.width * 0.8522768,
        size.height * 0.2859925,
        size.width * 0.8485583,
        size.height * 0.2841503);
    path_21.cubicTo(
        size.width * 0.8411848,
        size.height * 0.2804275,
        size.width * 0.8337371,
        size.height * 0.2767911,
        size.width * 0.8262255,
        size.height * 0.2732506);
    path_21.lineTo(size.width * 0.8178640, size.height * 0.2688850);
    path_21.lineTo(size.width * 0.8121799, size.height * 0.2718690);
    path_21.lineTo(size.width * 0.9182657, size.height * 0.3271831);
    path_21.lineTo(size.width * 0.9182763, size.height * 0.3271831);
    path_21.cubicTo(
        size.width * 0.9290602,
        size.height * 0.3329975,
        size.width * 0.9340112,
        size.height * 0.3405486,
        size.width * 0.9332143,
        size.height * 0.3479942);
    path_21.cubicTo(
        size.width * 0.9328319,
        size.height * 0.3512373,
        size.width * 0.9313126,
        size.height * 0.3543652,
        size.width * 0.9290602,
        size.height * 0.3571093);
    path_21.cubicTo(
        size.width * 0.9266590,
        size.height * 0.3600453,
        size.width * 0.9235035,
        size.height * 0.3625495,
        size.width * 0.9201143,
        size.height * 0.3648427);
    path_21.cubicTo(
        size.width * 0.9192537,
        size.height * 0.3653608,
        size.width * 0.9183613,
        size.height * 0.3658789,
        size.width * 0.9174263,
        size.height * 0.3663683);
    path_21.lineTo(size.width * 0.9172245, size.height * 0.3662627);
    path_21.lineTo(size.width * 0.8664074, size.height * 0.3927636);
    path_21.lineTo(size.width * 0.8649200, size.height * 0.3935312);
    path_21.lineTo(size.width * 0.8633369, size.height * 0.3943659);
    path_21.lineTo(size.width * 0.8111387, size.height * 0.4215864);
    path_21.lineTo(size.width * 0.8168122, size.height * 0.4245608);
    path_21.lineTo(size.width * 0.8257368, size.height * 0.4199073);
    path_21.cubicTo(
        size.width * 0.8322815,
        size.height * 0.4167602,
        size.width * 0.8388050,
        size.height * 0.4135651,
        size.width * 0.8452859,
        size.height * 0.4102933);
    path_21.cubicTo(
        size.width * 0.8492701,
        size.height * 0.4082976,
        size.width * 0.8532437,
        size.height * 0.4062539,
        size.width * 0.8572172,
        size.height * 0.4042198);
    path_21.lineTo(size.width * 0.8691061, size.height * 0.3980791);
    path_21.close();

    Paint paint_21_fill = Paint()..style = PaintingStyle.fill;
    paint_21_fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path_21, paint_21_fill);

    Path path_22 = Path();
    path_22.moveTo(size.width * 0.2665158, size.height * 0.4279766);
    path_22.lineTo(size.width * 0.2721787, size.height * 0.4249926);
    path_22.lineTo(size.width * 0.2623191, size.height * 0.4198497);
    path_22.cubicTo(
        size.width * 0.2552007,
        size.height * 0.4157624,
        size.width * 0.2480185,
        size.height * 0.4117805,
        size.width * 0.2407832,
        size.height * 0.4078850);
    path_22.cubicTo(
        size.width * 0.2371709,
        size.height * 0.4059085,
        size.width * 0.2335055,
        size.height * 0.4039703,
        size.width * 0.2298719,
        size.height * 0.4020226);
    path_22.lineTo(size.width * 0.2189074, size.height * 0.3962561);
    path_22.lineTo(size.width * 0.2078791, size.height * 0.3905568);
    path_22.cubicTo(
        size.width * 0.2042031,
        size.height * 0.3886858,
        size.width * 0.2005270,
        size.height * 0.3867860,
        size.width * 0.1968084,
        size.height * 0.3849438);
    path_22.cubicTo(
        size.width * 0.1894669,
        size.height * 0.3812402,
        size.width * 0.1820616,
        size.height * 0.3776230,
        size.width * 0.1745926,
        size.height * 0.3741017);
    path_22.lineTo(size.width * 0.1666242, size.height * 0.3699471);
    path_22.lineTo(size.width * 0.1667729, size.height * 0.3698704);
    path_22.cubicTo(
        size.width * 0.1579971,
        size.height * 0.3652649,
        size.width * 0.1470007,
        size.height * 0.3622809,
        size.width * 0.1350588,
        size.height * 0.3610815);
    path_22.cubicTo(
        size.width * 0.1342194,
        size.height * 0.3609856,
        size.width * 0.1333695,
        size.height * 0.3608992,
        size.width * 0.1325301,
        size.height * 0.3608225);
    path_22.cubicTo(
        size.width * 0.1293321,
        size.height * 0.3605442,
        size.width * 0.1261023,
        size.height * 0.3604099,
        size.width * 0.1229043,
        size.height * 0.3604003);
    path_22.cubicTo(
        size.width * 0.1196957,
        size.height * 0.3604195,
        size.width * 0.1164871,
        size.height * 0.3605442,
        size.width * 0.1132891,
        size.height * 0.3608129);
    path_22.cubicTo(
        size.width * 0.1108774,
        size.height * 0.3610336,
        size.width * 0.1084656,
        size.height * 0.3613214,
        size.width * 0.1060857,
        size.height * 0.3617052);
    path_22.cubicTo(
        size.width * 0.09621555,
        size.height * 0.3631540,
        size.width * 0.08713160,
        size.height * 0.3659173,
        size.width * 0.07930133,
        size.height * 0.3699951);
    path_22.lineTo(size.width * 0.08499607, size.height * 0.3729791);
    path_22.cubicTo(
        size.width * 0.08927775,
        size.height * 0.3707435,
        size.width * 0.09406940,
        size.height * 0.3689685,
        size.width * 0.09915854,
        size.height * 0.3676252);
    path_22.cubicTo(
        size.width * 0.1008266,
        size.height * 0.3672990,
        size.width * 0.1025053,
        size.height * 0.3670111,
        size.width * 0.1041839,
        size.height * 0.3667617);
    path_22.cubicTo(
        size.width * 0.1073075,
        size.height * 0.3663203,
        size.width * 0.1104418,
        size.height * 0.3659557,
        size.width * 0.1135866,
        size.height * 0.3657638);
    path_22.cubicTo(
        size.width * 0.1167421,
        size.height * 0.3655431,
        size.width * 0.1199188,
        size.height * 0.3654280,
        size.width * 0.1230637,
        size.height * 0.3654472);
    path_22.cubicTo(
        size.width * 0.1262298,
        size.height * 0.3654280,
        size.width * 0.1293959,
        size.height * 0.3655527,
        size.width * 0.1325407,
        size.height * 0.3657734);
    path_22.cubicTo(
        size.width * 0.1356962,
        size.height * 0.3659749,
        size.width * 0.1388411,
        size.height * 0.3663395,
        size.width * 0.1419647,
        size.height * 0.3667904);
    path_22.cubicTo(
        size.width * 0.1441640,
        size.height * 0.3671071,
        size.width * 0.1463420,
        size.height * 0.3675196,
        size.width * 0.1485094,
        size.height * 0.3679610);
    path_22.cubicTo(
        size.width * 0.1528017,
        size.height * 0.3691795,
        size.width * 0.1568602,
        size.height * 0.3707339,
        size.width * 0.1605469,
        size.height * 0.3726145);
    path_22.lineTo(size.width * 0.1604407, size.height * 0.3726721);
    path_22.lineTo(size.width * 0.2665264, size.height * 0.4279861);
    path_22.close();

    Paint paint_22_fill = Paint()..style = PaintingStyle.fill;
    paint_22_fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path_22, paint_22_fill);

    Path path_23 = Path();
    path_23.moveTo(size.width * 0.7585155, size.height * 0.4487493);
    path_23.lineTo(size.width * 0.7567200, size.height * 0.4496992);
    path_23.lineTo(size.width * 0.7047343, size.height * 0.4768141);
    path_23.lineTo(size.width * 0.7104078, size.height * 0.4797885);
    path_23.lineTo(size.width * 0.7193536, size.height * 0.4751255);
    path_23.cubicTo(
        size.width * 0.7258983,
        size.height * 0.4719784,
        size.width * 0.7324111,
        size.height * 0.4687929,
        size.width * 0.7388708,
        size.height * 0.4655210);
    path_23.cubicTo(
        size.width * 0.7428550,
        size.height * 0.4635253,
        size.width * 0.7468286,
        size.height * 0.4614816,
        size.width * 0.7507915,
        size.height * 0.4594475);
    path_23.lineTo(size.width * 0.7626910, size.height * 0.4533164);
    path_23.lineTo(size.width * 0.7745161, size.height * 0.4470990);
    path_23.cubicTo(
        size.width * 0.7784471,
        size.height * 0.4449882,
        size.width * 0.7823782,
        size.height * 0.4429157,
        size.width * 0.7862986,
        size.height * 0.4407952);
    path_23.cubicTo(
        size.width * 0.7927158,
        size.height * 0.4373411,
        size.width * 0.7990799,
        size.height * 0.4338198,
        size.width * 0.8054121,
        size.height * 0.4302409);
    path_23.lineTo(size.width * 0.8164722, size.height * 0.4244744);
    path_23.lineTo(size.width * 0.8108094, size.height * 0.4214905);
    path_23.lineTo(size.width * 0.7602367, size.height * 0.4478666);
    path_23.lineTo(size.width * 0.7585155, size.height * 0.4487589);
    path_23.close();

    Paint paint_23_fill = Paint()..style = PaintingStyle.fill;
    paint_23_fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path_23, paint_23_fill);

    Path path_24 = Path();
    path_24.moveTo(size.width * 0.3008861, size.height * 0.5006476);
    path_24.cubicTo(
        size.width * 0.3034891,
        size.height * 0.4974238,
        size.width * 0.3072608,
        size.height * 0.4944014,
        size.width * 0.3121693,
        size.height * 0.4917437);
    path_24.lineTo(size.width * 0.3122118, size.height * 0.4917629);
    path_24.cubicTo(
        size.width * 0.3174391,
        size.height * 0.4890379,
        size.width * 0.3221139,
        size.height * 0.4861019,
        size.width * 0.3262468,
        size.height * 0.4829740);
    path_24.cubicTo(
        size.width * 0.3304435,
        size.height * 0.4799325,
        size.width * 0.3343002,
        size.height * 0.4764975,
        size.width * 0.3375938,
        size.height * 0.4725924);
    path_24.cubicTo(
        size.width * 0.3405474,
        size.height * 0.4691191,
        size.width * 0.3430016,
        size.height * 0.4652812,
        size.width * 0.3447759,
        size.height * 0.4611650);
    path_24.cubicTo(
        size.width * 0.3465290,
        size.height * 0.4570392,
        size.width * 0.3475064,
        size.height * 0.4526352,
        size.width * 0.3475914,
        size.height * 0.4482120);
    path_24.cubicTo(
        size.width * 0.3476658,
        size.height * 0.4437888,
        size.width * 0.3468371,
        size.height * 0.4393464,
        size.width * 0.3452328,
        size.height * 0.4351823);
    path_24.cubicTo(
        size.width * 0.3435966,
        size.height * 0.4310181,
        size.width * 0.3412380,
        size.height * 0.4271226,
        size.width * 0.3383587,
        size.height * 0.4235917);
    path_24.cubicTo(
        size.width * 0.3355007,
        size.height * 0.4200512,
        size.width * 0.3321434,
        size.height * 0.4168658,
        size.width * 0.3284992,
        size.height * 0.4140065);
    path_24.cubicTo(
        size.width * 0.3282336,
        size.height * 0.4138050,
        size.width * 0.3279573,
        size.height * 0.4136131,
        size.width * 0.3276917,
        size.height * 0.4134116);
    path_24.cubicTo(
        size.width * 0.3233675,
        size.height * 0.4099959,
        size.width * 0.3183740,
        size.height * 0.4068008,
        size.width * 0.3127537,
        size.height * 0.4038456);
    path_24.lineTo(size.width * 0.3070589, size.height * 0.4068200);
    path_24.cubicTo(
        size.width * 0.3499607,
        size.height * 0.4293294,
        size.width * 0.3498757,
        size.height * 0.4658952,
        size.width * 0.3070377,
        size.height * 0.4885198);
    path_24.lineTo(size.width * 0.3069846, size.height * 0.4884910);
    path_24.cubicTo(
        size.width * 0.3047853,
        size.height * 0.4896520,
        size.width * 0.3027879,
        size.height * 0.4908705,
        size.width * 0.3009817,
        size.height * 0.4921466);
    path_24.cubicTo(
        size.width * 0.3011836,
        size.height * 0.4919548,
        size.width * 0.3013961,
        size.height * 0.4917533,
        size.width * 0.3015979,
        size.height * 0.4915614);
    path_24.cubicTo(
        size.width * 0.2981556,
        size.height * 0.4936722,
        size.width * 0.2950320,
        size.height * 0.4964547,
        size.width * 0.2926946,
        size.height * 0.4999280);
    path_24.cubicTo(
        size.width * 0.2922377,
        size.height * 0.5005997,
        size.width * 0.2918234,
        size.height * 0.5013001,
        size.width * 0.2914409,
        size.height * 0.5020293);
    path_24.cubicTo(
        size.width * 0.2913453,
        size.height * 0.5021924,
        size.width * 0.2912603,
        size.height * 0.5023651,
        size.width * 0.2911753,
        size.height * 0.5025282);
    path_24.cubicTo(
        size.width * 0.2911540,
        size.height * 0.5025666,
        size.width * 0.2911328,
        size.height * 0.5026146,
        size.width * 0.2911115,
        size.height * 0.5026530);
    path_24.cubicTo(
        size.width * 0.2895816,
        size.height * 0.5055026,
        size.width * 0.2887848,
        size.height * 0.5084866,
        size.width * 0.2887635,
        size.height * 0.5115474);
    path_24.cubicTo(
        size.width * 0.2886785,
        size.height * 0.5202115,
        size.width * 0.2946814,
        size.height * 0.5284726,
        size.width * 0.3061133,
        size.height * 0.5346517);
    path_24.lineTo(size.width * 0.3055821, size.height * 0.5349299);
    path_24.lineTo(size.width * 0.3164616, size.height * 0.5406004);
    path_24.cubicTo(
        size.width * 0.3228576,
        size.height * 0.5442081,
        size.width * 0.3292854,
        size.height * 0.5477582,
        size.width * 0.3357663,
        size.height * 0.5512411);
    path_24.cubicTo(
        size.width * 0.3396762,
        size.height * 0.5533711,
        size.width * 0.3436072,
        size.height * 0.5554436,
        size.width * 0.3475489,
        size.height * 0.5575545);
    path_24.lineTo(size.width * 0.3593846, size.height * 0.5637623);
    path_24.lineTo(size.width * 0.3712735, size.height * 0.5699030);
    path_24.cubicTo(
        size.width * 0.3752470,
        size.height * 0.5719275,
        size.width * 0.3792100,
        size.height * 0.5739808,
        size.width * 0.3831942,
        size.height * 0.5759765);
    path_24.cubicTo(
        size.width * 0.3896857,
        size.height * 0.5792579,
        size.width * 0.3962092,
        size.height * 0.5824530,
        size.width * 0.4027751,
        size.height * 0.5856097);
    path_24.lineTo(size.width * 0.4116678, size.height * 0.5902440);
    path_24.lineTo(size.width * 0.4119228, size.height * 0.5901097);
    path_24.cubicTo(
        size.width * 0.4167251,
        size.height * 0.5925755,
        size.width * 0.4221755,
        size.height * 0.5945521,
        size.width * 0.4280615,
        size.height * 0.5960201);
    path_24.cubicTo(
        size.width * 0.4245554,
        size.height * 0.5952717,
        size.width * 0.4210811,
        size.height * 0.5943602,
        size.width * 0.4176813,
        size.height * 0.5932472);
    path_24.cubicTo(
        size.width * 0.4234929,
        size.height * 0.5958857,
        size.width * 0.4298039,
        size.height * 0.5976512,
        size.width * 0.4362211,
        size.height * 0.5987834);
    path_24.cubicTo(
        size.width * 0.4394297,
        size.height * 0.5993783,
        size.width * 0.4426808,
        size.height * 0.5997525,
        size.width * 0.4459425,
        size.height * 0.6000307);
    path_24.cubicTo(
        size.width * 0.4491936,
        size.height * 0.6002898,
        size.width * 0.4524766,
        size.height * 0.6003953,
        size.width * 0.4557489,
        size.height * 0.6003953);
    path_24.cubicTo(
        size.width * 0.4590319,
        size.height * 0.6003473,
        size.width * 0.4622936,
        size.height * 0.6002034,
        size.width * 0.4655553,
        size.height * 0.5998868);
    path_24.cubicTo(
        size.width * 0.4688064,
        size.height * 0.5995510,
        size.width * 0.4720469,
        size.height * 0.5991000,
        size.width * 0.4752449,
        size.height * 0.5984476);
    path_24.cubicTo(
        size.width * 0.4816302,
        size.height * 0.5971619,
        size.width * 0.4878774,
        size.height * 0.5952141,
        size.width * 0.4935934,
        size.height * 0.5924124);
    path_24.cubicTo(
        size.width * 0.4923079,
        size.height * 0.5928730,
        size.width * 0.4910117,
        size.height * 0.5932951,
        size.width * 0.4897049,
        size.height * 0.5937077);
    path_24.cubicTo(
        size.width * 0.4930303,
        size.height * 0.5925276,
        size.width * 0.4961964,
        size.height * 0.5911651,
        size.width * 0.4991713,
        size.height * 0.5896107);
    path_24.lineTo(size.width * 0.4991182, size.height * 0.5895820);
    path_24.lineTo(size.width * 0.5068634, size.height * 0.5855425);
    path_24.cubicTo(
        size.width * 0.5134400,
        size.height * 0.5823858,
        size.width * 0.5199847,
        size.height * 0.5791716,
        size.width * 0.5264763,
        size.height * 0.5758902);
    path_24.cubicTo(
        size.width * 0.5304605,
        size.height * 0.5738944,
        size.width * 0.5344340,
        size.height * 0.5718507,
        size.width * 0.5384076,
        size.height * 0.5698166);
    path_24.lineTo(size.width * 0.5502964, size.height * 0.5636760);
    path_24.lineTo(size.width * 0.5621321, size.height * 0.5574585);
    path_24.cubicTo(
        size.width * 0.5660632,
        size.height * 0.5553477,
        size.width * 0.5699943,
        size.height * 0.5532848,
        size.width * 0.5739147,
        size.height * 0.5511547);
    path_24.cubicTo(
        size.width * 0.5803319,
        size.height * 0.5477006,
        size.width * 0.5867172,
        size.height * 0.5441697,
        size.width * 0.5930601,
        size.height * 0.5405908);
    path_24.lineTo(size.width * 0.6039077, size.height * 0.5349299);
    path_24.lineTo(size.width * 0.6042371, size.height * 0.5351026);
    path_24.lineTo(size.width * 0.6131616, size.height * 0.5304491);
    path_24.cubicTo(
        size.width * 0.6197063,
        size.height * 0.5273020,
        size.width * 0.6262298,
        size.height * 0.5241070,
        size.width * 0.6327001,
        size.height * 0.5208351);
    path_24.cubicTo(
        size.width * 0.6366843,
        size.height * 0.5188394,
        size.width * 0.6406472,
        size.height * 0.5167957,
        size.width * 0.6446208,
        size.height * 0.5147616);
    path_24.lineTo(size.width * 0.6565203, size.height * 0.5086305);
    path_24.lineTo(size.width * 0.6683453, size.height * 0.5024131);
    path_24.cubicTo(
        size.width * 0.6722764,
        size.height * 0.5003022,
        size.width * 0.6762075,
        size.height * 0.4982298,
        size.width * 0.6801279,
        size.height * 0.4961093);
    path_24.cubicTo(
        size.width * 0.6865770,
        size.height * 0.4926360,
        size.width * 0.6929730,
        size.height * 0.4890955,
        size.width * 0.6993477,
        size.height * 0.4854974);
    path_24.lineTo(size.width * 0.7103015, size.height * 0.4797789);
    path_24.lineTo(size.width * 0.7046387, size.height * 0.4768045);
    path_24.lineTo(size.width * 0.6539810, size.height * 0.5032191);
    path_24.lineTo(size.width * 0.6523342, size.height * 0.5040634);
    path_24.lineTo(size.width * 0.6505812, size.height * 0.5049845);
    path_24.lineTo(size.width * 0.5987442, size.height * 0.5320131);
    path_24.lineTo(size.width * 0.5984148, size.height * 0.5318404);
    path_24.lineTo(size.width * 0.5470559, size.height * 0.5586195);
    path_24.lineTo(size.width * 0.5461104, size.height * 0.5591088);
    path_24.lineTo(size.width * 0.5452073, size.height * 0.5595790);
    path_24.lineTo(size.width * 0.4925310, size.height * 0.5870489);
    path_24.cubicTo(
        size.width * 0.4761267,
        size.height * 0.5952333,
        size.width * 0.4527209,
        size.height * 0.5971810,
        size.width * 0.4332887,
        size.height * 0.5926715);
    path_24.cubicTo(
        size.width * 0.4329487,
        size.height * 0.5925947,
        size.width * 0.4326194,
        size.height * 0.5925180,
        size.width * 0.4322794,
        size.height * 0.5924316);
    path_24.cubicTo(
        size.width * 0.4318650,
        size.height * 0.5923261,
        size.width * 0.4314613,
        size.height * 0.5922205,
        size.width * 0.4310576,
        size.height * 0.5921150);
    path_24.cubicTo(
        size.width * 0.4285396,
        size.height * 0.5914433,
        size.width * 0.4260322,
        size.height * 0.5906566,
        size.width * 0.4235673,
        size.height * 0.5897259);
    path_24.cubicTo(
        size.width * 0.4235885,
        size.height * 0.5897355,
        size.width * 0.4236098,
        size.height * 0.5897451,
        size.width * 0.4236310,
        size.height * 0.5897547);
    path_24.cubicTo(
        size.width * 0.4213468,
        size.height * 0.5888911,
        size.width * 0.4191581,
        size.height * 0.5879125,
        size.width * 0.4170970,
        size.height * 0.5868282);
    path_24.lineTo(size.width * 0.4168207, size.height * 0.5869722);
    path_24.lineTo(size.width * 0.3651962, size.height * 0.5600491);
    path_24.lineTo(size.width * 0.3635282, size.height * 0.5591664);
    path_24.lineTo(size.width * 0.3619664, size.height * 0.5583604);
    path_24.lineTo(size.width * 0.3113087, size.height * 0.5319459);
    path_24.lineTo(size.width * 0.3118400, size.height * 0.5316581);
    path_24.cubicTo(
        size.width * 0.3072714,
        size.height * 0.5291922,
        size.width * 0.3037335,
        size.height * 0.5264097,
        size.width * 0.3012048,
        size.height * 0.5234545);
    path_24.cubicTo(
        size.width * 0.3007798,
        size.height * 0.5228884,
        size.width * 0.3003549,
        size.height * 0.5223223,
        size.width * 0.2999724,
        size.height * 0.5217274);
    path_24.cubicTo(
        size.width * 0.2980812,
        size.height * 0.5187914,
        size.width * 0.2968913,
        size.height * 0.5154524,
        size.width * 0.2968806,
        size.height * 0.5120655);
    path_24.cubicTo(
        size.width * 0.2968063,
        size.height * 0.5086689,
        size.width * 0.2979112,
        size.height * 0.5053011,
        size.width * 0.2997068,
        size.height * 0.5023267);
    path_24.cubicTo(
        size.width * 0.3000680,
        size.height * 0.5017319,
        size.width * 0.3004717,
        size.height * 0.5011562,
        size.width * 0.3008861,
        size.height * 0.5005901);
    path_24.close();

    Paint paint_24_fill = Paint()..style = PaintingStyle.fill;
    paint_24_fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path_24, paint_24_fill);

    Path path_25 = Path();
    path_25.moveTo(size.width * 0.8226026, size.height * 0.7669516);
    path_25.cubicTo(
        size.width * 0.8291579,
        size.height * 0.7638045,
        size.width * 0.8356813,
        size.height * 0.7605999,
        size.width * 0.8421623,
        size.height * 0.7573280);
    path_25.cubicTo(
        size.width * 0.8461465,
        size.height * 0.7553323,
        size.width * 0.8501201,
        size.height * 0.7532886,
        size.width * 0.8540936,
        size.height * 0.7512545);
    path_25.lineTo(size.width * 0.8659931, size.height * 0.7451234);
    path_25.lineTo(size.width * 0.8778182, size.height * 0.7389060);
    path_25.cubicTo(
        size.width * 0.8817492,
        size.height * 0.7367951,
        size.width * 0.8856803,
        size.height * 0.7347227,
        size.width * 0.8896007,
        size.height * 0.7326022);
    path_25.cubicTo(
        size.width * 0.8960286,
        size.height * 0.7291385,
        size.width * 0.9024139,
        size.height * 0.7256076,
        size.width * 0.9087673,
        size.height * 0.7220287);
    path_25.lineTo(size.width * 0.9194556, size.height * 0.7164541);
    path_25.lineTo(size.width * 0.9196256, size.height * 0.7165405);
    path_25.cubicTo(
        size.width * 0.9317375,
        size.height * 0.7102367,
        size.width * 0.9378679,
        size.height * 0.7023498,
        size.width * 0.9379210,
        size.height * 0.6937624);
    path_25.cubicTo(
        size.width * 0.9379741,
        size.height * 0.6851847,
        size.width * 0.9318119,
        size.height * 0.6770674,
        size.width * 0.9202206,
        size.height * 0.6709939);
    path_25.lineTo(size.width * 0.9201781, size.height * 0.6710131);
    path_25.cubicTo(
        size.width * 0.9114341,
        size.height * 0.6664652,
        size.width * 0.9005121,
        size.height * 0.6635004,
        size.width * 0.8886658,
        size.height * 0.6623202);
    path_25.cubicTo(
        size.width * 0.8878158,
        size.height * 0.6622243,
        size.width * 0.8869659,
        size.height * 0.6621379,
        size.width * 0.8861053,
        size.height * 0.6620516);
    path_25.cubicTo(
        size.width * 0.8829073,
        size.height * 0.6617733,
        size.width * 0.8796881,
        size.height * 0.6616390,
        size.width * 0.8764795,
        size.height * 0.6616294);
    path_25.cubicTo(
        size.width * 0.8732602,
        size.height * 0.6616390,
        size.width * 0.8700516,
        size.height * 0.6617733,
        size.width * 0.8668643,
        size.height * 0.6620420);
    path_25.cubicTo(
        size.width * 0.8644419,
        size.height * 0.6622722,
        size.width * 0.8620195,
        size.height * 0.6625601,
        size.width * 0.8596184,
        size.height * 0.6629439);
    path_25.cubicTo(
        size.width * 0.8499607,
        size.height * 0.6643639,
        size.width * 0.8410574,
        size.height * 0.6670505,
        size.width * 0.8333546,
        size.height * 0.6709939);
    path_25.lineTo(size.width * 0.8333333, size.height * 0.6709939);
    path_25.cubicTo(
        size.width * 0.8333333,
        size.height * 0.6709939,
        size.width * 0.8249718,
        size.height * 0.6753404,
        size.width * 0.8249718,
        size.height * 0.6753404);
    path_25.cubicTo(
        size.width * 0.8174709,
        size.height * 0.6788905,
        size.width * 0.8100125,
        size.height * 0.6825173,
        size.width * 0.8026391,
        size.height * 0.6862497);
    path_25.cubicTo(
        size.width * 0.7989205,
        size.height * 0.6880919,
        size.width * 0.7952551,
        size.height * 0.6900012,
        size.width * 0.7915684,
        size.height * 0.6918626);
    path_25.lineTo(size.width * 0.7805402, size.height * 0.6975620);
    path_25.lineTo(size.width * 0.7695757, size.height * 0.7033380);
    path_25.cubicTo(
        size.width * 0.7659421,
        size.height * 0.7052762,
        size.width * 0.7622766,
        size.height * 0.7072143,
        size.width * 0.7586643,
        size.height * 0.7091909);
    path_25.cubicTo(
        size.width * 0.7514077,
        size.height * 0.7130960,
        size.width * 0.7442043,
        size.height * 0.7170874,
        size.width * 0.7370753,
        size.height * 0.7211748);
    path_25.lineTo(size.width * 0.7272582, size.height * 0.7262888);
    path_25.lineTo(size.width * 0.7329211, size.height * 0.7292728);
    path_25.lineTo(size.width * 0.8385606, size.height * 0.6741986);
    path_25.lineTo(size.width * 0.8385606, size.height * 0.6741986);
    path_25.cubicTo(
        size.width * 0.8428316,
        size.height * 0.6719822,
        size.width * 0.8476020,
        size.height * 0.6702072,
        size.width * 0.8526593,
        size.height * 0.6688639);
    path_25.cubicTo(
        size.width * 0.8543486,
        size.height * 0.6685377,
        size.width * 0.8560485,
        size.height * 0.6682402,
        size.width * 0.8577485,
        size.height * 0.6679812);
    path_25.cubicTo(
        size.width * 0.8608827,
        size.height * 0.6675398,
        size.width * 0.8640063,
        size.height * 0.6671752,
        size.width * 0.8671618,
        size.height * 0.6669737);
    path_25.cubicTo(
        size.width * 0.8703172,
        size.height * 0.6667530,
        size.width * 0.8734940,
        size.height * 0.6666283,
        size.width * 0.8766388,
        size.height * 0.6666571);
    path_25.cubicTo(
        size.width * 0.8798156,
        size.height * 0.6666379,
        size.width * 0.8829710,
        size.height * 0.6667530,
        size.width * 0.8861159,
        size.height * 0.6669833);
    path_25.cubicTo(
        size.width * 0.8892714,
        size.height * 0.6671848,
        size.width * 0.8924162,
        size.height * 0.6675494,
        size.width * 0.8955398,
        size.height * 0.6680003);
    path_25.cubicTo(
        size.width * 0.8977391,
        size.height * 0.6683266,
        size.width * 0.8999171,
        size.height * 0.6687296,
        size.width * 0.9020845,
        size.height * 0.6691709);
    path_25.cubicTo(
        size.width * 0.9065787,
        size.height * 0.6704470,
        size.width * 0.9108073,
        size.height * 0.6720781,
        size.width * 0.9146321,
        size.height * 0.6740835);
    path_25.lineTo(size.width * 0.9146852, size.height * 0.6740547);
    path_25.cubicTo(
        size.width * 0.9257241,
        size.height * 0.6798979,
        size.width * 0.9308026,
        size.height * 0.6875354,
        size.width * 0.9299951,
        size.height * 0.6950673);
    path_25.cubicTo(
        size.width * 0.9296126,
        size.height * 0.6983104,
        size.width * 0.9280933,
        size.height * 0.7014479,
        size.width * 0.9258303,
        size.height * 0.7041920);
    path_25.cubicTo(
        size.width * 0.9234398,
        size.height * 0.7071088,
        size.width * 0.9202949,
        size.height * 0.7096130,
        size.width * 0.9169163,
        size.height * 0.7118966);
    path_25.cubicTo(
        size.width * 0.9160770,
        size.height * 0.7124051,
        size.width * 0.9152164,
        size.height * 0.7129041,
        size.width * 0.9143027,
        size.height * 0.7133934);
    path_25.lineTo(size.width * 0.9141221, size.height * 0.7132974);
    path_25.lineTo(size.width * 0.8634644, size.height * 0.7397120);
    path_25.lineTo(size.width * 0.8618176, size.height * 0.7405659);
    path_25.lineTo(size.width * 0.8600965, size.height * 0.7414678);
    path_25.lineTo(size.width * 0.8080364, size.height * 0.7686115);
    path_25.lineTo(size.width * 0.8137099, size.height * 0.7715859);
    path_25.lineTo(size.width * 0.8226132, size.height * 0.7669420);
    path_25.close();

    Paint paint_25_fill = Paint()..style = PaintingStyle.fill;
    paint_25_fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path_25, paint_25_fill);
    // After drawing the path with paint_0_fill
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

Path createYourPath(Size size) {
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

  return path_0;
}

extension on Offset {
  Offset normalize() {
    final double length = distance;
    return this / length;
  }
}
