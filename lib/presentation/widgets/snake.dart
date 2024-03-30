import 'dart:ui' as ui;

import 'package:flutter/material.dart';

//Add this CustomPaint widget to the Widget Tree

//Copy this CustomPainter code to the Bottom of the File
class RPSCustomPainter extends CustomPainter {
  final int? step;

  RPSCustomPainter({super.repaint, required this.step});

  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.7007663, size.height * 0.09872362);
    path_0.lineTo(size.width * 0.7403337, size.height * 0.1136739);
    path_0.lineTo(size.width * 0.5332165, size.height * 0.2157929);
    path_0.lineTo(size.width * 0.4944890, size.height * 0.2287434);
    path_0.lineTo(size.width * 0.4345261, size.height * 0.2329565);
    path_0.lineTo(size.width * 0.3871821, size.height * 0.2234459);
    path_0.lineTo(size.width * 0.2544716, size.height * 0.1582671);
    path_0.lineTo(size.width * 0.1758137, size.height * 0.1196381);
    path_0.lineTo(size.width * 0.1498294, size.height * 0.1091053);
    path_0.lineTo(size.width * 0.1083853, size.height * 0.1080920);
    path_0.lineTo(size.width * 0.07594123, size.height * 0.1191581);
    path_0.lineTo(size.width * 0.06400672, size.height * 0.1371305);
    path_0.lineTo(size.width * 0.07905188, size.height * 0.1580716);
    path_0.lineTo(size.width * 0.3684456, size.height * 0.2980641);
    path_0.lineTo(size.width * 0.5133499, size.height * 0.3700158);
    path_0.lineTo(size.width * 0.5692378, size.height * 0.3587275);
    path_0.lineTo(size.width * 0.6056116, size.height * 0.3408529);
    path_0.lineTo(size.width * 0.6927823, size.height * 0.2980641);
    path_0.lineTo(size.width * 0.7543730, size.height * 0.2852559);
    path_0.lineTo(size.width * 0.8104476, size.height * 0.2953976);
    path_0.lineTo(size.width * 0.8449965, size.height * 0.3103035);
    path_0.lineTo(size.width * 0.9125494, size.height * 0.3413418);
    path_0.lineTo(size.width * 0.9520857, size.height * 0.3615274);
    path_0.lineTo(size.width * 0.9742542, size.height * 0.3932857);
    path_0.lineTo(size.width * 0.9635432, size.height * 0.4194087);
    path_0.lineTo(size.width * 0.9367295, size.height * 0.4387944);
    path_0.lineTo(size.width * 0.8818369, size.height * 0.4668462);
    path_0.lineTo(size.width * 0.7422934, size.height * 0.5302562);
    path_0.lineTo(size.width * 0.5904939, size.height * 0.6064477);
    path_0.lineTo(size.width * 0.5262694, size.height * 0.6397081);
    path_0.lineTo(size.width * 0.4496749, size.height * 0.6574583);
    path_0.lineTo(size.width * 0.3870784, size.height * 0.6493787);
    path_0.lineTo(size.width * 0.3439337, size.height * 0.6298331);
    path_0.lineTo(size.width * 0.2656284, size.height * 0.5888397);
    path_0.lineTo(size.width * 0.2408262, size.height * 0.5742183);
    path_0.lineTo(size.width * 0.2308203, size.height * 0.5513573);
    path_0.lineTo(size.width * 0.2341798, size.height * 0.5349315);
    path_0.lineTo(size.width * 0.2494323, size.height * 0.5127371);
    path_0.lineTo(size.width * 0.2699211, size.height * 0.5041598);
    path_0.lineTo(size.width * 0.2814305, size.height * 0.4866407);
    path_0.lineTo(size.width * 0.2782784, size.height * 0.4768990);
    path_0.lineTo(size.width * 0.2626837, size.height * 0.4688461);
    path_0.lineTo(size.width * 0.1490932, size.height * 0.4146979);
    path_0.lineTo(size.width * 0.1151250, size.height * 0.4101737);
    path_0.lineTo(size.width * 0.09382744, size.height * 0.4122536);
    path_0.lineTo(size.width * 0.07103678, size.height * 0.4245374);
    path_0.lineTo(size.width * 0.06234771, size.height * 0.4389544);
    path_0.lineTo(size.width * 0.07632488, size.height * 0.4591133);
    path_0.lineTo(size.width * 0.1016352, size.height * 0.4743747);
    path_0.lineTo(size.width * 0.1111019, size.height * 0.4967291);
    path_0.lineTo(size.width * 0.1022469, size.height * 0.5228521);
    path_0.lineTo(size.width * 0.08361416, size.height * 0.5346470);
    path_0.lineTo(size.width * 0.06484659, size.height * 0.5477041);
    path_0.lineTo(size.width * 0.06234771, size.height * 0.5588946);
    path_0.lineTo(size.width * 0.06926371, size.height * 0.5743605);
    path_0.lineTo(size.width * 0.3805771, size.height * 0.7303522);
    path_0.lineTo(size.width * 0.4908495, size.height * 0.7839671);
    path_0.lineTo(size.width * 0.5288927, size.height * 0.7915667);
    path_0.lineTo(size.width * 0.5509265, size.height * 0.7887846);
    path_0.lineTo(size.width * 0.5970366, size.height * 0.7704656);
    path_0.lineTo(size.width * 0.6757152, size.height * 0.7294989);
    path_0.lineTo(size.width * 0.7252367, size.height * 0.7066290);
    path_0.lineTo(size.width * 0.7885694, size.height * 0.6743818);
    path_0.lineTo(size.width * 0.8335805, size.height * 0.6643557);
    path_0.lineTo(size.width * 0.8716029, size.height * 0.6634046);
    path_0.lineTo(size.width * 0.9379011, size.height * 0.6803993);
    path_0.lineTo(size.width * 0.9694224, size.height * 0.7093311);
    path_0.lineTo(size.width * 0.9609096, size.height * 0.7374807);
    path_0.lineTo(size.width * 0.9277501, size.height * 0.7638348);
    path_0.lineTo(size.width * 0.7846189, size.height * 0.8296891);
    path_0.lineTo(size.width * 0.7340398, size.height * 0.8566743);
    path_0.lineTo(size.width * 0.7125660, size.height * 0.8723535);
    path_0.lineTo(size.width * 0.7115291, size.height * 0.8899081);
    path_0.lineTo(size.width * 0.7365594, size.height * 0.9050806);
    path_0.lineTo(size.width * 0.7510136, size.height * 0.9191421);
    path_0.lineTo(size.width * 0.7606358, size.height * 0.9299148);
    path_0.lineTo(size.width * 0.7602003, size.height * 0.9492294);
    path_0.lineTo(size.width * 0.7369742, size.height * 0.9728281);
    path_0.lineTo(size.width * 0.6911958, size.height * 0.9902761);
    path_0.lineTo(size.width * 0.6411767, size.height * 0.9952358);
    path_0.lineTo(size.width * 0.6131186, size.height * 0.9926137);
    path_0.lineTo(size.width * 0.5587238, size.height * 0.9763124);
    path_0.lineTo(size.width * 0.5183061, size.height * 0.9548735);
    path_0.lineTo(size.width * 0.4700600, size.height * 0.9302526);
    path_0.lineTo(size.width * 0.4286781, size.height * 0.9172400);
    path_0.lineTo(size.width * 0.3870784, size.height * 0.9236930);
    path_0.lineTo(size.width * 0.3479257, size.height * 0.9392477);
    path_0.lineTo(size.width * 0.3168711, size.height * 0.9436741);
    path_0.lineTo(size.width * 0.2596663, size.height * 0.9392477);
    path_0.lineTo(size.width * 0.2397167, size.height * 0.9315325);
    path_0.lineTo(size.width * 0.1887332, size.height * 0.9096582);
    path_0.lineTo(size.width * 0.1410367, size.height * 0.8849750);
    path_0.lineTo(size.width * 0.1189407, size.height * 0.8723535);
    path_0.lineTo(size.width * 0.1632985, size.height * 0.8543989);
    path_0.lineTo(size.width * 0.2656802, size.height * 0.9082804);
    path_0.lineTo(size.width * 0.3051543, size.height * 0.9163156);
    path_0.lineTo(size.width * 0.3421192, size.height * 0.9083960);
    path_0.lineTo(size.width * 0.3653142, size.height * 0.8962722);
    path_0.lineTo(size.width * 0.4154682, size.height * 0.8913125);
    path_0.lineTo(size.width * 0.4699875, size.height * 0.8968144);
    path_0.lineTo(size.width * 0.5061020, size.height * 0.9086715);
    path_0.lineTo(size.width * 0.5460738, size.height * 0.9285994);
    path_0.lineTo(size.width * 0.5951702, size.height * 0.9536380);
    path_0.lineTo(size.width * 0.6487563, size.height * 0.9696461);
    path_0.lineTo(size.width * 0.6837199, size.height * 0.9593533);
    path_0.lineTo(size.width * 0.7006729, size.height * 0.9458340);
    path_0.lineTo(size.width * 0.7006729, size.height * 0.9333369);
    path_0.lineTo(size.width * 0.6898790, size.height * 0.9191421);
    path_0.lineTo(size.width * 0.6701782, size.height * 0.9050806);
    path_0.lineTo(size.width * 0.6578393, size.height * 0.8899081);
    path_0.lineTo(size.width * 0.6578393, size.height * 0.8751178);
    path_0.lineTo(size.width * 0.6627542, size.height * 0.8609496);
    path_0.lineTo(size.width * 0.6739836, size.height * 0.8458127);
    path_0.lineTo(size.width * 0.8722458, size.height * 0.7473024);
    path_0.lineTo(size.width * 0.9108696, size.height * 0.7275879);
    path_0.lineTo(size.width * 0.9133478, size.height * 0.7132420);
    path_0.lineTo(size.width * 0.9011748, size.height * 0.7016604);
    path_0.lineTo(size.width * 0.8881619, size.height * 0.6913054);
    path_0.lineTo(size.width * 0.8739774, size.height * 0.6924520);
    path_0.lineTo(size.width * 0.8399365, size.height * 0.6895099);
    path_0.lineTo(size.width * 0.7968230, size.height * 0.7056424);
    path_0.lineTo(size.width * 0.7273312, size.height * 0.7421649);
    path_0.lineTo(size.width * 0.6419958, size.height * 0.7844471);
    path_0.lineTo(size.width * 0.5812967, size.height * 0.8101612);
    path_0.lineTo(size.width * 0.5379343, size.height * 0.8190497);
    path_0.lineTo(size.width * 0.4814968, size.height * 0.8128900);
    path_0.lineTo(size.width * 0.4436507, size.height * 0.8006240);
    path_0.lineTo(size.width * 0.03799135, size.height * 0.5984214);
    path_0.lineTo(size.width * 0.008139523, size.height * 0.5706451);
    path_0.lineTo(size.width * 0.003442448, size.height * 0.5492951);
    path_0.lineTo(size.width * 0.01782400, size.height * 0.5288607);
    path_0.lineTo(size.width * 0.04289580, size.height * 0.5150036);
    path_0.lineTo(size.width * 0.05322315, size.height * 0.4996711);
    path_0.lineTo(size.width * 0.05453999, size.height * 0.4903205);
    path_0.lineTo(size.width * 0.03087834, size.height * 0.4721881);
    path_0.lineTo(size.width * 0.01308545, size.height * 0.4525092);
    path_0.lineTo(size.width * 0.008139523, size.height * 0.4351768);
    path_0.lineTo(size.width * 0.02074801, size.height * 0.4093826);
    path_0.lineTo(size.width * 0.04800763, size.height * 0.3921213);
    path_0.lineTo(size.width * 0.08228695, size.height * 0.3843528);
    path_0.lineTo(size.width * 0.1398857, size.height * 0.3812330);
    path_0.lineTo(size.width * 0.1920824, size.height * 0.3946190);
    path_0.lineTo(size.width * 0.2705121, size.height * 0.4352301);
    path_0.lineTo(size.width * 0.3111371, size.height * 0.4551491);
    path_0.lineTo(size.width * 0.3264312, size.height * 0.4701705);
    path_0.lineTo(size.width * 0.3341974, size.height * 0.4836986);
    path_0.lineTo(size.width * 0.3274991, size.height * 0.5135193);
    path_0.lineTo(size.width * 0.2972533, size.height * 0.5288607);
    path_0.lineTo(size.width * 0.2859513, size.height * 0.5396957);
    path_0.lineTo(size.width * 0.2859513, size.height * 0.5552771);
    path_0.lineTo(size.width * 0.2982072, size.height * 0.5691785);
    path_0.lineTo(size.width * 0.3755897, size.height * 0.6079942);
    path_0.lineTo(size.width * 0.4177390, size.height * 0.6257800);
    path_0.lineTo(size.width * 0.4607903, size.height * 0.6298331);
    path_0.lineTo(size.width * 0.4861006, size.height * 0.6214069);
    path_0.lineTo(size.width * 0.8791825, size.height * 0.4255951);
    path_0.lineTo(size.width * 0.9108489, size.height * 0.4092937);
    path_0.lineTo(size.width * 0.9179204, size.height * 0.3924057);
    path_0.lineTo(size.width * 0.9076864, size.height * 0.3812330);
    path_0.lineTo(size.width * 0.7818608, size.height * 0.3184008);
    path_0.lineTo(size.width * 0.7453522, size.height * 0.3160631);
    path_0.lineTo(size.width * 0.7068113, size.height * 0.3283825);
    path_0.lineTo(size.width * 0.6292732, size.height * 0.3667271);
    path_0.lineTo(size.width * 0.5917174, size.height * 0.3837751);
    path_0.lineTo(size.width * 0.5510301, size.height * 0.3936057);
    path_0.lineTo(size.width * 0.4930166, size.height * 0.3896592);
    path_0.lineTo(size.width * 0.4314154, size.height * 0.3667271);
    path_0.lineTo(size.width * 0.04354904, size.height * 0.1726663);
    path_0.lineTo(size.width * 0.02141161, size.height * 0.1540984);
    path_0.lineTo(size.width * 0.01148865, size.height * 0.1341084);
    path_0.lineTo(size.width * 0.02716631, size.height * 0.1021101);
    path_0.lineTo(size.width * 0.06742843, size.height * 0.08415551);
    path_0.lineTo(size.width * 0.1345147, size.height * 0.07681368);
    path_0.lineTo(size.width * 0.1741028, size.height * 0.08415551);
    path_0.lineTo(size.width * 0.3430938, size.height * 0.1633157);
    path_0.lineTo(size.width * 0.3912985, size.height * 0.1887277);
    path_0.lineTo(size.width * 0.4298705, size.height * 0.2035003);
    path_0.lineTo(size.width * 0.4705059, size.height * 0.2040069);
    path_0.lineTo(size.width * 0.5187313, size.height * 0.1837946);
    path_0.lineTo(size.width * 0.6672750, size.height * 0.1067765);
    path_0.lineTo(size.width * 0.6885725, size.height * 0.09592377);
    path_0.lineTo(size.width * 0.7007663, size.height * 0.09872362);
    path_0.close();

    Paint paint_0_fill = Paint()..style = PaintingStyle.fill;
    paint_0_fill.color = Color(0xffffc629).withOpacity(1.0);
    canvas.drawPath(path_0, paint_0_fill);

    Path path_1 = Path();
    path_1.moveTo(size.width * 0.1838081, size.height * 0.3889570);
    path_1.cubicTo(
        size.width * 0.1812262,
        size.height * 0.3880682,
        size.width * 0.1786133,
        size.height * 0.3872327,
        size.width * 0.1759796,
        size.height * 0.3864594);
    path_1.cubicTo(
        size.width * 0.1698931,
        size.height * 0.3847350,
        size.width * 0.1637029,
        size.height * 0.3833307,
        size.width * 0.1574194,
        size.height * 0.3822018);
    path_1.cubicTo(
        size.width * 0.1448731,
        size.height * 0.3799708,
        size.width * 0.1320365,
        size.height * 0.3789842,
        size.width * 0.1192103,
        size.height * 0.3790109);
    path_1.cubicTo(
        size.width * 0.1063841,
        size.height * 0.3790820,
        size.width * 0.09354748,
        size.height * 0.3801753,
        size.width * 0.08102195,
        size.height * 0.3825307);
    path_1.cubicTo(
        size.width * 0.07477992,
        size.height * 0.3837040,
        size.width * 0.06857937,
        size.height * 0.3851528,
        size.width * 0.06252398,
        size.height * 0.3869483);
    path_1.cubicTo(
        size.width * 0.05757805,
        size.height * 0.3884415,
        size.width * 0.05271508,
        size.height * 0.3901481,
        size.width * 0.04800763,
        size.height * 0.3921213);
    path_1.cubicTo(
        size.width * 0.04452371,
        size.height * 0.3934901,
        size.width * 0.04117458,
        size.height * 0.3949567,
        size.width * 0.03799135,
        size.height * 0.3965389);
    path_1.lineTo(size.width * 0.04354904, size.height * 0.3993031);
    path_1.cubicTo(
        size.width * 0.05220700,
        size.height * 0.3950189,
        size.width * 0.06197443,
        size.height * 0.3916236,
        size.width * 0.07238472,
        size.height * 0.3890815);
    path_1.cubicTo(
        size.width * 0.07517394,
        size.height * 0.3884948,
        size.width * 0.07798389,
        size.height * 0.3879615,
        size.width * 0.08081457,
        size.height * 0.3874993);
    path_1.cubicTo(
        size.width * 0.09329863,
        size.height * 0.3854461,
        size.width * 0.1060108,
        size.height * 0.3844062,
        size.width * 0.1187230,
        size.height * 0.3843706);
    path_1.cubicTo(
        size.width * 0.1314351,
        size.height * 0.3842995,
        size.width * 0.1441473,
        size.height * 0.3852328,
        size.width * 0.1566729,
        size.height * 0.3871882);
    path_1.cubicTo(
        size.width * 0.1629253,
        size.height * 0.3881571,
        size.width * 0.1691258,
        size.height * 0.3894281,
        size.width * 0.1752227,
        size.height * 0.3909925);
    path_1.cubicTo(
        size.width * 0.1757515,
        size.height * 0.3911258,
        size.width * 0.1762699,
        size.height * 0.3912769,
        size.width * 0.1767987,
        size.height * 0.3914102);
    path_1.cubicTo(
        size.width * 0.1837666,
        size.height * 0.3935257,
        size.width * 0.1903508,
        size.height * 0.3960589,
        size.width * 0.1963958,
        size.height * 0.3990276);
    path_1.lineTo(size.width * 0.1961469, size.height * 0.3991520);
    path_1.lineTo(size.width * 0.2067542, size.height * 0.4044051);
    path_1.cubicTo(
        size.width * 0.2129963,
        size.height * 0.4077471,
        size.width * 0.2192694,
        size.height * 0.4110447,
        size.width * 0.2255840,
        size.height * 0.4142712);
    path_1.cubicTo(
        size.width * 0.2294101,
        size.height * 0.4162445,
        size.width * 0.2332466,
        size.height * 0.4181555,
        size.width * 0.2370830,
        size.height * 0.4201198);
    path_1.lineTo(size.width * 0.2486235, size.height * 0.4258795);
    path_1.lineTo(size.width * 0.2602366, size.height * 0.4315681);
    path_1.cubicTo(
        size.width * 0.2641146,
        size.height * 0.4334435,
        size.width * 0.2679821,
        size.height * 0.4353457,
        size.width * 0.2718704,
        size.height * 0.4371856);
    path_1.cubicTo(
        size.width * 0.2782058,
        size.height * 0.4402254,
        size.width * 0.2845722,
        size.height * 0.4431853,
        size.width * 0.2909802,
        size.height * 0.4461095);
    path_1.lineTo(size.width * 0.2996589, size.height * 0.4504026);
    path_1.lineTo(size.width * 0.3051958, size.height * 0.4476472);
    path_1.lineTo(size.width * 0.2544819, size.height * 0.4225464);
    path_1.lineTo(size.width * 0.2527089, size.height * 0.4216575);
    path_1.lineTo(size.width * 0.2508943, size.height * 0.4207687);
    path_1.lineTo(size.width * 0.2022749, size.height * 0.3966988);
    path_1.lineTo(size.width * 0.2025756, size.height * 0.3965477);
    path_1.cubicTo(
        size.width * 0.1968106,
        size.height * 0.3936768,
        size.width * 0.1905374,
        size.height * 0.3911525,
        size.width * 0.1838184,
        size.height * 0.3889659);
    path_1.close();

    Paint paint_1_fill = Paint()..style = PaintingStyle.fill;
    paint_1_fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path_1, paint_1_fill);

    Path path_2 = Path();
    path_2.moveTo(size.width * 0.07613824, size.height * 0.4592111);
    path_2.lineTo(size.width * 0.07632488, size.height * 0.4591222);
    path_2.cubicTo(
        size.width * 0.1175720,
        size.height * 0.4800811,
        size.width * 0.1171054,
        size.height * 0.5138482,
        size.width * 0.07507025,
        size.height * 0.5346559);
    path_2.lineTo(size.width * 0.08059683, size.height * 0.5374024);
    path_2.cubicTo(
        size.width * 0.08570866,
        size.height * 0.5348693,
        size.width * 0.09028131,
        size.height * 0.5321405,
        size.width * 0.09431478,
        size.height * 0.5292429);
    path_2.cubicTo(
        size.width * 0.09840009,
        size.height * 0.5264253,
        size.width * 0.1021640,
        size.height * 0.5232521,
        size.width * 0.1053679,
        size.height * 0.5196434);
    path_2.cubicTo(
        size.width * 0.1082505,
        size.height * 0.5164347,
        size.width * 0.1106457,
        size.height * 0.5128704,
        size.width * 0.1123773,
        size.height * 0.5090573);
    path_2.cubicTo(
        size.width * 0.1140881,
        size.height * 0.5052353,
        size.width * 0.1150420,
        size.height * 0.5011644,
        size.width * 0.1151146,
        size.height * 0.4970579);
    path_2.cubicTo(
        size.width * 0.1151872,
        size.height * 0.4929693,
        size.width * 0.1143888,
        size.height * 0.4888450,
        size.width * 0.1128127,
        size.height * 0.4849964);
    path_2.cubicTo(
        size.width * 0.1112160,
        size.height * 0.4811388,
        size.width * 0.1089141,
        size.height * 0.4775301,
        size.width * 0.1061041,
        size.height * 0.4742592);
    path_2.cubicTo(
        size.width * 0.1033149,
        size.height * 0.4709793,
        size.width * 0.1000384,
        size.height * 0.4680373,
        size.width * 0.09648186,
        size.height * 0.4653796);
    path_2.cubicTo(
        size.width * 0.09625375,
        size.height * 0.4652107,
        size.width * 0.09601526,
        size.height * 0.4650508,
        size.width * 0.09577678,
        size.height * 0.4648819);
    path_2.cubicTo(
        size.width * 0.09153593,
        size.height * 0.4616998,
        size.width * 0.08664185,
        size.height * 0.4587133,
        size.width * 0.08111527,
        size.height * 0.4559668);
    path_2.lineTo(size.width * 0.08093900, size.height * 0.4560557);
    path_2.cubicTo(
        size.width * 0.07683295,
        size.height * 0.4538691,
        size.width * 0.07359788,
        size.height * 0.4514337,
        size.width * 0.07127526,
        size.height * 0.4488383);
    path_2.cubicTo(
        size.width * 0.07085014,
        size.height * 0.4483139,
        size.width * 0.07043539,
        size.height * 0.4477806,
        size.width * 0.07007248,
        size.height * 0.4472295);
    path_2.cubicTo(
        size.width * 0.06822683,
        size.height * 0.4445185,
        size.width * 0.06706552,
        size.height * 0.4414165,
        size.width * 0.06704478,
        size.height * 0.4382788);
    path_2.cubicTo(
        size.width * 0.06697220,
        size.height * 0.4351323,
        size.width * 0.06805056,
        size.height * 0.4320214,
        size.width * 0.06980289,
        size.height * 0.4292571);
    path_2.cubicTo(
        size.width * 0.07014506,
        size.height * 0.4287060,
        size.width * 0.07053907,
        size.height * 0.4281816,
        size.width * 0.07093309,
        size.height * 0.4276572);
    path_2.cubicTo(
        size.width * 0.07354603,
        size.height * 0.4245818,
        size.width * 0.07736176,
        size.height * 0.4216931,
        size.width * 0.08236990,
        size.height * 0.4191865);
    path_2.lineTo(size.width * 0.07689516, size.height * 0.4163956);
    path_2.cubicTo(
        size.width * 0.07474882,
        size.height * 0.4174711,
        size.width * 0.07279948,
        size.height * 0.4186088,
        size.width * 0.07103678,
        size.height * 0.4197821);
    path_2.cubicTo(
        size.width * 0.07123379,
        size.height * 0.4196043,
        size.width * 0.07144116,
        size.height * 0.4194176,
        size.width * 0.07163817,
        size.height * 0.4192399);
    path_2.cubicTo(
        size.width * 0.06827867,
        size.height * 0.4211953,
        size.width * 0.06523024,
        size.height * 0.4237730,
        size.width * 0.06294910,
        size.height * 0.4269906);
    path_2.cubicTo(
        size.width * 0.06250324,
        size.height * 0.4276127,
        size.width * 0.06209886,
        size.height * 0.4282705,
        size.width * 0.06171521,
        size.height * 0.4289371);
    path_2.cubicTo(
        size.width * 0.06162189,
        size.height * 0.4290882,
        size.width * 0.06154931,
        size.height * 0.4292393,
        size.width * 0.06145599,
        size.height * 0.4293904);
    path_2.cubicTo(
        size.width * 0.06143525,
        size.height * 0.4294349,
        size.width * 0.06140415,
        size.height * 0.4294704,
        size.width * 0.06138341,
        size.height * 0.4295149);
    path_2.cubicTo(
        size.width * 0.05989030,
        size.height * 0.4321547,
        size.width * 0.05912301,
        size.height * 0.4349101,
        size.width * 0.05909190,
        size.height * 0.4377455);
    path_2.cubicTo(
        size.width * 0.05900895,
        size.height * 0.4457984,
        size.width * 0.06489844,
        size.height * 0.4534780,
        size.width * 0.07611750,
        size.height * 0.4592111);
    path_2.close();

    Paint paint_2_fill = Paint()..style = PaintingStyle.fill;
    paint_2_fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path_2, paint_2_fill);

    Path path_3 = Path();
    path_3.moveTo(size.width * 0.1374802, size.height * 0.6486498);
    path_3.lineTo(size.width * 0.1375216, size.height * 0.6486321);
    path_3.lineTo(size.width * 0.2398723, size.height * 0.6992960);
    path_3.lineTo(size.width * 0.2391568, size.height * 0.6996516);
    path_3.lineTo(size.width * 0.3426998, size.height * 0.7508933);
    path_3.lineTo(size.width * 0.3429279, size.height * 0.7507777);
    path_3.lineTo(size.width * 0.4461495, size.height * 0.8018595);
    path_3.lineTo(size.width * 0.4462118, size.height * 0.8018328);
    path_3.cubicTo(
        size.width * 0.4545068,
        size.height * 0.8059037,
        size.width * 0.4638076,
        size.height * 0.8092991,
        size.width * 0.4740002,
        size.height * 0.8119389);
    path_3.cubicTo(
        size.width * 0.4808747,
        size.height * 0.8140366,
        size.width * 0.4879566,
        size.height * 0.8156543,
        size.width * 0.4951318,
        size.height * 0.8168275);
    path_3.cubicTo(
        size.width * 0.5058947,
        size.height * 0.8186141,
        size.width * 0.5168649,
        size.height * 0.8194407,
        size.width * 0.5278144,
        size.height * 0.8194407);
    path_3.cubicTo(
        size.width * 0.5332891,
        size.height * 0.8194319,
        size.width * 0.5387638,
        size.height * 0.8192096,
        size.width * 0.5442386,
        size.height * 0.8187830);
    path_3.cubicTo(
        size.width * 0.5496822,
        size.height * 0.8183208,
        size.width * 0.5551258,
        size.height * 0.8176986,
        size.width * 0.5604969,
        size.height * 0.8167831);
    path_3.cubicTo(
        size.width * 0.5661997,
        size.height * 0.8158409,
        size.width * 0.5718404,
        size.height * 0.8146232,
        size.width * 0.5773669,
        size.height * 0.8131033);
    path_3.cubicTo(
        size.width * 0.5897058,
        size.height * 0.8102590,
        size.width * 0.6008731,
        size.height * 0.8063748,
        size.width * 0.6106405,
        size.height * 0.8015395);
    path_3.lineTo(size.width * 0.6050932, size.height * 0.7987752);
    path_3.cubicTo(
        size.width * 0.5896747,
        size.height * 0.8064014,
        size.width * 0.5707827,
        size.height * 0.8112545,
        size.width * 0.5509472,
        size.height * 0.8133611);
    path_3.cubicTo(
        size.width * 0.5488008,
        size.height * 0.8135744,
        size.width * 0.5466441,
        size.height * 0.8137699,
        size.width * 0.5444978,
        size.height * 0.8139121);
    path_3.cubicTo(
        size.width * 0.5390956,
        size.height * 0.8143032,
        size.width * 0.5336520,
        size.height * 0.8144988,
        size.width * 0.5282187,
        size.height * 0.8144899);
    path_3.cubicTo(
        size.width * 0.5227855,
        size.height * 0.8145077,
        size.width * 0.5173626,
        size.height * 0.8143121,
        size.width * 0.5119604,
        size.height * 0.8139388);
    path_3.cubicTo(
        size.width * 0.5098245,
        size.height * 0.8137966,
        size.width * 0.5076885,
        size.height * 0.8136099,
        size.width * 0.5055629,
        size.height * 0.8133966);
    path_3.cubicTo(
        size.width * 0.4856236,
        size.height * 0.8113167,
        size.width * 0.4666487,
        size.height * 0.8064459,
        size.width * 0.4512406,
        size.height * 0.7987663);
    path_3.lineTo(size.width * 0.4511473, size.height * 0.7988107);
    path_3.lineTo(size.width * 0.4420953, size.height * 0.7943310);
    path_3.cubicTo(
        size.width * 0.4351482,
        size.height * 0.7905445,
        size.width * 0.4281285,
        size.height * 0.7868558,
        size.width * 0.4210674,
        size.height * 0.7832471);
    path_3.cubicTo(
        size.width * 0.4175420,
        size.height * 0.7814072,
        size.width * 0.4139647,
        size.height * 0.7796206,
        size.width * 0.4104186,
        size.height * 0.7778163);
    path_3.lineTo(size.width * 0.3997180, size.height * 0.7724744);
    path_3.lineTo(size.width * 0.3889551, size.height * 0.7672035);
    path_3.cubicTo(
        size.width * 0.3853675,
        size.height * 0.7654703,
        size.width * 0.3817799,
        size.height * 0.7637104,
        size.width * 0.3781508,
        size.height * 0.7620038);
    path_3.cubicTo(
        size.width * 0.3709860,
        size.height * 0.7585640,
        size.width * 0.3637485,
        size.height * 0.7552219,
        size.width * 0.3564696,
        size.height * 0.7519510);
    path_3.lineTo(size.width * 0.3481953, size.height * 0.7478534);
    path_3.lineTo(size.width * 0.3479568, size.height * 0.7479690);
    path_3.lineTo(size.width * 0.3386145, size.height * 0.7433470);
    path_3.cubicTo(
        size.width * 0.3316778,
        size.height * 0.7395694,
        size.width * 0.3246685,
        size.height * 0.7358808,
        size.width * 0.3176177,
        size.height * 0.7322721);
    path_3.cubicTo(
        size.width * 0.3140923,
        size.height * 0.7304410,
        size.width * 0.3105150,
        size.height * 0.7286456,
        size.width * 0.3069689,
        size.height * 0.7268412);
    path_3.lineTo(size.width * 0.2962683, size.height * 0.7214993);
    path_3.lineTo(size.width * 0.2855054, size.height * 0.7162196);
    path_3.cubicTo(
        size.width * 0.2819178,
        size.height * 0.7144863,
        size.width * 0.2783302,
        size.height * 0.7127264,
        size.width * 0.2747011,
        size.height * 0.7110110);
    path_3.cubicTo(
        size.width * 0.2675466,
        size.height * 0.7075889,
        size.width * 0.2603299,
        size.height * 0.7042469,
        size.width * 0.2530510,
        size.height * 0.7009848);
    path_3.lineTo(size.width * 0.2456892, size.height * 0.6973406);
    path_3.lineTo(size.width * 0.2463942, size.height * 0.6969850);
    path_3.lineTo(size.width * 0.2367616, size.height * 0.6922209);
    path_3.cubicTo(
        size.width * 0.2298249,
        size.height * 0.6884344,
        size.width * 0.2228155,
        size.height * 0.6847546,
        size.width * 0.2157544,
        size.height * 0.6811370);
    path_3.cubicTo(
        size.width * 0.2122290,
        size.height * 0.6793060,
        size.width * 0.2086517,
        size.height * 0.6775105,
        size.width * 0.2051056,
        size.height * 0.6757062);
    path_3.lineTo(size.width * 0.1944050, size.height * 0.6703642);
    path_3.lineTo(size.width * 0.1836422, size.height * 0.6650934);
    path_3.cubicTo(
        size.width * 0.1800545,
        size.height * 0.6633691,
        size.width * 0.1764669,
        size.height * 0.6616003,
        size.width * 0.1728378,
        size.height * 0.6598848);
    path_3.cubicTo(
        size.width * 0.1657145,
        size.height * 0.6564717,
        size.width * 0.1585392,
        size.height * 0.6531563,
        size.width * 0.1513018,
        size.height * 0.6499031);
    path_3.lineTo(size.width * 0.1428927, size.height * 0.6457433);
    path_3.lineTo(size.width * 0.1428408, size.height * 0.6457700);
    path_3.lineTo(size.width * 0.1334156, size.height * 0.6411036);
    path_3.cubicTo(
        size.width * 0.1264789,
        size.height * 0.6373260,
        size.width * 0.1194695,
        size.height * 0.6336462,
        size.width * 0.1124084,
        size.height * 0.6300286);
    path_3.cubicTo(
        size.width * 0.1088830,
        size.height * 0.6281976,
        size.width * 0.1053057,
        size.height * 0.6264021,
        size.width * 0.1017596,
        size.height * 0.6245978);
    path_3.lineTo(size.width * 0.09105897, size.height * 0.6192559);
    path_3.lineTo(size.width * 0.08029613, size.height * 0.6139761);
    path_3.cubicTo(
        size.width * 0.07670852,
        size.height * 0.6122518,
        size.width * 0.07312091,
        size.height * 0.6104919,
        size.width * 0.06949182,
        size.height * 0.6087675);
    path_3.cubicTo(
        size.width * 0.06229586,
        size.height * 0.6053277,
        size.width * 0.05502732,
        size.height * 0.6019590,
        size.width * 0.04770694,
        size.height * 0.5986792);
    path_3.lineTo(size.width * 0.04001327, size.height * 0.5948749);
    path_3.lineTo(size.width * 0.04018954, size.height * 0.5947861);
    path_3.cubicTo(
        size.width * 0.02340242,
        size.height * 0.5861998,
        size.width * 0.01344836,
        size.height * 0.5754626,
        size.width * 0.01029624,
        size.height * 0.5643255);
    path_3.cubicTo(
        size.width * 0.01023402,
        size.height * 0.5641032,
        size.width * 0.01017181,
        size.height * 0.5638810,
        size.width * 0.01011997,
        size.height * 0.5636499);
    path_3.cubicTo(
        size.width * 0.01007849,
        size.height * 0.5634811,
        size.width * 0.01004739,
        size.height * 0.5633122,
        size.width * 0.01000591,
        size.height * 0.5631522);
    path_3.cubicTo(
        size.width * 0.009539313,
        size.height * 0.5610545,
        size.width * 0.009300831,
        size.height * 0.5589213,
        size.width * 0.009321568,
        size.height * 0.5567703);
    path_3.cubicTo(
        size.width * 0.009342306,
        size.height * 0.5531705,
        size.width * 0.01008886,
        size.height * 0.5495885,
        size.width * 0.01145754,
        size.height * 0.5461664);
    path_3.cubicTo(
        size.width * 0.01279512,
        size.height * 0.5427533,
        size.width * 0.01478594,
        size.height * 0.5395357,
        size.width * 0.01713966,
        size.height * 0.5365314);
    path_3.cubicTo(
        size.width * 0.01950375,
        size.height * 0.5335360,
        size.width * 0.02226185,
        size.height * 0.5307717,
        size.width * 0.02528955,
        size.height * 0.5282296);
    path_3.cubicTo(
        size.width * 0.02827577,
        size.height * 0.5256609,
        size.width * 0.03158342,
        size.height * 0.5233588,
        size.width * 0.03498439,
        size.height * 0.5211900);
    path_3.cubicTo(
        size.width * 0.03489108,
        size.height * 0.5212433,
        size.width * 0.03479776,
        size.height * 0.5212966,
        size.width * 0.03470444,
        size.height * 0.5213411);
    path_3.cubicTo(
        size.width * 0.03666414,
        size.height * 0.5201767,
        size.width * 0.03871717,
        size.height * 0.5190301,
        size.width * 0.04089462,
        size.height * 0.5179368);
    path_3.lineTo(size.width * 0.03852016, size.height * 0.5166302);
    path_3.lineTo(size.width * 0.04090499, size.height * 0.5178213);
    path_3.cubicTo(
        size.width * 0.05272544,
        size.height * 0.5119727,
        size.width * 0.05870825,
        size.height * 0.5046664,
        size.width * 0.05876010,
        size.height * 0.4967202);
    path_3.cubicTo(
        size.width * 0.05881194,
        size.height * 0.4887739,
        size.width * 0.05279803,
        size.height * 0.4812632,
        size.width * 0.04147528,
        size.height * 0.4756280);
    path_3.lineTo(size.width * 0.04133011, size.height * 0.4756991);
    path_3.cubicTo(
        size.width * 0.02518586,
        size.height * 0.4672017,
        size.width * 0.01556360,
        size.height * 0.4566956,
        size.width * 0.01247369,
        size.height * 0.4457896);
    path_3.cubicTo(
        size.width * 0.01241148,
        size.height * 0.4455673,
        size.width * 0.01235963,
        size.height * 0.4453540,
        size.width * 0.01230779,
        size.height * 0.4451318);
    path_3.cubicTo(
        size.width * 0.01225594,
        size.height * 0.4449540,
        size.width * 0.01222484,
        size.height * 0.4447763,
        size.width * 0.01218336,
        size.height * 0.4445896);
    path_3.cubicTo(
        size.width * 0.01171677,
        size.height * 0.4425008,
        size.width * 0.01147828,
        size.height * 0.4403765,
        size.width * 0.01149902,
        size.height * 0.4382433);
    path_3.cubicTo(
        size.width * 0.01151976,
        size.height * 0.4346435,
        size.width * 0.01226631,
        size.height * 0.4310526,
        size.width * 0.01363500,
        size.height * 0.4276394);
    path_3.cubicTo(
        size.width * 0.01497257,
        size.height * 0.4242263,
        size.width * 0.01696339,
        size.height * 0.4210087,
        size.width * 0.01931711,
        size.height * 0.4180044);
    path_3.cubicTo(
        size.width * 0.02168120,
        size.height * 0.4150179,
        size.width * 0.02443931,
        size.height * 0.4122447,
        size.width * 0.02746700,
        size.height * 0.4097026);
    path_3.cubicTo(
        size.width * 0.03045322,
        size.height * 0.4071338,
        size.width * 0.03376087,
        size.height * 0.4048317,
        size.width * 0.03716185,
        size.height * 0.4026541);
    path_3.cubicTo(
        size.width * 0.03708927,
        size.height * 0.4026896,
        size.width * 0.03702705,
        size.height * 0.4027341,
        size.width * 0.03695447,
        size.height * 0.4027696);
    path_3.cubicTo(
        size.width * 0.03889344,
        size.height * 0.4016141,
        size.width * 0.04091536,
        size.height * 0.4004853,
        size.width * 0.04308244,
        size.height * 0.3994009);
    path_3.lineTo(size.width * 0.03786693, size.height * 0.3965300);
    path_3.cubicTo(
        size.width * 0.03383346,
        size.height * 0.3985476,
        size.width * 0.03011105,
        size.height * 0.4007075,
        size.width * 0.02671008,
        size.height * 0.4029830);
    path_3.cubicTo(
        size.width * 0.02116276,
        size.height * 0.4064761,
        size.width * 0.01609241,
        size.height * 0.4106359,
        size.width * 0.01202783,
        size.height * 0.4155689);
    path_3.cubicTo(
        size.width * 0.009394150,
        size.height * 0.4187332,
        size.width * 0.007227067,
        size.height * 0.4222441,
        size.width * 0.005671744,
        size.height * 0.4259684);
    path_3.cubicTo(
        size.width * 0.004147528,
        size.height * 0.4297104,
        size.width * 0.003307653,
        size.height * 0.4336924,
        size.width * 0.003266178,
        size.height * 0.4376922);
    path_3.cubicTo(
        size.width * 0.003235071,
        size.height * 0.4416920,
        size.width * 0.004002364,
        size.height * 0.4456740,
        size.width * 0.005474736,
        size.height * 0.4494338);
    path_3.cubicTo(
        size.width * 0.006967846,
        size.height * 0.4531936,
        size.width * 0.009072717,
        size.height * 0.4567223,
        size.width * 0.01167529,
        size.height * 0.4599310);
    path_3.cubicTo(
        size.width * 0.01467188,
        size.height * 0.4636553,
        size.width * 0.01824912,
        size.height * 0.4669173,
        size.width * 0.02215817,
        size.height * 0.4698149);
    path_3.cubicTo(
        size.width * 0.02639901,
        size.height * 0.4731037,
        size.width * 0.03130346,
        size.height * 0.4761790,
        size.width * 0.03685078,
        size.height * 0.4790145);
    path_3.lineTo(size.width * 0.03700631, size.height * 0.4789345);
    path_3.cubicTo(
        size.width * 0.04653526,
        size.height * 0.4839653,
        size.width * 0.05122197,
        size.height * 0.4903294,
        size.width * 0.05110791,
        size.height * 0.4967024);
    path_3.cubicTo(
        size.width * 0.05110791,
        size.height * 0.4970313,
        size.width * 0.05107680,
        size.height * 0.4973690,
        size.width * 0.05104570,
        size.height * 0.4976979);
    path_3.cubicTo(
        size.width * 0.05104570,
        size.height * 0.4977690,
        size.width * 0.05104570,
        size.height * 0.4978312,
        size.width * 0.05103533,
        size.height * 0.4979023);
    path_3.cubicTo(
        size.width * 0.05067242,
        size.height * 0.5009155,
        size.width * 0.04917931,
        size.height * 0.5038309,
        size.width * 0.04698112,
        size.height * 0.5063730);
    path_3.cubicTo(
        size.width * 0.04464813,
        size.height * 0.5090751,
        size.width * 0.04159970,
        size.height * 0.5113861,
        size.width * 0.03830242,
        size.height * 0.5135015);
    path_3.cubicTo(
        size.width * 0.03737959,
        size.height * 0.5140348,
        size.width * 0.03642566,
        size.height * 0.5145592,
        size.width * 0.03539915,
        size.height * 0.5150659);
    path_3.lineTo(size.width * 0.03554431, size.height * 0.5151370);
    path_3.cubicTo(
        size.width * 0.03159379,
        size.height * 0.5171280,
        size.width * 0.02792323,
        size.height * 0.5192523,
        size.width * 0.02458447,
        size.height * 0.5214833);
    path_3.cubicTo(
        size.width * 0.01901641,
        size.height * 0.5249853,
        size.width * 0.01392532,
        size.height * 0.5291540,
        size.width * 0.009840009,
        size.height * 0.5341048);
    path_3.cubicTo(
        size.width * 0.007206329,
        size.height * 0.5372691,
        size.width * 0.005039246,
        size.height * 0.5407800,
        size.width * 0.003483923,
        size.height * 0.5445132);
    path_3.cubicTo(
        size.width * 0.001959707,
        size.height * 0.5482463,
        size.width * 0.001119832,
        size.height * 0.5522283,
        size.width * 0.001078357,
        size.height * 0.5562281);
    path_3.cubicTo(
        size.width * 0.001047251,
        size.height * 0.5602279,
        size.width * 0.001814543,
        size.height * 0.5642188,
        size.width * 0.003286916,
        size.height * 0.5679697);
    path_3.cubicTo(
        size.width * 0.004780026,
        size.height * 0.5717206,
        size.width * 0.006884896,
        size.height * 0.5752582,
        size.width * 0.009487469,
        size.height * 0.5784580);
    path_3.cubicTo(
        size.width * 0.01248406,
        size.height * 0.5821823,
        size.width * 0.01605093,
        size.height * 0.5854443,
        size.width * 0.01995998,
        size.height * 0.5883331);
    path_3.cubicTo(
        size.width * 0.02407640,
        size.height * 0.5915240,
        size.width * 0.02882532,
        size.height * 0.5945194,
        size.width * 0.03416526,
        size.height * 0.5972926);
    path_3.lineTo(size.width * 0.03397862, size.height * 0.5973815);
    path_3.lineTo(size.width * 0.1375113, size.height * 0.6486232);
    path_3.close();

    Paint paint_3_fill = Paint()..style = PaintingStyle.fill;
    paint_3_fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path_3, paint_3_fill);

    Path path_4 = Path();
    path_4.moveTo(size.width * 0.07722696, size.height * 0.08370220);
    path_4.cubicTo(
        size.width * 0.08003691,
        size.height * 0.08311557,
        size.width * 0.08286760,
        size.height * 0.08257337,
        size.width * 0.08570866,
        size.height * 0.08210229);
    path_4.cubicTo(
        size.width * 0.09820308,
        size.height * 0.08004906,
        size.width * 0.1109049,
        size.height * 0.07900912,
        size.width * 0.1236171,
        size.height * 0.07897357);
    path_4.cubicTo(
        size.width * 0.1363292,
        size.height * 0.07890246,
        size.width * 0.1490310,
        size.height * 0.07984463,
        size.width * 0.1615669,
        size.height * 0.08180008);
    path_4.cubicTo(
        size.width * 0.1678193,
        size.height * 0.08276892,
        size.width * 0.1740199,
        size.height * 0.08403107,
        size.width * 0.1801168,
        size.height * 0.08560432);
    path_4.cubicTo(
        size.width * 0.1806663,
        size.height * 0.08574654,
        size.width * 0.1812158,
        size.height * 0.08589764,
        size.width * 0.1817654,
        size.height * 0.08604874);
    path_4.cubicTo(
        size.width * 0.1888784,
        size.height * 0.08820863,
        size.width * 0.1956078,
        size.height * 0.09080405,
        size.width * 0.2017565,
        size.height * 0.09386166);
    path_4.lineTo(size.width * 0.2016839, size.height * 0.09389721);
    path_4.lineTo(size.width * 0.2124364, size.height * 0.09922137);
    path_4.cubicTo(
        size.width * 0.2186265,
        size.height * 0.1025368,
        size.width * 0.2248582,
        size.height * 0.1058077,
        size.width * 0.2311313,
        size.height * 0.1090075);
    path_4.cubicTo(
        size.width * 0.2349471,
        size.height * 0.1109807,
        size.width * 0.2387835,
        size.height * 0.1128918,
        size.width * 0.2426304,
        size.height * 0.1148472);
    path_4.lineTo(size.width * 0.2541709, size.height * 0.1206069);
    path_4.lineTo(size.width * 0.2657736, size.height * 0.1262955);
    path_4.cubicTo(
        size.width * 0.2696515,
        size.height * 0.1281709,
        size.width * 0.2735191,
        size.height * 0.1300731,
        size.width * 0.2774074,
        size.height * 0.1319219);
    path_4.cubicTo(
        size.width * 0.2837324,
        size.height * 0.1349528,
        size.width * 0.2901092,
        size.height * 0.1379215,
        size.width * 0.2965067,
        size.height * 0.1408369);
    path_4.lineTo(size.width * 0.3051025, size.height * 0.1450945);
    path_4.lineTo(size.width * 0.3049470, size.height * 0.1451745);
    path_4.lineTo(size.width * 0.3156580, size.height * 0.1504809);
    path_4.cubicTo(
        size.width * 0.3218689,
        size.height * 0.1538051,
        size.width * 0.3281109,
        size.height * 0.1570850,
        size.width * 0.3343944,
        size.height * 0.1602937);
    path_4.cubicTo(
        size.width * 0.3382101,
        size.height * 0.1622669,
        size.width * 0.3420466,
        size.height * 0.1641779,
        size.width * 0.3458831,
        size.height * 0.1661334);
    path_4.lineTo(size.width * 0.3574339, size.height * 0.1718931);
    path_4.lineTo(size.width * 0.3690366, size.height * 0.1775816);
    path_4.cubicTo(
        size.width * 0.3729146,
        size.height * 0.1794571,
        size.width * 0.3767821,
        size.height * 0.1813503,
        size.width * 0.3806704,
        size.height * 0.1831991);
    path_4.cubicTo(
        size.width * 0.3870058,
        size.height * 0.1862390,
        size.width * 0.3933826,
        size.height * 0.1892077,
        size.width * 0.3997905,
        size.height * 0.1921320);
    path_4.lineTo(size.width * 0.4084485, size.height * 0.1964162);
    path_4.lineTo(size.width * 0.4086974, size.height * 0.1962918);
    path_4.cubicTo(
        size.width * 0.4133944,
        size.height * 0.1985761,
        size.width * 0.4187344,
        size.height * 0.2004160,
        size.width * 0.4245098,
        size.height * 0.2017848);
    path_4.cubicTo(
        size.width * 0.4210674,
        size.height * 0.2010826,
        size.width * 0.4176664,
        size.height * 0.2002471,
        size.width * 0.4143276,
        size.height * 0.1992072);
    path_4.cubicTo(
        size.width * 0.4199994,
        size.height * 0.2016515,
        size.width * 0.4261585,
        size.height * 0.2032869,
        size.width * 0.4324109,
        size.height * 0.2043447);
    path_4.cubicTo(
        size.width * 0.4355422,
        size.height * 0.2048869,
        size.width * 0.4387151,
        size.height * 0.2052424,
        size.width * 0.4419087,
        size.height * 0.2054913);
    path_4.cubicTo(
        size.width * 0.4450816,
        size.height * 0.2057312,
        size.width * 0.4482855,
        size.height * 0.2058290,
        size.width * 0.4514791,
        size.height * 0.2058201);
    path_4.cubicTo(
        size.width * 0.4546831,
        size.height * 0.2057846,
        size.width * 0.4578663,
        size.height * 0.2056424,
        size.width * 0.4610392,
        size.height * 0.2053490);
    path_4.cubicTo(
        size.width * 0.4642120,
        size.height * 0.2050380,
        size.width * 0.4673745,
        size.height * 0.2046202,
        size.width * 0.4704955,
        size.height * 0.2040158);
    path_4.cubicTo(
        size.width * 0.4767272,
        size.height * 0.2028247,
        size.width * 0.4828241,
        size.height * 0.2010204,
        size.width * 0.4884128,
        size.height * 0.1984250);
    path_4.cubicTo(
        size.width * 0.4871582,
        size.height * 0.1988516,
        size.width * 0.4858932,
        size.height * 0.1992427,
        size.width * 0.4846179,
        size.height * 0.1996249);
    path_4.cubicTo(
        size.width * 0.4878633,
        size.height * 0.1985316,
        size.width * 0.4909532,
        size.height * 0.1972695,
        size.width * 0.4938565,
        size.height * 0.1958296);
    path_4.lineTo(size.width * 0.4938150, size.height * 0.1958118);
    path_4.lineTo(size.width * 0.5014050, size.height * 0.1920609);
    path_4.cubicTo(
        size.width * 0.5078129,
        size.height * 0.1891366,
        size.width * 0.5141897,
        size.height * 0.1861678,
        size.width * 0.5205251,
        size.height * 0.1831280);
    path_4.cubicTo(
        size.width * 0.5244238,
        size.height * 0.1812792,
        size.width * 0.5282913,
        size.height * 0.1793860,
        size.width * 0.5321693,
        size.height * 0.1775105);
    path_4.lineTo(size.width * 0.5437720, size.height * 0.1718219);
    path_4.lineTo(size.width * 0.5553228, size.height * 0.1660623);
    path_4.cubicTo(
        size.width * 0.5591593,
        size.height * 0.1641068,
        size.width * 0.5629958,
        size.height * 0.1621869,
        size.width * 0.5668115,
        size.height * 0.1602226);
    path_4.cubicTo(
        size.width * 0.5730950,
        size.height * 0.1570138,
        size.width * 0.5793370,
        size.height * 0.1537340,
        size.width * 0.5855479,
        size.height * 0.1504098);
    path_4.lineTo(size.width * 0.5962589, size.height * 0.1451034);
    path_4.lineTo(size.width * 0.5907323, size.height * 0.1423480);
    path_4.lineTo(size.width * 0.5414390, size.height * 0.1667467);
    path_4.lineTo(size.width * 0.5396970, size.height * 0.1676000);
    path_4.lineTo(size.width * 0.5379136, size.height * 0.1684888);
    path_4.lineTo(size.width * 0.4874174, size.height * 0.1934830);
    path_4.cubicTo(
        size.width * 0.4714806,
        size.height * 0.2010382,
        size.width * 0.4487729,
        size.height * 0.2028603,
        size.width * 0.4298498,
        size.height * 0.1987538);
    path_4.cubicTo(
        size.width * 0.4293935,
        size.height * 0.1986561,
        size.width * 0.4289477,
        size.height * 0.1985583,
        size.width * 0.4284914,
        size.height * 0.1984516);
    path_4.cubicTo(
        size.width * 0.4281596,
        size.height * 0.1983716,
        size.width * 0.4278278,
        size.height * 0.1982916,
        size.width * 0.4274960,
        size.height * 0.1982028);
    path_4.cubicTo(
        size.width * 0.4250075,
        size.height * 0.1975717,
        size.width * 0.4225294,
        size.height * 0.1968339,
        size.width * 0.4201031,
        size.height * 0.1959629);
    path_4.cubicTo(
        size.width * 0.4201342,
        size.height * 0.1959807,
        size.width * 0.4201756,
        size.height * 0.1959984,
        size.width * 0.4202171,
        size.height * 0.1960162);
    path_4.cubicTo(
        size.width * 0.4179671,
        size.height * 0.1952074,
        size.width * 0.4158207,
        size.height * 0.1943007,
        size.width * 0.4137885,
        size.height * 0.1932875);
    path_4.lineTo(size.width * 0.4135189, size.height * 0.1934208);
    path_4.lineTo(size.width * 0.3627635, size.height * 0.1682932);
    path_4.lineTo(size.width * 0.3615089, size.height * 0.1676622);
    path_4.lineTo(size.width * 0.3602853, size.height * 0.1670578);
    path_4.lineTo(size.width * 0.3105772, size.height * 0.1424546);
    path_4.lineTo(size.width * 0.3107328, size.height * 0.1423746);
    path_4.lineTo(size.width * 0.2598530, size.height * 0.1171937);
    path_4.lineTo(size.width * 0.2582458, size.height * 0.1163849);
    path_4.lineTo(size.width * 0.2566179, size.height * 0.1155849);
    path_4.lineTo(size.width * 0.2073764, size.height * 0.09121291);
    path_4.lineTo(size.width * 0.2074801, size.height * 0.09115958);
    path_4.cubicTo(
        size.width * 0.2017254,
        size.height * 0.08828862,
        size.width * 0.1954626,
        size.height * 0.08576431,
        size.width * 0.1887540,
        size.height * 0.08358665);
    path_4.cubicTo(
        size.width * 0.1861618,
        size.height * 0.08268892,
        size.width * 0.1835488,
        size.height * 0.08185341,
        size.width * 0.1808944,
        size.height * 0.08107123);
    path_4.cubicTo(
        size.width * 0.1748079,
        size.height * 0.07934688,
        size.width * 0.1686074,
        size.height * 0.07795140,
        size.width * 0.1623342,
        size.height * 0.07682257);
    path_4.cubicTo(
        size.width * 0.1497880,
        size.height * 0.07459158,
        size.width * 0.1369514,
        size.height * 0.07360496,
        size.width * 0.1241251,
        size.height * 0.07363163);
    path_4.cubicTo(
        size.width * 0.1112989,
        size.height * 0.07370274,
        size.width * 0.09846230,
        size.height * 0.07479601,
        size.width * 0.08593677,
        size.height * 0.07715144);
    path_4.cubicTo(
        size.width * 0.07969474,
        size.height * 0.07832471,
        size.width * 0.07349419,
        size.height * 0.07978241,
        size.width * 0.06743880,
        size.height * 0.08156898);
    path_4.cubicTo(
        size.width * 0.06248250,
        size.height * 0.08307113,
        size.width * 0.05761953,
        size.height * 0.08477770,
        size.width * 0.05290171,
        size.height * 0.08675093);
    path_4.cubicTo(
        size.width * 0.04942816,
        size.height * 0.08811974,
        size.width * 0.04607903,
        size.height * 0.08958633,
        size.width * 0.04290617,
        size.height * 0.09115958);
    path_4.lineTo(size.width * 0.04846386, size.height * 0.09391499);
    path_4.cubicTo(
        size.width * 0.05711145,
        size.height * 0.08963966,
        size.width * 0.06685814,
        size.height * 0.08624429,
        size.width * 0.07724770,
        size.height * 0.08371109);
    path_4.close();

    Paint paint_4_fill = Paint()..style = PaintingStyle.fill;
    paint_4_fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path_4, paint_4_fill);

    Path path_5 = Path();
    path_5.moveTo(size.width * 0.6976867, size.height * 0.2931933);
    path_5.cubicTo(
        size.width * 0.6927408,
        size.height * 0.2946954,
        size.width * 0.6878778,
        size.height * 0.2963931,
        size.width * 0.6831704,
        size.height * 0.2983663);
    path_5.cubicTo(
        size.width * 0.6796864,
        size.height * 0.2997351,
        size.width * 0.6763373,
        size.height * 0.3012017,
        size.width * 0.6731541,
        size.height * 0.3027839);
    path_5.lineTo(size.width * 0.6787118, size.height * 0.3055393);
    path_5.cubicTo(
        size.width * 0.6873594,
        size.height * 0.3012550,
        size.width * 0.6971164,
        size.height * 0.2978686,
        size.width * 0.7075060,
        size.height * 0.2953265);
    path_5.cubicTo(
        size.width * 0.7103159,
        size.height * 0.2947398,
        size.width * 0.7131363,
        size.height * 0.2941976,
        size.width * 0.7159773,
        size.height * 0.2937354);
    path_5.cubicTo(
        size.width * 0.7284614,
        size.height * 0.2916822,
        size.width * 0.7411735,
        size.height * 0.2906423,
        size.width * 0.7538753,
        size.height * 0.2905978);
    path_5.cubicTo(
        size.width * 0.7665875,
        size.height * 0.2905267,
        size.width * 0.7792997,
        size.height * 0.2914689,
        size.width * 0.7918356,
        size.height * 0.2934244);
    path_5.cubicTo(
        size.width * 0.7980776,
        size.height * 0.2943932,
        size.width * 0.8042782,
        size.height * 0.2956553,
        size.width * 0.8103854,
        size.height * 0.2972286);
    path_5.cubicTo(
        size.width * 0.8109350,
        size.height * 0.2973619,
        size.width * 0.8114741,
        size.height * 0.2975219,
        size.width * 0.8120237,
        size.height * 0.2976641);
    path_5.cubicTo(
        size.width * 0.8191885,
        size.height * 0.2998418,
        size.width * 0.8259697,
        size.height * 0.3024550,
        size.width * 0.8321496,
        size.height * 0.3055393);
    path_5.lineTo(size.width * 0.8377280, size.height * 0.3027839);
    path_5.cubicTo(
        size.width * 0.8319629,
        size.height * 0.2999129,
        size.width * 0.8256898,
        size.height * 0.2973886,
        size.width * 0.8189812,
        size.height * 0.2952109);
    path_5.cubicTo(
        size.width * 0.8163993,
        size.height * 0.2943221,
        size.width * 0.8137864,
        size.height * 0.2934777,
        size.width * 0.8111423,
        size.height * 0.2927044);
    path_5.cubicTo(
        size.width * 0.8050558,
        size.height * 0.2909800,
        size.width * 0.7988553,
        size.height * 0.2895846,
        size.width * 0.7925821,
        size.height * 0.2884468);
    path_5.cubicTo(
        size.width * 0.7800359,
        size.height * 0.2862158,
        size.width * 0.7671993,
        size.height * 0.2852292,
        size.width * 0.7543730,
        size.height * 0.2852559);
    path_5.cubicTo(
        size.width * 0.7415468,
        size.height * 0.2853270,
        size.width * 0.7287102,
        size.height * 0.2864203,
        size.width * 0.7161847,
        size.height * 0.2887757);
    path_5.cubicTo(
        size.width * 0.7099530,
        size.height * 0.2899490,
        size.width * 0.7037421,
        size.height * 0.2914067,
        size.width * 0.6976867,
        size.height * 0.2931933);
    path_5.close();

    Paint paint_5_fill = Paint()..style = PaintingStyle.fill;
    paint_5_fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path_5, paint_5_fill);

    Path path_6 = Path();
    path_6.moveTo(size.width * 0.2615949, size.height * 0.1573338);
    path_6.cubicTo(
        size.width * 0.2546375,
        size.height * 0.1535385,
        size.width * 0.2476074,
        size.height * 0.1498498,
        size.width * 0.2405255,
        size.height * 0.1462233);
    path_6.cubicTo(
        size.width * 0.2369897,
        size.height * 0.1443923,
        size.width * 0.2334332,
        size.height * 0.1425968,
        size.width * 0.2298767,
        size.height * 0.1407925);
    path_6.lineTo(size.width * 0.2191761, size.height * 0.1354506);
    path_6.lineTo(size.width * 0.2084133, size.height * 0.1301708);
    path_6.cubicTo(
        size.width * 0.2048256,
        size.height * 0.1284376,
        size.width * 0.2012380,
        size.height * 0.1266777,
        size.width * 0.1976090,
        size.height * 0.1249711);
    path_6.cubicTo(
        size.width * 0.1904026,
        size.height * 0.1215224,
        size.width * 0.1831341,
        size.height * 0.1181537,
        size.width * 0.1758137,
        size.height * 0.1148650);
    path_6.lineTo(size.width * 0.1676534, size.height * 0.1108296);
    path_6.lineTo(size.width * 0.1676016, size.height * 0.1108563);
    path_6.cubicTo(
        size.width * 0.1590473,
        size.height * 0.1066076,
        size.width * 0.1483363,
        size.height * 0.1038522,
        size.width * 0.1367129,
        size.height * 0.1027412);
    path_6.cubicTo(
        size.width * 0.1358834,
        size.height * 0.1026523,
        size.width * 0.1350642,
        size.height * 0.1025723,
        size.width * 0.1342347,
        size.height * 0.1025012);
    path_6.cubicTo(
        size.width * 0.1311137,
        size.height * 0.1022434,
        size.width * 0.1279720,
        size.height * 0.1021190,
        size.width * 0.1248406,
        size.height * 0.1021101);
    path_6.cubicTo(
        size.width * 0.1217092,
        size.height * 0.1021279,
        size.width * 0.1185778,
        size.height * 0.1022434,
        size.width * 0.1154568,
        size.height * 0.1024923);
    path_6.cubicTo(
        size.width * 0.1130927,
        size.height * 0.1026967,
        size.width * 0.1107390,
        size.height * 0.1029634,
        size.width * 0.1083956,
        size.height * 0.1033189);
    path_6.cubicTo(
        size.width * 0.09877337,
        size.height * 0.1046611,
        size.width * 0.08991840,
        size.height * 0.1072209,
        size.width * 0.08228695,
        size.height * 0.1109896);
    path_6.lineTo(size.width * 0.08783426, size.height * 0.1137539);
    path_6.cubicTo(
        size.width * 0.09200253,
        size.height * 0.1116918,
        size.width * 0.09667887,
        size.height * 0.1100386,
        size.width * 0.1016352,
        size.height * 0.1088031);
    path_6.cubicTo(
        size.width * 0.1032734,
        size.height * 0.1085009,
        size.width * 0.1049117,
        size.height * 0.1082253,
        size.width * 0.1065707,
        size.height * 0.1079942);
    path_6.cubicTo(
        size.width * 0.1096192,
        size.height * 0.1075854,
        size.width * 0.1126780,
        size.height * 0.1072476,
        size.width * 0.1157575,
        size.height * 0.1070610);
    path_6.cubicTo(
        size.width * 0.1188370,
        size.height * 0.1068565,
        size.width * 0.1219373,
        size.height * 0.1067499,
        size.width * 0.1250065,
        size.height * 0.1067676);
    path_6.cubicTo(
        size.width * 0.1281068,
        size.height * 0.1067499,
        size.width * 0.1311863,
        size.height * 0.1068654,
        size.width * 0.1342555,
        size.height * 0.1070698);
    path_6.cubicTo(
        size.width * 0.1373350,
        size.height * 0.1072565,
        size.width * 0.1404042,
        size.height * 0.1075943,
        size.width * 0.1434526,
        size.height * 0.1080031);
    path_6.cubicTo(
        size.width * 0.1455886,
        size.height * 0.1082964,
        size.width * 0.1477246,
        size.height * 0.1086786,
        size.width * 0.1498398,
        size.height * 0.1090875);
    path_6.cubicTo(
        size.width * 0.1542258,
        size.height * 0.1102697,
        size.width * 0.1583630,
        size.height * 0.1117807,
        size.width * 0.1620854,
        size.height * 0.1136384);
    path_6.lineTo(size.width * 0.1621580, size.height * 0.1136028);
    path_6.lineTo(size.width * 0.2655558, size.height * 0.1647734);
    path_6.lineTo(size.width * 0.2653899, size.height * 0.1648534);
    path_6.lineTo(size.width * 0.3682486, size.height * 0.2157574);
    path_6.lineTo(size.width * 0.3682175, size.height * 0.2157752);
    path_6.cubicTo(
        size.width * 0.3766473,
        size.height * 0.2199794,
        size.width * 0.3861556,
        size.height * 0.2234547,
        size.width * 0.3965762,
        size.height * 0.2261657);
    path_6.cubicTo(
        size.width * 0.4034507,
        size.height * 0.2282634,
        size.width * 0.4105430,
        size.height * 0.2298900,
        size.width * 0.4177286,
        size.height * 0.2310721);
    path_6.cubicTo(
        size.width * 0.4284914,
        size.height * 0.2328498,
        size.width * 0.4394617,
        size.height * 0.2336764,
        size.width * 0.4504111,
        size.height * 0.2336853);
    path_6.cubicTo(
        size.width * 0.4558962,
        size.height * 0.2336675,
        size.width * 0.4613710,
        size.height * 0.2334542,
        size.width * 0.4668353,
        size.height * 0.2330276);
    path_6.cubicTo(
        size.width * 0.4722893,
        size.height * 0.2325743,
        size.width * 0.4777226,
        size.height * 0.2319432,
        size.width * 0.4830936,
        size.height * 0.2310277);
    path_6.cubicTo(
        size.width * 0.4888172,
        size.height * 0.2300855,
        size.width * 0.4944786,
        size.height * 0.2288589,
        size.width * 0.5000156,
        size.height * 0.2273390);
    path_6.cubicTo(
        size.width * 0.5123337,
        size.height * 0.2244947,
        size.width * 0.5234802,
        size.height * 0.2206193,
        size.width * 0.5332269,
        size.height * 0.2157929);
    path_6.lineTo(size.width * 0.5330195, size.height * 0.2156863);
    path_6.lineTo(size.width * 0.6358574, size.height * 0.1647912);
    path_6.lineTo(size.width * 0.6303101, size.height * 0.1620269);
    path_6.lineTo(size.width * 0.6220669, size.height * 0.1661067);
    path_6.cubicTo(
        size.width * 0.6147673,
        size.height * 0.1693776,
        size.width * 0.6075298,
        size.height * 0.1727286,
        size.width * 0.6003546,
        size.height * 0.1761684);
    path_6.cubicTo(
        size.width * 0.5967255,
        size.height * 0.1778838,
        size.width * 0.5931483,
        size.height * 0.1796438,
        size.width * 0.5895503,
        size.height * 0.1813681);
    path_6.lineTo(size.width * 0.5787875, size.height * 0.1866478);
    path_6.lineTo(size.width * 0.5680868, size.height * 0.1919898);
    path_6.cubicTo(
        size.width * 0.5645303,
        size.height * 0.1937941,
        size.width * 0.5609635,
        size.height * 0.1955807,
        size.width * 0.5574381,
        size.height * 0.1974206);
    path_6.cubicTo(
        size.width * 0.5503562,
        size.height * 0.2010382,
        size.width * 0.5433261,
        size.height * 0.2047357,
        size.width * 0.5363686,
        size.height * 0.2085222);
    path_6.lineTo(size.width * 0.5267878, size.height * 0.2132686);
    path_6.lineTo(size.width * 0.5269641, size.height * 0.2133575);
    path_6.cubicTo(
        size.width * 0.5117634,
        size.height * 0.2207527,
        size.width * 0.4932758,
        size.height * 0.2254813,
        size.width * 0.4738550,
        size.height * 0.2275701);
    path_6.cubicTo(
        size.width * 0.4715946,
        size.height * 0.2278012,
        size.width * 0.4693342,
        size.height * 0.2280056,
        size.width * 0.4670738,
        size.height * 0.2281567);
    path_6.cubicTo(
        size.width * 0.4616613,
        size.height * 0.2285478,
        size.width * 0.4562280,
        size.height * 0.2287434,
        size.width * 0.4507948,
        size.height * 0.2287345);
    path_6.cubicTo(
        size.width * 0.4453615,
        size.height * 0.2287522,
        size.width * 0.4399386,
        size.height * 0.2285567,
        size.width * 0.4345365,
        size.height * 0.2281834);
    path_6.cubicTo(
        size.width * 0.4324005,
        size.height * 0.2280412,
        size.width * 0.4302541,
        size.height * 0.2278545,
        size.width * 0.4281182,
        size.height * 0.2276501);
    path_6.cubicTo(
        size.width * 0.4081789,
        size.height * 0.2255702,
        size.width * 0.3892144,
        size.height * 0.2206993,
        size.width * 0.3738063,
        size.height * 0.2130198);
    path_6.lineTo(size.width * 0.3738063, size.height * 0.2130198);
    path_6.cubicTo(
        size.width * 0.3738063,
        size.height * 0.2130198,
        size.width * 0.3647958,
        size.height * 0.2085578,
        size.width * 0.3647958,
        size.height * 0.2085578);
    path_6.cubicTo(
        size.width * 0.3578590,
        size.height * 0.2047802,
        size.width * 0.3508601,
        size.height * 0.2011004,
        size.width * 0.3438093,
        size.height * 0.1975006);
    path_6.cubicTo(
        size.width * 0.3402735,
        size.height * 0.1956607,
        size.width * 0.3367067,
        size.height * 0.1938741,
        size.width * 0.3331605,
        size.height * 0.1920698);
    path_6.lineTo(size.width * 0.3224599, size.height * 0.1867278);
    path_6.lineTo(size.width * 0.3116971, size.height * 0.1814481);
    path_6.cubicTo(
        size.width * 0.3080991,
        size.height * 0.1797149,
        size.width * 0.3045218,
        size.height * 0.1779550,
        size.width * 0.3008928,
        size.height * 0.1762484);
    path_6.cubicTo(
        size.width * 0.2937072,
        size.height * 0.1728086,
        size.width * 0.2864490,
        size.height * 0.1694487,
        size.width * 0.2791493,
        size.height * 0.1661689);
    path_6.lineTo(size.width * 0.2710202, size.height * 0.1621425);
    path_6.lineTo(size.width * 0.2711757, size.height * 0.1620625);
    path_6.lineTo(size.width * 0.2616053, size.height * 0.1573249);
    path_6.close();

    Paint paint_6_fill = Paint()..style = PaintingStyle.fill;
    paint_6_fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path_6, paint_6_fill);

    Path path_7 = Path();
    path_7.moveTo(size.width * 0.01654863, size.height * 0.1545695);
    path_7.cubicTo(
        size.width * 0.01955559,
        size.height * 0.1583027,
        size.width * 0.02315357,
        size.height * 0.1615825,
        size.width * 0.02708335,
        size.height * 0.1644801);
    path_7.cubicTo(
        size.width * 0.03086797,
        size.height * 0.1674133,
        size.width * 0.03518140,
        size.height * 0.1701687,
        size.width * 0.04001327,
        size.height * 0.1727463);
    path_7.lineTo(size.width * 0.03948446, size.height * 0.1730041);
    path_7.lineTo(size.width * 0.1413477, size.height * 0.2234192);
    path_7.lineTo(size.width * 0.1408189, size.height * 0.2236770);
    path_7.lineTo(size.width * 0.2433977, size.height * 0.2744476);
    path_7.lineTo(size.width * 0.2426822, size.height * 0.2748031);
    path_7.lineTo(size.width * 0.3462149, size.height * 0.3260448);
    path_7.lineTo(size.width * 0.3464430, size.height * 0.3259293);
    path_7.lineTo(size.width * 0.4496646, size.height * 0.3770110);
    path_7.lineTo(size.width * 0.4497268, size.height * 0.3769755);
    path_7.cubicTo(
        size.width * 0.4580115,
        size.height * 0.3810463,
        size.width * 0.4673123,
        size.height * 0.3844328,
        size.width * 0.4774945,
        size.height * 0.3870816);
    path_7.cubicTo(
        size.width * 0.4843690,
        size.height * 0.3891792,
        size.width * 0.4914613,
        size.height * 0.3908058,
        size.width * 0.4986365,
        size.height * 0.3919791);
    path_7.cubicTo(
        size.width * 0.5093993,
        size.height * 0.3937568,
        size.width * 0.5203695,
        size.height * 0.3945834,
        size.width * 0.5313190,
        size.height * 0.3945923);
    path_7.cubicTo(
        size.width * 0.5368041,
        size.height * 0.3945745,
        size.width * 0.5422789,
        size.height * 0.3943612,
        size.width * 0.5477432,
        size.height * 0.3939345);
    path_7.cubicTo(
        size.width * 0.5531972,
        size.height * 0.3934812,
        size.width * 0.5586305,
        size.height * 0.3928413,
        size.width * 0.5640015,
        size.height * 0.3919347);
    path_7.cubicTo(
        size.width * 0.5697355,
        size.height * 0.3909925,
        size.width * 0.5754072,
        size.height * 0.3897570,
        size.width * 0.5809649,
        size.height * 0.3882371);
    path_7.cubicTo(
        size.width * 0.5932623,
        size.height * 0.3853928,
        size.width * 0.6044088,
        size.height * 0.3815174,
        size.width * 0.6141451,
        size.height * 0.3766999);
    path_7.lineTo(size.width * 0.6085875, size.height * 0.3739356);
    path_7.cubicTo(
        size.width * 0.5932105,
        size.height * 0.3815441,
        size.width * 0.5743807,
        size.height * 0.3863883,
        size.width * 0.5546074,
        size.height * 0.3884948);
    path_7.cubicTo(
        size.width * 0.5523988,
        size.height * 0.3887170,
        size.width * 0.5501903,
        size.height * 0.3889126,
        size.width * 0.5479817,
        size.height * 0.3890637);
    path_7.cubicTo(
        size.width * 0.5425692,
        size.height * 0.3894548,
        size.width * 0.5371359,
        size.height * 0.3896503,
        size.width * 0.5317027,
        size.height * 0.3896414);
    path_7.cubicTo(
        size.width * 0.5262694,
        size.height * 0.3896592,
        size.width * 0.5208465,
        size.height * 0.3894637,
        size.width * 0.5154444,
        size.height * 0.3890904);
    path_7.cubicTo(
        size.width * 0.5133602,
        size.height * 0.3889570,
        size.width * 0.5112761,
        size.height * 0.3887704,
        size.width * 0.5092023,
        size.height * 0.3885748);
    path_7.cubicTo(
        size.width * 0.4892009,
        size.height * 0.3865038,
        size.width * 0.4701741,
        size.height * 0.3816330,
        size.width * 0.4547142,
        size.height * 0.3739267);
    path_7.lineTo(size.width * 0.4546209, size.height * 0.3739712);
    path_7.lineTo(size.width * 0.4456000, size.height * 0.3695092);
    path_7.cubicTo(
        size.width * 0.4386425,
        size.height * 0.3657227,
        size.width * 0.4316125,
        size.height * 0.3620251,
        size.width * 0.4245409,
        size.height * 0.3584076);
    path_7.cubicTo(
        size.width * 0.4210155,
        size.height * 0.3565676,
        size.width * 0.4174383,
        size.height * 0.3547811,
        size.width * 0.4138921,
        size.height * 0.3529767);
    path_7.lineTo(size.width * 0.4031915, size.height * 0.3476348);
    path_7.lineTo(size.width * 0.3924287, size.height * 0.3423551);
    path_7.cubicTo(
        size.width * 0.3888307,
        size.height * 0.3406218,
        size.width * 0.3852535,
        size.height * 0.3388619,
        size.width * 0.3816244,
        size.height * 0.3371554);
    path_7.cubicTo(
        size.width * 0.3744284,
        size.height * 0.3337066,
        size.width * 0.3671702,
        size.height * 0.3303468,
        size.width * 0.3598602,
        size.height * 0.3270670);
    path_7.lineTo(size.width * 0.3516689, size.height * 0.3230139);
    path_7.lineTo(size.width * 0.3514407, size.height * 0.3231294);
    path_7.lineTo(size.width * 0.3421918, size.height * 0.3185519);
    path_7.cubicTo(
        size.width * 0.3352239,
        size.height * 0.3147565,
        size.width * 0.3281939,
        size.height * 0.3110590,
        size.width * 0.3211016,
        size.height * 0.3074325);
    path_7.cubicTo(
        size.width * 0.3175762,
        size.height * 0.3056015,
        size.width * 0.3139989,
        size.height * 0.3038060,
        size.width * 0.3104528,
        size.height * 0.3020017);
    path_7.lineTo(size.width * 0.2997522, size.height * 0.2966597);
    path_7.lineTo(size.width * 0.2889894, size.height * 0.2913800);
    path_7.cubicTo(
        size.width * 0.2854017,
        size.height * 0.2896468,
        size.width * 0.2818141,
        size.height * 0.2878869,
        size.width * 0.2781850,
        size.height * 0.2861803);
    path_7.cubicTo(
        size.width * 0.2710098,
        size.height * 0.2827405,
        size.width * 0.2637724,
        size.height * 0.2793895,
        size.width * 0.2564727,
        size.height * 0.2761186);
    path_7.lineTo(size.width * 0.2491731, size.height * 0.2725099);
    path_7.lineTo(size.width * 0.2498782, size.height * 0.2721544);
    path_7.lineTo(size.width * 0.2402248, size.height * 0.2673813);
    path_7.cubicTo(
        size.width * 0.2332881,
        size.height * 0.2636037,
        size.width * 0.2262891,
        size.height * 0.2599239,
        size.width * 0.2192279,
        size.height * 0.2563152);
    path_7.cubicTo(
        size.width * 0.2157025,
        size.height * 0.2544842,
        size.width * 0.2121253,
        size.height * 0.2526887,
        size.width * 0.2085792,
        size.height * 0.2508844);
    path_7.lineTo(size.width * 0.1978785, size.height * 0.2455425);
    path_7.lineTo(size.width * 0.1871157, size.height * 0.2402627);
    path_7.cubicTo(
        size.width * 0.1835281,
        size.height * 0.2385295,
        size.width * 0.1799405,
        size.height * 0.2367696,
        size.width * 0.1763114,
        size.height * 0.2350630);
    path_7.cubicTo(
        size.width * 0.1691362,
        size.height * 0.2316232,
        size.width * 0.1618884,
        size.height * 0.2282723,
        size.width * 0.1545991,
        size.height * 0.2249924);
    path_7.lineTo(size.width * 0.1480253, size.height * 0.2217393);
    path_7.lineTo(size.width * 0.1485333, size.height * 0.2214815);
    path_7.lineTo(size.width * 0.1389318, size.height * 0.2167262);
    path_7.cubicTo(
        size.width * 0.1319847,
        size.height * 0.2129398,
        size.width * 0.1249650,
        size.height * 0.2092511,
        size.width * 0.1178831,
        size.height * 0.2056335);
    path_7.cubicTo(
        size.width * 0.1143577,
        size.height * 0.2038025,
        size.width * 0.1107805,
        size.height * 0.2020070,
        size.width * 0.1072343,
        size.height * 0.2002027);
    path_7.lineTo(size.width * 0.09653370, size.height * 0.1948607);
    path_7.lineTo(size.width * 0.08577087, size.height * 0.1895810);
    path_7.cubicTo(
        size.width * 0.08218326,
        size.height * 0.1878478,
        size.width * 0.07859565,
        size.height * 0.1860879,
        size.width * 0.07496656,
        size.height * 0.1843813);
    path_7.cubicTo(
        size.width * 0.06777060,
        size.height * 0.1809326,
        size.width * 0.06051243,
        size.height * 0.1775728,
        size.width * 0.05320241,
        size.height * 0.1742929);
    path_7.lineTo(size.width * 0.04676337, size.height * 0.1711020);
    path_7.lineTo(size.width * 0.04722997, size.height * 0.1708620);
    path_7.cubicTo(
        size.width * 0.03044285,
        size.height * 0.1622758,
        size.width * 0.02049915,
        size.height * 0.1515475,
        size.width * 0.01734703,
        size.height * 0.1404103);
    path_7.cubicTo(
        size.width * 0.01728482,
        size.height * 0.1401703,
        size.width * 0.01721224,
        size.height * 0.1399303,
        size.width * 0.01716040,
        size.height * 0.1396814);
    path_7.cubicTo(
        size.width * 0.01712929,
        size.height * 0.1395570,
        size.width * 0.01710855,
        size.height * 0.1394326,
        size.width * 0.01707744,
        size.height * 0.1393081);
    path_7.cubicTo(
        size.width * 0.01660048,
        size.height * 0.1371838,
        size.width * 0.01635163,
        size.height * 0.1350239,
        size.width * 0.01637237,
        size.height * 0.1328551);
    path_7.cubicTo(
        size.width * 0.01639310,
        size.height * 0.1292553,
        size.width * 0.01713966,
        size.height * 0.1256644,
        size.width * 0.01850834,
        size.height * 0.1222513);
    path_7.cubicTo(
        size.width * 0.01984592,
        size.height * 0.1188381,
        size.width * 0.02183673,
        size.height * 0.1156205,
        size.width * 0.02419045,
        size.height * 0.1126162);
    path_7.cubicTo(
        size.width * 0.02655455,
        size.height * 0.1096297,
        size.width * 0.02931265,
        size.height * 0.1068565,
        size.width * 0.03234035,
        size.height * 0.1043144);
    path_7.cubicTo(
        size.width * 0.03532657,
        size.height * 0.1017457,
        size.width * 0.03863422,
        size.height * 0.09944359,
        size.width * 0.04203519,
        size.height * 0.09726592);
    path_7.cubicTo(
        size.width * 0.04196261,
        size.height * 0.09731037,
        size.width * 0.04187966,
        size.height * 0.09735481,
        size.width * 0.04180708,
        size.height * 0.09739036);
    path_7.cubicTo(
        size.width * 0.04375642,
        size.height * 0.09623487,
        size.width * 0.04578870,
        size.height * 0.09509715,
        size.width * 0.04795579,
        size.height * 0.09401276);
    path_7.lineTo(size.width * 0.04274027, size.height * 0.09114181);
    path_7.cubicTo(
        size.width * 0.03870680,
        size.height * 0.09316836,
        size.width * 0.03497403,
        size.height * 0.09531936,
        size.width * 0.03157305,
        size.height * 0.09760368);
    path_7.cubicTo(
        size.width * 0.02602574,
        size.height * 0.1010968,
        size.width * 0.02095538,
        size.height * 0.1052566,
        size.width * 0.01689081,
        size.height * 0.1101897);
    path_7.cubicTo(
        size.width * 0.01425713,
        size.height * 0.1133540,
        size.width * 0.01209004,
        size.height * 0.1168649,
        size.width * 0.01053472,
        size.height * 0.1205891);
    path_7.cubicTo(
        size.width * 0.009010504,
        size.height * 0.1243311,
        size.width * 0.008170629,
        size.height * 0.1283132,
        size.width * 0.008129154,
        size.height * 0.1323129);
    path_7.cubicTo(
        size.width * 0.008098048,
        size.height * 0.1363127,
        size.width * 0.008865340,
        size.height * 0.1402947,
        size.width * 0.01033771,
        size.height * 0.1440545);
    path_7.cubicTo(
        size.width * 0.01183082,
        size.height * 0.1478055,
        size.width * 0.01393569,
        size.height * 0.1513342,
        size.width * 0.01653827,
        size.height * 0.1545429);
    path_7.close();

    Paint paint_7_fill = Paint()..style = PaintingStyle.fill;
    paint_7_fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path_7, paint_7_fill);

    Path path_8 = Path();
    path_8.moveTo(size.width * 0.6059123, size.height * 0.1409169);
    path_8.cubicTo(
        size.width * 0.6123202,
        size.height * 0.1379926,
        size.width * 0.6186971,
        size.height * 0.1350239,
        size.width * 0.6250324,
        size.height * 0.1319930);
    path_8.cubicTo(
        size.width * 0.6289207,
        size.height * 0.1301442,
        size.width * 0.6327986,
        size.height * 0.1282509,
        size.width * 0.6366662,
        size.height * 0.1263666);
    path_8.lineTo(size.width * 0.6482689, size.height * 0.1206780);
    path_8.lineTo(size.width * 0.6598094, size.height * 0.1149183);
    path_8.cubicTo(
        size.width * 0.6636459,
        size.height * 0.1129629,
        size.width * 0.6674823,
        size.height * 0.1110430,
        size.width * 0.6713084,
        size.height * 0.1090786);
    path_8.cubicTo(
        size.width * 0.6775919,
        size.height * 0.1058699,
        size.width * 0.6838443,
        size.height * 0.1025901,
        size.width * 0.6900449,
        size.height * 0.09926582);
    path_8.lineTo(size.width * 0.7007559, size.height * 0.09396832);
    path_8.lineTo(size.width * 0.6952293, size.height * 0.09120402);
    path_8.lineTo(size.width * 0.6455523, size.height * 0.1157894);
    path_8.lineTo(size.width * 0.6441940, size.height * 0.1164560);
    path_8.lineTo(size.width * 0.6428875, size.height * 0.1171049);
    path_8.lineTo(size.width * 0.5917070, size.height * 0.1424368);
    path_8.lineTo(size.width * 0.5972440, size.height * 0.1451923);
    path_8.lineTo(size.width * 0.6059019, size.height * 0.1409080);
    path_8.close();

    Paint paint_8_fill = Paint()..style = PaintingStyle.fill;
    paint_8_fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path_8, paint_8_fill);

    Path path_9 = Path();
    path_9.moveTo(size.width * 0.6832741, size.height * 0.1355305);
    path_9.lineTo(size.width * 0.6725734, size.height * 0.1408725);
    path_9.cubicTo(
        size.width * 0.6690273,
        size.height * 0.1426768,
        size.width * 0.6654501,
        size.height * 0.1444634,
        size.width * 0.6619247,
        size.height * 0.1463033);
    path_9.cubicTo(
        size.width * 0.6548324,
        size.height * 0.1499298,
        size.width * 0.6478023,
        size.height * 0.1536274,
        size.width * 0.6408345,
        size.height * 0.1574227);
    path_9.lineTo(size.width * 0.6312848, size.height * 0.1621514);
    path_9.lineTo(size.width * 0.6368114, size.height * 0.1649156);
    path_9.lineTo(size.width * 0.7403440, size.height * 0.1136739);
    path_9.lineTo(size.width * 0.7347967, size.height * 0.1109096);
    path_9.lineTo(size.width * 0.7266365, size.height * 0.1149450);
    path_9.cubicTo(
        size.width * 0.7193161,
        size.height * 0.1182337,
        size.width * 0.7120372,
        size.height * 0.1215935,
        size.width * 0.7048308,
        size.height * 0.1250511);
    path_9.cubicTo(
        size.width * 0.7012017,
        size.height * 0.1267666,
        size.width * 0.6976245,
        size.height * 0.1285265,
        size.width * 0.6940369,
        size.height * 0.1302508);
    path_9.lineTo(size.width * 0.6832741, size.height * 0.1355305);
    path_9.close();

    Paint paint_9_fill = Paint()..style = PaintingStyle.fill;
    paint_9_fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path_9, paint_9_fill);

    Path path_10 = Path();
    path_10.moveTo(size.width * 0.5836193, size.height * 0.3524790);
    path_10.cubicTo(
        size.width * 0.5900273,
        size.height * 0.3495547,
        size.width * 0.5964041,
        size.height * 0.3465860,
        size.width * 0.6027394,
        size.height * 0.3435461);
    path_10.cubicTo(
        size.width * 0.6066277,
        size.height * 0.3416973,
        size.width * 0.6104953,
        size.height * 0.3398041,
        size.width * 0.6143733,
        size.height * 0.3379198);
    path_10.lineTo(size.width * 0.6259760, size.height * 0.3322312);
    path_10.lineTo(size.width * 0.6375268, size.height * 0.3264715);
    path_10.cubicTo(
        size.width * 0.6413633,
        size.height * 0.3245160,
        size.width * 0.6451998,
        size.height * 0.3225961,
        size.width * 0.6490258,
        size.height * 0.3206318);
    path_10.cubicTo(
        size.width * 0.6552990,
        size.height * 0.3174231,
        size.width * 0.6615410,
        size.height * 0.3141521,
        size.width * 0.6677312,
        size.height * 0.3108279);
    path_10.lineTo(size.width * 0.6784733, size.height * 0.3055126);
    path_10.lineTo(size.width * 0.6729467, size.height * 0.3027483);
    path_10.lineTo(size.width * 0.6231971, size.height * 0.3273692);
    path_10.lineTo(size.width * 0.6219010, size.height * 0.3280003);
    path_10.lineTo(size.width * 0.6206879, size.height * 0.3286047);
    path_10.lineTo(size.width * 0.5694037, size.height * 0.3539900);
    path_10.lineTo(size.width * 0.5749406, size.height * 0.3567454);
    path_10.lineTo(size.width * 0.5835986, size.height * 0.3524612);
    path_10.close();

    Paint paint_10_fill = Paint()..style = PaintingStyle.fill;
    paint_10_fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path_10, paint_10_fill);

    Path path_11 = Path();
    path_11.moveTo(size.width * 0.7179059, size.height * 0.3252982);
    path_11.lineTo(size.width * 0.7180926, size.height * 0.3253871);
    path_11.cubicTo(
        size.width * 0.7222816,
        size.height * 0.3233161,
        size.width * 0.7269683,
        size.height * 0.3216628,
        size.width * 0.7319349,
        size.height * 0.3204185);
    path_11.cubicTo(
        size.width * 0.7335525,
        size.height * 0.3201163,
        size.width * 0.7351804,
        size.height * 0.3198496,
        size.width * 0.7368186,
        size.height * 0.3196185);
    path_11.cubicTo(
        size.width * 0.7398671,
        size.height * 0.3192096,
        size.width * 0.7429259,
        size.height * 0.3188719,
        size.width * 0.7460054,
        size.height * 0.3186941);
    path_11.cubicTo(
        size.width * 0.7490850,
        size.height * 0.3184897,
        size.width * 0.7521852,
        size.height * 0.3183830,
        size.width * 0.7552544,
        size.height * 0.3184008);
    path_11.cubicTo(
        size.width * 0.7583547,
        size.height * 0.3183830,
        size.width * 0.7614342,
        size.height * 0.3184986,
        size.width * 0.7645034,
        size.height * 0.3187030);
    path_11.cubicTo(
        size.width * 0.7675933,
        size.height * 0.3188897,
        size.width * 0.7706521,
        size.height * 0.3192274,
        size.width * 0.7737005,
        size.height * 0.3196363);
    path_11.cubicTo(
        size.width * 0.7758469,
        size.height * 0.3199385,
        size.width * 0.7779725,
        size.height * 0.3203118,
        size.width * 0.7800981,
        size.height * 0.3207296);
    path_11.cubicTo(
        size.width * 0.7844841,
        size.height * 0.3219117,
        size.width * 0.7886109,
        size.height * 0.3234228,
        size.width * 0.7923437,
        size.height * 0.3252804);
    path_11.lineTo(size.width * 0.7979221, size.height * 0.3225161);
    path_11.cubicTo(
        size.width * 0.7893574,
        size.height * 0.3182586,
        size.width * 0.7786257,
        size.height * 0.3154854,
        size.width * 0.7669815,
        size.height * 0.3143743);
    path_11.cubicTo(
        size.width * 0.7661520,
        size.height * 0.3142855,
        size.width * 0.7653225,
        size.height * 0.3142055,
        size.width * 0.7644930,
        size.height * 0.3141255);
    path_11.cubicTo(
        size.width * 0.7613720,
        size.height * 0.3138677,
        size.width * 0.7582302,
        size.height * 0.3137433,
        size.width * 0.7550989,
        size.height * 0.3137344);
    path_11.cubicTo(
        size.width * 0.7519675,
        size.height * 0.3137522,
        size.width * 0.7488361,
        size.height * 0.3138677,
        size.width * 0.7457151,
        size.height * 0.3141166);
    path_11.cubicTo(
        size.width * 0.7433406,
        size.height * 0.3143210,
        size.width * 0.7409765,
        size.height * 0.3145966,
        size.width * 0.7386332,
        size.height * 0.3149521);
    path_11.cubicTo(
        size.width * 0.7290835,
        size.height * 0.3162942,
        size.width * 0.7202907,
        size.height * 0.3188186,
        size.width * 0.7127008,
        size.height * 0.3225517);
    path_11.lineTo(size.width * 0.7125141, size.height * 0.3224628);
    path_11.lineTo(size.width * 0.7042709, size.height * 0.3265426);
    path_11.cubicTo(
        size.width * 0.6969816,
        size.height * 0.3298135,
        size.width * 0.6897338,
        size.height * 0.3331733,
        size.width * 0.6825586,
        size.height * 0.3366132);
    path_11.cubicTo(
        size.width * 0.6789295,
        size.height * 0.3383286,
        size.width * 0.6753419,
        size.height * 0.3400885,
        size.width * 0.6717543,
        size.height * 0.3418129);
    path_11.lineTo(size.width * 0.6609915, size.height * 0.3470926);
    path_11.lineTo(size.width * 0.6502908, size.height * 0.3524345);
    path_11.cubicTo(
        size.width * 0.6467447,
        size.height * 0.3542389,
        size.width * 0.6431675,
        size.height * 0.3560255,
        size.width * 0.6396421,
        size.height * 0.3578654);
    path_11.cubicTo(
        size.width * 0.6325705,
        size.height * 0.3614829,
        size.width * 0.6255612,
        size.height * 0.3651627,
        size.width * 0.6186141,
        size.height * 0.3689492);
    path_11.lineTo(size.width * 0.6089918, size.height * 0.3737134);
    path_11.lineTo(size.width * 0.6145184, size.height * 0.3764777);
    path_11.lineTo(size.width * 0.7179163, size.height * 0.3253071);
    path_11.close();

    Paint paint_11_fill = Paint()..style = PaintingStyle.fill;
    paint_11_fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path_11, paint_11_fill);

    Path path_12 = Path();
    path_12.moveTo(size.width * 0.4353349, size.height * 0.9155067);
    path_12.cubicTo(
        size.width * 0.4345157,
        size.height * 0.9154178,
        size.width * 0.4336862,
        size.height * 0.9153378,
        size.width * 0.4328567,
        size.height * 0.9152579);
    path_12.cubicTo(
        size.width * 0.4297357,
        size.height * 0.9150001,
        size.width * 0.4265939,
        size.height * 0.9148757,
        size.width * 0.4234626,
        size.height * 0.9148668);
    path_12.cubicTo(
        size.width * 0.4203312,
        size.height * 0.9148845,
        size.width * 0.4171998,
        size.height * 0.9149912,
        size.width * 0.4140788,
        size.height * 0.9152490);
    path_12.cubicTo(
        size.width * 0.4117043,
        size.height * 0.9154623,
        size.width * 0.4093402,
        size.height * 0.9157289,
        size.width * 0.4069969,
        size.height * 0.9160845);
    path_12.cubicTo(
        size.width * 0.3975716,
        size.height * 0.9174088,
        size.width * 0.3888826,
        size.height * 0.9198887,
        size.width * 0.3813548,
        size.height * 0.9235419);
    path_12.lineTo(size.width * 0.3813237, size.height * 0.9235241);
    path_12.cubicTo(
        size.width * 0.3659052,
        size.height * 0.9311503,
        size.width * 0.3470133,
        size.height * 0.9360034,
        size.width * 0.3271881,
        size.height * 0.9381011);
    path_12.cubicTo(
        size.width * 0.3250314,
        size.height * 0.9383144,
        size.width * 0.3228850,
        size.height * 0.9385099,
        size.width * 0.3207283,
        size.height * 0.9386522);
    path_12.cubicTo(
        size.width * 0.3153158,
        size.height * 0.9390433,
        size.width * 0.3098825,
        size.height * 0.9392388,
        size.width * 0.3044493,
        size.height * 0.9392299);
    path_12.cubicTo(
        size.width * 0.2990160,
        size.height * 0.9392388,
        size.width * 0.2935931,
        size.height * 0.9390521,
        size.width * 0.2881910,
        size.height * 0.9386788);
    path_12.cubicTo(
        size.width * 0.2860965,
        size.height * 0.9385366,
        size.width * 0.2840019,
        size.height * 0.9383588,
        size.width * 0.2819074,
        size.height * 0.9381544);
    path_12.cubicTo(
        size.width * 0.2620719,
        size.height * 0.9360923,
        size.width * 0.2431903,
        size.height * 0.9312748,
        size.width * 0.2278030,
        size.height * 0.9236752);
    path_12.lineTo(size.width * 0.2280000, size.height * 0.9235774);
    path_12.lineTo(size.width * 0.2184192, size.height * 0.9188399);
    path_12.cubicTo(
        size.width * 0.2114617,
        size.height * 0.9150534,
        size.width * 0.2044316,
        size.height * 0.9113558,
        size.width * 0.1973497,
        size.height * 0.9077383);
    path_12.cubicTo(
        size.width * 0.1938140,
        size.height * 0.9058984,
        size.width * 0.1902575,
        size.height * 0.9041118,
        size.width * 0.1867010,
        size.height * 0.9023074);
    path_12.lineTo(size.width * 0.1760003, size.height * 0.8969655);
    path_12.lineTo(size.width * 0.1652375, size.height * 0.8916947);
    path_12.cubicTo(
        size.width * 0.1616499,
        size.height * 0.8899614,
        size.width * 0.1580623,
        size.height * 0.8882015,
        size.width * 0.1544436,
        size.height * 0.8864861);
    path_12.cubicTo(
        size.width * 0.1472372,
        size.height * 0.8830285,
        size.width * 0.1399583,
        size.height * 0.8796598,
        size.width * 0.1326379,
        size.height * 0.8763799);
    path_12.cubicTo(
        size.width * 0.1326379,
        size.height * 0.8763799,
        size.width * 0.1326379,
        size.height * 0.8763799,
        size.width * 0.1326483,
        size.height * 0.8763799);
    path_12.lineTo(size.width * 0.1244880, size.height * 0.8723357);
    path_12.lineTo(size.width * 0.1189407, size.height * 0.8751000);
    path_12.lineTo(size.width * 0.2221208, size.height * 0.9261639);
    path_12.lineTo(size.width * 0.2218824, size.height * 0.9262795);
    path_12.cubicTo(
        size.width * 0.2303122,
        size.height * 0.9304748,
        size.width * 0.2398100,
        size.height * 0.9339502,
        size.width * 0.2502203,
        size.height * 0.9366612);
    path_12.cubicTo(
        size.width * 0.2571052,
        size.height * 0.9387677,
        size.width * 0.2641975,
        size.height * 0.9403943,
        size.width * 0.2713831,
        size.height * 0.9415676);
    path_12.cubicTo(
        size.width * 0.2821459,
        size.height * 0.9433452,
        size.width * 0.2931058,
        size.height * 0.9441719,
        size.width * 0.3040656,
        size.height * 0.9441808);
    path_12.cubicTo(
        size.width * 0.3095507,
        size.height * 0.9441630,
        size.width * 0.3150255,
        size.height * 0.9439497,
        size.width * 0.3204898,
        size.height * 0.9435141);
    path_12.cubicTo(
        size.width * 0.3259438,
        size.height * 0.9430608,
        size.width * 0.3313875,
        size.height * 0.9424297,
        size.width * 0.3367481,
        size.height * 0.9415142);
    path_12.cubicTo(
        size.width * 0.3424925,
        size.height * 0.9405632,
        size.width * 0.3481746,
        size.height * 0.9393277,
        size.width * 0.3537323,
        size.height * 0.9378078);
    path_12.cubicTo(
        size.width * 0.3658430,
        size.height * 0.9350079,
        size.width * 0.3768132,
        size.height * 0.9312037,
        size.width * 0.3864459,
        size.height * 0.9264839);
    path_12.lineTo(size.width * 0.3864666, size.height * 0.9264839);
    path_12.cubicTo(
        size.width * 0.3906349,
        size.height * 0.9244396,
        size.width * 0.3952905,
        size.height * 0.9227952,
        size.width * 0.4002260,
        size.height * 0.9215509);
    path_12.cubicTo(
        size.width * 0.4018747,
        size.height * 0.9212486,
        size.width * 0.4035337,
        size.height * 0.9209731,
        size.width * 0.4051927,
        size.height * 0.9207331);
    path_12.cubicTo(
        size.width * 0.4082411,
        size.height * 0.9203242,
        size.width * 0.4112999,
        size.height * 0.9199865,
        size.width * 0.4143795,
        size.height * 0.9197998);
    path_12.cubicTo(
        size.width * 0.4174590,
        size.height * 0.9195865,
        size.width * 0.4205593,
        size.height * 0.9194798,
        size.width * 0.4236285,
        size.height * 0.9195065);
    path_12.cubicTo(
        size.width * 0.4267287,
        size.height * 0.9194887,
        size.width * 0.4298083,
        size.height * 0.9195954,
        size.width * 0.4328775,
        size.height * 0.9198087);
    path_12.cubicTo(
        size.width * 0.4359570,
        size.height * 0.9199954,
        size.width * 0.4390262,
        size.height * 0.9203331,
        size.width * 0.4420746,
        size.height * 0.9207509);
    path_12.cubicTo(
        size.width * 0.4442106,
        size.height * 0.9210442,
        size.width * 0.4463258,
        size.height * 0.9214175,
        size.width * 0.4484410,
        size.height * 0.9218353);
    path_12.cubicTo(
        size.width * 0.4528374,
        size.height * 0.9230174,
        size.width * 0.4569746,
        size.height * 0.9245285,
        size.width * 0.4607074,
        size.height * 0.9263861);
    path_12.lineTo(size.width * 0.4662858, size.height * 0.9236219);
    path_12.cubicTo(
        size.width * 0.4577211,
        size.height * 0.9193643,
        size.width * 0.4469894,
        size.height * 0.9165911,
        size.width * 0.4353349,
        size.height * 0.9154890);
    path_12.close();

    Paint paint_12_fill = Paint()..style = PaintingStyle.fill;
    paint_12_fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path_12, paint_12_fill);

    Path path_13 = Path();
    path_13.moveTo(size.width * 0.5692378, size.height * 0.3539633);
    path_13.cubicTo(
        size.width * 0.5532283,
        size.height * 0.3618829,
        size.width * 0.5299814,
        size.height * 0.3638295,
        size.width * 0.5106954,
        size.height * 0.3596253);
    path_13.cubicTo(
        size.width * 0.5102807,
        size.height * 0.3595364,
        size.width * 0.5098763,
        size.height * 0.3594475,
        size.width * 0.5094615,
        size.height * 0.3593497);
    path_13.cubicTo(
        size.width * 0.5091194,
        size.height * 0.3592697,
        size.width * 0.5087772,
        size.height * 0.3591808,
        size.width * 0.5084350,
        size.height * 0.3591008);
    path_13.cubicTo(
        size.width * 0.5059465,
        size.height * 0.3584698,
        size.width * 0.5034787,
        size.height * 0.3577320,
        size.width * 0.5010524,
        size.height * 0.3568610);
    path_13.cubicTo(
        size.width * 0.5010939,
        size.height * 0.3568787,
        size.width * 0.5011250,
        size.height * 0.3568965,
        size.width * 0.5011665,
        size.height * 0.3569143);
    path_13.cubicTo(
        size.width * 0.4989165,
        size.height * 0.3561055,
        size.width * 0.4967597,
        size.height * 0.3551988,
        size.width * 0.4947378,
        size.height * 0.3541856);
    path_13.lineTo(size.width * 0.4943853, size.height * 0.3543633);
    path_13.lineTo(size.width * 0.4437543, size.height * 0.3293069);
    path_13.lineTo(size.width * 0.4422820, size.height * 0.3285691);
    path_13.lineTo(size.width * 0.4408096, size.height * 0.3278492);
    path_13.lineTo(size.width * 0.3912466, size.height * 0.3033172);
    path_13.lineTo(size.width * 0.3910185, size.height * 0.3034327);
    path_13.lineTo(size.width * 0.3403046, size.height * 0.2783318);
    path_13.lineTo(size.width * 0.3388426, size.height * 0.2776030);
    path_13.lineTo(size.width * 0.3372666, size.height * 0.2768297);
    path_13.lineTo(size.width * 0.2887612, size.height * 0.2528221);
    path_13.lineTo(size.width * 0.2894767, size.height * 0.2524665);
    path_13.lineTo(size.width * 0.2383584, size.height * 0.2271701);
    path_13.lineTo(size.width * 0.2369794, size.height * 0.2264857);
    path_13.lineTo(size.width * 0.2356107, size.height * 0.2258102);
    path_13.lineTo(size.width * 0.1876134, size.height * 0.2020514);
    path_13.lineTo(size.width * 0.1881318, size.height * 0.2017937);
    path_13.lineTo(size.width * 0.1371173, size.height * 0.1765417);
    path_13.lineTo(size.width * 0.1356449, size.height * 0.1758040);
    path_13.lineTo(size.width * 0.1341207, size.height * 0.1750573);
    path_13.lineTo(size.width * 0.08610267, size.height * 0.1512897);
    path_13.lineTo(size.width * 0.08656927, size.height * 0.1510497);
    path_13.cubicTo(
        size.width * 0.08212105,
        size.height * 0.1487743,
        size.width * 0.07867860,
        size.height * 0.1462055,
        size.width * 0.07621082,
        size.height * 0.1434768);
    path_13.cubicTo(
        size.width * 0.07578570,
        size.height * 0.1429435,
        size.width * 0.07536058,
        size.height * 0.1424013,
        size.width * 0.07498730,
        size.height * 0.1418413);
    path_13.cubicTo(
        size.width * 0.07314165,
        size.height * 0.1391304,
        size.width * 0.07198034,
        size.height * 0.1360283,
        size.width * 0.07196997,
        size.height * 0.1328907);
    path_13.cubicTo(
        size.width * 0.07189739,
        size.height * 0.1297442,
        size.width * 0.07296538,
        size.height * 0.1266332,
        size.width * 0.07472808,
        size.height * 0.1238689);
    path_13.cubicTo(
        size.width * 0.07508062,
        size.height * 0.1233179,
        size.width * 0.07546426,
        size.height * 0.1227935,
        size.width * 0.07586865,
        size.height * 0.1222690);
    path_13.cubicTo(
        size.width * 0.07848159,
        size.height * 0.1191936,
        size.width * 0.08228695,
        size.height * 0.1163138,
        size.width * 0.08729509,
        size.height * 0.1137984);
    path_13.lineTo(size.width * 0.08182035, size.height * 0.1110074);
    path_13.cubicTo(
        size.width * 0.07967400,
        size.height * 0.1120829,
        size.width * 0.07772467,
        size.height * 0.1132206,
        size.width * 0.07596197,
        size.height * 0.1143939);
    path_13.cubicTo(
        size.width * 0.07615897,
        size.height * 0.1142161,
        size.width * 0.07636635,
        size.height * 0.1140295,
        size.width * 0.07656336,
        size.height * 0.1138517);
    path_13.cubicTo(
        size.width * 0.07321423,
        size.height * 0.1158072,
        size.width * 0.07015543,
        size.height * 0.1183848,
        size.width * 0.06787429,
        size.height * 0.1216024);
    path_13.cubicTo(
        size.width * 0.06742843,
        size.height * 0.1222246,
        size.width * 0.06702405,
        size.height * 0.1228823,
        size.width * 0.06664040,
        size.height * 0.1235490);
    path_13.cubicTo(
        size.width * 0.06654708,
        size.height * 0.1237001,
        size.width * 0.06646413,
        size.height * 0.1238601,
        size.width * 0.06637081,
        size.height * 0.1240201);
    path_13.cubicTo(
        size.width * 0.06635007,
        size.height * 0.1240556,
        size.width * 0.06632933,
        size.height * 0.1240912,
        size.width * 0.06630860,
        size.height * 0.1241267);
    path_13.cubicTo(
        size.width * 0.06481549,
        size.height * 0.1267666,
        size.width * 0.06403783,
        size.height * 0.1295309,
        size.width * 0.06401709,
        size.height * 0.1323663);
    path_13.cubicTo(
        size.width * 0.06393414,
        size.height * 0.1400548,
        size.width * 0.06931555,
        size.height * 0.1474055,
        size.width * 0.07959105,
        size.height * 0.1530407);
    path_13.lineTo(size.width * 0.07906224, size.height * 0.1533074);
    path_13.lineTo(size.width * 0.08980434, size.height * 0.1586227);
    path_13.cubicTo(
        size.width * 0.09600489,
        size.height * 0.1619380,
        size.width * 0.1022366,
        size.height * 0.1652179,
        size.width * 0.1085097,
        size.height * 0.1684177);
    path_13.cubicTo(
        size.width * 0.1123358,
        size.height * 0.1703909,
        size.width * 0.1161722,
        size.height * 0.1723019,
        size.width * 0.1200087,
        size.height * 0.1742574);
    path_13.lineTo(size.width * 0.1315492, size.height * 0.1800171);
    path_13.lineTo(size.width * 0.1431623, size.height * 0.1857057);
    path_13.cubicTo(
        size.width * 0.1470402,
        size.height * 0.1875811,
        size.width * 0.1509078,
        size.height * 0.1894832,
        size.width * 0.1548065,
        size.height * 0.1913320);
    path_13.cubicTo(
        size.width * 0.1611418,
        size.height * 0.1943719,
        size.width * 0.1675186,
        size.height * 0.1973406,
        size.width * 0.1739369,
        size.height * 0.2002649);
    path_13.lineTo(size.width * 0.1809152, size.height * 0.2037225);
    path_13.lineTo(size.width * 0.1803967, size.height * 0.2039802);
    path_13.lineTo(size.width * 0.1911077, size.height * 0.2092777);
    path_13.cubicTo(
        size.width * 0.1973186,
        size.height * 0.2126020,
        size.width * 0.2035607,
        size.height * 0.2158818,
        size.width * 0.2098545,
        size.height * 0.2190994);
    path_13.cubicTo(
        size.width * 0.2136806,
        size.height * 0.2210638,
        size.width * 0.2175171,
        size.height * 0.2229837,
        size.width * 0.2213535,
        size.height * 0.2249391);
    path_13.lineTo(size.width * 0.2328940, size.height * 0.2306988);
    path_13.lineTo(size.width * 0.2445071, size.height * 0.2363874);
    path_13.cubicTo(
        size.width * 0.2483851,
        size.height * 0.2382628,
        size.width * 0.2522526,
        size.height * 0.2401650,
        size.width * 0.2561409,
        size.height * 0.2420138);
    path_13.cubicTo(
        size.width * 0.2624763,
        size.height * 0.2450447,
        size.width * 0.2688427,
        size.height * 0.2480134,
        size.width * 0.2752507,
        size.height * 0.2509377);
    path_13.lineTo(size.width * 0.2829754, size.height * 0.2547597);
    path_13.lineTo(size.width * 0.2822704, size.height * 0.2551153);
    path_13.lineTo(size.width * 0.2929917, size.height * 0.2604217);
    path_13.cubicTo(
        size.width * 0.2991923,
        size.height * 0.2637459,
        size.width * 0.3054343,
        size.height * 0.2670258,
        size.width * 0.3117178,
        size.height * 0.2702345);
    path_13.cubicTo(
        size.width * 0.3155439,
        size.height * 0.2721988,
        size.width * 0.3193804,
        size.height * 0.2741187,
        size.width * 0.3232168,
        size.height * 0.2760742);
    path_13.lineTo(size.width * 0.3347573, size.height * 0.2818339);
    path_13.lineTo(size.width * 0.3463704, size.height * 0.2875224);
    path_13.cubicTo(
        size.width * 0.3502483,
        size.height * 0.2893979,
        size.width * 0.3541159,
        size.height * 0.2912911,
        size.width * 0.3580042,
        size.height * 0.2931399);
    path_13.cubicTo(
        size.width * 0.3643188,
        size.height * 0.2961709,
        size.width * 0.3706853,
        size.height * 0.2991307,
        size.width * 0.3770725,
        size.height * 0.3020461);
    path_13.lineTo(size.width * 0.3857823, size.height * 0.3063570);
    path_13.lineTo(size.width * 0.3860208, size.height * 0.3062414);
    path_13.lineTo(size.width * 0.3963999, size.height * 0.3113789);
    path_13.cubicTo(
        size.width * 0.4026109,
        size.height * 0.3147032,
        size.width * 0.4088633,
        size.height * 0.3179919,
        size.width * 0.4151571,
        size.height * 0.3212006);
    path_13.cubicTo(
        size.width * 0.4189832,
        size.height * 0.3231739,
        size.width * 0.4228197,
        size.height * 0.3250938,
        size.width * 0.4266458,
        size.height * 0.3270403);
    path_13.lineTo(size.width * 0.4381967, size.height * 0.3328000);
    path_13.lineTo(size.width * 0.4497994, size.height * 0.3384886);
    path_13.cubicTo(
        size.width * 0.4536773,
        size.height * 0.3403641,
        size.width * 0.4575449,
        size.height * 0.3422573,
        size.width * 0.4614435,
        size.height * 0.3441061);
    path_13.cubicTo(
        size.width * 0.4677893,
        size.height * 0.3471459,
        size.width * 0.4741765,
        size.height * 0.3501147,
        size.width * 0.4805844,
        size.height * 0.3530478);
    path_13.lineTo(size.width * 0.4892216, size.height * 0.3573232);
    path_13.lineTo(size.width * 0.4895534, size.height * 0.3571632);
    path_13.cubicTo(
        size.width * 0.4942712,
        size.height * 0.3594653,
        size.width * 0.4996423,
        size.height * 0.3613230,
        size.width * 0.5054384,
        size.height * 0.3626918);
    path_13.cubicTo(
        size.width * 0.5020064,
        size.height * 0.3619896,
        size.width * 0.4986054,
        size.height * 0.3611541,
        size.width * 0.4952666,
        size.height * 0.3601141);
    path_13.cubicTo(
        size.width * 0.5009384,
        size.height * 0.3625584,
        size.width * 0.5070975,
        size.height * 0.3641939,
        size.width * 0.5133602,
        size.height * 0.3652516);
    path_13.cubicTo(
        size.width * 0.5164916,
        size.height * 0.3657938,
        size.width * 0.5196645,
        size.height * 0.3661494,
        size.width * 0.5228581,
        size.height * 0.3664071);
    path_13.cubicTo(
        size.width * 0.5260309,
        size.height * 0.3666471,
        size.width * 0.5292349,
        size.height * 0.3667449,
        size.width * 0.5324285,
        size.height * 0.3667360);
    path_13.cubicTo(
        size.width * 0.5356324,
        size.height * 0.3667004,
        size.width * 0.5388260,
        size.height * 0.3665582,
        size.width * 0.5419989,
        size.height * 0.3662649);
    path_13.cubicTo(
        size.width * 0.5451718,
        size.height * 0.3659538,
        size.width * 0.5483342,
        size.height * 0.3655361,
        size.width * 0.5514553,
        size.height * 0.3649316);
    path_13.cubicTo(
        size.width * 0.5576869,
        size.height * 0.3637406,
        size.width * 0.5637838,
        size.height * 0.3619363,
        size.width * 0.5693622,
        size.height * 0.3593408);
    path_13.cubicTo(
        size.width * 0.5681076,
        size.height * 0.3597675,
        size.width * 0.5668530,
        size.height * 0.3601586,
        size.width * 0.5655776,
        size.height * 0.3605319);
    path_13.cubicTo(
        size.width * 0.5688127,
        size.height * 0.3594386,
        size.width * 0.5719026,
        size.height * 0.3581765,
        size.width * 0.5748058,
        size.height * 0.3567365);
    path_13.lineTo(size.width * 0.5692482, size.height * 0.3539722);
    path_13.close();

    Paint paint_13_fill = Paint()..style = PaintingStyle.fill;
    paint_13_fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path_13, paint_13_fill);

    Path path_14 = Path();
    path_14.moveTo(size.width * 0.6197547, size.height * 0.7521821);
    path_14.lineTo(size.width * 0.6184067, size.height * 0.7528487);
    path_14.lineTo(size.width * 0.6169551, size.height * 0.7535687);
    path_14.lineTo(size.width * 0.5659094, size.height * 0.7788385);
    path_14.lineTo(size.width * 0.5714463, size.height * 0.7816028);
    path_14.lineTo(size.width * 0.5801665, size.height * 0.7772830);
    path_14.cubicTo(
        size.width * 0.5865537,
        size.height * 0.7743676,
        size.width * 0.5929098,
        size.height * 0.7714077,
        size.width * 0.5992244,
        size.height * 0.7683857);
    path_14.cubicTo(
        size.width * 0.6031127,
        size.height * 0.7665369,
        size.width * 0.6069803,
        size.height * 0.7646348,
        size.width * 0.6108686,
        size.height * 0.7627593);
    path_14.lineTo(size.width * 0.6224713, size.height * 0.7570707);
    path_14.lineTo(size.width * 0.6340222, size.height * 0.7513199);
    path_14.cubicTo(
        size.width * 0.6378586,
        size.height * 0.7493645,
        size.width * 0.6416951,
        size.height * 0.7474446,
        size.width * 0.6455212,
        size.height * 0.7454714);
    path_14.cubicTo(
        size.width * 0.6518254,
        size.height * 0.7422537,
        size.width * 0.6580882,
        size.height * 0.7389650,
        size.width * 0.6643095,
        size.height * 0.7356319);
    path_14.lineTo(size.width * 0.6749686, size.height * 0.7303610);
    path_14.lineTo(size.width * 0.6694421, size.height * 0.7275968);
    path_14.lineTo(size.width * 0.6197547, size.height * 0.7521910);
    path_14.close();

    Paint paint_14_fill = Paint()..style = PaintingStyle.fill;
    paint_14_fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path_14, paint_14_fill);

    Path path_15 = Path();
    path_15.moveTo(size.width * 0.7006729, size.height * 0.7514088);
    path_15.cubicTo(
        size.width * 0.6933940,
        size.height * 0.7546709,
        size.width * 0.6861773,
        size.height * 0.7580129,
        size.width * 0.6790228,
        size.height * 0.7614438);
    path_15.cubicTo(
        size.width * 0.6753938,
        size.height * 0.7631504,
        size.width * 0.6718165,
        size.height * 0.7649103,
        size.width * 0.6682185,
        size.height * 0.7666436);
    path_15.lineTo(size.width * 0.6574557, size.height * 0.7719233);
    path_15.lineTo(size.width * 0.6467551, size.height * 0.7772652);
    path_15.cubicTo(
        size.width * 0.6432089,
        size.height * 0.7790696,
        size.width * 0.6396317,
        size.height * 0.7808650,
        size.width * 0.6361063,
        size.height * 0.7826960);
    path_15.cubicTo(
        size.width * 0.6290037,
        size.height * 0.7863225,
        size.width * 0.6219632,
        size.height * 0.7900290,
        size.width * 0.6149954,
        size.height * 0.7938243);
    path_15.lineTo(size.width * 0.6150161, size.height * 0.7938243);
    path_15.cubicTo(
        size.width * 0.6150161,
        size.height * 0.7938243,
        size.width * 0.6054664,
        size.height * 0.7985441,
        size.width * 0.6054664,
        size.height * 0.7985441);
    path_15.lineTo(size.width * 0.6109930, size.height * 0.8012995);
    path_15.lineTo(size.width * 0.7145257, size.height * 0.7500578);
    path_15.lineTo(size.width * 0.7089784, size.height * 0.7472935);
    path_15.lineTo(size.width * 0.7006729, size.height * 0.7513999);
    path_15.close();

    Paint paint_15_fill = Paint()..style = PaintingStyle.fill;
    paint_15_fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path_15, paint_15_fill);

    Path path_16 = Path();
    path_16.moveTo(size.width * 0.5657228, size.height * 0.7788029);
    path_16.cubicTo(
        size.width * 0.5496926,
        size.height * 0.7867314,
        size.width * 0.5263835,
        size.height * 0.7886779,
        size.width * 0.5070767,
        size.height * 0.7844471);
    path_16.cubicTo(
        size.width * 0.5067242,
        size.height * 0.7843671,
        size.width * 0.5063613,
        size.height * 0.7842959,
        size.width * 0.5060087,
        size.height * 0.7842071);
    path_16.cubicTo(
        size.width * 0.5056251,
        size.height * 0.7841182,
        size.width * 0.5052518,
        size.height * 0.7840204,
        size.width * 0.5048682,
        size.height * 0.7839315);
    path_16.cubicTo(
        size.width * 0.5024004,
        size.height * 0.7833004,
        size.width * 0.4999430,
        size.height * 0.7825716,
        size.width * 0.4975374,
        size.height * 0.7817094);
    path_16.cubicTo(
        size.width * 0.4975685,
        size.height * 0.7817272,
        size.width * 0.4975996,
        size.height * 0.7817361,
        size.width * 0.4976411,
        size.height * 0.7817539);
    path_16.cubicTo(
        size.width * 0.4954014,
        size.height * 0.7809450,
        size.width * 0.4932447,
        size.height * 0.7800384,
        size.width * 0.4912228,
        size.height * 0.7790340);
    path_16.lineTo(size.width * 0.4908703, size.height * 0.7792118);
    path_16.lineTo(size.width * 0.4400838, size.height * 0.7540753);
    path_16.lineTo(size.width * 0.4387566, size.height * 0.7534176);
    path_16.lineTo(size.width * 0.4375123, size.height * 0.7528043);
    path_16.lineTo(size.width * 0.3877212, size.height * 0.7281567);
    path_16.lineTo(size.width * 0.3874828, size.height * 0.7282723);
    path_16.lineTo(size.width * 0.3372562, size.height * 0.7034114);
    path_16.lineTo(size.width * 0.3353069, size.height * 0.7024336);
    path_16.lineTo(size.width * 0.3330672, size.height * 0.7013315);
    path_16.lineTo(size.width * 0.2852255, size.height * 0.6776527);
    path_16.lineTo(size.width * 0.2859409, size.height * 0.6772972);
    path_16.lineTo(size.width * 0.2352996, size.height * 0.6522319);
    path_16.lineTo(size.width * 0.2334436, size.height * 0.6513075);
    path_16.lineTo(size.width * 0.2314839, size.height * 0.6503475);
    path_16.lineTo(size.width * 0.1823979, size.height * 0.6260555);
    path_16.lineTo(size.width * 0.1823564, size.height * 0.6260733);
    path_16.lineTo(size.width * 0.1309582, size.height * 0.6006346);
    path_16.lineTo(size.width * 0.1300768, size.height * 0.6001991);
    path_16.lineTo(size.width * 0.1291436, size.height * 0.5997458);
    path_16.lineTo(size.width * 0.07926962, size.height * 0.5750627);
    path_16.lineTo(size.width * 0.07944589, size.height * 0.5749738);
    path_16.cubicTo(
        size.width * 0.07499767,
        size.height * 0.5726983,
        size.width * 0.07155522,
        size.height * 0.5701296,
        size.width * 0.06909781,
        size.height * 0.5674008);
    path_16.cubicTo(
        size.width * 0.06867269,
        size.height * 0.5668675,
        size.width * 0.06824757,
        size.height * 0.5663254,
        size.width * 0.06787429,
        size.height * 0.5657654);
    path_16.cubicTo(
        size.width * 0.06602864,
        size.height * 0.5630544,
        size.width * 0.06486733,
        size.height * 0.5599612,
        size.width * 0.06484659,
        size.height * 0.5568147);
    path_16.cubicTo(
        size.width * 0.06477401,
        size.height * 0.5536771,
        size.width * 0.06585237,
        size.height * 0.5505573,
        size.width * 0.06760470,
        size.height * 0.5478019);
    path_16.cubicTo(
        size.width * 0.06795724,
        size.height * 0.5472508,
        size.width * 0.06835125,
        size.height * 0.5467175,
        size.width * 0.06874527,
        size.height * 0.5461931);
    path_16.cubicTo(
        size.width * 0.07135821,
        size.height * 0.5431177,
        size.width * 0.07516357,
        size.height * 0.5402379,
        size.width * 0.08017171,
        size.height * 0.5377313);
    path_16.lineTo(size.width * 0.07469697, size.height * 0.5349404);
    path_16.cubicTo(
        size.width * 0.07255063,
        size.height * 0.5360159,
        size.width * 0.07060129,
        size.height * 0.5371536,
        size.width * 0.06883859,
        size.height * 0.5383268);
    path_16.cubicTo(
        size.width * 0.06903560,
        size.height * 0.5381491,
        size.width * 0.06924297,
        size.height * 0.5379624,
        size.width * 0.06943998,
        size.height * 0.5377847);
    path_16.cubicTo(
        size.width * 0.06608048,
        size.height * 0.5397401,
        size.width * 0.06303205,
        size.height * 0.5423177,
        size.width * 0.06075091,
        size.height * 0.5455353);
    path_16.cubicTo(
        size.width * 0.06029468,
        size.height * 0.5461664,
        size.width * 0.05989030,
        size.height * 0.5468331,
        size.width * 0.05950665,
        size.height * 0.5475175);
    path_16.cubicTo(
        size.width * 0.05944444,
        size.height * 0.5476241,
        size.width * 0.05939259,
        size.height * 0.5477308,
        size.width * 0.05933038,
        size.height * 0.5478374);
    path_16.cubicTo(
        size.width * 0.05928891,
        size.height * 0.5479263,
        size.width * 0.05923706,
        size.height * 0.5480063,
        size.width * 0.05918522,
        size.height * 0.5480952);
    path_16.cubicTo(
        size.width * 0.05770248,
        size.height * 0.5507262,
        size.width * 0.05693518,
        size.height * 0.5534727,
        size.width * 0.05690408,
        size.height * 0.5563081);
    path_16.cubicTo(
        size.width * 0.05682113,
        size.height * 0.5642988,
        size.width * 0.06262767,
        size.height * 0.5719251,
        size.width * 0.07368083,
        size.height * 0.5776314);
    path_16.lineTo(size.width * 0.07351493, size.height * 0.5777203);
    path_16.lineTo(size.width * 0.08408075, size.height * 0.5829467);
    path_16.cubicTo(
        size.width * 0.09033315,
        size.height * 0.5862976,
        size.width * 0.09662702,
        size.height * 0.5896041,
        size.width * 0.1029624,
        size.height * 0.5928395);
    path_16.cubicTo(
        size.width * 0.1067885,
        size.height * 0.5948038,
        size.width * 0.1106249,
        size.height * 0.5967237,
        size.width * 0.1144510,
        size.height * 0.5986792);
    path_16.lineTo(size.width * 0.1260019, size.height * 0.6044389);
    path_16.lineTo(size.width * 0.1376046, size.height * 0.6101186);
    path_16.cubicTo(
        size.width * 0.1414825,
        size.height * 0.6120029,
        size.width * 0.1453501,
        size.height * 0.6138961,
        size.width * 0.1492384,
        size.height * 0.6157360);
    path_16.cubicTo(
        size.width * 0.1555841,
        size.height * 0.6187848,
        size.width * 0.1619713,
        size.height * 0.6217624,
        size.width * 0.1683896,
        size.height * 0.6246867);
    path_16.lineTo(size.width * 0.1770165, size.height * 0.6289620);
    path_16.lineTo(size.width * 0.1770683, size.height * 0.6289353);
    path_16.lineTo(size.width * 0.1875512, size.height * 0.6341262);
    path_16.cubicTo(
        size.width * 0.1937621,
        size.height * 0.6374504,
        size.width * 0.2000041,
        size.height * 0.6407392,
        size.width * 0.2062980,
        size.height * 0.6439479);
    path_16.cubicTo(
        size.width * 0.2101241,
        size.height * 0.6459211,
        size.width * 0.2139606,
        size.height * 0.6478321,
        size.width * 0.2177970,
        size.height * 0.6497876);
    path_16.lineTo(size.width * 0.2293479, size.height * 0.6555473);
    path_16.lineTo(size.width * 0.2409610, size.height * 0.6612358);
    path_16.cubicTo(
        size.width * 0.2448389,
        size.height * 0.6631113,
        size.width * 0.2487065,
        size.height * 0.6650134,
        size.width * 0.2525948,
        size.height * 0.6668533);
    path_16.cubicTo(
        size.width * 0.2589405,
        size.height * 0.6699020,
        size.width * 0.2653381,
        size.height * 0.6728797,
        size.width * 0.2717667,
        size.height * 0.6758128);
    path_16.lineTo(size.width * 0.2794293, size.height * 0.6796082);
    path_16.lineTo(size.width * 0.2787242, size.height * 0.6799637);
    path_16.lineTo(size.width * 0.2893108, size.height * 0.6852079);
    path_16.cubicTo(
        size.width * 0.2955632,
        size.height * 0.6885499,
        size.width * 0.3018467,
        size.height * 0.6918564,
        size.width * 0.3081717,
        size.height * 0.6950829);
    path_16.cubicTo(
        size.width * 0.3119978,
        size.height * 0.6970562,
        size.width * 0.3158342,
        size.height * 0.6989761,
        size.width * 0.3196707,
        size.height * 0.7009226);
    path_16.lineTo(size.width * 0.3312112, size.height * 0.7066823);
    path_16.lineTo(size.width * 0.3428139, size.height * 0.7123709);
    path_16.cubicTo(
        size.width * 0.3467022,
        size.height * 0.7142464,
        size.width * 0.3505594,
        size.height * 0.7161485,
        size.width * 0.3544477,
        size.height * 0.7179884);
    path_16.cubicTo(
        size.width * 0.3607623,
        size.height * 0.7210193,
        size.width * 0.3671184,
        size.height * 0.7239792,
        size.width * 0.3735056,
        size.height * 0.7268857);
    path_16.lineTo(size.width * 0.3822361, size.height * 0.7312054);
    path_16.lineTo(size.width * 0.3824746, size.height * 0.7310899);
    path_16.lineTo(size.width * 0.3929368, size.height * 0.7362718);
    path_16.cubicTo(
        size.width * 0.3991269,
        size.height * 0.7395783,
        size.width * 0.4053482,
        size.height * 0.7428493,
        size.width * 0.4116110,
        size.height * 0.7460491);
    path_16.cubicTo(
        size.width * 0.4154371,
        size.height * 0.7480223,
        size.width * 0.4192736,
        size.height * 0.7499422,
        size.width * 0.4231100,
        size.height * 0.7518888);
    path_16.lineTo(size.width * 0.4346609, size.height * 0.7576485);
    path_16.lineTo(size.width * 0.4462636, size.height * 0.7633371);
    path_16.cubicTo(
        size.width * 0.4501415,
        size.height * 0.7652125,
        size.width * 0.4540091,
        size.height * 0.7671058,
        size.width * 0.4578974,
        size.height * 0.7689634);
    path_16.cubicTo(
        size.width * 0.4642224,
        size.height * 0.7719855,
        size.width * 0.4705785,
        size.height * 0.7749542,
        size.width * 0.4769760,
        size.height * 0.7778696);
    path_16.lineTo(size.width * 0.4856755, size.height * 0.7821805);
    path_16.lineTo(size.width * 0.4860073, size.height * 0.7820116);
    path_16.cubicTo(
        size.width * 0.4907251,
        size.height * 0.7843226,
        size.width * 0.4960961,
        size.height * 0.7861714,
        size.width * 0.5019130,
        size.height * 0.7875491);
    path_16.cubicTo(
        size.width * 0.4984706,
        size.height * 0.7868469,
        size.width * 0.4950696,
        size.height * 0.7860114,
        size.width * 0.4917309,
        size.height * 0.7849715);
    path_16.cubicTo(
        size.width * 0.4974026,
        size.height * 0.7874158,
        size.width * 0.5035617,
        size.height * 0.7890513,
        size.width * 0.5098141,
        size.height * 0.7901090);
    path_16.cubicTo(
        size.width * 0.5129455,
        size.height * 0.7906512,
        size.width * 0.5161183,
        size.height * 0.7910067,
        size.width * 0.5193016,
        size.height * 0.7912645);
    path_16.cubicTo(
        size.width * 0.5224744,
        size.height * 0.7915045,
        size.width * 0.5256784,
        size.height * 0.7916022,
        size.width * 0.5288720,
        size.height * 0.7915933);
    path_16.cubicTo(
        size.width * 0.5320759,
        size.height * 0.7915578,
        size.width * 0.5352592,
        size.height * 0.7914067,
        size.width * 0.5384320,
        size.height * 0.7911223);
    path_16.cubicTo(
        size.width * 0.5416049,
        size.height * 0.7908112,
        size.width * 0.5447674,
        size.height * 0.7903934,
        size.width * 0.5478884,
        size.height * 0.7897890);
    path_16.cubicTo(
        size.width * 0.5541201,
        size.height * 0.7885979,
        size.width * 0.5602169,
        size.height * 0.7867936,
        size.width * 0.5658057,
        size.height * 0.7841893);
    path_16.cubicTo(
        size.width * 0.5645926,
        size.height * 0.7846070,
        size.width * 0.5633587,
        size.height * 0.7849804,
        size.width * 0.5621248,
        size.height * 0.7853537);
    path_16.cubicTo(
        size.width * 0.5653287,
        size.height * 0.7842693,
        size.width * 0.5683875,
        size.height * 0.7830160,
        size.width * 0.5712597,
        size.height * 0.7815939);
    path_16.lineTo(size.width * 0.5656917, size.height * 0.7788296);
    path_16.close();

    Paint paint_16_fill = Paint()..style = PaintingStyle.fill;
    paint_16_fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path_16, paint_16_fill);

    Path path_17 = Path();
    path_17.moveTo(size.width * 0.9725848, size.height * 0.3830373);
    path_17.cubicTo(
        size.width * 0.9709984,
        size.height * 0.3791798,
        size.width * 0.9686862,
        size.height * 0.3755800,
        size.width * 0.9658762,
        size.height * 0.3723001);
    path_17.cubicTo(
        size.width * 0.9630870,
        size.height * 0.3690203,
        size.width * 0.9598208,
        size.height * 0.3660783,
        size.width * 0.9562643,
        size.height * 0.3634295);
    path_17.cubicTo(
        size.width * 0.9560258,
        size.height * 0.3632606,
        size.width * 0.9557874,
        size.height * 0.3630917,
        size.width * 0.9555385,
        size.height * 0.3629229);
    path_17.cubicTo(
        size.width * 0.9513080,
        size.height * 0.3597408,
        size.width * 0.9464139,
        size.height * 0.3567543,
        size.width * 0.9408874,
        size.height * 0.3540167);
    path_17.lineTo(size.width * 0.9408355, size.height * 0.3540433);
    path_17.lineTo(size.width * 0.8904638, size.height * 0.3291202);
    path_17.lineTo(size.width * 0.8887737, size.height * 0.3282758);
    path_17.lineTo(size.width * 0.8871873, size.height * 0.3274936);
    path_17.lineTo(size.width * 0.8377384, size.height * 0.3030238);
    path_17.lineTo(size.width * 0.8322118, size.height * 0.3057792);
    path_17.lineTo(size.width * 0.8429020, size.height * 0.3110767);
    path_17.cubicTo(
        size.width * 0.8491129,
        size.height * 0.3144010,
        size.width * 0.8553653,
        size.height * 0.3176808,
        size.width * 0.8616696,
        size.height * 0.3208896);
    path_17.cubicTo(
        size.width * 0.8654853,
        size.height * 0.3228628,
        size.width * 0.8693321,
        size.height * 0.3247827,
        size.width * 0.8731582,
        size.height * 0.3267381);
    path_17.lineTo(size.width * 0.8847091, size.height * 0.3324889);
    path_17.lineTo(size.width * 0.8963118, size.height * 0.3381775);
    path_17.cubicTo(
        size.width * 0.9001794,
        size.height * 0.3400530,
        size.width * 0.9040470,
        size.height * 0.3419551,
        size.width * 0.9079456,
        size.height * 0.3437950);
    path_17.cubicTo(
        size.width * 0.9142810,
        size.height * 0.3468348,
        size.width * 0.9206474,
        size.height * 0.3497947,
        size.width * 0.9270657,
        size.height * 0.3527190);
    path_17.lineTo(size.width * 0.9357341, size.height * 0.3570032);
    path_17.lineTo(size.width * 0.9357755, size.height * 0.3569854);
    path_17.cubicTo(
        size.width * 0.9773441,
        size.height * 0.3779354,
        size.width * 0.9769812,
        size.height * 0.4118269,
        size.width * 0.9348320,
        size.height * 0.4326880);
    path_17.lineTo(size.width * 0.9347075, size.height * 0.4326169);
    path_17.lineTo(size.width * 0.9264851, size.height * 0.4366878);
    path_17.cubicTo(
        size.width * 0.9191854,
        size.height * 0.4399676,
        size.width * 0.9119376,
        size.height * 0.4433186,
        size.width * 0.9047520,
        size.height * 0.4467673);
    path_17.cubicTo(
        size.width * 0.9011126,
        size.height * 0.4484739,
        size.width * 0.8975353,
        size.height * 0.4502338,
        size.width * 0.8939374,
        size.height * 0.4519670);
    path_17.lineTo(size.width * 0.8831745, size.height * 0.4572378);
    path_17.lineTo(size.width * 0.8724739, size.height * 0.4625798);
    path_17.cubicTo(
        size.width * 0.8689381,
        size.height * 0.4643841,
        size.width * 0.8653609,
        size.height * 0.4661707,
        size.width * 0.8618355,
        size.height * 0.4680106);
    path_17.cubicTo(
        size.width * 0.8547951,
        size.height * 0.4716015,
        size.width * 0.8478272,
        size.height * 0.4752724,
        size.width * 0.8409319,
        size.height * 0.4790322);
    path_17.lineTo(size.width * 0.8311853, size.height * 0.4838498);
    path_17.lineTo(size.width * 0.8367222, size.height * 0.4866140);
    path_17.lineTo(size.width * 0.9402652, size.height * 0.4353723);
    path_17.lineTo(size.width * 0.9403793, size.height * 0.4354257);
    path_17.cubicTo(
        size.width * 0.9454704,
        size.height * 0.4329014,
        size.width * 0.9500327,
        size.height * 0.4301815,
        size.width * 0.9540661,
        size.height * 0.4273017);
    path_17.cubicTo(
        size.width * 0.9581514,
        size.height * 0.4244751,
        size.width * 0.9619361,
        size.height * 0.4212931,
        size.width * 0.9651608,
        size.height * 0.4176666);
    path_17.cubicTo(
        size.width * 0.9680537,
        size.height * 0.4144579,
        size.width * 0.9704385,
        size.height * 0.4108936,
        size.width * 0.9721597,
        size.height * 0.4070805);
    path_17.cubicTo(
        size.width * 0.9738706,
        size.height * 0.4032585,
        size.width * 0.9748245,
        size.height * 0.3991876,
        size.width * 0.9749075,
        size.height * 0.3950812);
    path_17.cubicTo(
        size.width * 0.9749800,
        size.height * 0.3909836,
        size.width * 0.9741713,
        size.height * 0.3868683,
        size.width * 0.9726056,
        size.height * 0.3830107);
    path_17.close();

    Paint paint_17_fill = Paint()..style = PaintingStyle.fill;
    paint_17_fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path_17, paint_17_fill);

    Path path_18 = Path();
    path_18.moveTo(size.width * 0.7272275, size.height * 0.5350559);
    path_18.lineTo(size.width * 0.7190672, size.height * 0.5391001);
    path_18.cubicTo(
        size.width * 0.7117468,
        size.height * 0.5423889,
        size.width * 0.7044679,
        size.height * 0.5457487,
        size.width * 0.6972616,
        size.height * 0.5492063);
    path_18.cubicTo(
        size.width * 0.6936429,
        size.height * 0.5509217,
        size.width * 0.6900449,
        size.height * 0.5526727,
        size.width * 0.6864573,
        size.height * 0.5544060);
    path_18.lineTo(size.width * 0.6756945, size.height * 0.5596857);
    path_18.lineTo(size.width * 0.6650042, size.height * 0.5650188);
    path_18.cubicTo(
        size.width * 0.6614477,
        size.height * 0.5668320,
        size.width * 0.6578808,
        size.height * 0.5686097,
        size.width * 0.6543451,
        size.height * 0.5704496);
    path_18.cubicTo(
        size.width * 0.6472839,
        size.height * 0.5740583,
        size.width * 0.6402849,
        size.height * 0.5777470,
        size.width * 0.6333482,
        size.height * 0.5815245);
    path_18.lineTo(size.width * 0.6238815, size.height * 0.5862087);
    path_18.lineTo(size.width * 0.6235600, size.height * 0.5860487);
    path_18.lineTo(size.width * 0.6153998, size.height * 0.5900930);
    path_18.cubicTo(
        size.width * 0.6080794,
        size.height * 0.5933817,
        size.width * 0.6008005,
        size.height * 0.5967415,
        size.width * 0.5936045,
        size.height * 0.6001991);
    path_18.cubicTo(
        size.width * 0.5899858,
        size.height * 0.6019057,
        size.width * 0.5863878,
        size.height * 0.6036656,
        size.width * 0.5828002,
        size.height * 0.6053988);
    path_18.lineTo(size.width * 0.5720374, size.height * 0.6106697);
    path_18.lineTo(size.width * 0.5613367, size.height * 0.6160116);
    path_18.cubicTo(
        size.width * 0.5577906,
        size.height * 0.6178159,
        size.width * 0.5542237,
        size.height * 0.6196025,
        size.width * 0.5506880,
        size.height * 0.6214424);
    path_18.cubicTo(
        size.width * 0.5436164,
        size.height * 0.6250511,
        size.width * 0.5366071,
        size.height * 0.6287398,
        size.width * 0.5296600,
        size.height * 0.6325263);
    path_18.lineTo(size.width * 0.5200481, size.height * 0.6372816);
    path_18.lineTo(size.width * 0.5202348, size.height * 0.6373793);
    path_18.cubicTo(
        size.width * 0.5050548,
        size.height * 0.6447656,
        size.width * 0.4865983,
        size.height * 0.6494854,
        size.width * 0.4672190,
        size.height * 0.6515830);
    path_18.cubicTo(
        size.width * 0.4649275,
        size.height * 0.6518141,
        size.width * 0.4626360,
        size.height * 0.6520186,
        size.width * 0.4603341,
        size.height * 0.6521697);
    path_18.cubicTo(
        size.width * 0.4549216,
        size.height * 0.6525608,
        size.width * 0.4494883,
        size.height * 0.6527563,
        size.width * 0.4440550,
        size.height * 0.6527474);
    path_18.cubicTo(
        size.width * 0.4386321,
        size.height * 0.6527563,
        size.width * 0.4332093,
        size.height * 0.6525696,
        size.width * 0.4277967,
        size.height * 0.6521963);
    path_18.cubicTo(
        size.width * 0.4257437,
        size.height * 0.6520630,
        size.width * 0.4236803,
        size.height * 0.6518852,
        size.width * 0.4216273,
        size.height * 0.6516808);
    path_18.cubicTo(
        size.width * 0.4015947,
        size.height * 0.6496098,
        size.width * 0.3825472,
        size.height * 0.6447389,
        size.width * 0.3670769,
        size.height * 0.6370327);
    path_18.lineTo(size.width * 0.3581079, size.height * 0.6325885);
    path_18.cubicTo(
        size.width * 0.3511608,
        size.height * 0.6288020,
        size.width * 0.3441515,
        size.height * 0.6251222,
        size.width * 0.3370799,
        size.height * 0.6214957);
    path_18.cubicTo(
        size.width * 0.3335442,
        size.height * 0.6196647,
        size.width * 0.3299877,
        size.height * 0.6178782,
        size.width * 0.3264312,
        size.height * 0.6160738);
    path_18.lineTo(size.width * 0.3157305, size.height * 0.6107319);
    path_18.lineTo(size.width * 0.3049677, size.height * 0.6054522);
    path_18.cubicTo(
        size.width * 0.3013801,
        size.height * 0.6037278,
        size.width * 0.2977925,
        size.height * 0.6019679,
        size.width * 0.2941634,
        size.height * 0.6002524);
    path_18.cubicTo(
        size.width * 0.2869571,
        size.height * 0.5968037,
        size.width * 0.2796885,
        size.height * 0.5934261,
        size.width * 0.2723681,
        size.height * 0.5901552);
    path_18.lineTo(size.width * 0.2645293, size.height * 0.5862798);
    path_18.lineTo(size.width * 0.2650477, size.height * 0.5860132);
    path_18.cubicTo(
        size.width * 0.2482710,
        size.height * 0.5774270,
        size.width * 0.2383273,
        size.height * 0.5666987,
        size.width * 0.2351648,
        size.height * 0.5555704);
    path_18.cubicTo(
        size.width * 0.2351026,
        size.height * 0.5553304,
        size.width * 0.2350300,
        size.height * 0.5550815,
        size.width * 0.2349782,
        size.height * 0.5548326);
    path_18.cubicTo(
        size.width * 0.2349471,
        size.height * 0.5547082,
        size.width * 0.2349263,
        size.height * 0.5545838,
        size.width * 0.2348849,
        size.height * 0.5544504);
    path_18.cubicTo(
        size.width * 0.2344079,
        size.height * 0.5523261,
        size.width * 0.2341590,
        size.height * 0.5501751,
        size.width * 0.2341798,
        size.height * 0.5479974);
    path_18.cubicTo(
        size.width * 0.2341901,
        size.height * 0.5443976,
        size.width * 0.2349471,
        size.height * 0.5408156,
        size.width * 0.2363158,
        size.height * 0.5374024);
    path_18.cubicTo(
        size.width * 0.2376637,
        size.height * 0.5339893,
        size.width * 0.2396545,
        size.height * 0.5307717,
        size.width * 0.2419979,
        size.height * 0.5277585);
    path_18.cubicTo(
        size.width * 0.2443620,
        size.height * 0.5247720,
        size.width * 0.2471201,
        size.height * 0.5220077,
        size.width * 0.2501478,
        size.height * 0.5194567);
    path_18.cubicTo(
        size.width * 0.2531340,
        size.height * 0.5168880,
        size.width * 0.2564416,
        size.height * 0.5145859,
        size.width * 0.2598530,
        size.height * 0.5124171);
    path_18.cubicTo(
        size.width * 0.2597804,
        size.height * 0.5124527,
        size.width * 0.2597078,
        size.height * 0.5124971,
        size.width * 0.2596352,
        size.height * 0.5125327);
    path_18.cubicTo(
        size.width * 0.2613357,
        size.height * 0.5115283,
        size.width * 0.2630984,
        size.height * 0.5105417,
        size.width * 0.2649752,
        size.height * 0.5095906);
    path_18.lineTo(size.width * 0.2649959, size.height * 0.5095906);
    path_18.cubicTo(
        size.width * 0.2768164,
        size.height * 0.5037598,
        size.width * 0.2827992,
        size.height * 0.4964535,
        size.width * 0.2828614,
        size.height * 0.4885073);
    path_18.cubicTo(
        size.width * 0.2829029,
        size.height * 0.4805521,
        size.width * 0.2768993,
        size.height * 0.4730414,
        size.width * 0.2655766,
        size.height * 0.4674151);
    path_18.lineTo(size.width * 0.2600189, size.height * 0.4701616);
    path_18.cubicTo(
        size.width * 0.2708958,
        size.height * 0.4755835,
        size.width * 0.2759039,
        size.height * 0.4827031,
        size.width * 0.2751262,
        size.height * 0.4897072);
    path_18.cubicTo(
        size.width * 0.2747633,
        size.height * 0.4927204,
        size.width * 0.2732702,
        size.height * 0.4956358,
        size.width * 0.2710720,
        size.height * 0.4981779);
    path_18.cubicTo(
        size.width * 0.2687287,
        size.height * 0.5008800,
        size.width * 0.2656491,
        size.height * 0.5032087,
        size.width * 0.2623311,
        size.height * 0.5053330);
    path_18.cubicTo(
        size.width * 0.2615949,
        size.height * 0.5057508,
        size.width * 0.2608380,
        size.height * 0.5061597,
        size.width * 0.2600500,
        size.height * 0.5065685);
    path_18.cubicTo(
        size.width * 0.2562239,
        size.height * 0.5085062,
        size.width * 0.2526777,
        size.height * 0.5105594,
        size.width * 0.2494427,
        size.height * 0.5127193);
    path_18.cubicTo(
        size.width * 0.2438746,
        size.height * 0.5162214,
        size.width * 0.2387835,
        size.height * 0.5203900,
        size.width * 0.2347086,
        size.height * 0.5253320);
    path_18.cubicTo(
        size.width * 0.2320749,
        size.height * 0.5284963,
        size.width * 0.2299078,
        size.height * 0.5319983,
        size.width * 0.2283629,
        size.height * 0.5357403);
    path_18.cubicTo(
        size.width * 0.2268283,
        size.height * 0.5394823,
        size.width * 0.2259988,
        size.height * 0.5434643,
        size.width * 0.2259469,
        size.height * 0.5474730);
    path_18.cubicTo(
        size.width * 0.2259158,
        size.height * 0.5514639,
        size.width * 0.2266831,
        size.height * 0.5554548,
        size.width * 0.2281555,
        size.height * 0.5592235);
    path_18.cubicTo(
        size.width * 0.2296486,
        size.height * 0.5629655,
        size.width * 0.2317431,
        size.height * 0.5665031,
        size.width * 0.2343560,
        size.height * 0.5697029);
    path_18.cubicTo(
        size.width * 0.2373526,
        size.height * 0.5734450,
        size.width * 0.2409610,
        size.height * 0.5767248,
        size.width * 0.2448908,
        size.height * 0.5796313);
    path_18.cubicTo(
        size.width * 0.2490279,
        size.height * 0.5828311,
        size.width * 0.2538079,
        size.height * 0.5858354,
        size.width * 0.2591997,
        size.height * 0.5886086);
    path_18.lineTo(size.width * 0.2586502, size.height * 0.5888841);
    path_18.lineTo(size.width * 0.3615089, size.height * 0.6397970);
    path_18.lineTo(size.width * 0.3614778, size.height * 0.6397970);
    path_18.cubicTo(
        size.width * 0.3699180,
        size.height * 0.6440101,
        size.width * 0.3794158,
        size.height * 0.6474855,
        size.width * 0.3898365,
        size.height * 0.6502053);
    path_18.cubicTo(
        size.width * 0.3967214,
        size.height * 0.6523030,
        size.width * 0.4038137,
        size.height * 0.6539207,
        size.width * 0.4109889,
        size.height * 0.6551028);
    path_18.cubicTo(
        size.width * 0.4217517,
        size.height * 0.6568716,
        size.width * 0.4327219,
        size.height * 0.6577071,
        size.width * 0.4436714,
        size.height * 0.6577160);
    path_18.cubicTo(
        size.width * 0.4491565,
        size.height * 0.6577071,
        size.width * 0.4546312,
        size.height * 0.6574849,
        size.width * 0.4600956,
        size.height * 0.6570583);
    path_18.cubicTo(
        size.width * 0.4655392,
        size.height * 0.6566050,
        size.width * 0.4709725,
        size.height * 0.6559739,
        size.width * 0.4763435,
        size.height * 0.6550584);
    path_18.cubicTo(
        size.width * 0.4820464,
        size.height * 0.6541162,
        size.width * 0.4876767,
        size.height * 0.6528985,
        size.width * 0.4932032,
        size.height * 0.6513786);
    path_18.cubicTo(
        size.width * 0.5055421,
        size.height * 0.6485432,
        size.width * 0.5167197,
        size.height * 0.6446501,
        size.width * 0.5264975,
        size.height * 0.6398148);
    path_18.lineTo(size.width * 0.5262798, size.height * 0.6397081);
    path_18.lineTo(size.width * 0.6289311, size.height * 0.5889019);
    path_18.lineTo(size.width * 0.6292421, size.height * 0.5890619);
    path_18.lineTo(size.width * 0.7327852, size.height * 0.5378202);
    path_18.lineTo(size.width * 0.7272482, size.height * 0.5350559);
    path_18.close();

    Paint paint_18_fill = Paint()..style = PaintingStyle.fill;
    paint_18_fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path_18, paint_18_fill);

    Path path_19 = Path();
    path_19.moveTo(size.width * 0.8363904, size.height * 0.4865518);
    path_19.lineTo(size.width * 0.8308431, size.height * 0.4837964);
    path_19.lineTo(size.width * 0.8226828, size.height * 0.4878229);
    path_19.cubicTo(
        size.width * 0.8226828,
        size.height * 0.4878229,
        size.width * 0.8226310,
        size.height * 0.4878495,
        size.width * 0.8226102,
        size.height * 0.4878584);
    path_19.cubicTo(
        size.width * 0.8153106,
        size.height * 0.4911383,
        size.width * 0.8080835,
        size.height * 0.4944803,
        size.width * 0.8008876,
        size.height * 0.4979290);
    path_19.cubicTo(
        size.width * 0.7972481,
        size.height * 0.4996445,
        size.width * 0.7936709,
        size.height * 0.5013955,
        size.width * 0.7900833,
        size.height * 0.5031287);
    path_19.lineTo(size.width * 0.7793204, size.height * 0.5084084);
    path_19.lineTo(size.width * 0.7686198, size.height * 0.5137415);
    path_19.cubicTo(
        size.width * 0.7650737,
        size.height * 0.5155547,
        size.width * 0.7615068,
        size.height * 0.5173324,
        size.width * 0.7579710,
        size.height * 0.5191723);
    path_19.cubicTo(
        size.width * 0.7509099,
        size.height * 0.5227810,
        size.width * 0.7439109,
        size.height * 0.5264608,
        size.width * 0.7369742,
        size.height * 0.5302473);
    path_19.lineTo(size.width * 0.7273208, size.height * 0.5350204);
    path_19.lineTo(size.width * 0.7328474, size.height * 0.5377847);
    path_19.lineTo(size.width * 0.8363904, size.height * 0.4865429);
    path_19.close();

    Paint paint_19_fill = Paint()..style = PaintingStyle.fill;
    paint_19_fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path_19, paint_19_fill);

    Path path_20 = Path();
    path_20.moveTo(size.width * 0.9627137, size.height * 0.6938297);
    path_20.cubicTo(
        size.width * 0.9599245,
        size.height * 0.6905498,
        size.width * 0.9566480,
        size.height * 0.6875989,
        size.width * 0.9530811,
        size.height * 0.6849501);
    path_20.cubicTo(
        size.width * 0.9528530,
        size.height * 0.6847813,
        size.width * 0.9526249,
        size.height * 0.6846302,
        size.width * 0.9523968,
        size.height * 0.6844702);
    path_20.cubicTo(
        size.width * 0.9481974,
        size.height * 0.6813148,
        size.width * 0.9433551,
        size.height * 0.6783638,
        size.width * 0.9379011,
        size.height * 0.6756351);
    path_20.lineTo(size.width * 0.9380048, size.height * 0.6755817);
    path_20.cubicTo(
        size.width * 0.9322812,
        size.height * 0.6727286,
        size.width * 0.9260600,
        size.height * 0.6702220,
        size.width * 0.9194032,
        size.height * 0.6680533);
    path_20.cubicTo(
        size.width * 0.9167695,
        size.height * 0.6671466,
        size.width * 0.9141151,
        size.height * 0.6662934,
        size.width * 0.9114192,
        size.height * 0.6655023);
    path_20.cubicTo(
        size.width * 0.9053327,
        size.height * 0.6637779,
        size.width * 0.8991321,
        size.height * 0.6623825,
        size.width * 0.8928590,
        size.height * 0.6612536);
    path_20.cubicTo(
        size.width * 0.8803127,
        size.height * 0.6590226,
        size.width * 0.8674658,
        size.height * 0.6580271,
        size.width * 0.8546499,
        size.height * 0.6580627);
    path_20.cubicTo(
        size.width * 0.8418237,
        size.height * 0.6581338,
        size.width * 0.8289871,
        size.height * 0.6592271,
        size.width * 0.8164615,
        size.height * 0.6615825);
    path_20.cubicTo(
        size.width * 0.8102299,
        size.height * 0.6627558,
        size.width * 0.8040293,
        size.height * 0.6642135,
        size.width * 0.7979636,
        size.height * 0.6660000);
    path_20.cubicTo(
        size.width * 0.7929969,
        size.height * 0.6675022,
        size.width * 0.7881132,
        size.height * 0.6692176,
        size.width * 0.7833954,
        size.height * 0.6711998);
    path_20.cubicTo(
        size.width * 0.7799322,
        size.height * 0.6725686,
        size.width * 0.7766038,
        size.height * 0.6740174,
        size.width * 0.7734413,
        size.height * 0.6755906);
    path_20.lineTo(size.width * 0.7734932, size.height * 0.6756173);
    path_20.lineTo(size.width * 0.7234325, size.height * 0.7003982);
    path_20.lineTo(size.width * 0.7226859, size.height * 0.7007626);
    path_20.lineTo(size.width * 0.7218772, size.height * 0.7011715);
    path_20.lineTo(size.width * 0.6701990, size.height * 0.7267524);
    path_20.lineTo(size.width * 0.6757359, size.height * 0.7295078);
    path_20.lineTo(size.width * 0.6843317, size.height * 0.7252502);
    path_20.cubicTo(
        size.width * 0.6907603,
        size.height * 0.7223170,
        size.width * 0.6971579,
        size.height * 0.7193305,
        size.width * 0.7035140,
        size.height * 0.7162907);
    path_20.cubicTo(
        size.width * 0.7074127,
        size.height * 0.7144419,
        size.width * 0.7112802,
        size.height * 0.7125487,
        size.width * 0.7151582,
        size.height * 0.7106643);
    path_20.lineTo(size.width * 0.7267609, size.height * 0.7049846);
    path_20.lineTo(size.width * 0.7383117, size.height * 0.6992160);
    path_20.cubicTo(
        size.width * 0.7421482,
        size.height * 0.6972606,
        size.width * 0.7459847,
        size.height * 0.6953496,
        size.width * 0.7498004,
        size.height * 0.6933764);
    path_20.cubicTo(
        size.width * 0.7560528,
        size.height * 0.6901854,
        size.width * 0.7622534,
        size.height * 0.6869234,
        size.width * 0.7684228,
        size.height * 0.6836258);
    path_20.lineTo(size.width * 0.7792478, size.height * 0.6782660);
    path_20.lineTo(size.width * 0.7792167, size.height * 0.6782483);
    path_20.cubicTo(
        size.width * 0.7878229,
        size.height * 0.6740085,
        size.width * 0.7975177,
        size.height * 0.6706398,
        size.width * 0.8078450,
        size.height * 0.6681244);
    path_20.cubicTo(
        size.width * 0.8106343,
        size.height * 0.6675377,
        size.width * 0.8134442,
        size.height * 0.6670044,
        size.width * 0.8162749,
        size.height * 0.6665333);
    path_20.cubicTo(
        size.width * 0.8287590,
        size.height * 0.6644801,
        size.width * 0.8414711,
        size.height * 0.6634402,
        size.width * 0.8541833,
        size.height * 0.6634046);
    path_20.cubicTo(
        size.width * 0.8669058,
        size.height * 0.6633335,
        size.width * 0.8795973,
        size.height * 0.6642757,
        size.width * 0.8921332,
        size.height * 0.6662222);
    path_20.cubicTo(
        size.width * 0.8983752,
        size.height * 0.6672000,
        size.width * 0.9045758,
        size.height * 0.6684621,
        size.width * 0.9106830,
        size.height * 0.6700265);
    path_20.cubicTo(
        size.width * 0.9112222,
        size.height * 0.6701598,
        size.width * 0.9117510,
        size.height * 0.6703109,
        size.width * 0.9122902,
        size.height * 0.6704531);
    path_20.cubicTo(
        size.width * 0.9193928,
        size.height * 0.6726130,
        size.width * 0.9261118,
        size.height * 0.6752084,
        size.width * 0.9322605,
        size.height * 0.6782483);
    path_20.lineTo(size.width * 0.9321879, size.height * 0.6782838);
    path_20.cubicTo(
        size.width * 0.9741920,
        size.height * 0.6991983,
        size.width * 0.9739846,
        size.height * 0.7332320,
        size.width * 0.9317835,
        size.height * 0.7541642);
    path_20.lineTo(size.width * 0.9316695, size.height * 0.7541109);
    path_20.lineTo(size.width * 0.9234989, size.height * 0.7581551);
    path_20.cubicTo(
        size.width * 0.9161785,
        size.height * 0.7614438,
        size.width * 0.9089099,
        size.height * 0.7648125,
        size.width * 0.9017140,
        size.height * 0.7682612);
    path_20.cubicTo(
        size.width * 0.8980849,
        size.height * 0.7699767,
        size.width * 0.8944973,
        size.height * 0.7717366,
        size.width * 0.8909097,
        size.height * 0.7734610);
    path_20.lineTo(size.width * 0.8801468, size.height * 0.7787407);
    path_20.lineTo(size.width * 0.8694462, size.height * 0.7840826);
    path_20.cubicTo(
        size.width * 0.8659001,
        size.height * 0.7858870,
        size.width * 0.8623228,
        size.height * 0.7876824,
        size.width * 0.8587974,
        size.height * 0.7895134);
    path_20.cubicTo(
        size.width * 0.8517155,
        size.height * 0.7931399,
        size.width * 0.8446855,
        size.height * 0.7968286,
        size.width * 0.8377176,
        size.height * 0.8006240);
    path_20.lineTo(size.width * 0.8281472, size.height * 0.8053615);
    path_20.lineTo(size.width * 0.8336738, size.height * 0.8081258);
    path_20.lineTo(size.width * 0.9371131, size.height * 0.7569285);
    path_20.lineTo(size.width * 0.9372064, size.height * 0.7569730);
    path_20.cubicTo(
        size.width * 0.9423183,
        size.height * 0.7544487,
        size.width * 0.9468909,
        size.height * 0.7517199,
        size.width * 0.9509244,
        size.height * 0.7488134);
    path_20.cubicTo(
        size.width * 0.9550097,
        size.height * 0.7459958,
        size.width * 0.9587632,
        size.height * 0.7428226,
        size.width * 0.9619775,
        size.height * 0.7392139);
    path_20.cubicTo(
        size.width * 0.9648601,
        size.height * 0.7360052,
        size.width * 0.9672553,
        size.height * 0.7324409,
        size.width * 0.9689869,
        size.height * 0.7286278);
    path_20.cubicTo(
        size.width * 0.9706977,
        size.height * 0.7248058,
        size.width * 0.9716516,
        size.height * 0.7207349,
        size.width * 0.9717346,
        size.height * 0.7166284);
    path_20.cubicTo(
        size.width * 0.9718072,
        size.height * 0.7125309,
        size.width * 0.9709984,
        size.height * 0.7084156,
        size.width * 0.9694224,
        size.height * 0.7045580);
    path_20.cubicTo(
        size.width * 0.9678359,
        size.height * 0.7007004,
        size.width * 0.9655237,
        size.height * 0.6970917,
        size.width * 0.9627137,
        size.height * 0.6938208);
    path_20.close();

    Paint paint_20_fill = Paint()..style = PaintingStyle.fill;
    paint_20_fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path_20, paint_20_fill);

    Path path_21 = Path();
    path_21.moveTo(size.width * 0.8481901, size.height * 0.4424031);
    path_21.lineTo(size.width * 0.8597410, size.height * 0.4366434);
    path_21.cubicTo(
        size.width * 0.8635774,
        size.height * 0.4346879,
        size.width * 0.8674139,
        size.height * 0.4327680,
        size.width * 0.8712400,
        size.height * 0.4308037);
    path_21.cubicTo(
        size.width * 0.8775339,
        size.height * 0.4275861,
        size.width * 0.8837863,
        size.height * 0.4243063,
        size.width * 0.8900076,
        size.height * 0.4209731);
    path_21.lineTo(size.width * 0.9004697, size.height * 0.4157912);
    path_21.lineTo(size.width * 0.9006563, size.height * 0.4158889);
    path_21.cubicTo(
        size.width * 0.9124664,
        size.height * 0.4100404,
        size.width * 0.9184596,
        size.height * 0.4027341,
        size.width * 0.9185115,
        size.height * 0.3947878);
    path_21.cubicTo(
        size.width * 0.9185633,
        size.height * 0.3868416,
        size.width * 0.9125598,
        size.height * 0.3793309,
        size.width * 0.9012266,
        size.height * 0.3736867);
    path_21.lineTo(size.width * 0.9011852, size.height * 0.3737045);
    path_21.lineTo(size.width * 0.8920813, size.height * 0.3691981);
    path_21.cubicTo(
        size.width * 0.8851342,
        size.height * 0.3654116,
        size.width * 0.8781249,
        size.height * 0.3617229,
        size.width * 0.8710534,
        size.height * 0.3581142);
    path_21.cubicTo(
        size.width * 0.8675280,
        size.height * 0.3562832,
        size.width * 0.8639507,
        size.height * 0.3544878,
        size.width * 0.8604046,
        size.height * 0.3526834);
    path_21.lineTo(size.width * 0.8497040, size.height * 0.3473415);
    path_21.lineTo(size.width * 0.8389411, size.height * 0.3420618);
    path_21.cubicTo(
        size.width * 0.8353432,
        size.height * 0.3403374,
        size.width * 0.8317659,
        size.height * 0.3385686,
        size.width * 0.8281368,
        size.height * 0.3368620);
    path_21.cubicTo(
        size.width * 0.8209409,
        size.height * 0.3334133,
        size.width * 0.8136723,
        size.height * 0.3300446,
        size.width * 0.8063416,
        size.height * 0.3267648);
    path_21.lineTo(size.width * 0.7981813, size.height * 0.3227206);
    path_21.lineTo(size.width * 0.7926340, size.height * 0.3254849);
    path_21.lineTo(size.width * 0.8961666, size.height * 0.3767266);
    path_21.lineTo(size.width * 0.8961770, size.height * 0.3767266);
    path_21.cubicTo(
        size.width * 0.9067014,
        size.height * 0.3821130,
        size.width * 0.9115332,
        size.height * 0.3891081,
        size.width * 0.9107556,
        size.height * 0.3960055);
    path_21.cubicTo(
        size.width * 0.9103823,
        size.height * 0.3990098,
        size.width * 0.9088996,
        size.height * 0.4019075,
        size.width * 0.9067014,
        size.height * 0.4044495);
    path_21.cubicTo(
        size.width * 0.9043580,
        size.height * 0.4071694,
        size.width * 0.9012785,
        size.height * 0.4094893,
        size.width * 0.8979708,
        size.height * 0.4116136);
    path_21.cubicTo(
        size.width * 0.8971309,
        size.height * 0.4120936,
        size.width * 0.8962600,
        size.height * 0.4125736,
        size.width * 0.8953475,
        size.height * 0.4130269);
    path_21.lineTo(size.width * 0.8951505, size.height * 0.4129291);
    path_21.lineTo(size.width * 0.8455564, size.height * 0.4374789);
    path_21.lineTo(size.width * 0.8441048, size.height * 0.4381900);
    path_21.lineTo(size.width * 0.8425599, size.height * 0.4389633);
    path_21.lineTo(size.width * 0.7916178, size.height * 0.4641797);
    path_21.lineTo(size.width * 0.7971548, size.height * 0.4669351);
    path_21.lineTo(size.width * 0.8058646, size.height * 0.4626242);
    path_21.cubicTo(
        size.width * 0.8122518,
        size.height * 0.4597088,
        size.width * 0.8186183,
        size.height * 0.4567490,
        size.width * 0.8249432,
        size.height * 0.4537180);
    path_21.cubicTo(
        size.width * 0.8288315,
        size.height * 0.4518692,
        size.width * 0.8327095,
        size.height * 0.4499760,
        size.width * 0.8365874,
        size.height * 0.4480917);
    path_21.lineTo(size.width * 0.8481901, size.height * 0.4424031);
    path_21.close();

    Paint paint_21_fill = Paint()..style = PaintingStyle.fill;
    paint_21_fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path_21, paint_21_fill);

    Path path_22 = Path();
    path_22.moveTo(size.width * 0.2601018, size.height * 0.4700905);
    path_22.lineTo(size.width * 0.2656284, size.height * 0.4673262);
    path_22.lineTo(size.width * 0.2560061, size.height * 0.4625620);
    path_22.cubicTo(
        size.width * 0.2490590,
        size.height * 0.4587755,
        size.width * 0.2420497,
        size.height * 0.4550868,
        size.width * 0.2349885,
        size.height * 0.4514781);
    path_22.cubicTo(
        size.width * 0.2314631,
        size.height * 0.4496471,
        size.width * 0.2278859,
        size.height * 0.4478517,
        size.width * 0.2243398,
        size.height * 0.4460473);
    path_22.lineTo(size.width * 0.2136391, size.height * 0.4407054);
    path_22.lineTo(size.width * 0.2028763, size.height * 0.4354257);
    path_22.cubicTo(
        size.width * 0.1992887,
        size.height * 0.4336924,
        size.width * 0.1957011,
        size.height * 0.4319325,
        size.width * 0.1920720,
        size.height * 0.4302259);
    path_22.cubicTo(
        size.width * 0.1849071,
        size.height * 0.4267950,
        size.width * 0.1776801,
        size.height * 0.4234441,
        size.width * 0.1703908,
        size.height * 0.4201820);
    path_22.lineTo(size.width * 0.1626142, size.height * 0.4163334);
    path_22.lineTo(size.width * 0.1627594, size.height * 0.4162622);
    path_22.cubicTo(
        size.width * 0.1541947,
        size.height * 0.4119958,
        size.width * 0.1434630,
        size.height * 0.4092315,
        size.width * 0.1318084,
        size.height * 0.4081205);
    path_22.cubicTo(
        size.width * 0.1309893,
        size.height * 0.4080316,
        size.width * 0.1301598,
        size.height * 0.4079516,
        size.width * 0.1293406,
        size.height * 0.4078805);
    path_22.cubicTo(
        size.width * 0.1262196,
        size.height * 0.4076227,
        size.width * 0.1230675,
        size.height * 0.4074983,
        size.width * 0.1199465,
        size.height * 0.4074894);
    path_22.cubicTo(
        size.width * 0.1168151,
        size.height * 0.4075072,
        size.width * 0.1136837,
        size.height * 0.4076227,
        size.width * 0.1105627,
        size.height * 0.4078716);
    path_22.cubicTo(
        size.width * 0.1082090,
        size.height * 0.4080760,
        size.width * 0.1058553,
        size.height * 0.4083427,
        size.width * 0.1035327,
        size.height * 0.4086982);
    path_22.cubicTo(
        size.width * 0.09390002,
        size.height * 0.4100404,
        size.width * 0.08503468,
        size.height * 0.4126002,
        size.width * 0.07739286,
        size.height * 0.4163778);
    path_22.lineTo(size.width * 0.08295055, size.height * 0.4191421);
    path_22.cubicTo(
        size.width * 0.08712919,
        size.height * 0.4170711,
        size.width * 0.09180552,
        size.height * 0.4154267,
        size.width * 0.09677219,
        size.height * 0.4141824);
    path_22.cubicTo(
        size.width * 0.09840009,
        size.height * 0.4138801,
        size.width * 0.1000384,
        size.height * 0.4136135,
        size.width * 0.1016766,
        size.height * 0.4133824);
    path_22.cubicTo(
        size.width * 0.1047251,
        size.height * 0.4129735,
        size.width * 0.1077839,
        size.height * 0.4126358,
        size.width * 0.1108530,
        size.height * 0.4124580);
    path_22.cubicTo(
        size.width * 0.1139326,
        size.height * 0.4122536,
        size.width * 0.1170329,
        size.height * 0.4121469,
        size.width * 0.1201020,
        size.height * 0.4121647);
    path_22.cubicTo(
        size.width * 0.1231919,
        size.height * 0.4121469,
        size.width * 0.1262818,
        size.height * 0.4122625,
        size.width * 0.1293510,
        size.height * 0.4124669);
    path_22.cubicTo(
        size.width * 0.1324306,
        size.height * 0.4126535,
        size.width * 0.1354997,
        size.height * 0.4129913,
        size.width * 0.1385482,
        size.height * 0.4134091);
    path_22.cubicTo(
        size.width * 0.1406945,
        size.height * 0.4137024,
        size.width * 0.1428201,
        size.height * 0.4140846,
        size.width * 0.1449354,
        size.height * 0.4144934);
    path_22.cubicTo(
        size.width * 0.1491244,
        size.height * 0.4156223,
        size.width * 0.1530852,
        size.height * 0.4170622,
        size.width * 0.1566832,
        size.height * 0.4188043);
    path_22.lineTo(size.width * 0.1565795, size.height * 0.4188577);
    path_22.lineTo(size.width * 0.2601122, size.height * 0.4700994);
    path_22.close();

    Paint paint_22_fill = Paint()..style = PaintingStyle.fill;
    paint_22_fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path_22, paint_22_fill);

    Path path_23 = Path();
    path_23.moveTo(size.width * 0.7402611, size.height * 0.4893428);
    path_23.lineTo(size.width * 0.7385088, size.height * 0.4902227);
    path_23.lineTo(size.width * 0.6877741, size.height * 0.5153414);
    path_23.lineTo(size.width * 0.6933111, size.height * 0.5180968);
    path_23.lineTo(size.width * 0.7020416, size.height * 0.5137770);
    path_23.cubicTo(
        size.width * 0.7084288,
        size.height * 0.5108616,
        size.width * 0.7147849,
        size.height * 0.5079107,
        size.width * 0.7210891,
        size.height * 0.5048797);
    path_23.cubicTo(
        size.width * 0.7249774,
        size.height * 0.5030309,
        size.width * 0.7288554,
        size.height * 0.5011377,
        size.width * 0.7327230,
        size.height * 0.4992534);
    path_23.lineTo(size.width * 0.7443360, size.height * 0.4935737);
    path_23.lineTo(size.width * 0.7558765, size.height * 0.4878140);
    path_23.cubicTo(
        size.width * 0.7597130,
        size.height * 0.4858585,
        size.width * 0.7635495,
        size.height * 0.4839386,
        size.width * 0.7673755,
        size.height * 0.4819743);
    path_23.cubicTo(
        size.width * 0.7736383,
        size.height * 0.4787745,
        size.width * 0.7798492,
        size.height * 0.4755124,
        size.width * 0.7860291,
        size.height * 0.4721970);
    path_23.lineTo(size.width * 0.7968230, size.height * 0.4668551);
    path_23.lineTo(size.width * 0.7912964, size.height * 0.4640908);
    path_23.lineTo(size.width * 0.7419408, size.height * 0.4885251);
    path_23.lineTo(size.width * 0.7402611, size.height * 0.4893517);
    path_23.close();

    Paint paint_23_fill = Paint()..style = PaintingStyle.fill;
    paint_23_fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path_23, paint_23_fill);

    Path path_24 = Path();
    path_24.moveTo(size.width * 0.2936450, size.height * 0.5374113);
    path_24.cubicTo(
        size.width * 0.2961853,
        size.height * 0.5344248,
        size.width * 0.2998662,
        size.height * 0.5316250,
        size.width * 0.3046566,
        size.height * 0.5291629);
    path_24.lineTo(size.width * 0.3046981, size.height * 0.5291807);
    path_24.cubicTo(
        size.width * 0.3097996,
        size.height * 0.5266564,
        size.width * 0.3143619,
        size.height * 0.5239365,
        size.width * 0.3183953,
        size.height * 0.5210389);
    path_24.cubicTo(
        size.width * 0.3224910,
        size.height * 0.5182213,
        size.width * 0.3262549,
        size.height * 0.5150392,
        size.width * 0.3294692,
        size.height * 0.5114216);
    path_24.cubicTo(
        size.width * 0.3323518,
        size.height * 0.5082040,
        size.width * 0.3347469,
        size.height * 0.5046486,
        size.width * 0.3364785,
        size.height * 0.5008355);
    path_24.cubicTo(
        size.width * 0.3381894,
        size.height * 0.4970135,
        size.width * 0.3391433,
        size.height * 0.4929337,
        size.width * 0.3392263,
        size.height * 0.4888362);
    path_24.cubicTo(
        size.width * 0.3392989,
        size.height * 0.4847386,
        size.width * 0.3384901,
        size.height * 0.4806233,
        size.width * 0.3369244,
        size.height * 0.4767657);
    path_24.cubicTo(
        size.width * 0.3353276,
        size.height * 0.4729081,
        size.width * 0.3330257,
        size.height * 0.4692994,
        size.width * 0.3302158,
        size.height * 0.4660285);
    path_24.cubicTo(
        size.width * 0.3274266,
        size.height * 0.4627487,
        size.width * 0.3241500,
        size.height * 0.4597977,
        size.width * 0.3205935,
        size.height * 0.4571490);
    path_24.cubicTo(
        size.width * 0.3203343,
        size.height * 0.4569623,
        size.width * 0.3200647,
        size.height * 0.4567845,
        size.width * 0.3198055,
        size.height * 0.4565979);
    path_24.cubicTo(
        size.width * 0.3155854,
        size.height * 0.4534336,
        size.width * 0.3107120,
        size.height * 0.4504738,
        size.width * 0.3052269,
        size.height * 0.4477361);
    path_24.lineTo(size.width * 0.2996692, size.height * 0.4504915);
    path_24.cubicTo(
        size.width * 0.3415385,
        size.height * 0.4713438,
        size.width * 0.3414556,
        size.height * 0.5052175,
        size.width * 0.2996485,
        size.height * 0.5261764);
    path_24.lineTo(size.width * 0.2995967, size.height * 0.5261497);
    path_24.cubicTo(
        size.width * 0.2974503,
        size.height * 0.5272252,
        size.width * 0.2955010,
        size.height * 0.5283540,
        size.width * 0.2937383,
        size.height * 0.5295362);
    path_24.cubicTo(
        size.width * 0.2939353,
        size.height * 0.5293584,
        size.width * 0.2941427,
        size.height * 0.5291718,
        size.width * 0.2943397,
        size.height * 0.5289940);
    path_24.cubicTo(
        size.width * 0.2909802,
        size.height * 0.5309495,
        size.width * 0.2879317,
        size.height * 0.5335271,
        size.width * 0.2856506,
        size.height * 0.5367447);
    path_24.cubicTo(
        size.width * 0.2852047,
        size.height * 0.5373669,
        size.width * 0.2848003,
        size.height * 0.5380158,
        size.width * 0.2844271,
        size.height * 0.5386913);
    path_24.cubicTo(
        size.width * 0.2843338,
        size.height * 0.5388424,
        size.width * 0.2842508,
        size.height * 0.5390024,
        size.width * 0.2841679,
        size.height * 0.5391535);
    path_24.cubicTo(
        size.width * 0.2841471,
        size.height * 0.5391890,
        size.width * 0.2841264,
        size.height * 0.5392335,
        size.width * 0.2841056,
        size.height * 0.5392690);
    path_24.cubicTo(
        size.width * 0.2826125,
        size.height * 0.5419089,
        size.width * 0.2818349,
        size.height * 0.5446732,
        size.width * 0.2818141,
        size.height * 0.5475086);
    path_24.cubicTo(
        size.width * 0.2817312,
        size.height * 0.5555348,
        size.width * 0.2875896,
        size.height * 0.5631877,
        size.width * 0.2987464,
        size.height * 0.5689119);
    path_24.lineTo(size.width * 0.2982280, size.height * 0.5691696);
    path_24.lineTo(size.width * 0.3088456, size.height * 0.5744227);
    path_24.cubicTo(
        size.width * 0.3150877,
        size.height * 0.5777647,
        size.width * 0.3213608,
        size.height * 0.5810535,
        size.width * 0.3276858,
        size.height * 0.5842799);
    path_24.cubicTo(
        size.width * 0.3315015,
        size.height * 0.5862532,
        size.width * 0.3353380,
        size.height * 0.5881731,
        size.width * 0.3391848,
        size.height * 0.5901285);
    path_24.lineTo(size.width * 0.3507357, size.height * 0.5958793);
    path_24.lineTo(size.width * 0.3623384, size.height * 0.6015679);
    path_24.cubicTo(
        size.width * 0.3662163,
        size.height * 0.6034434,
        size.width * 0.3700839,
        size.height * 0.6053455,
        size.width * 0.3739722,
        size.height * 0.6071943);
    path_24.cubicTo(
        size.width * 0.3803075,
        size.height * 0.6102341,
        size.width * 0.3866740,
        size.height * 0.6131940,
        size.width * 0.3930819,
        size.height * 0.6161183);
    path_24.lineTo(size.width * 0.4017606, size.height * 0.6204114);
    path_24.lineTo(size.width * 0.4020095, size.height * 0.6202869);
    path_24.cubicTo(
        size.width * 0.4066962,
        size.height * 0.6225712,
        size.width * 0.4120154,
        size.height * 0.6244023,
        size.width * 0.4177597,
        size.height * 0.6257622);
    path_24.cubicTo(
        size.width * 0.4143380,
        size.height * 0.6250689,
        size.width * 0.4109474,
        size.height * 0.6242245,
        size.width * 0.4076294,
        size.height * 0.6231934);
    path_24.cubicTo(
        size.width * 0.4133011,
        size.height * 0.6256377,
        size.width * 0.4194602,
        size.height * 0.6272732,
        size.width * 0.4257230,
        size.height * 0.6283220);
    path_24.cubicTo(
        size.width * 0.4288543,
        size.height * 0.6288731,
        size.width * 0.4320272,
        size.height * 0.6292198,
        size.width * 0.4352104,
        size.height * 0.6294775);
    path_24.cubicTo(
        size.width * 0.4383833,
        size.height * 0.6297175,
        size.width * 0.4415873,
        size.height * 0.6298153,
        size.width * 0.4447809,
        size.height * 0.6298153);
    path_24.cubicTo(
        size.width * 0.4479848,
        size.height * 0.6297709,
        size.width * 0.4511680,
        size.height * 0.6296375,
        size.width * 0.4543513,
        size.height * 0.6293442);
    path_24.cubicTo(
        size.width * 0.4575241,
        size.height * 0.6290331,
        size.width * 0.4606866,
        size.height * 0.6286154,
        size.width * 0.4638076,
        size.height * 0.6280110);
    path_24.cubicTo(
        size.width * 0.4700393,
        size.height * 0.6268199,
        size.width * 0.4761362,
        size.height * 0.6250156,
        size.width * 0.4817146,
        size.height * 0.6224201);
    path_24.cubicTo(
        size.width * 0.4804600,
        size.height * 0.6228468,
        size.width * 0.4791950,
        size.height * 0.6232379,
        size.width * 0.4779196,
        size.height * 0.6236201);
    path_24.cubicTo(
        size.width * 0.4811650,
        size.height * 0.6225268,
        size.width * 0.4842549,
        size.height * 0.6212646,
        size.width * 0.4871582,
        size.height * 0.6198247);
    path_24.lineTo(size.width * 0.4871064, size.height * 0.6197981);
    path_24.lineTo(size.width * 0.4946652, size.height * 0.6160560);
    path_24.cubicTo(
        size.width * 0.5010835,
        size.height * 0.6131317,
        size.width * 0.5074707,
        size.height * 0.6101541,
        size.width * 0.5138061,
        size.height * 0.6071143);
    path_24.cubicTo(
        size.width * 0.5176944,
        size.height * 0.6052655,
        size.width * 0.5215723,
        size.height * 0.6033723,
        size.width * 0.5254503,
        size.height * 0.6014879);
    path_24.lineTo(size.width * 0.5370530, size.height * 0.5957993);
    path_24.lineTo(size.width * 0.5486038, size.height * 0.5900396);
    path_24.cubicTo(
        size.width * 0.5524403,
        size.height * 0.5880842,
        size.width * 0.5562768,
        size.height * 0.5861732,
        size.width * 0.5601029,
        size.height * 0.5842000);
    path_24.cubicTo(
        size.width * 0.5663656,
        size.height * 0.5810001,
        size.width * 0.5725973,
        size.height * 0.5777292,
        size.width * 0.5787875,
        size.height * 0.5744138);
    path_24.lineTo(size.width * 0.5893740, size.height * 0.5691696);
    path_24.lineTo(size.width * 0.5896955, size.height * 0.5693296);
    path_24.lineTo(size.width * 0.5984053, size.height * 0.5650188);
    path_24.cubicTo(
        size.width * 0.6047925,
        size.height * 0.5621034,
        size.width * 0.6111589,
        size.height * 0.5591435,
        size.width * 0.6174735,
        size.height * 0.5561126);
    path_24.cubicTo(
        size.width * 0.6213618,
        size.height * 0.5542638,
        size.width * 0.6252294,
        size.height * 0.5523705,
        size.width * 0.6291073,
        size.height * 0.5504862);
    path_24.lineTo(size.width * 0.6407204, size.height * 0.5448065);
    path_24.lineTo(size.width * 0.6522609, size.height * 0.5390468);
    path_24.cubicTo(
        size.width * 0.6560974,
        size.height * 0.5370914,
        size.width * 0.6599338,
        size.height * 0.5351715,
        size.width * 0.6637599,
        size.height * 0.5332071);
    path_24.cubicTo(
        size.width * 0.6700538,
        size.height * 0.5299895,
        size.width * 0.6762958,
        size.height * 0.5267097,
        size.width * 0.6825171,
        size.height * 0.5233765);
    path_24.lineTo(size.width * 0.6932074, size.height * 0.5180790);
    path_24.lineTo(size.width * 0.6876808, size.height * 0.5153236);
    path_24.lineTo(size.width * 0.6382423, size.height * 0.5397934);
    path_24.lineTo(size.width * 0.6366351, size.height * 0.5405756);
    path_24.lineTo(size.width * 0.6349243, size.height * 0.5414289);
    path_24.lineTo(size.width * 0.5843348, size.height * 0.5664676);
    path_24.lineTo(size.width * 0.5840134, size.height * 0.5663076);
    path_24.lineTo(size.width * 0.5338905, size.height * 0.5911151);
    path_24.lineTo(size.width * 0.5329677, size.height * 0.5915684);
    path_24.lineTo(size.width * 0.5320863, size.height * 0.5920040);
    path_24.lineTo(size.width * 0.4806777, size.height * 0.6174515);
    path_24.cubicTo(
        size.width * 0.4646682,
        size.height * 0.6250333,
        size.width * 0.4418257,
        size.height * 0.6268377,
        size.width * 0.4228612,
        size.height * 0.6226601);
    path_24.cubicTo(
        size.width * 0.4225294,
        size.height * 0.6225890,
        size.width * 0.4222079,
        size.height * 0.6225179,
        size.width * 0.4218761,
        size.height * 0.6224379);
    path_24.cubicTo(
        size.width * 0.4214718,
        size.height * 0.6223401,
        size.width * 0.4210777,
        size.height * 0.6222424,
        size.width * 0.4206837,
        size.height * 0.6221446);
    path_24.cubicTo(
        size.width * 0.4182263,
        size.height * 0.6215224,
        size.width * 0.4157793,
        size.height * 0.6207936,
        size.width * 0.4133737,
        size.height * 0.6199314);
    path_24.cubicTo(
        size.width * 0.4133944,
        size.height * 0.6199403,
        size.width * 0.4134152,
        size.height * 0.6199492,
        size.width * 0.4134359,
        size.height * 0.6199580);
    path_24.cubicTo(
        size.width * 0.4112066,
        size.height * 0.6191581,
        size.width * 0.4090706,
        size.height * 0.6182515,
        size.width * 0.4070591,
        size.height * 0.6172471);
    path_24.lineTo(size.width * 0.4067895, size.height * 0.6173804);
    path_24.lineTo(size.width * 0.3564074, size.height * 0.5924395);
    path_24.lineTo(size.width * 0.3547795, size.height * 0.5916218);
    path_24.lineTo(size.width * 0.3532553, size.height * 0.5908752);
    path_24.lineTo(size.width * 0.3038168, size.height * 0.5664053);
    path_24.lineTo(size.width * 0.3043352, size.height * 0.5661387);
    path_24.cubicTo(
        size.width * 0.2998766,
        size.height * 0.5638544,
        size.width * 0.2964238,
        size.height * 0.5612767,
        size.width * 0.2939560,
        size.height * 0.5585391);
    path_24.cubicTo(
        size.width * 0.2935413,
        size.height * 0.5580147,
        size.width * 0.2931265,
        size.height * 0.5574903,
        size.width * 0.2927532,
        size.height * 0.5569392);
    path_24.cubicTo(
        size.width * 0.2909076,
        size.height * 0.5542193,
        size.width * 0.2897463,
        size.height * 0.5511262,
        size.width * 0.2897359,
        size.height * 0.5479886);
    path_24.cubicTo(
        size.width * 0.2896633,
        size.height * 0.5448421,
        size.width * 0.2907417,
        size.height * 0.5417222,
        size.width * 0.2924940,
        size.height * 0.5389668);
    path_24.cubicTo(
        size.width * 0.2928466,
        size.height * 0.5384157,
        size.width * 0.2932406,
        size.height * 0.5378824,
        size.width * 0.2936450,
        size.height * 0.5373580);
    path_24.close();

    Paint paint_24_fill = Paint()..style = PaintingStyle.fill;
    paint_24_fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path_24, paint_24_fill);

    Path path_25 = Path();
    path_25.moveTo(size.width * 0.8028058, size.height * 0.7841093);
    path_25.cubicTo(
        size.width * 0.8092034,
        size.height * 0.7811939,
        size.width * 0.8155698,
        size.height * 0.7782252,
        size.width * 0.8218948,
        size.height * 0.7751942);
    path_25.cubicTo(
        size.width * 0.8257831,
        size.height * 0.7733454,
        size.width * 0.8296610,
        size.height * 0.7714522,
        size.width * 0.8335390,
        size.height * 0.7695678);
    path_25.lineTo(size.width * 0.8451521, size.height * 0.7638881);
    path_25.lineTo(size.width * 0.8566926, size.height * 0.7581285);
    path_25.cubicTo(
        size.width * 0.8605290,
        size.height * 0.7561730,
        size.width * 0.8643655,
        size.height * 0.7542531,
        size.width * 0.8681916,
        size.height * 0.7522888);
    path_25.cubicTo(
        size.width * 0.8744647,
        size.height * 0.7490800,
        size.width * 0.8806964,
        size.height * 0.7458091,
        size.width * 0.8868969,
        size.height * 0.7424937);
    path_25.lineTo(size.width * 0.8973280, size.height * 0.7373296);
    path_25.lineTo(size.width * 0.8974939, size.height * 0.7374096);
    path_25.cubicTo(
        size.width * 0.9093143,
        size.height * 0.7315699,
        size.width * 0.9152971,
        size.height * 0.7242636,
        size.width * 0.9153490,
        size.height * 0.7163085);
    path_25.cubicTo(
        size.width * 0.9154008,
        size.height * 0.7083622,
        size.width * 0.9093869,
        size.height * 0.7008426,
        size.width * 0.8980745,
        size.height * 0.6952163);
    path_25.lineTo(size.width * 0.8980330, size.height * 0.6952340);
    path_25.cubicTo(
        size.width * 0.8894995,
        size.height * 0.6910209,
        size.width * 0.8788404,
        size.height * 0.6882744,
        size.width * 0.8672791,
        size.height * 0.6871811);
    path_25.cubicTo(
        size.width * 0.8664496,
        size.height * 0.6870922,
        size.width * 0.8656201,
        size.height * 0.6870122,
        size.width * 0.8647802,
        size.height * 0.6869323);
    path_25.cubicTo(
        size.width * 0.8616592,
        size.height * 0.6866745,
        size.width * 0.8585175,
        size.height * 0.6865501,
        size.width * 0.8553861,
        size.height * 0.6865412);
    path_25.cubicTo(
        size.width * 0.8522443,
        size.height * 0.6865501,
        size.width * 0.8491129,
        size.height * 0.6866745,
        size.width * 0.8460023,
        size.height * 0.6869234);
    path_25.cubicTo(
        size.width * 0.8436382,
        size.height * 0.6871367,
        size.width * 0.8412741,
        size.height * 0.6874033,
        size.width * 0.8389308,
        size.height * 0.6877589);
    path_25.cubicTo(
        size.width * 0.8295055,
        size.height * 0.6890744,
        size.width * 0.8208164,
        size.height * 0.6915631,
        size.width * 0.8132990,
        size.height * 0.6952163);
    path_25.lineTo(size.width * 0.8132783, size.height * 0.6952163);
    path_25.cubicTo(
        size.width * 0.8132783,
        size.height * 0.6952163,
        size.width * 0.8051180,
        size.height * 0.6992427,
        size.width * 0.8051180,
        size.height * 0.6992427);
    path_25.cubicTo(
        size.width * 0.7977977,
        size.height * 0.7025314,
        size.width * 0.7905188,
        size.height * 0.7058912,
        size.width * 0.7833228,
        size.height * 0.7093488);
    path_25.cubicTo(
        size.width * 0.7796937,
        size.height * 0.7110554,
        size.width * 0.7761165,
        size.height * 0.7128242,
        size.width * 0.7725185,
        size.height * 0.7145486);
    path_25.lineTo(size.width * 0.7617556, size.height * 0.7198283);
    path_25.lineTo(size.width * 0.7510550, size.height * 0.7251791);
    path_25.cubicTo(
        size.width * 0.7475089,
        size.height * 0.7269746,
        size.width * 0.7439316,
        size.height * 0.7287700,
        size.width * 0.7404063,
        size.height * 0.7306010);
    path_25.cubicTo(
        size.width * 0.7333243,
        size.height * 0.7342186,
        size.width * 0.7262943,
        size.height * 0.7379162,
        size.width * 0.7193368,
        size.height * 0.7417027);
    path_25.lineTo(size.width * 0.7097560, size.height * 0.7464402);
    path_25.lineTo(size.width * 0.7152826, size.height * 0.7492045);
    path_25.lineTo(size.width * 0.8183798, size.height * 0.6981850);
    path_25.lineTo(size.width * 0.8183798, size.height * 0.6981850);
    path_25.cubicTo(
        size.width * 0.8225480,
        size.height * 0.6961318,
        size.width * 0.8272036,
        size.height * 0.6944874,
        size.width * 0.8321392,
        size.height * 0.6932430);
    path_25.cubicTo(
        size.width * 0.8337878,
        size.height * 0.6929408,
        size.width * 0.8354468,
        size.height * 0.6926653,
        size.width * 0.8371059,
        size.height * 0.6924253);
    path_25.cubicTo(
        size.width * 0.8401647,
        size.height * 0.6920164,
        size.width * 0.8432131,
        size.height * 0.6916787,
        size.width * 0.8462926,
        size.height * 0.6914920);
    path_25.cubicTo(
        size.width * 0.8493722,
        size.height * 0.6912876,
        size.width * 0.8524724,
        size.height * 0.6911720,
        size.width * 0.8555416,
        size.height * 0.6911987);
    path_25.cubicTo(
        size.width * 0.8586419,
        size.height * 0.6911809,
        size.width * 0.8617214,
        size.height * 0.6912876,
        size.width * 0.8647906,
        size.height * 0.6915009);
    path_25.cubicTo(
        size.width * 0.8678701,
        size.height * 0.6916876,
        size.width * 0.8709393,
        size.height * 0.6920253,
        size.width * 0.8739877,
        size.height * 0.6924431);
    path_25.cubicTo(
        size.width * 0.8761341,
        size.height * 0.6927453,
        size.width * 0.8782597,
        size.height * 0.6931186,
        size.width * 0.8803749,
        size.height * 0.6935275);
    path_25.cubicTo(
        size.width * 0.8847609,
        size.height * 0.6947096,
        size.width * 0.8888877,
        size.height * 0.6962206,
        size.width * 0.8926205,
        size.height * 0.6980783);
    path_25.lineTo(size.width * 0.8926724, size.height * 0.6980517);
    path_25.cubicTo(
        size.width * 0.9034456,
        size.height * 0.7034647,
        size.width * 0.9084019,
        size.height * 0.7105399,
        size.width * 0.9076138,
        size.height * 0.7175173);
    path_25.cubicTo(
        size.width * 0.9072405,
        size.height * 0.7205216,
        size.width * 0.9057578,
        size.height * 0.7234281,
        size.width * 0.9035492,
        size.height * 0.7259702);
    path_25.cubicTo(
        size.width * 0.9012163,
        size.height * 0.7286722,
        size.width * 0.8981471,
        size.height * 0.7309921,
        size.width * 0.8948498,
        size.height * 0.7331076);
    path_25.cubicTo(
        size.width * 0.8940307,
        size.height * 0.7335787,
        size.width * 0.8931908,
        size.height * 0.7340409,
        size.width * 0.8922991,
        size.height * 0.7344942);
    path_25.lineTo(size.width * 0.8921228, size.height * 0.7344053);
    path_25.lineTo(size.width * 0.8426843, size.height * 0.7588751);
    path_25.lineTo(size.width * 0.8410771, size.height * 0.7596662);
    path_25.lineTo(size.width * 0.8393974, size.height * 0.7605017);
    path_25.lineTo(size.width * 0.7885902, size.height * 0.7856470);
    path_25.lineTo(size.width * 0.7941271, size.height * 0.7884024);
    path_25.lineTo(size.width * 0.8028162, size.height * 0.7841004);
    path_25.close();

    Paint paint_25_fill = Paint()..style = PaintingStyle.fill;
    paint_25_fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path_25, paint_25_fill);

    Path path_26 = Path();
    path_26.moveTo(size.width * 0.8280331, size.height * 0.8053970);
    path_26.lineTo(size.width * 0.8198314, size.height * 0.8094591);
    path_26.cubicTo(
        size.width * 0.8198314,
        size.height * 0.8094591,
        size.width * 0.8198625,
        size.height * 0.8094413,
        size.width * 0.8198729,
        size.height * 0.8094324);
    path_26.cubicTo(
        size.width * 0.8125421,
        size.height * 0.8127211,
        size.width * 0.8052736,
        size.height * 0.8160898,
        size.width * 0.7980776,
        size.height * 0.8195385);
    path_26.cubicTo(
        size.width * 0.7944485,
        size.height * 0.8212540,
        size.width * 0.7908609,
        size.height * 0.8230139,
        size.width * 0.7872733,
        size.height * 0.8247471);
    path_26.lineTo(size.width * 0.7765105, size.height * 0.8300268);
    path_26.lineTo(size.width * 0.7658099, size.height * 0.8353688);
    path_26.cubicTo(
        size.width * 0.7622534,
        size.height * 0.8371731,
        size.width * 0.7586865,
        size.height * 0.8389686,
        size.width * 0.7551611,
        size.height * 0.8407996);
    path_26.cubicTo(
        size.width * 0.7480688,
        size.height * 0.8444350,
        size.width * 0.7410180,
        size.height * 0.8481325,
        size.width * 0.7340502,
        size.height * 0.8519279);
    path_26.cubicTo(
        size.width * 0.7340502,
        size.height * 0.8519279,
        size.width * 0.7340709,
        size.height * 0.8519190,
        size.width * 0.7340813,
        size.height * 0.8519101);
    path_26.lineTo(size.width * 0.7245212, size.height * 0.8566388);
    path_26.lineTo(size.width * 0.7245523, size.height * 0.8566565);
    path_26.cubicTo(
        size.width * 0.7224786,
        size.height * 0.8577054,
        size.width * 0.7205811,
        size.height * 0.8588075,
        size.width * 0.7188702,
        size.height * 0.8599452);
    path_26.cubicTo(
        size.width * 0.7190672,
        size.height * 0.8597675,
        size.width * 0.7192642,
        size.height * 0.8595897,
        size.width * 0.7194612,
        size.height * 0.8594119);
    path_26.cubicTo(
        size.width * 0.7161121,
        size.height * 0.8613674,
        size.width * 0.7130533,
        size.height * 0.8639450,
        size.width * 0.7107722,
        size.height * 0.8671626);
    path_26.cubicTo(
        size.width * 0.7103263,
        size.height * 0.8677759,
        size.width * 0.7099219,
        size.height * 0.8684248,
        size.width * 0.7095486,
        size.height * 0.8690914);
    path_26.cubicTo(
        size.width * 0.7094346,
        size.height * 0.8692692,
        size.width * 0.7093413,
        size.height * 0.8694559,
        size.width * 0.7092376,
        size.height * 0.8696425);
    path_26.cubicTo(
        size.width * 0.7092376,
        size.height * 0.8696514,
        size.width * 0.7092272,
        size.height * 0.8696603,
        size.width * 0.7092168,
        size.height * 0.8696781);
    path_26.cubicTo(
        size.width * 0.7077237,
        size.height * 0.8723268,
        size.width * 0.7069461,
        size.height * 0.8750822,
        size.width * 0.7069150,
        size.height * 0.8779265);
    path_26.cubicTo(
        size.width * 0.7068320,
        size.height * 0.8859794,
        size.width * 0.7127215,
        size.height * 0.8936501,
        size.width * 0.7239509,
        size.height * 0.8993831);
    path_26.lineTo(size.width * 0.7241376, size.height * 0.8992943);
    path_26.cubicTo(
        size.width * 0.7652707,
        size.height * 0.9201998,
        size.width * 0.7649078,
        size.height * 0.9538336,
        size.width * 0.7232147,
        size.height * 0.9746502);
    path_26.lineTo(size.width * 0.7230696, size.height * 0.9745791);
    path_26.cubicTo(
        size.width * 0.7076926,
        size.height * 0.9821876,
        size.width * 0.6888525,
        size.height * 0.9870318,
        size.width * 0.6690688,
        size.height * 0.9891384);
    path_26.cubicTo(
        size.width * 0.6668706,
        size.height * 0.9893606,
        size.width * 0.6646620,
        size.height * 0.9895561,
        size.width * 0.6624638,
        size.height * 0.9897072);
    path_26.cubicTo(
        size.width * 0.6570513,
        size.height * 0.9900894,
        size.width * 0.6516181,
        size.height * 0.9903027,
        size.width * 0.6461848,
        size.height * 0.9902850);
    path_26.cubicTo(
        size.width * 0.6407515,
        size.height * 0.9903027,
        size.width * 0.6353286,
        size.height * 0.9901072,
        size.width * 0.6299265,
        size.height * 0.9897339);
    path_26.cubicTo(
        size.width * 0.6278527,
        size.height * 0.9896006,
        size.width * 0.6257893,
        size.height * 0.9894139,
        size.width * 0.6237259,
        size.height * 0.9892184);
    path_26.cubicTo(
        size.width * 0.6037141,
        size.height * 0.9871474,
        size.width * 0.5846666,
        size.height * 0.9822765,
        size.width * 0.5691963,
        size.height * 0.9745702);
    path_26.lineTo(size.width * 0.5691963, size.height * 0.9745702);
    path_26.cubicTo(
        size.width * 0.5691963,
        size.height * 0.9745702,
        size.width * 0.5603102,
        size.height * 0.9701794,
        size.width * 0.5603102,
        size.height * 0.9701794);
    path_26.cubicTo(
        size.width * 0.5603102,
        size.height * 0.9701794,
        size.width * 0.5603102,
        size.height * 0.9701794,
        size.width * 0.5603102,
        size.height * 0.9701794);
    path_26.cubicTo(
        size.width * 0.5533320,
        size.height * 0.9663751,
        size.width * 0.5462916,
        size.height * 0.9626775,
        size.width * 0.5391993,
        size.height * 0.9590422);
    path_26.cubicTo(
        size.width * 0.5356636,
        size.height * 0.9572112,
        size.width * 0.5320967,
        size.height * 0.9554246,
        size.width * 0.5285505,
        size.height * 0.9536203);
    path_26.lineTo(size.width * 0.5178499, size.height * 0.9482783);
    path_26.lineTo(size.width * 0.5070871, size.height * 0.9429986);
    path_26.cubicTo(
        size.width * 0.5034995,
        size.height * 0.9412742,
        size.width * 0.4999119,
        size.height * 0.9395143,
        size.width * 0.4962828,
        size.height * 0.9377989);
    path_26.cubicTo(
        size.width * 0.4890868,
        size.height * 0.9343591,
        size.width * 0.4818390,
        size.height * 0.9309992,
        size.width * 0.4745290,
        size.height * 0.9277194);
    path_26.lineTo(size.width * 0.4663273, size.height * 0.9236574);
    path_26.lineTo(size.width * 0.4607799, size.height * 0.9264217);
    path_26.lineTo(size.width * 0.5636386, size.height * 0.9773345);
    path_26.lineTo(size.width * 0.5635972, size.height * 0.9773523);
    path_26.cubicTo(
        size.width * 0.5720374,
        size.height * 0.9815477,
        size.width * 0.5815456,
        size.height * 0.9850319,
        size.width * 0.5919559,
        size.height * 0.9877429);
    path_26.cubicTo(
        size.width * 0.5988304,
        size.height * 0.9898405,
        size.width * 0.6059227,
        size.height * 0.9914671,
        size.width * 0.6130979,
        size.height * 0.9926404);
    path_26.cubicTo(
        size.width * 0.6238607,
        size.height * 0.9944181,
        size.width * 0.6348309,
        size.height * 0.9952536,
        size.width * 0.6457804,
        size.height * 0.9952625);
    path_26.cubicTo(
        size.width * 0.6512655,
        size.height * 0.9952447,
        size.width * 0.6567403,
        size.height * 0.9950314,
        size.width * 0.6622046,
        size.height * 0.9945958);
    path_26.cubicTo(
        size.width * 0.6676586,
        size.height * 0.9941425,
        size.width * 0.6730919,
        size.height * 0.9935115,
        size.width * 0.6784629,
        size.height * 0.9925960);
    path_26.cubicTo(
        size.width * 0.6841865,
        size.height * 0.9916538,
        size.width * 0.6898479,
        size.height * 0.9904183,
        size.width * 0.6953952,
        size.height * 0.9888984);
    path_26.cubicTo(
        size.width * 0.7075682,
        size.height * 0.9860896,
        size.width * 0.7185903,
        size.height * 0.9822587,
        size.width * 0.7282540,
        size.height * 0.9775212);
    path_26.lineTo(size.width * 0.7283888, size.height * 0.9775834);
    path_26.cubicTo(
        size.width * 0.7335110,
        size.height * 0.9750413,
        size.width * 0.7381044,
        size.height * 0.9723126,
        size.width * 0.7421378,
        size.height * 0.9694061);
    path_26.cubicTo(
        size.width * 0.7462128,
        size.height * 0.9665884,
        size.width * 0.7499663,
        size.height * 0.9634242,
        size.width * 0.7531703,
        size.height * 0.9598244);
    path_26.cubicTo(
        size.width * 0.7560528,
        size.height * 0.9566156,
        size.width * 0.7584480,
        size.height * 0.9530514,
        size.width * 0.7601796,
        size.height * 0.9492383);
    path_26.cubicTo(
        size.width * 0.7618904,
        size.height * 0.9454162,
        size.width * 0.7628444,
        size.height * 0.9413365,
        size.width * 0.7629170,
        size.height * 0.9372300);
    path_26.cubicTo(
        size.width * 0.7629895,
        size.height * 0.9331413,
        size.width * 0.7621911,
        size.height * 0.9290171,
        size.width * 0.7606151,
        size.height * 0.9251595);
    path_26.cubicTo(
        size.width * 0.7590183,
        size.height * 0.9213020,
        size.width * 0.7567060,
        size.height * 0.9177022,
        size.width * 0.7538961,
        size.height * 0.9144312);
    path_26.cubicTo(
        size.width * 0.7511069,
        size.height * 0.9111514,
        size.width * 0.7478303,
        size.height * 0.9082005,
        size.width * 0.7442738,
        size.height * 0.9055517);
    path_26.cubicTo(
        size.width * 0.7439939,
        size.height * 0.9053473,
        size.width * 0.7436932,
        size.height * 0.9051517,
        size.width * 0.7434132,
        size.height * 0.9049473);
    path_26.cubicTo(
        size.width * 0.7392138,
        size.height * 0.9018097,
        size.width * 0.7343716,
        size.height * 0.8988676,
        size.width * 0.7289176,
        size.height * 0.8961478);
    path_26.lineTo(size.width * 0.7287413, size.height * 0.8962366);
    path_26.cubicTo(
        size.width * 0.7246456,
        size.height * 0.8940590,
        size.width * 0.7214209,
        size.height * 0.8916236,
        size.width * 0.7190983,
        size.height * 0.8890459);
    path_26.cubicTo(
        size.width * 0.7186732,
        size.height * 0.8885126,
        size.width * 0.7182585,
        size.height * 0.8879793,
        size.width * 0.7178748,
        size.height * 0.8874104);
    path_26.cubicTo(
        size.width * 0.7160188,
        size.height * 0.8846995,
        size.width * 0.7148678,
        size.height * 0.8816063,
        size.width * 0.7148471,
        size.height * 0.8784598);
    path_26.cubicTo(
        size.width * 0.7147745,
        size.height * 0.8753133,
        size.width * 0.7158529,
        size.height * 0.8721935,
        size.width * 0.7176052,
        size.height * 0.8694381);
    path_26.cubicTo(
        size.width * 0.7179474,
        size.height * 0.8688870,
        size.width * 0.7183414,
        size.height * 0.8683626,
        size.width * 0.7187458,
        size.height * 0.8678382);
    path_26.cubicTo(
        size.width * 0.7213587,
        size.height * 0.8647628,
        size.width * 0.7251641,
        size.height * 0.8618740,
        size.width * 0.7301722,
        size.height * 0.8593675);
    path_26.lineTo(size.width * 0.7301411, size.height * 0.8593497);
    path_26.lineTo(size.width * 0.8335597, size.height * 0.8081702);
    path_26.lineTo(size.width * 0.8280124, size.height * 0.8054148);
    path_26.close();

    Paint paint_26_fill = Paint()..style = PaintingStyle.fill;
    paint_26_fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path_26, paint_26_fill);

    Path path_27 = Path();
    path_27.moveTo(size.width * 0.7182792, size.height * 0.8264715);
    path_27.cubicTo(
        size.width * 0.7221675,
        size.height * 0.8246227,
        size.width * 0.7260351,
        size.height * 0.8227295,
        size.width * 0.7299130,
        size.height * 0.8208451);
    path_27.lineTo(size.width * 0.7415157, size.height * 0.8151654);
    path_27.lineTo(size.width * 0.7530562, size.height * 0.8094057);
    path_27.cubicTo(
        size.width * 0.7568927,
        size.height * 0.8074503,
        size.width * 0.7607291,
        size.height * 0.8055304,
        size.width * 0.7645552,
        size.height * 0.8035660);
    path_27.cubicTo(
        size.width * 0.7708180,
        size.height * 0.8003662,
        size.width * 0.7770393,
        size.height * 0.7970953,
        size.width * 0.7832191,
        size.height * 0.7937888);
    path_27.lineTo(size.width * 0.7940027, size.height * 0.7884468);
    path_27.lineTo(size.width * 0.7884761, size.height * 0.7856825);
    path_27.lineTo(size.width * 0.7390272, size.height * 0.8101612);
    path_27.lineTo(size.width * 0.7374408, size.height * 0.8109434);
    path_27.lineTo(size.width * 0.7358647, size.height * 0.8117345);
    path_27.lineTo(size.width * 0.6849538, size.height * 0.8369331);
    path_27.lineTo(size.width * 0.6851093, size.height * 0.8370131);
    path_27.cubicTo(
        size.width * 0.6812936,
        size.height * 0.8389508,
        size.width * 0.6777578,
        size.height * 0.8410040,
        size.width * 0.6745124,
        size.height * 0.8431728);
    path_27.cubicTo(
        size.width * 0.6689651,
        size.height * 0.8466660,
        size.width * 0.6638844,
        size.height * 0.8508257,
        size.width * 0.6598198,
        size.height * 0.8557588);
    path_27.cubicTo(
        size.width * 0.6571861,
        size.height * 0.8589231,
        size.width * 0.6550190,
        size.height * 0.8624340,
        size.width * 0.6534637,
        size.height * 0.8661582);
    path_27.cubicTo(
        size.width * 0.6519395,
        size.height * 0.8699003,
        size.width * 0.6510996,
        size.height * 0.8738734,
        size.width * 0.6510581,
        size.height * 0.8778821);
    path_27.cubicTo(
        size.width * 0.6510270,
        size.height * 0.8818819,
        size.width * 0.6517943,
        size.height * 0.8858728,
        size.width * 0.6532667,
        size.height * 0.8896237);
    path_27.cubicTo(
        size.width * 0.6547598,
        size.height * 0.8933746,
        size.width * 0.6568647,
        size.height * 0.8969033,
        size.width * 0.6594673,
        size.height * 0.9001120);
    path_27.cubicTo(
        size.width * 0.6624638,
        size.height * 0.9038362,
        size.width * 0.6660515,
        size.height * 0.9071072,
        size.width * 0.6699709,
        size.height * 0.9100048);
    path_27.cubicTo(
        size.width * 0.6742013,
        size.height * 0.9132846,
        size.width * 0.6791058,
        size.height * 0.9163600,
        size.width * 0.6846427,
        size.height * 0.9191954);
    path_27.lineTo(size.width * 0.6847879, size.height * 0.9191243);
    path_27.cubicTo(
        size.width * 0.6943169,
        size.height * 0.9241552,
        size.width * 0.6990036,
        size.height * 0.9305193,
        size.width * 0.6988999,
        size.height * 0.9369011);
    path_27.cubicTo(
        size.width * 0.6988273,
        size.height * 0.9403321,
        size.width * 0.6972616,
        size.height * 0.9436830,
        size.width * 0.6947627,
        size.height * 0.9465717);
    path_27.cubicTo(
        size.width * 0.6924401,
        size.height * 0.9492560,
        size.width * 0.6893917,
        size.height * 0.9515670,
        size.width * 0.6861047,
        size.height * 0.9536825);
    path_27.cubicTo(
        size.width * 0.6854619,
        size.height * 0.9540558,
        size.width * 0.6847879,
        size.height * 0.9544202,
        size.width * 0.6840932,
        size.height * 0.9547846);
    path_27.lineTo(size.width * 0.6837199, size.height * 0.9545980);
    path_27.cubicTo(
        size.width * 0.6677519,
        size.height * 0.9624998,
        size.width * 0.6445673,
        size.height * 0.9644552,
        size.width * 0.6253020,
        size.height * 0.9602866);
    path_27.cubicTo(
        size.width * 0.6248458,
        size.height * 0.9601799,
        size.width * 0.6243792,
        size.height * 0.9600910,
        size.width * 0.6239229,
        size.height * 0.9599755);
    path_27.cubicTo(
        size.width * 0.6235911,
        size.height * 0.9598955,
        size.width * 0.6232593,
        size.height * 0.9598155,
        size.width * 0.6229275,
        size.height * 0.9597355);
    path_27.cubicTo(
        size.width * 0.6204390,
        size.height * 0.9591044,
        size.width * 0.6179609,
        size.height * 0.9583667,
        size.width * 0.6155346,
        size.height * 0.9574956);
    path_27.cubicTo(
        size.width * 0.6155657,
        size.height * 0.9575134,
        size.width * 0.6155968,
        size.height * 0.9575223,
        size.width * 0.6156279,
        size.height * 0.9575400);
    path_27.cubicTo(
        size.width * 0.6133882,
        size.height * 0.9567312,
        size.width * 0.6112419,
        size.height * 0.9558335,
        size.width * 0.6092200,
        size.height * 0.9548202);
    path_27.lineTo(size.width * 0.6089504, size.height * 0.9549535);
    path_27.lineTo(size.width * 0.5582157, size.height * 0.9298437);
    path_27.lineTo(size.width * 0.5569300, size.height * 0.9292038);
    path_27.lineTo(size.width * 0.5555613, size.height * 0.9285283);
    path_27.lineTo(size.width * 0.5059776, size.height * 0.9039785);
    path_27.lineTo(size.width * 0.5061124, size.height * 0.9039073);
    path_27.cubicTo(
        size.width * 0.5003888,
        size.height * 0.9010542,
        size.width * 0.4941675,
        size.height * 0.8985476,
        size.width * 0.4875004,
        size.height * 0.8963789);
    path_27.cubicTo(
        size.width * 0.4848667,
        size.height * 0.8954722,
        size.width * 0.4822123,
        size.height * 0.8946190,
        size.width * 0.4795268,
        size.height * 0.8938279);
    path_27.cubicTo(
        size.width * 0.4734403,
        size.height * 0.8921035,
        size.width * 0.4672397,
        size.height * 0.8907081,
        size.width * 0.4609666,
        size.height * 0.8895792);
    path_27.cubicTo(
        size.width * 0.4484203,
        size.height * 0.8873482,
        size.width * 0.4355733,
        size.height * 0.8863527,
        size.width * 0.4227575,
        size.height * 0.8863883);
    path_27.cubicTo(
        size.width * 0.4099313,
        size.height * 0.8864594,
        size.width * 0.3970947,
        size.height * 0.8875527,
        size.width * 0.3845691,
        size.height * 0.8899081);
    path_27.cubicTo(
        size.width * 0.3783271,
        size.height * 0.8910814,
        size.width * 0.3721265,
        size.height * 0.8925391,
        size.width * 0.3660608,
        size.height * 0.8943256);
    path_27.cubicTo(
        size.width * 0.3611149,
        size.height * 0.8958278,
        size.width * 0.3562415,
        size.height * 0.8975344,
        size.width * 0.3515237,
        size.height * 0.8995076);
    path_27.cubicTo(
        size.width * 0.3482679,
        size.height * 0.9007964,
        size.width * 0.3451261,
        size.height * 0.9021652,
        size.width * 0.3421192,
        size.height * 0.9036318);
    path_27.lineTo(size.width * 0.3419740, size.height * 0.9035607);
    path_27.cubicTo(
        size.width * 0.3259231,
        size.height * 0.9114981,
        size.width * 0.3025932,
        size.height * 0.9134446,
        size.width * 0.2832761,
        size.height * 0.9091871);
    path_27.cubicTo(
        size.width * 0.2829443,
        size.height * 0.9091071,
        size.width * 0.2826022,
        size.height * 0.9090449,
        size.width * 0.2822704,
        size.height * 0.9089649);
    path_27.cubicTo(
        size.width * 0.2818763,
        size.height * 0.9088760,
        size.width * 0.2814927,
        size.height * 0.9087782,
        size.width * 0.2811090,
        size.height * 0.9086804);
    path_27.cubicTo(
        size.width * 0.2786413,
        size.height * 0.9080493,
        size.width * 0.2761942,
        size.height * 0.9073205,
        size.width * 0.2737783,
        size.height * 0.9064583);
    path_27.cubicTo(
        size.width * 0.2738094,
        size.height * 0.9064761,
        size.width * 0.2738405,
        size.height * 0.9064850,
        size.width * 0.2738716,
        size.height * 0.9065028);
    path_27.cubicTo(
        size.width * 0.2716319,
        size.height * 0.9056939,
        size.width * 0.2694856,
        size.height * 0.9047873,
        size.width * 0.2674533,
        size.height * 0.9037829);
    path_27.lineTo(size.width * 0.2673911, size.height * 0.9038096);
    path_27.lineTo(size.width * 0.2153707, size.height * 0.8780598);
    path_27.lineTo(size.width * 0.2150597, size.height * 0.8778998);
    path_27.lineTo(size.width * 0.2147693, size.height * 0.8777576);
    path_27.lineTo(size.width * 0.1640243, size.height * 0.8526390);
    path_27.lineTo(size.width * 0.1584978, size.height * 0.8554033);
    path_27.lineTo(size.width * 0.1692813, size.height * 0.8607452);
    path_27.cubicTo(
        size.width * 0.1754612,
        size.height * 0.8640517,
        size.width * 0.1816824,
        size.height * 0.8673226,
        size.width * 0.1879452,
        size.height * 0.8705225);
    path_27.cubicTo(
        size.width * 0.1917609,
        size.height * 0.8724957,
        size.width * 0.1955974,
        size.height * 0.8744156,
        size.width * 0.1994442,
        size.height * 0.8763621);
    path_27.lineTo(size.width * 0.2109847, size.height * 0.8821218);
    path_27.lineTo(size.width * 0.2225874, size.height * 0.8878104);
    path_27.cubicTo(
        size.width * 0.2264654,
        size.height * 0.8896859,
        size.width * 0.2303329,
        size.height * 0.8915791,
        size.width * 0.2342212,
        size.height * 0.8934368);
    path_27.cubicTo(
        size.width * 0.2405151,
        size.height * 0.8964500,
        size.width * 0.2468505,
        size.height * 0.8994009,
        size.width * 0.2532169,
        size.height * 0.9023074);
    path_27.lineTo(size.width * 0.2620097, size.height * 0.9066539);
    path_27.lineTo(size.width * 0.2620408, size.height * 0.9066361);
    path_27.cubicTo(
        size.width * 0.2668208,
        size.height * 0.9089915,
        size.width * 0.2722644,
        size.height * 0.9108759,
        size.width * 0.2781747,
        size.height * 0.9122802);
    path_27.cubicTo(
        size.width * 0.2747322,
        size.height * 0.9115780,
        size.width * 0.2713313,
        size.height * 0.9107425,
        size.width * 0.2679925,
        size.height * 0.9097026);
    path_27.cubicTo(
        size.width * 0.2736642,
        size.height * 0.9121469,
        size.width * 0.2798233,
        size.height * 0.9137824,
        size.width * 0.2860861,
        size.height * 0.9148312);
    path_27.cubicTo(
        size.width * 0.2892175,
        size.height * 0.9153734,
        size.width * 0.2923903,
        size.height * 0.9157289,
        size.width * 0.2955839,
        size.height * 0.9159867);
    path_27.cubicTo(
        size.width * 0.2987568,
        size.height * 0.9162267,
        size.width * 0.3019607,
        size.height * 0.9163245,
        size.width * 0.3051543,
        size.height * 0.9163156);
    path_27.cubicTo(
        size.width * 0.3083583,
        size.height * 0.9162711,
        size.width * 0.3115519,
        size.height * 0.9161378,
        size.width * 0.3147248,
        size.height * 0.9158445);
    path_27.cubicTo(
        size.width * 0.3178976,
        size.height * 0.9155334,
        size.width * 0.3210601,
        size.height * 0.9151156,
        size.width * 0.3241811,
        size.height * 0.9145112);
    path_27.cubicTo(
        size.width * 0.3304128,
        size.height * 0.9133202,
        size.width * 0.3365096,
        size.height * 0.9115158,
        size.width * 0.3420881,
        size.height * 0.9089204);
    path_27.cubicTo(
        size.width * 0.3408542,
        size.height * 0.9093471,
        size.width * 0.3395996,
        size.height * 0.9097293,
        size.width * 0.3383553,
        size.height * 0.9101026);
    path_27.cubicTo(
        size.width * 0.3413623,
        size.height * 0.9090893,
        size.width * 0.3442240,
        size.height * 0.9079249,
        size.width * 0.3469407,
        size.height * 0.9066094);
    path_27.lineTo(size.width * 0.3470755, size.height * 0.9066805);
    path_27.cubicTo(
        size.width * 0.3557438,
        size.height * 0.9023874,
        size.width * 0.3655216,
        size.height * 0.8989921,
        size.width * 0.3759423,
        size.height * 0.8964500);
    path_27.cubicTo(
        size.width * 0.3787315,
        size.height * 0.8958633,
        size.width * 0.3815207,
        size.height * 0.8953389,
        size.width * 0.3843410,
        size.height * 0.8948678);
    path_27.cubicTo(
        size.width * 0.3968251,
        size.height * 0.8928146,
        size.width * 0.4095372,
        size.height * 0.8917747,
        size.width * 0.4222494,
        size.height * 0.8917391);
    path_27.cubicTo(
        size.width * 0.4349616,
        size.height * 0.8916680,
        size.width * 0.4476738,
        size.height * 0.8926102,
        size.width * 0.4601993,
        size.height * 0.8945567);
    path_27.cubicTo(
        size.width * 0.4664517,
        size.height * 0.8955345,
        size.width * 0.4726522,
        size.height * 0.8967966,
        size.width * 0.4787491,
        size.height * 0.8983610);
    path_27.cubicTo(
        size.width * 0.4792883,
        size.height * 0.8984943,
        size.width * 0.4798275,
        size.height * 0.8986543,
        size.width * 0.4803666,
        size.height * 0.8987965);
    path_27.cubicTo(
        size.width * 0.4875211,
        size.height * 0.9009653,
        size.width * 0.4942712,
        size.height * 0.9035785,
        size.width * 0.5004510,
        size.height * 0.9066539);
    path_27.lineTo(size.width * 0.5003474, size.height * 0.9067072);
    path_27.lineTo(size.width * 0.5110480, size.height * 0.9120047);
    path_27.cubicTo(
        size.width * 0.5172589,
        size.height * 0.9153290,
        size.width * 0.5235113,
        size.height * 0.9186088,
        size.width * 0.5297948,
        size.height * 0.9218264);
    path_27.cubicTo(
        size.width * 0.5336209,
        size.height * 0.9237996,
        size.width * 0.5374574,
        size.height * 0.9257195,
        size.width * 0.5412938,
        size.height * 0.9276661);
    path_27.lineTo(size.width * 0.5528343, size.height * 0.9334258);
    path_27.lineTo(size.width * 0.5644474, size.height * 0.9391144);
    path_27.cubicTo(
        size.width * 0.5683253,
        size.height * 0.9409898,
        size.width * 0.5721929,
        size.height * 0.9428919,
        size.width * 0.5760812,
        size.height * 0.9447407);
    path_27.cubicTo(
        size.width * 0.5824062,
        size.height * 0.9477717,
        size.width * 0.5887726,
        size.height * 0.9507315,
        size.width * 0.5951598,
        size.height * 0.9536558);
    path_27.lineTo(size.width * 0.6038593, size.height * 0.9579667);
    path_27.lineTo(size.width * 0.6041081, size.height * 0.9578422);
    path_27.cubicTo(
        size.width * 0.6087948,
        size.height * 0.9601266,
        size.width * 0.6141140,
        size.height * 0.9619576,
        size.width * 0.6198687,
        size.height * 0.9633175);
    path_27.cubicTo(
        size.width * 0.6164470,
        size.height * 0.9626242,
        size.width * 0.6130564,
        size.height * 0.9617798,
        size.width * 0.6097280,
        size.height * 0.9607488);
    path_27.cubicTo(
        size.width * 0.6153998,
        size.height * 0.9631931,
        size.width * 0.6215588,
        size.height * 0.9648285,
        size.width * 0.6278112,
        size.height * 0.9658774);
    path_27.cubicTo(
        size.width * 0.6309530,
        size.height * 0.9664285,
        size.width * 0.6341155,
        size.height * 0.9667751,
        size.width * 0.6372987,
        size.height * 0.9670329);
    path_27.cubicTo(
        size.width * 0.6404716,
        size.height * 0.9672729,
        size.width * 0.6436755,
        size.height * 0.9673706,
        size.width * 0.6468691,
        size.height * 0.9673617);
    path_27.cubicTo(
        size.width * 0.6500731,
        size.height * 0.9673173,
        size.width * 0.6532563,
        size.height * 0.9671751,
        size.width * 0.6564396,
        size.height * 0.9668907);
    path_27.cubicTo(
        size.width * 0.6596124,
        size.height * 0.9665796,
        size.width * 0.6627749,
        size.height * 0.9661618,
        size.width * 0.6658959,
        size.height * 0.9655574);
    path_27.cubicTo(
        size.width * 0.6721276,
        size.height * 0.9643663,
        size.width * 0.6782244,
        size.height * 0.9625620,
        size.width * 0.6838029,
        size.height * 0.9599666);
    path_27.cubicTo(
        size.width * 0.6825690,
        size.height * 0.9603932,
        size.width * 0.6813144,
        size.height * 0.9607754,
        size.width * 0.6800597,
        size.height * 0.9611487);
    path_27.cubicTo(
        size.width * 0.6829319,
        size.height * 0.9601799,
        size.width * 0.6856693,
        size.height * 0.9590688,
        size.width * 0.6882822,
        size.height * 0.9578334);
    path_27.lineTo(size.width * 0.6886658, size.height * 0.9580200);
    path_27.cubicTo(
        size.width * 0.7004863,
        size.height * 0.9521714,
        size.width * 0.7064691,
        size.height * 0.9448741,
        size.width * 0.7065210,
        size.height * 0.9369189);
    path_27.cubicTo(
        size.width * 0.7065728,
        size.height * 0.9289727,
        size.width * 0.7005589,
        size.height * 0.9214620,
        size.width * 0.6892361,
        size.height * 0.9158267);
    path_27.lineTo(size.width * 0.6891013, size.height * 0.9158978);
    path_27.cubicTo(
        size.width * 0.6729571,
        size.height * 0.9074094,
        size.width * 0.6633348,
        size.height * 0.8969033,
        size.width * 0.6602449,
        size.height * 0.8860061);
    path_27.cubicTo(
        size.width * 0.6601827,
        size.height * 0.8857661,
        size.width * 0.6601205,
        size.height * 0.8855261,
        size.width * 0.6600583,
        size.height * 0.8852861);
    path_27.cubicTo(
        size.width * 0.6600272,
        size.height * 0.8851439,
        size.width * 0.6599961,
        size.height * 0.8850106,
        size.width * 0.6599650,
        size.height * 0.8848684);
    path_27.cubicTo(
        size.width * 0.6594880,
        size.height * 0.8827529,
        size.width * 0.6592495,
        size.height * 0.8806019,
        size.width * 0.6592702,
        size.height * 0.8784420);
    path_27.cubicTo(
        size.width * 0.6592910,
        size.height * 0.8748422,
        size.width * 0.6600375,
        size.height * 0.8712602,
        size.width * 0.6614062,
        size.height * 0.8678382);
    path_27.cubicTo(
        size.width * 0.6627438,
        size.height * 0.8644339,
        size.width * 0.6647346,
        size.height * 0.8612163,
        size.width * 0.6670883,
        size.height * 0.8582031);
    path_27.cubicTo(
        size.width * 0.6694524,
        size.height * 0.8552166,
        size.width * 0.6722105,
        size.height * 0.8524434,
        size.width * 0.6752382,
        size.height * 0.8499013);
    path_27.cubicTo(
        size.width * 0.6782244,
        size.height * 0.8473237,
        size.width * 0.6815321,
        size.height * 0.8450305,
        size.width * 0.6849331,
        size.height * 0.8428528);
    path_27.cubicTo(
        size.width * 0.6848294,
        size.height * 0.8429062,
        size.width * 0.6847361,
        size.height * 0.8429684,
        size.width * 0.6846324,
        size.height * 0.8430217);
    path_27.cubicTo(
        size.width * 0.6866024,
        size.height * 0.8418484,
        size.width * 0.6886555,
        size.height * 0.8407018,
        size.width * 0.6908433,
        size.height * 0.8395997);
    path_27.lineTo(size.width * 0.6907500, size.height * 0.8395463);
    path_27.lineTo(size.width * 0.6990761, size.height * 0.8354221);
    path_27.cubicTo(
        size.width * 0.7054944,
        size.height * 0.8324889,
        size.width * 0.7118816,
        size.height * 0.8295202,
        size.width * 0.7182273,
        size.height * 0.8264804);
    path_27.close();

    Paint paint_27_fill = Paint()..style = PaintingStyle.fill;
    paint_27_fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path_27, paint_27_fill);

    Path path_28 = Path();
    path_28.moveTo(size.width * 0.1838081, size.height * 0.3937212);
    path_28.cubicTo(
        size.width * 0.1812262,
        size.height * 0.3928324,
        size.width * 0.1786133,
        size.height * 0.3919969,
        size.width * 0.1759796,
        size.height * 0.3912236);
    path_28.cubicTo(
        size.width * 0.1698931,
        size.height * 0.3894992,
        size.width * 0.1637029,
        size.height * 0.3880949,
        size.width * 0.1574194,
        size.height * 0.3869660);
    path_28.cubicTo(
        size.width * 0.1448731,
        size.height * 0.3847350,
        size.width * 0.1320365,
        size.height * 0.3837484,
        size.width * 0.1192103,
        size.height * 0.3837751);
    path_28.cubicTo(
        size.width * 0.1063841,
        size.height * 0.3838462,
        size.width * 0.09354748,
        size.height * 0.3849395,
        size.width * 0.08102195,
        size.height * 0.3872949);
    path_28.cubicTo(
        size.width * 0.07477992,
        size.height * 0.3884682,
        size.width * 0.06857937,
        size.height * 0.3899170,
        size.width * 0.06252398,
        size.height * 0.3917124);
    path_28.cubicTo(
        size.width * 0.05757805,
        size.height * 0.3932057,
        size.width * 0.05271508,
        size.height * 0.3949123,
        size.width * 0.04800763,
        size.height * 0.3968855);
    path_28.cubicTo(
        size.width * 0.04452371,
        size.height * 0.3982543,
        size.width * 0.04117458,
        size.height * 0.3997209,
        size.width * 0.03799135,
        size.height * 0.4013030);
    path_28.lineTo(size.width * 0.04354904, size.height * 0.4040673);
    path_28.cubicTo(
        size.width * 0.05220700,
        size.height * 0.3997831,
        size.width * 0.06197443,
        size.height * 0.3963877,
        size.width * 0.07238472,
        size.height * 0.3938457);
    path_28.cubicTo(
        size.width * 0.07517394,
        size.height * 0.3932590,
        size.width * 0.07798389,
        size.height * 0.3927257,
        size.width * 0.08081457,
        size.height * 0.3922635);
    path_28.cubicTo(
        size.width * 0.09329863,
        size.height * 0.3902103,
        size.width * 0.1060108,
        size.height * 0.3891704,
        size.width * 0.1187230,
        size.height * 0.3891348);
    path_28.cubicTo(
        size.width * 0.1314351,
        size.height * 0.3890637,
        size.width * 0.1441473,
        size.height * 0.3899970,
        size.width * 0.1566729,
        size.height * 0.3919524);
    path_28.cubicTo(
        size.width * 0.1629253,
        size.height * 0.3929213,
        size.width * 0.1691258,
        size.height * 0.3941923,
        size.width * 0.1752227,
        size.height * 0.3957567);
    path_28.cubicTo(
        size.width * 0.1757515,
        size.height * 0.3958900,
        size.width * 0.1762699,
        size.height * 0.3960411,
        size.width * 0.1767987,
        size.height * 0.3961744);
    path_28.cubicTo(
        size.width * 0.1837666,
        size.height * 0.3982899,
        size.width * 0.1903508,
        size.height * 0.4008231,
        size.width * 0.1963958,
        size.height * 0.4037918);
    path_28.lineTo(size.width * 0.1961469, size.height * 0.4039162);
    path_28.lineTo(size.width * 0.2067542, size.height * 0.4091693);
    path_28.cubicTo(
        size.width * 0.2129963,
        size.height * 0.4125113,
        size.width * 0.2192694,
        size.height * 0.4158089,
        size.width * 0.2255840,
        size.height * 0.4190354);
    path_28.cubicTo(
        size.width * 0.2294101,
        size.height * 0.4210087,
        size.width * 0.2332466,
        size.height * 0.4229197,
        size.width * 0.2370830,
        size.height * 0.4248840);
    path_28.lineTo(size.width * 0.2486235, size.height * 0.4306437);
    path_28.lineTo(size.width * 0.2602366, size.height * 0.4363323);
    path_28.cubicTo(
        size.width * 0.2641146,
        size.height * 0.4382077,
        size.width * 0.2679821,
        size.height * 0.4401099,
        size.width * 0.2718704,
        size.height * 0.4419498);
    path_28.cubicTo(
        size.width * 0.2782058,
        size.height * 0.4449896,
        size.width * 0.2845722,
        size.height * 0.4479494,
        size.width * 0.2909802,
        size.height * 0.4508737);
    path_28.lineTo(size.width * 0.2996589, size.height * 0.4551668);
    path_28.lineTo(size.width * 0.3051958, size.height * 0.4524114);
    path_28.lineTo(size.width * 0.2544819, size.height * 0.4273105);
    path_28.lineTo(size.width * 0.2527089, size.height * 0.4264217);
    path_28.lineTo(size.width * 0.2508943, size.height * 0.4255329);
    path_28.lineTo(size.width * 0.2022749, size.height * 0.4014630);
    path_28.lineTo(size.width * 0.2025756, size.height * 0.4013119);
    path_28.cubicTo(
        size.width * 0.1968106,
        size.height * 0.3984410,
        size.width * 0.1905374,
        size.height * 0.3959167,
        size.width * 0.1838184,
        size.height * 0.3937301);
    path_28.close();

    Paint paint_28_fill = Paint()..style = PaintingStyle.fill;
    paint_28_fill.color = Color(0xffffc629).withOpacity(1.0);
    canvas.drawPath(path_28, paint_28_fill);

    Path path_29 = Path();
    path_29.moveTo(size.width * 0.07613824, size.height * 0.4639753);
    path_29.lineTo(size.width * 0.07632488, size.height * 0.4638864);
    path_29.cubicTo(
        size.width * 0.1175720,
        size.height * 0.4848453,
        size.width * 0.1171054,
        size.height * 0.5186123,
        size.width * 0.07507025,
        size.height * 0.5394201);
    path_29.lineTo(size.width * 0.08059683, size.height * 0.5421666);
    path_29.cubicTo(
        size.width * 0.08570866,
        size.height * 0.5396334,
        size.width * 0.09028131,
        size.height * 0.5369047,
        size.width * 0.09431478,
        size.height * 0.5340071);
    path_29.cubicTo(
        size.width * 0.09840009,
        size.height * 0.5311894,
        size.width * 0.1021640,
        size.height * 0.5280163,
        size.width * 0.1053679,
        size.height * 0.5244076);
    path_29.cubicTo(
        size.width * 0.1082505,
        size.height * 0.5211989,
        size.width * 0.1106457,
        size.height * 0.5176346,
        size.width * 0.1123773,
        size.height * 0.5138215);
    path_29.cubicTo(
        size.width * 0.1140881,
        size.height * 0.5099995,
        size.width * 0.1150420,
        size.height * 0.5059286,
        size.width * 0.1151146,
        size.height * 0.5018221);
    path_29.cubicTo(
        size.width * 0.1151872,
        size.height * 0.4977335,
        size.width * 0.1143888,
        size.height * 0.4936092,
        size.width * 0.1128127,
        size.height * 0.4897605);
    path_29.cubicTo(
        size.width * 0.1112160,
        size.height * 0.4859030,
        size.width * 0.1089141,
        size.height * 0.4822943,
        size.width * 0.1061041,
        size.height * 0.4790233);
    path_29.cubicTo(
        size.width * 0.1033149,
        size.height * 0.4757435,
        size.width * 0.1000384,
        size.height * 0.4728015,
        size.width * 0.09648186,
        size.height * 0.4701438);
    path_29.cubicTo(
        size.width * 0.09625375,
        size.height * 0.4699749,
        size.width * 0.09601526,
        size.height * 0.4698149,
        size.width * 0.09577678,
        size.height * 0.4696461);
    path_29.cubicTo(
        size.width * 0.09153593,
        size.height * 0.4664640,
        size.width * 0.08664185,
        size.height * 0.4634775,
        size.width * 0.08111527,
        size.height * 0.4607310);
    path_29.lineTo(size.width * 0.08093900, size.height * 0.4608199);
    path_29.cubicTo(
        size.width * 0.07683295,
        size.height * 0.4586333,
        size.width * 0.07359788,
        size.height * 0.4561979,
        size.width * 0.07127526,
        size.height * 0.4536025);
    path_29.cubicTo(
        size.width * 0.07085014,
        size.height * 0.4530781,
        size.width * 0.07043539,
        size.height * 0.4525448,
        size.width * 0.07007248,
        size.height * 0.4519937);
    path_29.cubicTo(
        size.width * 0.06822683,
        size.height * 0.4492827,
        size.width * 0.06706552,
        size.height * 0.4461806,
        size.width * 0.06704478,
        size.height * 0.4430430);
    path_29.cubicTo(
        size.width * 0.06697220,
        size.height * 0.4398965,
        size.width * 0.06805056,
        size.height * 0.4367856,
        size.width * 0.06980289,
        size.height * 0.4340213);
    path_29.cubicTo(
        size.width * 0.07014506,
        size.height * 0.4334702,
        size.width * 0.07053907,
        size.height * 0.4329458,
        size.width * 0.07093309,
        size.height * 0.4324214);
    path_29.cubicTo(
        size.width * 0.07354603,
        size.height * 0.4293460,
        size.width * 0.07736176,
        size.height * 0.4264573,
        size.width * 0.08236990,
        size.height * 0.4239507);
    path_29.lineTo(size.width * 0.07689516, size.height * 0.4211598);
    path_29.cubicTo(
        size.width * 0.07474882,
        size.height * 0.4222353,
        size.width * 0.07279948,
        size.height * 0.4233730,
        size.width * 0.07103678,
        size.height * 0.4245462);
    path_29.cubicTo(
        size.width * 0.07123379,
        size.height * 0.4243685,
        size.width * 0.07144116,
        size.height * 0.4241818,
        size.width * 0.07163817,
        size.height * 0.4240041);
    path_29.cubicTo(
        size.width * 0.06827867,
        size.height * 0.4259595,
        size.width * 0.06523024,
        size.height * 0.4285371,
        size.width * 0.06294910,
        size.height * 0.4317548);
    path_29.cubicTo(
        size.width * 0.06250324,
        size.height * 0.4323769,
        size.width * 0.06209886,
        size.height * 0.4330347,
        size.width * 0.06171521,
        size.height * 0.4337013);
    path_29.cubicTo(
        size.width * 0.06162189,
        size.height * 0.4338524,
        size.width * 0.06154931,
        size.height * 0.4340035,
        size.width * 0.06145599,
        size.height * 0.4341546);
    path_29.cubicTo(
        size.width * 0.06143525,
        size.height * 0.4341991,
        size.width * 0.06140415,
        size.height * 0.4342346,
        size.width * 0.06138341,
        size.height * 0.4342791);
    path_29.cubicTo(
        size.width * 0.05989030,
        size.height * 0.4369189,
        size.width * 0.05912301,
        size.height * 0.4396743,
        size.width * 0.05909190,
        size.height * 0.4425097);
    path_29.cubicTo(
        size.width * 0.05900895,
        size.height * 0.4505626,
        size.width * 0.06489844,
        size.height * 0.4582422,
        size.width * 0.07611750,
        size.height * 0.4639753);
    path_29.close();

    Paint paint_29_fill = Paint()..style = PaintingStyle.fill;
    paint_29_fill.color = Color(0xffffc629).withOpacity(1.0);
    canvas.drawPath(path_29, paint_29_fill);

    Path path_30 = Path();
    path_30.moveTo(size.width * 0.1374802, size.height * 0.6534140);
    path_30.lineTo(size.width * 0.1375216, size.height * 0.6533963);
    path_30.lineTo(size.width * 0.2398723, size.height * 0.7040602);
    path_30.lineTo(size.width * 0.2391568, size.height * 0.7044158);
    path_30.lineTo(size.width * 0.3426998, size.height * 0.7556575);
    path_30.lineTo(size.width * 0.3429279, size.height * 0.7555419);
    path_30.lineTo(size.width * 0.4461495, size.height * 0.8066236);
    path_30.lineTo(size.width * 0.4462118, size.height * 0.8065970);
    path_30.cubicTo(
        size.width * 0.4545068,
        size.height * 0.8106679,
        size.width * 0.4638076,
        size.height * 0.8140632,
        size.width * 0.4740002,
        size.height * 0.8167031);
    path_30.cubicTo(
        size.width * 0.4808747,
        size.height * 0.8188008,
        size.width * 0.4879566,
        size.height * 0.8204185,
        size.width * 0.4951318,
        size.height * 0.8215917);
    path_30.cubicTo(
        size.width * 0.5058947,
        size.height * 0.8233783,
        size.width * 0.5168649,
        size.height * 0.8242049,
        size.width * 0.5278144,
        size.height * 0.8242049);
    path_30.cubicTo(
        size.width * 0.5332891,
        size.height * 0.8241960,
        size.width * 0.5387638,
        size.height * 0.8239738,
        size.width * 0.5442386,
        size.height * 0.8235472);
    path_30.cubicTo(
        size.width * 0.5496822,
        size.height * 0.8230850,
        size.width * 0.5551258,
        size.height * 0.8224628,
        size.width * 0.5604969,
        size.height * 0.8215473);
    path_30.cubicTo(
        size.width * 0.5661997,
        size.height * 0.8206051,
        size.width * 0.5718404,
        size.height * 0.8193874,
        size.width * 0.5773669,
        size.height * 0.8178675);
    path_30.cubicTo(
        size.width * 0.5897058,
        size.height * 0.8150232,
        size.width * 0.6008731,
        size.height * 0.8111390,
        size.width * 0.6106405,
        size.height * 0.8063037);
    path_30.lineTo(size.width * 0.6050932, size.height * 0.8035394);
    path_30.cubicTo(
        size.width * 0.5896747,
        size.height * 0.8111656,
        size.width * 0.5707827,
        size.height * 0.8160187,
        size.width * 0.5509472,
        size.height * 0.8181253);
    path_30.cubicTo(
        size.width * 0.5488008,
        size.height * 0.8183386,
        size.width * 0.5466441,
        size.height * 0.8185341,
        size.width * 0.5444978,
        size.height * 0.8186763);
    path_30.cubicTo(
        size.width * 0.5390956,
        size.height * 0.8190674,
        size.width * 0.5336520,
        size.height * 0.8192630,
        size.width * 0.5282187,
        size.height * 0.8192541);
    path_30.cubicTo(
        size.width * 0.5227855,
        size.height * 0.8192719,
        size.width * 0.5173626,
        size.height * 0.8190763,
        size.width * 0.5119604,
        size.height * 0.8187030);
    path_30.cubicTo(
        size.width * 0.5098245,
        size.height * 0.8185608,
        size.width * 0.5076885,
        size.height * 0.8183741,
        size.width * 0.5055629,
        size.height * 0.8181608);
    path_30.cubicTo(
        size.width * 0.4856236,
        size.height * 0.8160809,
        size.width * 0.4666487,
        size.height * 0.8112101,
        size.width * 0.4512406,
        size.height * 0.8035305);
    path_30.lineTo(size.width * 0.4511473, size.height * 0.8035749);
    path_30.lineTo(size.width * 0.4420953, size.height * 0.7990952);
    path_30.cubicTo(
        size.width * 0.4351482,
        size.height * 0.7953087,
        size.width * 0.4281285,
        size.height * 0.7916200,
        size.width * 0.4210674,
        size.height * 0.7880113);
    path_30.cubicTo(
        size.width * 0.4175420,
        size.height * 0.7861714,
        size.width * 0.4139647,
        size.height * 0.7843848,
        size.width * 0.4104186,
        size.height * 0.7825805);
    path_30.lineTo(size.width * 0.3997180, size.height * 0.7772385);
    path_30.lineTo(size.width * 0.3889551, size.height * 0.7719677);
    path_30.cubicTo(
        size.width * 0.3853675,
        size.height * 0.7702345,
        size.width * 0.3817799,
        size.height * 0.7684746,
        size.width * 0.3781508,
        size.height * 0.7667680);
    path_30.cubicTo(
        size.width * 0.3709860,
        size.height * 0.7633282,
        size.width * 0.3637485,
        size.height * 0.7599861,
        size.width * 0.3564696,
        size.height * 0.7567152);
    path_30.lineTo(size.width * 0.3481953, size.height * 0.7526176);
    path_30.lineTo(size.width * 0.3479568, size.height * 0.7527332);
    path_30.lineTo(size.width * 0.3386145, size.height * 0.7481112);
    path_30.cubicTo(
        size.width * 0.3316778,
        size.height * 0.7443336,
        size.width * 0.3246685,
        size.height * 0.7406449,
        size.width * 0.3176177,
        size.height * 0.7370362);
    path_30.cubicTo(
        size.width * 0.3140923,
        size.height * 0.7352052,
        size.width * 0.3105150,
        size.height * 0.7334098,
        size.width * 0.3069689,
        size.height * 0.7316054);
    path_30.lineTo(size.width * 0.2962683, size.height * 0.7262635);
    path_30.lineTo(size.width * 0.2855054, size.height * 0.7209838);
    path_30.cubicTo(
        size.width * 0.2819178,
        size.height * 0.7192505,
        size.width * 0.2783302,
        size.height * 0.7174906,
        size.width * 0.2747011,
        size.height * 0.7157752);
    path_30.cubicTo(
        size.width * 0.2675466,
        size.height * 0.7123531,
        size.width * 0.2603299,
        size.height * 0.7090111,
        size.width * 0.2530510,
        size.height * 0.7057490);
    path_30.lineTo(size.width * 0.2456892, size.height * 0.7021048);
    path_30.lineTo(size.width * 0.2463942, size.height * 0.7017492);
    path_30.lineTo(size.width * 0.2367616, size.height * 0.6969850);
    path_30.cubicTo(
        size.width * 0.2298249,
        size.height * 0.6931986,
        size.width * 0.2228155,
        size.height * 0.6895188,
        size.width * 0.2157544,
        size.height * 0.6859012);
    path_30.cubicTo(
        size.width * 0.2122290,
        size.height * 0.6840702,
        size.width * 0.2086517,
        size.height * 0.6822747,
        size.width * 0.2051056,
        size.height * 0.6804704);
    path_30.lineTo(size.width * 0.1944050, size.height * 0.6751284);
    path_30.lineTo(size.width * 0.1836422, size.height * 0.6698576);
    path_30.cubicTo(
        size.width * 0.1800545,
        size.height * 0.6681333,
        size.width * 0.1764669,
        size.height * 0.6663645,
        size.width * 0.1728378,
        size.height * 0.6646490);
    path_30.cubicTo(
        size.width * 0.1657145,
        size.height * 0.6612358,
        size.width * 0.1585392,
        size.height * 0.6579205,
        size.width * 0.1513018,
        size.height * 0.6546673);
    path_30.lineTo(size.width * 0.1428927, size.height * 0.6505075);
    path_30.lineTo(size.width * 0.1428408, size.height * 0.6505342);
    path_30.lineTo(size.width * 0.1334156, size.height * 0.6458678);
    path_30.cubicTo(
        size.width * 0.1264789,
        size.height * 0.6420902,
        size.width * 0.1194695,
        size.height * 0.6384104,
        size.width * 0.1124084,
        size.height * 0.6347928);
    path_30.cubicTo(
        size.width * 0.1088830,
        size.height * 0.6329618,
        size.width * 0.1053057,
        size.height * 0.6311663,
        size.width * 0.1017596,
        size.height * 0.6293620);
    path_30.lineTo(size.width * 0.09105897, size.height * 0.6240201);
    path_30.lineTo(size.width * 0.08029613, size.height * 0.6187403);
    path_30.cubicTo(
        size.width * 0.07670852,
        size.height * 0.6170160,
        size.width * 0.07312091,
        size.height * 0.6152561,
        size.width * 0.06949182,
        size.height * 0.6135317);
    path_30.cubicTo(
        size.width * 0.06229586,
        size.height * 0.6100919,
        size.width * 0.05502732,
        size.height * 0.6067232,
        size.width * 0.04770694,
        size.height * 0.6034434);
    path_30.lineTo(size.width * 0.04001327, size.height * 0.5996391);
    path_30.lineTo(size.width * 0.04018954, size.height * 0.5995502);
    path_30.cubicTo(
        size.width * 0.02340242,
        size.height * 0.5909640,
        size.width * 0.01344836,
        size.height * 0.5802268,
        size.width * 0.01029624,
        size.height * 0.5690896);
    path_30.cubicTo(
        size.width * 0.01023402,
        size.height * 0.5688674,
        size.width * 0.01017181,
        size.height * 0.5686452,
        size.width * 0.01011997,
        size.height * 0.5684141);
    path_30.cubicTo(
        size.width * 0.01007849,
        size.height * 0.5682452,
        size.width * 0.01004739,
        size.height * 0.5680764,
        size.width * 0.01000591,
        size.height * 0.5679164);
    path_30.cubicTo(
        size.width * 0.009539313,
        size.height * 0.5658187,
        size.width * 0.009300831,
        size.height * 0.5636855,
        size.width * 0.009321568,
        size.height * 0.5615345);
    path_30.cubicTo(
        size.width * 0.009342306,
        size.height * 0.5579347,
        size.width * 0.01008886,
        size.height * 0.5543527,
        size.width * 0.01145754,
        size.height * 0.5509306);
    path_30.cubicTo(
        size.width * 0.01279512,
        size.height * 0.5475175,
        size.width * 0.01478594,
        size.height * 0.5442999,
        size.width * 0.01713966,
        size.height * 0.5412956);
    path_30.cubicTo(
        size.width * 0.01950375,
        size.height * 0.5383002,
        size.width * 0.02226185,
        size.height * 0.5355359,
        size.width * 0.02528955,
        size.height * 0.5329938);
    path_30.cubicTo(
        size.width * 0.02827577,
        size.height * 0.5304250,
        size.width * 0.03158342,
        size.height * 0.5281229,
        size.width * 0.03498439,
        size.height * 0.5259542);
    path_30.cubicTo(
        size.width * 0.03489108,
        size.height * 0.5260075,
        size.width * 0.03479776,
        size.height * 0.5260608,
        size.width * 0.03470444,
        size.height * 0.5261053);
    path_30.cubicTo(
        size.width * 0.03666414,
        size.height * 0.5249409,
        size.width * 0.03871717,
        size.height * 0.5237943,
        size.width * 0.04089462,
        size.height * 0.5227010);
    path_30.lineTo(size.width * 0.03852016, size.height * 0.5213944);
    path_30.lineTo(size.width * 0.04090499, size.height * 0.5225855);
    path_30.cubicTo(
        size.width * 0.05272544,
        size.height * 0.5167369,
        size.width * 0.05870825,
        size.height * 0.5094306,
        size.width * 0.05876010,
        size.height * 0.5014844);
    path_30.cubicTo(
        size.width * 0.05881194,
        size.height * 0.4935381,
        size.width * 0.05279803,
        size.height * 0.4860274,
        size.width * 0.04147528,
        size.height * 0.4803922);
    path_30.lineTo(size.width * 0.04133011, size.height * 0.4804633);
    path_30.cubicTo(
        size.width * 0.02518586,
        size.height * 0.4719659,
        size.width * 0.01556360,
        size.height * 0.4614598,
        size.width * 0.01247369,
        size.height * 0.4505537);
    path_30.cubicTo(
        size.width * 0.01241148,
        size.height * 0.4503315,
        size.width * 0.01235963,
        size.height * 0.4501182,
        size.width * 0.01230779,
        size.height * 0.4498960);
    path_30.cubicTo(
        size.width * 0.01225594,
        size.height * 0.4497182,
        size.width * 0.01222484,
        size.height * 0.4495405,
        size.width * 0.01218336,
        size.height * 0.4493538);
    path_30.cubicTo(
        size.width * 0.01171677,
        size.height * 0.4472650,
        size.width * 0.01147828,
        size.height * 0.4451407,
        size.width * 0.01149902,
        size.height * 0.4430075);
    path_30.cubicTo(
        size.width * 0.01151976,
        size.height * 0.4394077,
        size.width * 0.01226631,
        size.height * 0.4358168,
        size.width * 0.01363500,
        size.height * 0.4324036);
    path_30.cubicTo(
        size.width * 0.01497257,
        size.height * 0.4289905,
        size.width * 0.01696339,
        size.height * 0.4257728,
        size.width * 0.01931711,
        size.height * 0.4227686);
    path_30.cubicTo(
        size.width * 0.02168120,
        size.height * 0.4197821,
        size.width * 0.02443931,
        size.height * 0.4170089,
        size.width * 0.02746700,
        size.height * 0.4144668);
    path_30.cubicTo(
        size.width * 0.03045322,
        size.height * 0.4118980,
        size.width * 0.03376087,
        size.height * 0.4095959,
        size.width * 0.03716185,
        size.height * 0.4074183);
    path_30.cubicTo(
        size.width * 0.03708927,
        size.height * 0.4074538,
        size.width * 0.03702705,
        size.height * 0.4074983,
        size.width * 0.03695447,
        size.height * 0.4075338);
    path_30.cubicTo(
        size.width * 0.03889344,
        size.height * 0.4063783,
        size.width * 0.04091536,
        size.height * 0.4052495,
        size.width * 0.04308244,
        size.height * 0.4041651);
    path_30.lineTo(size.width * 0.03786693, size.height * 0.4012942);
    path_30.cubicTo(
        size.width * 0.03383346,
        size.height * 0.4033118,
        size.width * 0.03011105,
        size.height * 0.4054717,
        size.width * 0.02671008,
        size.height * 0.4077471);
    path_30.cubicTo(
        size.width * 0.02116276,
        size.height * 0.4112403,
        size.width * 0.01609241,
        size.height * 0.4154001,
        size.width * 0.01202783,
        size.height * 0.4203331);
    path_30.cubicTo(
        size.width * 0.009394150,
        size.height * 0.4234974,
        size.width * 0.007227067,
        size.height * 0.4270083,
        size.width * 0.005671744,
        size.height * 0.4307326);
    path_30.cubicTo(
        size.width * 0.004147528,
        size.height * 0.4344746,
        size.width * 0.003307653,
        size.height * 0.4384566,
        size.width * 0.003266178,
        size.height * 0.4424564);
    path_30.cubicTo(
        size.width * 0.003235071,
        size.height * 0.4464562,
        size.width * 0.004002364,
        size.height * 0.4504382,
        size.width * 0.005474736,
        size.height * 0.4541980);
    path_30.cubicTo(
        size.width * 0.006967846,
        size.height * 0.4579578,
        size.width * 0.009072717,
        size.height * 0.4614865,
        size.width * 0.01167529,
        size.height * 0.4646952);
    path_30.cubicTo(
        size.width * 0.01467188,
        size.height * 0.4684195,
        size.width * 0.01824912,
        size.height * 0.4716815,
        size.width * 0.02215817,
        size.height * 0.4745791);
    path_30.cubicTo(
        size.width * 0.02639901,
        size.height * 0.4778678,
        size.width * 0.03130346,
        size.height * 0.4809432,
        size.width * 0.03685078,
        size.height * 0.4837786);
    path_30.lineTo(size.width * 0.03700631, size.height * 0.4836986);
    path_30.cubicTo(
        size.width * 0.04653526,
        size.height * 0.4887295,
        size.width * 0.05122197,
        size.height * 0.4950936,
        size.width * 0.05110791,
        size.height * 0.5014666);
    path_30.cubicTo(
        size.width * 0.05110791,
        size.height * 0.5017955,
        size.width * 0.05107680,
        size.height * 0.5021332,
        size.width * 0.05104570,
        size.height * 0.5024621);
    path_30.cubicTo(
        size.width * 0.05104570,
        size.height * 0.5025332,
        size.width * 0.05104570,
        size.height * 0.5025954,
        size.width * 0.05103533,
        size.height * 0.5026665);
    path_30.cubicTo(
        size.width * 0.05067242,
        size.height * 0.5056797,
        size.width * 0.04917931,
        size.height * 0.5085951,
        size.width * 0.04698112,
        size.height * 0.5111372);
    path_30.cubicTo(
        size.width * 0.04464813,
        size.height * 0.5138393,
        size.width * 0.04159970,
        size.height * 0.5161502,
        size.width * 0.03830242,
        size.height * 0.5182657);
    path_30.cubicTo(
        size.width * 0.03737959,
        size.height * 0.5187990,
        size.width * 0.03642566,
        size.height * 0.5193234,
        size.width * 0.03539915,
        size.height * 0.5198301);
    path_30.lineTo(size.width * 0.03554431, size.height * 0.5199012);
    path_30.cubicTo(
        size.width * 0.03159379,
        size.height * 0.5218922,
        size.width * 0.02792323,
        size.height * 0.5240165,
        size.width * 0.02458447,
        size.height * 0.5262475);
    path_30.cubicTo(
        size.width * 0.01901641,
        size.height * 0.5297495,
        size.width * 0.01392532,
        size.height * 0.5339182,
        size.width * 0.009840009,
        size.height * 0.5388690);
    path_30.cubicTo(
        size.width * 0.007206329,
        size.height * 0.5420333,
        size.width * 0.005039246,
        size.height * 0.5455442,
        size.width * 0.003483923,
        size.height * 0.5492774);
    path_30.cubicTo(
        size.width * 0.001959707,
        size.height * 0.5530105,
        size.width * 0.001119832,
        size.height * 0.5569925,
        size.width * 0.001078357,
        size.height * 0.5609923);
    path_30.cubicTo(
        size.width * 0.001047251,
        size.height * 0.5649921,
        size.width * 0.001814543,
        size.height * 0.5689830,
        size.width * 0.003286916,
        size.height * 0.5727339);
    path_30.cubicTo(
        size.width * 0.004780026,
        size.height * 0.5764848,
        size.width * 0.006884896,
        size.height * 0.5800224,
        size.width * 0.009487469,
        size.height * 0.5832222);
    path_30.cubicTo(
        size.width * 0.01248406,
        size.height * 0.5869465,
        size.width * 0.01605093,
        size.height * 0.5902085,
        size.width * 0.01995998,
        size.height * 0.5930973);
    path_30.cubicTo(
        size.width * 0.02407640,
        size.height * 0.5962882,
        size.width * 0.02882532,
        size.height * 0.5992836,
        size.width * 0.03416526,
        size.height * 0.6020568);
    path_30.lineTo(size.width * 0.03397862, size.height * 0.6021457);
    path_30.lineTo(size.width * 0.1375113, size.height * 0.6533874);
    path_30.close();

    Paint paint_30_fill = Paint()..style = PaintingStyle.fill;
    paint_30_fill.color = Color(0xffffc629).withOpacity(1.0);
    canvas.drawPath(path_30, paint_30_fill);

    Path path_31 = Path();
    path_31.moveTo(size.width * 0.07722696, size.height * 0.08846639);
    path_31.cubicTo(
        size.width * 0.08003691,
        size.height * 0.08787976,
        size.width * 0.08286760,
        size.height * 0.08733756,
        size.width * 0.08570866,
        size.height * 0.08686648);
    path_31.cubicTo(
        size.width * 0.09820308,
        size.height * 0.08481325,
        size.width * 0.1109049,
        size.height * 0.08377331,
        size.width * 0.1236171,
        size.height * 0.08373776);
    path_31.cubicTo(
        size.width * 0.1363292,
        size.height * 0.08366665,
        size.width * 0.1490310,
        size.height * 0.08460882,
        size.width * 0.1615669,
        size.height * 0.08656427);
    path_31.cubicTo(
        size.width * 0.1678193,
        size.height * 0.08753311,
        size.width * 0.1740199,
        size.height * 0.08879526,
        size.width * 0.1801168,
        size.height * 0.09036851);
    path_31.cubicTo(
        size.width * 0.1806663,
        size.height * 0.09051073,
        size.width * 0.1812158,
        size.height * 0.09066183,
        size.width * 0.1817654,
        size.height * 0.09081293);
    path_31.cubicTo(
        size.width * 0.1888784,
        size.height * 0.09297282,
        size.width * 0.1956078,
        size.height * 0.09556824,
        size.width * 0.2017565,
        size.height * 0.09862585);
    path_31.lineTo(size.width * 0.2016839, size.height * 0.09866140);
    path_31.lineTo(size.width * 0.2124364, size.height * 0.1039856);
    path_31.cubicTo(
        size.width * 0.2186265,
        size.height * 0.1073009,
        size.width * 0.2248582,
        size.height * 0.1105719,
        size.width * 0.2311313,
        size.height * 0.1137717);
    path_31.cubicTo(
        size.width * 0.2349471,
        size.height * 0.1157449,
        size.width * 0.2387835,
        size.height * 0.1176559,
        size.width * 0.2426304,
        size.height * 0.1196114);
    path_31.lineTo(size.width * 0.2541709, size.height * 0.1253711);
    path_31.lineTo(size.width * 0.2657736, size.height * 0.1310597);
    path_31.cubicTo(
        size.width * 0.2696515,
        size.height * 0.1329351,
        size.width * 0.2735191,
        size.height * 0.1348373,
        size.width * 0.2774074,
        size.height * 0.1366860);
    path_31.cubicTo(
        size.width * 0.2837324,
        size.height * 0.1397170,
        size.width * 0.2901092,
        size.height * 0.1426857,
        size.width * 0.2965067,
        size.height * 0.1456011);
    path_31.lineTo(size.width * 0.3051025, size.height * 0.1498587);
    path_31.lineTo(size.width * 0.3049470, size.height * 0.1499387);
    path_31.lineTo(size.width * 0.3156580, size.height * 0.1552451);
    path_31.cubicTo(
        size.width * 0.3218689,
        size.height * 0.1585693,
        size.width * 0.3281109,
        size.height * 0.1618491,
        size.width * 0.3343944,
        size.height * 0.1650579);
    path_31.cubicTo(
        size.width * 0.3382101,
        size.height * 0.1670311,
        size.width * 0.3420466,
        size.height * 0.1689421,
        size.width * 0.3458831,
        size.height * 0.1708976);
    path_31.lineTo(size.width * 0.3574339, size.height * 0.1766572);
    path_31.lineTo(size.width * 0.3690366, size.height * 0.1823458);
    path_31.cubicTo(
        size.width * 0.3729146,
        size.height * 0.1842213,
        size.width * 0.3767821,
        size.height * 0.1861145,
        size.width * 0.3806704,
        size.height * 0.1879633);
    path_31.cubicTo(
        size.width * 0.3870058,
        size.height * 0.1910031,
        size.width * 0.3933826,
        size.height * 0.1939719,
        size.width * 0.3997905,
        size.height * 0.1968962);
    path_31.lineTo(size.width * 0.4084485, size.height * 0.2011804);
    path_31.lineTo(size.width * 0.4086974, size.height * 0.2010559);
    path_31.cubicTo(
        size.width * 0.4133944,
        size.height * 0.2033403,
        size.width * 0.4187344,
        size.height * 0.2051802,
        size.width * 0.4245098,
        size.height * 0.2065490);
    path_31.cubicTo(
        size.width * 0.4210674,
        size.height * 0.2058468,
        size.width * 0.4176664,
        size.height * 0.2050113,
        size.width * 0.4143276,
        size.height * 0.2039713);
    path_31.cubicTo(
        size.width * 0.4199994,
        size.height * 0.2064157,
        size.width * 0.4261585,
        size.height * 0.2080511,
        size.width * 0.4324109,
        size.height * 0.2091088);
    path_31.cubicTo(
        size.width * 0.4355422,
        size.height * 0.2096510,
        size.width * 0.4387151,
        size.height * 0.2100066,
        size.width * 0.4419087,
        size.height * 0.2102555);
    path_31.cubicTo(
        size.width * 0.4450816,
        size.height * 0.2104954,
        size.width * 0.4482855,
        size.height * 0.2105932,
        size.width * 0.4514791,
        size.height * 0.2105843);
    path_31.cubicTo(
        size.width * 0.4546831,
        size.height * 0.2105488,
        size.width * 0.4578663,
        size.height * 0.2104066,
        size.width * 0.4610392,
        size.height * 0.2101132);
    path_31.cubicTo(
        size.width * 0.4642120,
        size.height * 0.2098021,
        size.width * 0.4673745,
        size.height * 0.2093844,
        size.width * 0.4704955,
        size.height * 0.2087800);
    path_31.cubicTo(
        size.width * 0.4767272,
        size.height * 0.2075889,
        size.width * 0.4828241,
        size.height * 0.2057846,
        size.width * 0.4884128,
        size.height * 0.2031892);
    path_31.cubicTo(
        size.width * 0.4871582,
        size.height * 0.2036158,
        size.width * 0.4858932,
        size.height * 0.2040069,
        size.width * 0.4846179,
        size.height * 0.2043891);
    path_31.cubicTo(
        size.width * 0.4878633,
        size.height * 0.2032958,
        size.width * 0.4909532,
        size.height * 0.2020337,
        size.width * 0.4938565,
        size.height * 0.2005937);
    path_31.lineTo(size.width * 0.4938150, size.height * 0.2005760);
    path_31.lineTo(size.width * 0.5014050, size.height * 0.1968251);
    path_31.cubicTo(
        size.width * 0.5078129,
        size.height * 0.1939008,
        size.width * 0.5141897,
        size.height * 0.1909320,
        size.width * 0.5205251,
        size.height * 0.1878922);
    path_31.cubicTo(
        size.width * 0.5244238,
        size.height * 0.1860434,
        size.width * 0.5282913,
        size.height * 0.1841502,
        size.width * 0.5321693,
        size.height * 0.1822747);
    path_31.lineTo(size.width * 0.5437720, size.height * 0.1765861);
    path_31.lineTo(size.width * 0.5553228, size.height * 0.1708264);
    path_31.cubicTo(
        size.width * 0.5591593,
        size.height * 0.1688710,
        size.width * 0.5629958,
        size.height * 0.1669511,
        size.width * 0.5668115,
        size.height * 0.1649868);
    path_31.cubicTo(
        size.width * 0.5730950,
        size.height * 0.1617780,
        size.width * 0.5793370,
        size.height * 0.1584982,
        size.width * 0.5855479,
        size.height * 0.1551739);
    path_31.lineTo(size.width * 0.5962589, size.height * 0.1498676);
    path_31.lineTo(size.width * 0.5907323, size.height * 0.1471122);
    path_31.lineTo(size.width * 0.5414390, size.height * 0.1715109);
    path_31.lineTo(size.width * 0.5396970, size.height * 0.1723641);
    path_31.lineTo(size.width * 0.5379136, size.height * 0.1732530);
    path_31.lineTo(size.width * 0.4874174, size.height * 0.1982472);
    path_31.cubicTo(
        size.width * 0.4714806,
        size.height * 0.2058024,
        size.width * 0.4487729,
        size.height * 0.2076245,
        size.width * 0.4298498,
        size.height * 0.2035180);
    path_31.cubicTo(
        size.width * 0.4293935,
        size.height * 0.2034203,
        size.width * 0.4289477,
        size.height * 0.2033225,
        size.width * 0.4284914,
        size.height * 0.2032158);
    path_31.cubicTo(
        size.width * 0.4281596,
        size.height * 0.2031358,
        size.width * 0.4278278,
        size.height * 0.2030558,
        size.width * 0.4274960,
        size.height * 0.2029670);
    path_31.cubicTo(
        size.width * 0.4250075,
        size.height * 0.2023359,
        size.width * 0.4225294,
        size.height * 0.2015981,
        size.width * 0.4201031,
        size.height * 0.2007271);
    path_31.cubicTo(
        size.width * 0.4201342,
        size.height * 0.2007448,
        size.width * 0.4201756,
        size.height * 0.2007626,
        size.width * 0.4202171,
        size.height * 0.2007804);
    path_31.cubicTo(
        size.width * 0.4179671,
        size.height * 0.1999716,
        size.width * 0.4158207,
        size.height * 0.1990649,
        size.width * 0.4137885,
        size.height * 0.1980517);
    path_31.lineTo(size.width * 0.4135189, size.height * 0.1981850);
    path_31.lineTo(size.width * 0.3627635, size.height * 0.1730574);
    path_31.lineTo(size.width * 0.3615089, size.height * 0.1724264);
    path_31.lineTo(size.width * 0.3602853, size.height * 0.1718219);
    path_31.lineTo(size.width * 0.3105772, size.height * 0.1472188);
    path_31.lineTo(size.width * 0.3107328, size.height * 0.1471388);
    path_31.lineTo(size.width * 0.2598530, size.height * 0.1219579);
    path_31.lineTo(size.width * 0.2582458, size.height * 0.1211491);
    path_31.lineTo(size.width * 0.2566179, size.height * 0.1203491);
    path_31.lineTo(size.width * 0.2073764, size.height * 0.09597710);
    path_31.lineTo(size.width * 0.2074801, size.height * 0.09592377);
    path_31.cubicTo(
        size.width * 0.2017254,
        size.height * 0.09305281,
        size.width * 0.1954626,
        size.height * 0.09052851,
        size.width * 0.1887540,
        size.height * 0.08835084);
    path_31.cubicTo(
        size.width * 0.1861618,
        size.height * 0.08745311,
        size.width * 0.1835488,
        size.height * 0.08661760,
        size.width * 0.1808944,
        size.height * 0.08583542);
    path_31.cubicTo(
        size.width * 0.1748079,
        size.height * 0.08411107,
        size.width * 0.1686074,
        size.height * 0.08271559,
        size.width * 0.1623342,
        size.height * 0.08158676);
    path_31.cubicTo(
        size.width * 0.1497880,
        size.height * 0.07935577,
        size.width * 0.1369514,
        size.height * 0.07836915,
        size.width * 0.1241251,
        size.height * 0.07839582);
    path_31.cubicTo(
        size.width * 0.1112989,
        size.height * 0.07846693,
        size.width * 0.09846230,
        size.height * 0.07956020,
        size.width * 0.08593677,
        size.height * 0.08191563);
    path_31.cubicTo(
        size.width * 0.07969474,
        size.height * 0.08308890,
        size.width * 0.07349419,
        size.height * 0.08454660,
        size.width * 0.06743880,
        size.height * 0.08633317);
    path_31.cubicTo(
        size.width * 0.06248250,
        size.height * 0.08783532,
        size.width * 0.05761953,
        size.height * 0.08954189,
        size.width * 0.05290171,
        size.height * 0.09151512);
    path_31.cubicTo(
        size.width * 0.04942816,
        size.height * 0.09288394,
        size.width * 0.04607903,
        size.height * 0.09435052,
        size.width * 0.04290617,
        size.height * 0.09592377);
    path_31.lineTo(size.width * 0.04846386, size.height * 0.09867918);
    path_31.cubicTo(
        size.width * 0.05711145,
        size.height * 0.09440385,
        size.width * 0.06685814,
        size.height * 0.09100848,
        size.width * 0.07724770,
        size.height * 0.08847528);
    path_31.close();

    Paint paint_31_fill = Paint()..style = PaintingStyle.fill;
    paint_31_fill.color = Color(0xffffc629).withOpacity(1.0);
    canvas.drawPath(path_31, paint_31_fill);

    Path path_32 = Path();
    path_32.moveTo(size.width * 0.6976867, size.height * 0.2979574);
    path_32.cubicTo(
        size.width * 0.6927408,
        size.height * 0.2994596,
        size.width * 0.6878778,
        size.height * 0.3011573,
        size.width * 0.6831704,
        size.height * 0.3031305);
    path_32.cubicTo(
        size.width * 0.6796864,
        size.height * 0.3044993,
        size.width * 0.6763373,
        size.height * 0.3059659,
        size.width * 0.6731541,
        size.height * 0.3075480);
    path_32.lineTo(size.width * 0.6787118, size.height * 0.3103035);
    path_32.cubicTo(
        size.width * 0.6873594,
        size.height * 0.3060192,
        size.width * 0.6971164,
        size.height * 0.3026327,
        size.width * 0.7075060,
        size.height * 0.3000907);
    path_32.cubicTo(
        size.width * 0.7103159,
        size.height * 0.2995040,
        size.width * 0.7131363,
        size.height * 0.2989618,
        size.width * 0.7159773,
        size.height * 0.2984996);
    path_32.cubicTo(
        size.width * 0.7284614,
        size.height * 0.2964464,
        size.width * 0.7411735,
        size.height * 0.2954065,
        size.width * 0.7538753,
        size.height * 0.2953620);
    path_32.cubicTo(
        size.width * 0.7665875,
        size.height * 0.2952909,
        size.width * 0.7792997,
        size.height * 0.2962331,
        size.width * 0.7918356,
        size.height * 0.2981885);
    path_32.cubicTo(
        size.width * 0.7980776,
        size.height * 0.2991574,
        size.width * 0.8042782,
        size.height * 0.3004195,
        size.width * 0.8103854,
        size.height * 0.3019928);
    path_32.cubicTo(
        size.width * 0.8109350,
        size.height * 0.3021261,
        size.width * 0.8114741,
        size.height * 0.3022861,
        size.width * 0.8120237,
        size.height * 0.3024283);
    path_32.cubicTo(
        size.width * 0.8191885,
        size.height * 0.3046060,
        size.width * 0.8259697,
        size.height * 0.3072192,
        size.width * 0.8321496,
        size.height * 0.3103035);
    path_32.lineTo(size.width * 0.8377280, size.height * 0.3075480);
    path_32.cubicTo(
        size.width * 0.8319629,
        size.height * 0.3046771,
        size.width * 0.8256898,
        size.height * 0.3021528,
        size.width * 0.8189812,
        size.height * 0.2999751);
    path_32.cubicTo(
        size.width * 0.8163993,
        size.height * 0.2990863,
        size.width * 0.8137864,
        size.height * 0.2982419,
        size.width * 0.8111423,
        size.height * 0.2974686);
    path_32.cubicTo(
        size.width * 0.8050558,
        size.height * 0.2957442,
        size.width * 0.7988553,
        size.height * 0.2943487,
        size.width * 0.7925821,
        size.height * 0.2932110);
    path_32.cubicTo(
        size.width * 0.7800359,
        size.height * 0.2909800,
        size.width * 0.7671993,
        size.height * 0.2899934,
        size.width * 0.7543730,
        size.height * 0.2900201);
    path_32.cubicTo(
        size.width * 0.7415468,
        size.height * 0.2900912,
        size.width * 0.7287102,
        size.height * 0.2911845,
        size.width * 0.7161847,
        size.height * 0.2935399);
    path_32.cubicTo(
        size.width * 0.7099530,
        size.height * 0.2947132,
        size.width * 0.7037421,
        size.height * 0.2961709,
        size.width * 0.6976867,
        size.height * 0.2979574);
    path_32.close();

    Paint paint_32_fill = Paint()..style = PaintingStyle.fill;
    paint_32_fill.color = Color(0xffffc629).withOpacity(1.0);
    canvas.drawPath(path_32, paint_32_fill);

    Path path_33 = Path();
    path_33.moveTo(size.width * 0.2615949, size.height * 0.1620980);
    path_33.cubicTo(
        size.width * 0.2546375,
        size.height * 0.1583027,
        size.width * 0.2476074,
        size.height * 0.1546140,
        size.width * 0.2405255,
        size.height * 0.1509875);
    path_33.cubicTo(
        size.width * 0.2369897,
        size.height * 0.1491565,
        size.width * 0.2334332,
        size.height * 0.1473610,
        size.width * 0.2298767,
        size.height * 0.1455567);
    path_33.lineTo(size.width * 0.2191761, size.height * 0.1402147);
    path_33.lineTo(size.width * 0.2084133, size.height * 0.1349350);
    path_33.cubicTo(
        size.width * 0.2048256,
        size.height * 0.1332018,
        size.width * 0.2012380,
        size.height * 0.1314419,
        size.width * 0.1976090,
        size.height * 0.1297353);
    path_33.cubicTo(
        size.width * 0.1904026,
        size.height * 0.1262866,
        size.width * 0.1831341,
        size.height * 0.1229179,
        size.width * 0.1758137,
        size.height * 0.1196292);
    path_33.lineTo(size.width * 0.1676534, size.height * 0.1155938);
    path_33.lineTo(size.width * 0.1676016, size.height * 0.1156205);
    path_33.cubicTo(
        size.width * 0.1590473,
        size.height * 0.1113718,
        size.width * 0.1483363,
        size.height * 0.1086164,
        size.width * 0.1367129,
        size.height * 0.1075054);
    path_33.cubicTo(
        size.width * 0.1358834,
        size.height * 0.1074165,
        size.width * 0.1350642,
        size.height * 0.1073365,
        size.width * 0.1342347,
        size.height * 0.1072654);
    path_33.cubicTo(
        size.width * 0.1311137,
        size.height * 0.1070076,
        size.width * 0.1279720,
        size.height * 0.1068832,
        size.width * 0.1248406,
        size.height * 0.1068743);
    path_33.cubicTo(
        size.width * 0.1217092,
        size.height * 0.1068921,
        size.width * 0.1185778,
        size.height * 0.1070076,
        size.width * 0.1154568,
        size.height * 0.1072565);
    path_33.cubicTo(
        size.width * 0.1130927,
        size.height * 0.1074609,
        size.width * 0.1107390,
        size.height * 0.1077276,
        size.width * 0.1083956,
        size.height * 0.1080831);
    path_33.cubicTo(
        size.width * 0.09877337,
        size.height * 0.1094253,
        size.width * 0.08991840,
        size.height * 0.1119851,
        size.width * 0.08228695,
        size.height * 0.1157538);
    path_33.lineTo(size.width * 0.08783426, size.height * 0.1185181);
    path_33.cubicTo(
        size.width * 0.09200253,
        size.height * 0.1164560,
        size.width * 0.09667887,
        size.height * 0.1148028,
        size.width * 0.1016352,
        size.height * 0.1135673);
    path_33.cubicTo(
        size.width * 0.1032734,
        size.height * 0.1132651,
        size.width * 0.1049117,
        size.height * 0.1129895,
        size.width * 0.1065707,
        size.height * 0.1127584);
    path_33.cubicTo(
        size.width * 0.1096192,
        size.height * 0.1123496,
        size.width * 0.1126780,
        size.height * 0.1120118,
        size.width * 0.1157575,
        size.height * 0.1118251);
    path_33.cubicTo(
        size.width * 0.1188370,
        size.height * 0.1116207,
        size.width * 0.1219373,
        size.height * 0.1115141,
        size.width * 0.1250065,
        size.height * 0.1115318);
    path_33.cubicTo(
        size.width * 0.1281068,
        size.height * 0.1115141,
        size.width * 0.1311863,
        size.height * 0.1116296,
        size.width * 0.1342555,
        size.height * 0.1118340);
    path_33.cubicTo(
        size.width * 0.1373350,
        size.height * 0.1120207,
        size.width * 0.1404042,
        size.height * 0.1123585,
        size.width * 0.1434526,
        size.height * 0.1127673);
    path_33.cubicTo(
        size.width * 0.1455886,
        size.height * 0.1130606,
        size.width * 0.1477246,
        size.height * 0.1134428,
        size.width * 0.1498398,
        size.height * 0.1138517);
    path_33.cubicTo(
        size.width * 0.1542258,
        size.height * 0.1150339,
        size.width * 0.1583630,
        size.height * 0.1165449,
        size.width * 0.1620854,
        size.height * 0.1184026);
    path_33.lineTo(size.width * 0.1621580, size.height * 0.1183670);
    path_33.lineTo(size.width * 0.2655558, size.height * 0.1695376);
    path_33.lineTo(size.width * 0.2653899, size.height * 0.1696176);
    path_33.lineTo(size.width * 0.3682486, size.height * 0.2205216);
    path_33.lineTo(size.width * 0.3682175, size.height * 0.2205393);
    path_33.cubicTo(
        size.width * 0.3766473,
        size.height * 0.2247436,
        size.width * 0.3861556,
        size.height * 0.2282189,
        size.width * 0.3965762,
        size.height * 0.2309299);
    path_33.cubicTo(
        size.width * 0.4034507,
        size.height * 0.2330276,
        size.width * 0.4105430,
        size.height * 0.2346542,
        size.width * 0.4177286,
        size.height * 0.2358363);
    path_33.cubicTo(
        size.width * 0.4284914,
        size.height * 0.2376140,
        size.width * 0.4394617,
        size.height * 0.2384406,
        size.width * 0.4504111,
        size.height * 0.2384495);
    path_33.cubicTo(
        size.width * 0.4558962,
        size.height * 0.2384317,
        size.width * 0.4613710,
        size.height * 0.2382184,
        size.width * 0.4668353,
        size.height * 0.2377918);
    path_33.cubicTo(
        size.width * 0.4722893,
        size.height * 0.2373385,
        size.width * 0.4777226,
        size.height * 0.2367074,
        size.width * 0.4830936,
        size.height * 0.2357919);
    path_33.cubicTo(
        size.width * 0.4888172,
        size.height * 0.2348497,
        size.width * 0.4944786,
        size.height * 0.2336231,
        size.width * 0.5000156,
        size.height * 0.2321032);
    path_33.cubicTo(
        size.width * 0.5123337,
        size.height * 0.2292589,
        size.width * 0.5234802,
        size.height * 0.2253835,
        size.width * 0.5332269,
        size.height * 0.2205571);
    path_33.lineTo(size.width * 0.5330195, size.height * 0.2204505);
    path_33.lineTo(size.width * 0.6358574, size.height * 0.1695554);
    path_33.lineTo(size.width * 0.6303101, size.height * 0.1667911);
    path_33.lineTo(size.width * 0.6220669, size.height * 0.1708709);
    path_33.cubicTo(
        size.width * 0.6147673,
        size.height * 0.1741418,
        size.width * 0.6075298,
        size.height * 0.1774928,
        size.width * 0.6003546,
        size.height * 0.1809326);
    path_33.cubicTo(
        size.width * 0.5967255,
        size.height * 0.1826480,
        size.width * 0.5931483,
        size.height * 0.1844079,
        size.width * 0.5895503,
        size.height * 0.1861323);
    path_33.lineTo(size.width * 0.5787875, size.height * 0.1914120);
    path_33.lineTo(size.width * 0.5680868, size.height * 0.1967540);
    path_33.cubicTo(
        size.width * 0.5645303,
        size.height * 0.1985583,
        size.width * 0.5609635,
        size.height * 0.2003449,
        size.width * 0.5574381,
        size.height * 0.2021848);
    path_33.cubicTo(
        size.width * 0.5503562,
        size.height * 0.2058024,
        size.width * 0.5433261,
        size.height * 0.2094999,
        size.width * 0.5363686,
        size.height * 0.2132864);
    path_33.lineTo(size.width * 0.5267878, size.height * 0.2180328);
    path_33.lineTo(size.width * 0.5269641, size.height * 0.2181217);
    path_33.cubicTo(
        size.width * 0.5117634,
        size.height * 0.2255169,
        size.width * 0.4932758,
        size.height * 0.2302455,
        size.width * 0.4738550,
        size.height * 0.2323343);
    path_33.cubicTo(
        size.width * 0.4715946,
        size.height * 0.2325654,
        size.width * 0.4693342,
        size.height * 0.2327698,
        size.width * 0.4670738,
        size.height * 0.2329209);
    path_33.cubicTo(
        size.width * 0.4616613,
        size.height * 0.2333120,
        size.width * 0.4562280,
        size.height * 0.2335075,
        size.width * 0.4507948,
        size.height * 0.2334987);
    path_33.cubicTo(
        size.width * 0.4453615,
        size.height * 0.2335164,
        size.width * 0.4399386,
        size.height * 0.2333209,
        size.width * 0.4345365,
        size.height * 0.2329476);
    path_33.cubicTo(
        size.width * 0.4324005,
        size.height * 0.2328054,
        size.width * 0.4302541,
        size.height * 0.2326187,
        size.width * 0.4281182,
        size.height * 0.2324143);
    path_33.cubicTo(
        size.width * 0.4081789,
        size.height * 0.2303344,
        size.width * 0.3892144,
        size.height * 0.2254635,
        size.width * 0.3738063,
        size.height * 0.2177839);
    path_33.lineTo(size.width * 0.3738063, size.height * 0.2177839);
    path_33.cubicTo(
        size.width * 0.3738063,
        size.height * 0.2177839,
        size.width * 0.3647958,
        size.height * 0.2133220,
        size.width * 0.3647958,
        size.height * 0.2133220);
    path_33.cubicTo(
        size.width * 0.3578590,
        size.height * 0.2095444,
        size.width * 0.3508601,
        size.height * 0.2058646,
        size.width * 0.3438093,
        size.height * 0.2022648);
    path_33.cubicTo(
        size.width * 0.3402735,
        size.height * 0.2004249,
        size.width * 0.3367067,
        size.height * 0.1986383,
        size.width * 0.3331605,
        size.height * 0.1968339);
    path_33.lineTo(size.width * 0.3224599, size.height * 0.1914920);
    path_33.lineTo(size.width * 0.3116971, size.height * 0.1862123);
    path_33.cubicTo(
        size.width * 0.3080991,
        size.height * 0.1844791,
        size.width * 0.3045218,
        size.height * 0.1827191,
        size.width * 0.3008928,
        size.height * 0.1810126);
    path_33.cubicTo(
        size.width * 0.2937072,
        size.height * 0.1775728,
        size.width * 0.2864490,
        size.height * 0.1742129,
        size.width * 0.2791493,
        size.height * 0.1709331);
    path_33.lineTo(size.width * 0.2710202, size.height * 0.1669067);
    path_33.lineTo(size.width * 0.2711757, size.height * 0.1668267);
    path_33.lineTo(size.width * 0.2616053, size.height * 0.1620891);
    path_33.close();

    Paint paint_33_fill = Paint()..style = PaintingStyle.fill;
    paint_33_fill.color = Color(0xffffc629).withOpacity(1.0);
    canvas.drawPath(path_33, paint_33_fill);

    Path path_34 = Path();
    path_34.moveTo(size.width * 0.01654863, size.height * 0.1593337);
    path_34.cubicTo(
        size.width * 0.01955559,
        size.height * 0.1630669,
        size.width * 0.02315357,
        size.height * 0.1663467,
        size.width * 0.02708335,
        size.height * 0.1692443);
    path_34.cubicTo(
        size.width * 0.03086797,
        size.height * 0.1721775,
        size.width * 0.03518140,
        size.height * 0.1749329,
        size.width * 0.04001327,
        size.height * 0.1775105);
    path_34.lineTo(size.width * 0.03948446, size.height * 0.1777683);
    path_34.lineTo(size.width * 0.1413477, size.height * 0.2281834);
    path_34.lineTo(size.width * 0.1408189, size.height * 0.2284411);
    path_34.lineTo(size.width * 0.2433977, size.height * 0.2792118);
    path_34.lineTo(size.width * 0.2426822, size.height * 0.2795673);
    path_34.lineTo(size.width * 0.3462149, size.height * 0.3308090);
    path_34.lineTo(size.width * 0.3464430, size.height * 0.3306935);
    path_34.lineTo(size.width * 0.4496646, size.height * 0.3817752);
    path_34.lineTo(size.width * 0.4497268, size.height * 0.3817396);
    path_34.cubicTo(
        size.width * 0.4580115,
        size.height * 0.3858105,
        size.width * 0.4673123,
        size.height * 0.3891970,
        size.width * 0.4774945,
        size.height * 0.3918458);
    path_34.cubicTo(
        size.width * 0.4843690,
        size.height * 0.3939434,
        size.width * 0.4914613,
        size.height * 0.3955700,
        size.width * 0.4986365,
        size.height * 0.3967433);
    path_34.cubicTo(
        size.width * 0.5093993,
        size.height * 0.3985210,
        size.width * 0.5203695,
        size.height * 0.3993476,
        size.width * 0.5313190,
        size.height * 0.3993565);
    path_34.cubicTo(
        size.width * 0.5368041,
        size.height * 0.3993387,
        size.width * 0.5422789,
        size.height * 0.3991254,
        size.width * 0.5477432,
        size.height * 0.3986987);
    path_34.cubicTo(
        size.width * 0.5531972,
        size.height * 0.3982454,
        size.width * 0.5586305,
        size.height * 0.3976055,
        size.width * 0.5640015,
        size.height * 0.3966988);
    path_34.cubicTo(
        size.width * 0.5697355,
        size.height * 0.3957567,
        size.width * 0.5754072,
        size.height * 0.3945212,
        size.width * 0.5809649,
        size.height * 0.3930013);
    path_34.cubicTo(
        size.width * 0.5932623,
        size.height * 0.3901570,
        size.width * 0.6044088,
        size.height * 0.3862816,
        size.width * 0.6141451,
        size.height * 0.3814641);
    path_34.lineTo(size.width * 0.6085875, size.height * 0.3786998);
    path_34.cubicTo(
        size.width * 0.5932105,
        size.height * 0.3863083,
        size.width * 0.5743807,
        size.height * 0.3911525,
        size.width * 0.5546074,
        size.height * 0.3932590);
    path_34.cubicTo(
        size.width * 0.5523988,
        size.height * 0.3934812,
        size.width * 0.5501903,
        size.height * 0.3936768,
        size.width * 0.5479817,
        size.height * 0.3938279);
    path_34.cubicTo(
        size.width * 0.5425692,
        size.height * 0.3942190,
        size.width * 0.5371359,
        size.height * 0.3944145,
        size.width * 0.5317027,
        size.height * 0.3944056);
    path_34.cubicTo(
        size.width * 0.5262694,
        size.height * 0.3944234,
        size.width * 0.5208465,
        size.height * 0.3942279,
        size.width * 0.5154444,
        size.height * 0.3938545);
    path_34.cubicTo(
        size.width * 0.5133602,
        size.height * 0.3937212,
        size.width * 0.5112761,
        size.height * 0.3935346,
        size.width * 0.5092023,
        size.height * 0.3933390);
    path_34.cubicTo(
        size.width * 0.4892009,
        size.height * 0.3912680,
        size.width * 0.4701741,
        size.height * 0.3863972,
        size.width * 0.4547142,
        size.height * 0.3786909);
    path_34.lineTo(size.width * 0.4546209, size.height * 0.3787354);
    path_34.lineTo(size.width * 0.4456000, size.height * 0.3742734);
    path_34.cubicTo(
        size.width * 0.4386425,
        size.height * 0.3704869,
        size.width * 0.4316125,
        size.height * 0.3667893,
        size.width * 0.4245409,
        size.height * 0.3631717);
    path_34.cubicTo(
        size.width * 0.4210155,
        size.height * 0.3613318,
        size.width * 0.4174383,
        size.height * 0.3595453,
        size.width * 0.4138921,
        size.height * 0.3577409);
    path_34.lineTo(size.width * 0.4031915, size.height * 0.3523990);
    path_34.lineTo(size.width * 0.3924287, size.height * 0.3471193);
    path_34.cubicTo(
        size.width * 0.3888307,
        size.height * 0.3453860,
        size.width * 0.3852535,
        size.height * 0.3436261,
        size.width * 0.3816244,
        size.height * 0.3419195);
    path_34.cubicTo(
        size.width * 0.3744284,
        size.height * 0.3384708,
        size.width * 0.3671702,
        size.height * 0.3351110,
        size.width * 0.3598602,
        size.height * 0.3318312);
    path_34.lineTo(size.width * 0.3516689, size.height * 0.3277781);
    path_34.lineTo(size.width * 0.3514407, size.height * 0.3278936);
    path_34.lineTo(size.width * 0.3421918, size.height * 0.3233161);
    path_34.cubicTo(
        size.width * 0.3352239,
        size.height * 0.3195207,
        size.width * 0.3281939,
        size.height * 0.3158232,
        size.width * 0.3211016,
        size.height * 0.3121967);
    path_34.cubicTo(
        size.width * 0.3175762,
        size.height * 0.3103657,
        size.width * 0.3139989,
        size.height * 0.3085702,
        size.width * 0.3104528,
        size.height * 0.3067659);
    path_34.lineTo(size.width * 0.2997522, size.height * 0.3014239);
    path_34.lineTo(size.width * 0.2889894, size.height * 0.2961442);
    path_34.cubicTo(
        size.width * 0.2854017,
        size.height * 0.2944110,
        size.width * 0.2818141,
        size.height * 0.2926511,
        size.width * 0.2781850,
        size.height * 0.2909445);
    path_34.cubicTo(
        size.width * 0.2710098,
        size.height * 0.2875047,
        size.width * 0.2637724,
        size.height * 0.2841537,
        size.width * 0.2564727,
        size.height * 0.2808828);
    path_34.lineTo(size.width * 0.2491731, size.height * 0.2772741);
    path_34.lineTo(size.width * 0.2498782, size.height * 0.2769186);
    path_34.lineTo(size.width * 0.2402248, size.height * 0.2721455);
    path_34.cubicTo(
        size.width * 0.2332881,
        size.height * 0.2683679,
        size.width * 0.2262891,
        size.height * 0.2646881,
        size.width * 0.2192279,
        size.height * 0.2610794);
    path_34.cubicTo(
        size.width * 0.2157025,
        size.height * 0.2592484,
        size.width * 0.2121253,
        size.height * 0.2574529,
        size.width * 0.2085792,
        size.height * 0.2556486);
    path_34.lineTo(size.width * 0.1978785, size.height * 0.2503067);
    path_34.lineTo(size.width * 0.1871157, size.height * 0.2450269);
    path_34.cubicTo(
        size.width * 0.1835281,
        size.height * 0.2432937,
        size.width * 0.1799405,
        size.height * 0.2415338,
        size.width * 0.1763114,
        size.height * 0.2398272);
    path_34.cubicTo(
        size.width * 0.1691362,
        size.height * 0.2363874,
        size.width * 0.1618884,
        size.height * 0.2330365,
        size.width * 0.1545991,
        size.height * 0.2297566);
    path_34.lineTo(size.width * 0.1480253, size.height * 0.2265035);
    path_34.lineTo(size.width * 0.1485333, size.height * 0.2262457);
    path_34.lineTo(size.width * 0.1389318, size.height * 0.2214904);
    path_34.cubicTo(
        size.width * 0.1319847,
        size.height * 0.2177039,
        size.width * 0.1249650,
        size.height * 0.2140153,
        size.width * 0.1178831,
        size.height * 0.2103977);
    path_34.cubicTo(
        size.width * 0.1143577,
        size.height * 0.2085667,
        size.width * 0.1107805,
        size.height * 0.2067712,
        size.width * 0.1072343,
        size.height * 0.2049668);
    path_34.lineTo(size.width * 0.09653370, size.height * 0.1996249);
    path_34.lineTo(size.width * 0.08577087, size.height * 0.1943452);
    path_34.cubicTo(
        size.width * 0.08218326,
        size.height * 0.1926119,
        size.width * 0.07859565,
        size.height * 0.1908520,
        size.width * 0.07496656,
        size.height * 0.1891455);
    path_34.cubicTo(
        size.width * 0.06777060,
        size.height * 0.1856968,
        size.width * 0.06051243,
        size.height * 0.1823369,
        size.width * 0.05320241,
        size.height * 0.1790571);
    path_34.lineTo(size.width * 0.04676337, size.height * 0.1758662);
    path_34.lineTo(size.width * 0.04722997, size.height * 0.1756262);
    path_34.cubicTo(
        size.width * 0.03044285,
        size.height * 0.1670400,
        size.width * 0.02049915,
        size.height * 0.1563117,
        size.width * 0.01734703,
        size.height * 0.1451745);
    path_34.cubicTo(
        size.width * 0.01728482,
        size.height * 0.1449345,
        size.width * 0.01721224,
        size.height * 0.1446945,
        size.width * 0.01716040,
        size.height * 0.1444456);
    path_34.cubicTo(
        size.width * 0.01712929,
        size.height * 0.1443212,
        size.width * 0.01710855,
        size.height * 0.1441968,
        size.width * 0.01707744,
        size.height * 0.1440723);
    path_34.cubicTo(
        size.width * 0.01660048,
        size.height * 0.1419480,
        size.width * 0.01635163,
        size.height * 0.1397881,
        size.width * 0.01637237,
        size.height * 0.1376193);
    path_34.cubicTo(
        size.width * 0.01639310,
        size.height * 0.1340195,
        size.width * 0.01713966,
        size.height * 0.1304286,
        size.width * 0.01850834,
        size.height * 0.1270154);
    path_34.cubicTo(
        size.width * 0.01984592,
        size.height * 0.1236023,
        size.width * 0.02183673,
        size.height * 0.1203847,
        size.width * 0.02419045,
        size.height * 0.1173804);
    path_34.cubicTo(
        size.width * 0.02655455,
        size.height * 0.1143939,
        size.width * 0.02931265,
        size.height * 0.1116207,
        size.width * 0.03234035,
        size.height * 0.1090786);
    path_34.cubicTo(
        size.width * 0.03532657,
        size.height * 0.1065099,
        size.width * 0.03863422,
        size.height * 0.1042078,
        size.width * 0.04203519,
        size.height * 0.1020301);
    path_34.cubicTo(
        size.width * 0.04196261,
        size.height * 0.1020746,
        size.width * 0.04187966,
        size.height * 0.1021190,
        size.width * 0.04180708,
        size.height * 0.1021546);
    path_34.cubicTo(
        size.width * 0.04375642,
        size.height * 0.1009991,
        size.width * 0.04578870,
        size.height * 0.09986134,
        size.width * 0.04795579,
        size.height * 0.09877695);
    path_34.lineTo(size.width * 0.04274027, size.height * 0.09590600);
    path_34.cubicTo(
        size.width * 0.03870680,
        size.height * 0.09793255,
        size.width * 0.03497403,
        size.height * 0.1000836,
        size.width * 0.03157305,
        size.height * 0.1023679);
    path_34.cubicTo(
        size.width * 0.02602574,
        size.height * 0.1058610,
        size.width * 0.02095538,
        size.height * 0.1100208,
        size.width * 0.01689081,
        size.height * 0.1149539);
    path_34.cubicTo(
        size.width * 0.01425713,
        size.height * 0.1181181,
        size.width * 0.01209004,
        size.height * 0.1216291,
        size.width * 0.01053472,
        size.height * 0.1253533);
    path_34.cubicTo(
        size.width * 0.009010504,
        size.height * 0.1290953,
        size.width * 0.008170629,
        size.height * 0.1330773,
        size.width * 0.008129154,
        size.height * 0.1370771);
    path_34.cubicTo(
        size.width * 0.008098048,
        size.height * 0.1410769,
        size.width * 0.008865340,
        size.height * 0.1450589,
        size.width * 0.01033771,
        size.height * 0.1488187);
    path_34.cubicTo(
        size.width * 0.01183082,
        size.height * 0.1525696,
        size.width * 0.01393569,
        size.height * 0.1560983,
        size.width * 0.01653827,
        size.height * 0.1593071);
    path_34.close();

    Paint paint_34_fill = Paint()..style = PaintingStyle.fill;
    paint_34_fill.color = Color(0xffffc629).withOpacity(1.0);
    canvas.drawPath(path_34, paint_34_fill);

    Path path_35 = Path();
    path_35.moveTo(size.width * 0.6059123, size.height * 0.1456811);
    path_35.cubicTo(
        size.width * 0.6123202,
        size.height * 0.1427568,
        size.width * 0.6186971,
        size.height * 0.1397881,
        size.width * 0.6250324,
        size.height * 0.1367572);
    path_35.cubicTo(
        size.width * 0.6289207,
        size.height * 0.1349084,
        size.width * 0.6327986,
        size.height * 0.1330151,
        size.width * 0.6366662,
        size.height * 0.1311308);
    path_35.lineTo(size.width * 0.6482689, size.height * 0.1254422);
    path_35.lineTo(size.width * 0.6598094, size.height * 0.1196825);
    path_35.cubicTo(
        size.width * 0.6636459,
        size.height * 0.1177271,
        size.width * 0.6674823,
        size.height * 0.1158072,
        size.width * 0.6713084,
        size.height * 0.1138428);
    path_35.cubicTo(
        size.width * 0.6775919,
        size.height * 0.1106341,
        size.width * 0.6838443,
        size.height * 0.1073543,
        size.width * 0.6900449,
        size.height * 0.1040300);
    path_35.lineTo(size.width * 0.7007559, size.height * 0.09873251);
    path_35.lineTo(size.width * 0.6952293, size.height * 0.09596822);
    path_35.lineTo(size.width * 0.6455523, size.height * 0.1205536);
    path_35.lineTo(size.width * 0.6441940, size.height * 0.1212202);
    path_35.lineTo(size.width * 0.6428875, size.height * 0.1218691);
    path_35.lineTo(size.width * 0.5917070, size.height * 0.1472010);
    path_35.lineTo(size.width * 0.5972440, size.height * 0.1499564);
    path_35.lineTo(size.width * 0.6059019, size.height * 0.1456722);
    path_35.close();

    Paint paint_35_fill = Paint()..style = PaintingStyle.fill;
    paint_35_fill.color = Color(0xffffc629).withOpacity(1.0);
    canvas.drawPath(path_35, paint_35_fill);

    Path path_36 = Path();
    path_36.moveTo(size.width * 0.6832741, size.height * 0.1402947);
    path_36.lineTo(size.width * 0.6725734, size.height * 0.1456367);
    path_36.cubicTo(
        size.width * 0.6690273,
        size.height * 0.1474410,
        size.width * 0.6654501,
        size.height * 0.1492276,
        size.width * 0.6619247,
        size.height * 0.1510675);
    path_36.cubicTo(
        size.width * 0.6548324,
        size.height * 0.1546940,
        size.width * 0.6478023,
        size.height * 0.1583916,
        size.width * 0.6408345,
        size.height * 0.1621869);
    path_36.lineTo(size.width * 0.6312848, size.height * 0.1669155);
    path_36.lineTo(size.width * 0.6368114, size.height * 0.1696798);
    path_36.lineTo(size.width * 0.7403440, size.height * 0.1184381);
    path_36.lineTo(size.width * 0.7347967, size.height * 0.1156738);
    path_36.lineTo(size.width * 0.7266365, size.height * 0.1197092);
    path_36.cubicTo(
        size.width * 0.7193161,
        size.height * 0.1229979,
        size.width * 0.7120372,
        size.height * 0.1263577,
        size.width * 0.7048308,
        size.height * 0.1298153);
    path_36.cubicTo(
        size.width * 0.7012017,
        size.height * 0.1315308,
        size.width * 0.6976245,
        size.height * 0.1332907,
        size.width * 0.6940369,
        size.height * 0.1350150);
    path_36.lineTo(size.width * 0.6832741, size.height * 0.1402947);
    path_36.close();

    Paint paint_36_fill = Paint()..style = PaintingStyle.fill;
    paint_36_fill.color = Color(0xffffc629).withOpacity(1.0);
    canvas.drawPath(path_36, paint_36_fill);

    Path path_37 = Path();
    path_37.moveTo(size.width * 0.5836193, size.height * 0.3572432);
    path_37.cubicTo(
        size.width * 0.5900273,
        size.height * 0.3543189,
        size.width * 0.5964041,
        size.height * 0.3513502,
        size.width * 0.6027394,
        size.height * 0.3483103);
    path_37.cubicTo(
        size.width * 0.6066277,
        size.height * 0.3464615,
        size.width * 0.6104953,
        size.height * 0.3445683,
        size.width * 0.6143733,
        size.height * 0.3426839);
    path_37.lineTo(size.width * 0.6259760, size.height * 0.3369954);
    path_37.lineTo(size.width * 0.6375268, size.height * 0.3312357);
    path_37.cubicTo(
        size.width * 0.6413633,
        size.height * 0.3292802,
        size.width * 0.6451998,
        size.height * 0.3273603,
        size.width * 0.6490258,
        size.height * 0.3253960);
    path_37.cubicTo(
        size.width * 0.6552990,
        size.height * 0.3221873,
        size.width * 0.6615410,
        size.height * 0.3189163,
        size.width * 0.6677312,
        size.height * 0.3155921);
    path_37.lineTo(size.width * 0.6784733, size.height * 0.3102768);
    path_37.lineTo(size.width * 0.6729467, size.height * 0.3075125);
    path_37.lineTo(size.width * 0.6231971, size.height * 0.3321334);
    path_37.lineTo(size.width * 0.6219010, size.height * 0.3327645);
    path_37.lineTo(size.width * 0.6206879, size.height * 0.3333689);
    path_37.lineTo(size.width * 0.5694037, size.height * 0.3587542);
    path_37.lineTo(size.width * 0.5749406, size.height * 0.3615096);
    path_37.lineTo(size.width * 0.5835986, size.height * 0.3572254);
    path_37.close();

    Paint paint_37_fill = Paint()..style = PaintingStyle.fill;
    paint_37_fill.color = Color(0xffffc629).withOpacity(1.0);
    canvas.drawPath(path_37, paint_37_fill);

    Path path_38 = Path();
    path_38.moveTo(size.width * 0.7179059, size.height * 0.3300624);
    path_38.lineTo(size.width * 0.7180926, size.height * 0.3301513);
    path_38.cubicTo(
        size.width * 0.7222816,
        size.height * 0.3280803,
        size.width * 0.7269683,
        size.height * 0.3264270,
        size.width * 0.7319349,
        size.height * 0.3251827);
    path_38.cubicTo(
        size.width * 0.7335525,
        size.height * 0.3248805,
        size.width * 0.7351804,
        size.height * 0.3246138,
        size.width * 0.7368186,
        size.height * 0.3243827);
    path_38.cubicTo(
        size.width * 0.7398671,
        size.height * 0.3239738,
        size.width * 0.7429259,
        size.height * 0.3236361,
        size.width * 0.7460054,
        size.height * 0.3234583);
    path_38.cubicTo(
        size.width * 0.7490850,
        size.height * 0.3232539,
        size.width * 0.7521852,
        size.height * 0.3231472,
        size.width * 0.7552544,
        size.height * 0.3231650);
    path_38.cubicTo(
        size.width * 0.7583547,
        size.height * 0.3231472,
        size.width * 0.7614342,
        size.height * 0.3232628,
        size.width * 0.7645034,
        size.height * 0.3234672);
    path_38.cubicTo(
        size.width * 0.7675933,
        size.height * 0.3236538,
        size.width * 0.7706521,
        size.height * 0.3239916,
        size.width * 0.7737005,
        size.height * 0.3244005);
    path_38.cubicTo(
        size.width * 0.7758469,
        size.height * 0.3247027,
        size.width * 0.7779725,
        size.height * 0.3250760,
        size.width * 0.7800981,
        size.height * 0.3254938);
    path_38.cubicTo(
        size.width * 0.7844841,
        size.height * 0.3266759,
        size.width * 0.7886109,
        size.height * 0.3281869,
        size.width * 0.7923437,
        size.height * 0.3300446);
    path_38.lineTo(size.width * 0.7979221, size.height * 0.3272803);
    path_38.cubicTo(
        size.width * 0.7893574,
        size.height * 0.3230228,
        size.width * 0.7786257,
        size.height * 0.3202496,
        size.width * 0.7669815,
        size.height * 0.3191385);
    path_38.cubicTo(
        size.width * 0.7661520,
        size.height * 0.3190497,
        size.width * 0.7653225,
        size.height * 0.3189697,
        size.width * 0.7644930,
        size.height * 0.3188897);
    path_38.cubicTo(
        size.width * 0.7613720,
        size.height * 0.3186319,
        size.width * 0.7582302,
        size.height * 0.3185075,
        size.width * 0.7550989,
        size.height * 0.3184986);
    path_38.cubicTo(
        size.width * 0.7519675,
        size.height * 0.3185163,
        size.width * 0.7488361,
        size.height * 0.3186319,
        size.width * 0.7457151,
        size.height * 0.3188808);
    path_38.cubicTo(
        size.width * 0.7433406,
        size.height * 0.3190852,
        size.width * 0.7409765,
        size.height * 0.3193607,
        size.width * 0.7386332,
        size.height * 0.3197163);
    path_38.cubicTo(
        size.width * 0.7290835,
        size.height * 0.3210584,
        size.width * 0.7202907,
        size.height * 0.3235827,
        size.width * 0.7127008,
        size.height * 0.3273159);
    path_38.lineTo(size.width * 0.7125141, size.height * 0.3272270);
    path_38.lineTo(size.width * 0.7042709, size.height * 0.3313068);
    path_38.cubicTo(
        size.width * 0.6969816,
        size.height * 0.3345777,
        size.width * 0.6897338,
        size.height * 0.3379375,
        size.width * 0.6825586,
        size.height * 0.3413773);
    path_38.cubicTo(
        size.width * 0.6789295,
        size.height * 0.3430928,
        size.width * 0.6753419,
        size.height * 0.3448527,
        size.width * 0.6717543,
        size.height * 0.3465771);
    path_38.lineTo(size.width * 0.6609915, size.height * 0.3518568);
    path_38.lineTo(size.width * 0.6502908, size.height * 0.3571987);
    path_38.cubicTo(
        size.width * 0.6467447,
        size.height * 0.3590031,
        size.width * 0.6431675,
        size.height * 0.3607896,
        size.width * 0.6396421,
        size.height * 0.3626295);
    path_38.cubicTo(
        size.width * 0.6325705,
        size.height * 0.3662471,
        size.width * 0.6255612,
        size.height * 0.3699269,
        size.width * 0.6186141,
        size.height * 0.3737134);
    path_38.lineTo(size.width * 0.6089918, size.height * 0.3784776);
    path_38.lineTo(size.width * 0.6145184, size.height * 0.3812419);
    path_38.lineTo(size.width * 0.7179163, size.height * 0.3300713);
    path_38.close();

    Paint paint_38_fill = Paint()..style = PaintingStyle.fill;
    paint_38_fill.color = Color(0xffffc629).withOpacity(1.0);
    canvas.drawPath(path_38, paint_38_fill);

    Path path_39 = Path();
    path_39.moveTo(size.width * 0.4353349, size.height * 0.9202709);
    path_39.cubicTo(
        size.width * 0.4345157,
        size.height * 0.9201820,
        size.width * 0.4336862,
        size.height * 0.9201020,
        size.width * 0.4328567,
        size.height * 0.9200220);
    path_39.cubicTo(
        size.width * 0.4297357,
        size.height * 0.9197643,
        size.width * 0.4265939,
        size.height * 0.9196398,
        size.width * 0.4234626,
        size.height * 0.9196310);
    path_39.cubicTo(
        size.width * 0.4203312,
        size.height * 0.9196487,
        size.width * 0.4171998,
        size.height * 0.9197554,
        size.width * 0.4140788,
        size.height * 0.9200132);
    path_39.cubicTo(
        size.width * 0.4117043,
        size.height * 0.9202265,
        size.width * 0.4093402,
        size.height * 0.9204931,
        size.width * 0.4069969,
        size.height * 0.9208487);
    path_39.cubicTo(
        size.width * 0.3975716,
        size.height * 0.9221730,
        size.width * 0.3888826,
        size.height * 0.9246529,
        size.width * 0.3813548,
        size.height * 0.9283060);
    path_39.lineTo(size.width * 0.3813237, size.height * 0.9282883);
    path_39.cubicTo(
        size.width * 0.3659052,
        size.height * 0.9359145,
        size.width * 0.3470133,
        size.height * 0.9407676,
        size.width * 0.3271881,
        size.height * 0.9428653);
    path_39.cubicTo(
        size.width * 0.3250314,
        size.height * 0.9430786,
        size.width * 0.3228850,
        size.height * 0.9432741,
        size.width * 0.3207283,
        size.height * 0.9434164);
    path_39.cubicTo(
        size.width * 0.3153158,
        size.height * 0.9438074,
        size.width * 0.3098825,
        size.height * 0.9440030,
        size.width * 0.3044493,
        size.height * 0.9439941);
    path_39.cubicTo(
        size.width * 0.2990160,
        size.height * 0.9440030,
        size.width * 0.2935931,
        size.height * 0.9438163,
        size.width * 0.2881910,
        size.height * 0.9434430);
    path_39.cubicTo(
        size.width * 0.2860965,
        size.height * 0.9433008,
        size.width * 0.2840019,
        size.height * 0.9431230,
        size.width * 0.2819074,
        size.height * 0.9429186);
    path_39.cubicTo(
        size.width * 0.2620719,
        size.height * 0.9408565,
        size.width * 0.2431903,
        size.height * 0.9360390,
        size.width * 0.2278030,
        size.height * 0.9284394);
    path_39.lineTo(size.width * 0.2280000, size.height * 0.9283416);
    path_39.lineTo(size.width * 0.2184192, size.height * 0.9236041);
    path_39.cubicTo(
        size.width * 0.2114617,
        size.height * 0.9198176,
        size.width * 0.2044316,
        size.height * 0.9161200,
        size.width * 0.1973497,
        size.height * 0.9125024);
    path_39.cubicTo(
        size.width * 0.1938140,
        size.height * 0.9106625,
        size.width * 0.1902575,
        size.height * 0.9088760,
        size.width * 0.1867010,
        size.height * 0.9070716);
    path_39.lineTo(size.width * 0.1760003, size.height * 0.9017297);
    path_39.lineTo(size.width * 0.1652375, size.height * 0.8964589);
    path_39.cubicTo(
        size.width * 0.1616499,
        size.height * 0.8947256,
        size.width * 0.1580623,
        size.height * 0.8929657,
        size.width * 0.1544436,
        size.height * 0.8912502);
    path_39.cubicTo(
        size.width * 0.1472372,
        size.height * 0.8877927,
        size.width * 0.1399583,
        size.height * 0.8844239,
        size.width * 0.1326379,
        size.height * 0.8811441);
    path_39.cubicTo(
        size.width * 0.1326379,
        size.height * 0.8811441,
        size.width * 0.1326379,
        size.height * 0.8811441,
        size.width * 0.1326483,
        size.height * 0.8811441);
    path_39.lineTo(size.width * 0.1244880, size.height * 0.8770999);
    path_39.lineTo(size.width * 0.1189407, size.height * 0.8798642);
    path_39.lineTo(size.width * 0.2221208, size.height * 0.9309281);
    path_39.lineTo(size.width * 0.2218824, size.height * 0.9310437);
    path_39.cubicTo(
        size.width * 0.2303122,
        size.height * 0.9352390,
        size.width * 0.2398100,
        size.height * 0.9387144,
        size.width * 0.2502203,
        size.height * 0.9414253);
    path_39.cubicTo(
        size.width * 0.2571052,
        size.height * 0.9435319,
        size.width * 0.2641975,
        size.height * 0.9451585,
        size.width * 0.2713831,
        size.height * 0.9463318);
    path_39.cubicTo(
        size.width * 0.2821459,
        size.height * 0.9481094,
        size.width * 0.2931058,
        size.height * 0.9489361,
        size.width * 0.3040656,
        size.height * 0.9489449);
    path_39.cubicTo(
        size.width * 0.3095507,
        size.height * 0.9489272,
        size.width * 0.3150255,
        size.height * 0.9487138,
        size.width * 0.3204898,
        size.height * 0.9482783);
    path_39.cubicTo(
        size.width * 0.3259438,
        size.height * 0.9478250,
        size.width * 0.3313875,
        size.height * 0.9471939,
        size.width * 0.3367481,
        size.height * 0.9462784);
    path_39.cubicTo(
        size.width * 0.3424925,
        size.height * 0.9453274,
        size.width * 0.3481746,
        size.height * 0.9440919,
        size.width * 0.3537323,
        size.height * 0.9425720);
    path_39.cubicTo(
        size.width * 0.3658430,
        size.height * 0.9397721,
        size.width * 0.3768132,
        size.height * 0.9359679,
        size.width * 0.3864459,
        size.height * 0.9312481);
    path_39.lineTo(size.width * 0.3864666, size.height * 0.9312481);
    path_39.cubicTo(
        size.width * 0.3906349,
        size.height * 0.9292038,
        size.width * 0.3952905,
        size.height * 0.9275594,
        size.width * 0.4002260,
        size.height * 0.9263150);
    path_39.cubicTo(
        size.width * 0.4018747,
        size.height * 0.9260128,
        size.width * 0.4035337,
        size.height * 0.9257373,
        size.width * 0.4051927,
        size.height * 0.9254973);
    path_39.cubicTo(
        size.width * 0.4082411,
        size.height * 0.9250884,
        size.width * 0.4112999,
        size.height * 0.9247507,
        size.width * 0.4143795,
        size.height * 0.9245640);
    path_39.cubicTo(
        size.width * 0.4174590,
        size.height * 0.9243507,
        size.width * 0.4205593,
        size.height * 0.9242440,
        size.width * 0.4236285,
        size.height * 0.9242707);
    path_39.cubicTo(
        size.width * 0.4267287,
        size.height * 0.9242529,
        size.width * 0.4298083,
        size.height * 0.9243596,
        size.width * 0.4328775,
        size.height * 0.9245729);
    path_39.cubicTo(
        size.width * 0.4359570,
        size.height * 0.9247596,
        size.width * 0.4390262,
        size.height * 0.9250973,
        size.width * 0.4420746,
        size.height * 0.9255151);
    path_39.cubicTo(
        size.width * 0.4442106,
        size.height * 0.9258084,
        size.width * 0.4463258,
        size.height * 0.9261817,
        size.width * 0.4484410,
        size.height * 0.9265995);
    path_39.cubicTo(
        size.width * 0.4528374,
        size.height * 0.9277816,
        size.width * 0.4569746,
        size.height * 0.9292927,
        size.width * 0.4607074,
        size.height * 0.9311503);
    path_39.lineTo(size.width * 0.4662858, size.height * 0.9283860);
    path_39.cubicTo(
        size.width * 0.4577211,
        size.height * 0.9241285,
        size.width * 0.4469894,
        size.height * 0.9213553,
        size.width * 0.4353349,
        size.height * 0.9202531);
    path_39.close();

    Paint paint_39_fill = Paint()..style = PaintingStyle.fill;
    paint_39_fill.color = Color(0xffffc629).withOpacity(1.0);
    canvas.drawPath(path_39, paint_39_fill);

    Path path_40 = Path();
    path_40.moveTo(size.width * 0.5692378, size.height * 0.3587275);
    path_40.cubicTo(
        size.width * 0.5532283,
        size.height * 0.3666471,
        size.width * 0.5299814,
        size.height * 0.3685937,
        size.width * 0.5106954,
        size.height * 0.3643895);
    path_40.cubicTo(
        size.width * 0.5102807,
        size.height * 0.3643006,
        size.width * 0.5098763,
        size.height * 0.3642117,
        size.width * 0.5094615,
        size.height * 0.3641139);
    path_40.cubicTo(
        size.width * 0.5091194,
        size.height * 0.3640339,
        size.width * 0.5087772,
        size.height * 0.3639450,
        size.width * 0.5084350,
        size.height * 0.3638650);
    path_40.cubicTo(
        size.width * 0.5059465,
        size.height * 0.3632340,
        size.width * 0.5034787,
        size.height * 0.3624962,
        size.width * 0.5010524,
        size.height * 0.3616252);
    path_40.cubicTo(
        size.width * 0.5010939,
        size.height * 0.3616429,
        size.width * 0.5011250,
        size.height * 0.3616607,
        size.width * 0.5011665,
        size.height * 0.3616785);
    path_40.cubicTo(
        size.width * 0.4989165,
        size.height * 0.3608696,
        size.width * 0.4967597,
        size.height * 0.3599630,
        size.width * 0.4947378,
        size.height * 0.3589497);
    path_40.lineTo(size.width * 0.4943853, size.height * 0.3591275);
    path_40.lineTo(size.width * 0.4437543, size.height * 0.3340711);
    path_40.lineTo(size.width * 0.4422820, size.height * 0.3333333);
    path_40.lineTo(size.width * 0.4408096, size.height * 0.3326134);
    path_40.lineTo(size.width * 0.3912466, size.height * 0.3080813);
    path_40.lineTo(size.width * 0.3910185, size.height * 0.3081969);
    path_40.lineTo(size.width * 0.3403046, size.height * 0.2830960);
    path_40.lineTo(size.width * 0.3388426, size.height * 0.2823672);
    path_40.lineTo(size.width * 0.3372666, size.height * 0.2815939);
    path_40.lineTo(size.width * 0.2887612, size.height * 0.2575863);
    path_40.lineTo(size.width * 0.2894767, size.height * 0.2572307);
    path_40.lineTo(size.width * 0.2383584, size.height * 0.2319343);
    path_40.lineTo(size.width * 0.2369794, size.height * 0.2312499);
    path_40.lineTo(size.width * 0.2356107, size.height * 0.2305744);
    path_40.lineTo(size.width * 0.1876134, size.height * 0.2068156);
    path_40.lineTo(size.width * 0.1881318, size.height * 0.2065579);
    path_40.lineTo(size.width * 0.1371173, size.height * 0.1813059);
    path_40.lineTo(size.width * 0.1356449, size.height * 0.1805681);
    path_40.lineTo(size.width * 0.1341207, size.height * 0.1798215);
    path_40.lineTo(size.width * 0.08610267, size.height * 0.1560539);
    path_40.lineTo(size.width * 0.08656927, size.height * 0.1558139);
    path_40.cubicTo(
        size.width * 0.08212105,
        size.height * 0.1535385,
        size.width * 0.07867860,
        size.height * 0.1509697,
        size.width * 0.07621082,
        size.height * 0.1482410);
    path_40.cubicTo(
        size.width * 0.07578570,
        size.height * 0.1477077,
        size.width * 0.07536058,
        size.height * 0.1471655,
        size.width * 0.07498730,
        size.height * 0.1466055);
    path_40.cubicTo(
        size.width * 0.07314165,
        size.height * 0.1438945,
        size.width * 0.07198034,
        size.height * 0.1407925,
        size.width * 0.07196997,
        size.height * 0.1376549);
    path_40.cubicTo(
        size.width * 0.07189739,
        size.height * 0.1345084,
        size.width * 0.07296538,
        size.height * 0.1313974,
        size.width * 0.07472808,
        size.height * 0.1286331);
    path_40.cubicTo(
        size.width * 0.07508062,
        size.height * 0.1280821,
        size.width * 0.07546426,
        size.height * 0.1275576,
        size.width * 0.07586865,
        size.height * 0.1270332);
    path_40.cubicTo(
        size.width * 0.07848159,
        size.height * 0.1239578,
        size.width * 0.08228695,
        size.height * 0.1210780,
        size.width * 0.08729509,
        size.height * 0.1185626);
    path_40.lineTo(size.width * 0.08182035, size.height * 0.1157716);
    path_40.cubicTo(
        size.width * 0.07967400,
        size.height * 0.1168471,
        size.width * 0.07772467,
        size.height * 0.1179848,
        size.width * 0.07596197,
        size.height * 0.1191581);
    path_40.cubicTo(
        size.width * 0.07615897,
        size.height * 0.1189803,
        size.width * 0.07636635,
        size.height * 0.1187937,
        size.width * 0.07656336,
        size.height * 0.1186159);
    path_40.cubicTo(
        size.width * 0.07321423,
        size.height * 0.1205713,
        size.width * 0.07015543,
        size.height * 0.1231490,
        size.width * 0.06787429,
        size.height * 0.1263666);
    path_40.cubicTo(
        size.width * 0.06742843,
        size.height * 0.1269888,
        size.width * 0.06702405,
        size.height * 0.1276465,
        size.width * 0.06664040,
        size.height * 0.1283132);
    path_40.cubicTo(
        size.width * 0.06654708,
        size.height * 0.1284643,
        size.width * 0.06646413,
        size.height * 0.1286243,
        size.width * 0.06637081,
        size.height * 0.1287842);
    path_40.cubicTo(
        size.width * 0.06635007,
        size.height * 0.1288198,
        size.width * 0.06632933,
        size.height * 0.1288553,
        size.width * 0.06630860,
        size.height * 0.1288909);
    path_40.cubicTo(
        size.width * 0.06481549,
        size.height * 0.1315308,
        size.width * 0.06403783,
        size.height * 0.1342951,
        size.width * 0.06401709,
        size.height * 0.1371305);
    path_40.cubicTo(
        size.width * 0.06393414,
        size.height * 0.1448189,
        size.width * 0.06931555,
        size.height * 0.1521697,
        size.width * 0.07959105,
        size.height * 0.1578049);
    path_40.lineTo(size.width * 0.07906224, size.height * 0.1580716);
    path_40.lineTo(size.width * 0.08980434, size.height * 0.1633868);
    path_40.cubicTo(
        size.width * 0.09600489,
        size.height * 0.1667022,
        size.width * 0.1022366,
        size.height * 0.1699820,
        size.width * 0.1085097,
        size.height * 0.1731819);
    path_40.cubicTo(
        size.width * 0.1123358,
        size.height * 0.1751551,
        size.width * 0.1161722,
        size.height * 0.1770661,
        size.width * 0.1200087,
        size.height * 0.1790216);
    path_40.lineTo(size.width * 0.1315492, size.height * 0.1847813);
    path_40.lineTo(size.width * 0.1431623, size.height * 0.1904698);
    path_40.cubicTo(
        size.width * 0.1470402,
        size.height * 0.1923453,
        size.width * 0.1509078,
        size.height * 0.1942474,
        size.width * 0.1548065,
        size.height * 0.1960962);
    path_40.cubicTo(
        size.width * 0.1611418,
        size.height * 0.1991360,
        size.width * 0.1675186,
        size.height * 0.2021048,
        size.width * 0.1739369,
        size.height * 0.2050291);
    path_40.lineTo(size.width * 0.1809152, size.height * 0.2084867);
    path_40.lineTo(size.width * 0.1803967, size.height * 0.2087444);
    path_40.lineTo(size.width * 0.1911077, size.height * 0.2140419);
    path_40.cubicTo(
        size.width * 0.1973186,
        size.height * 0.2173662,
        size.width * 0.2035607,
        size.height * 0.2206460,
        size.width * 0.2098545,
        size.height * 0.2238636);
    path_40.cubicTo(
        size.width * 0.2136806,
        size.height * 0.2258280,
        size.width * 0.2175171,
        size.height * 0.2277479,
        size.width * 0.2213535,
        size.height * 0.2297033);
    path_40.lineTo(size.width * 0.2328940, size.height * 0.2354630);
    path_40.lineTo(size.width * 0.2445071, size.height * 0.2411516);
    path_40.cubicTo(
        size.width * 0.2483851,
        size.height * 0.2430270,
        size.width * 0.2522526,
        size.height * 0.2449292,
        size.width * 0.2561409,
        size.height * 0.2467779);
    path_40.cubicTo(
        size.width * 0.2624763,
        size.height * 0.2498089,
        size.width * 0.2688427,
        size.height * 0.2527776,
        size.width * 0.2752507,
        size.height * 0.2557019);
    path_40.lineTo(size.width * 0.2829754, size.height * 0.2595239);
    path_40.lineTo(size.width * 0.2822704, size.height * 0.2598795);
    path_40.lineTo(size.width * 0.2929917, size.height * 0.2651859);
    path_40.cubicTo(
        size.width * 0.2991923,
        size.height * 0.2685101,
        size.width * 0.3054343,
        size.height * 0.2717899,
        size.width * 0.3117178,
        size.height * 0.2749987);
    path_40.cubicTo(
        size.width * 0.3155439,
        size.height * 0.2769630,
        size.width * 0.3193804,
        size.height * 0.2788829,
        size.width * 0.3232168,
        size.height * 0.2808384);
    path_40.lineTo(size.width * 0.3347573, size.height * 0.2865980);
    path_40.lineTo(size.width * 0.3463704, size.height * 0.2922866);
    path_40.cubicTo(
        size.width * 0.3502483,
        size.height * 0.2941621,
        size.width * 0.3541159,
        size.height * 0.2960553,
        size.width * 0.3580042,
        size.height * 0.2979041);
    path_40.cubicTo(
        size.width * 0.3643188,
        size.height * 0.3009351,
        size.width * 0.3706853,
        size.height * 0.3038949,
        size.width * 0.3770725,
        size.height * 0.3068103);
    path_40.lineTo(size.width * 0.3857823, size.height * 0.3111212);
    path_40.lineTo(size.width * 0.3860208, size.height * 0.3110056);
    path_40.lineTo(size.width * 0.3963999, size.height * 0.3161431);
    path_40.cubicTo(
        size.width * 0.4026109,
        size.height * 0.3194674,
        size.width * 0.4088633,
        size.height * 0.3227561,
        size.width * 0.4151571,
        size.height * 0.3259648);
    path_40.cubicTo(
        size.width * 0.4189832,
        size.height * 0.3279381,
        size.width * 0.4228197,
        size.height * 0.3298580,
        size.width * 0.4266458,
        size.height * 0.3318045);
    path_40.lineTo(size.width * 0.4381967, size.height * 0.3375642);
    path_40.lineTo(size.width * 0.4497994, size.height * 0.3432528);
    path_40.cubicTo(
        size.width * 0.4536773,
        size.height * 0.3451283,
        size.width * 0.4575449,
        size.height * 0.3470215,
        size.width * 0.4614435,
        size.height * 0.3488703);
    path_40.cubicTo(
        size.width * 0.4677893,
        size.height * 0.3519101,
        size.width * 0.4741765,
        size.height * 0.3548789,
        size.width * 0.4805844,
        size.height * 0.3578120);
    path_40.lineTo(size.width * 0.4892216, size.height * 0.3620874);
    path_40.lineTo(size.width * 0.4895534, size.height * 0.3619274);
    path_40.cubicTo(
        size.width * 0.4942712,
        size.height * 0.3642295,
        size.width * 0.4996423,
        size.height * 0.3660871,
        size.width * 0.5054384,
        size.height * 0.3674560);
    path_40.cubicTo(
        size.width * 0.5020064,
        size.height * 0.3667538,
        size.width * 0.4986054,
        size.height * 0.3659183,
        size.width * 0.4952666,
        size.height * 0.3648783);
    path_40.cubicTo(
        size.width * 0.5009384,
        size.height * 0.3673226,
        size.width * 0.5070975,
        size.height * 0.3689581,
        size.width * 0.5133602,
        size.height * 0.3700158);
    path_40.cubicTo(
        size.width * 0.5164916,
        size.height * 0.3705580,
        size.width * 0.5196645,
        size.height * 0.3709136,
        size.width * 0.5228581,
        size.height * 0.3711713);
    path_40.cubicTo(
        size.width * 0.5260309,
        size.height * 0.3714113,
        size.width * 0.5292349,
        size.height * 0.3715091,
        size.width * 0.5324285,
        size.height * 0.3715002);
    path_40.cubicTo(
        size.width * 0.5356324,
        size.height * 0.3714646,
        size.width * 0.5388260,
        size.height * 0.3713224,
        size.width * 0.5419989,
        size.height * 0.3710291);
    path_40.cubicTo(
        size.width * 0.5451718,
        size.height * 0.3707180,
        size.width * 0.5483342,
        size.height * 0.3703003,
        size.width * 0.5514553,
        size.height * 0.3696958);
    path_40.cubicTo(
        size.width * 0.5576869,
        size.height * 0.3685048,
        size.width * 0.5637838,
        size.height * 0.3667004,
        size.width * 0.5693622,
        size.height * 0.3641050);
    path_40.cubicTo(
        size.width * 0.5681076,
        size.height * 0.3645317,
        size.width * 0.5668530,
        size.height * 0.3649228,
        size.width * 0.5655776,
        size.height * 0.3652961);
    path_40.cubicTo(
        size.width * 0.5688127,
        size.height * 0.3642028,
        size.width * 0.5719026,
        size.height * 0.3629406,
        size.width * 0.5748058,
        size.height * 0.3615007);
    path_40.lineTo(size.width * 0.5692482, size.height * 0.3587364);
    path_40.close();

    Paint paint_40_fill = Paint()..style = PaintingStyle.fill;
    paint_40_fill.color = Color(0xffffc629).withOpacity(1.0);
    canvas.drawPath(path_40, paint_40_fill);

    Path path_41 = Path();
    path_41.moveTo(size.width * 0.6197547, size.height * 0.7569463);
    path_41.lineTo(size.width * 0.6184067, size.height * 0.7576129);
    path_41.lineTo(size.width * 0.6169551, size.height * 0.7583329);
    path_41.lineTo(size.width * 0.5659094, size.height * 0.7836027);
    path_41.lineTo(size.width * 0.5714463, size.height * 0.7863669);
    path_41.lineTo(size.width * 0.5801665, size.height * 0.7820472);
    path_41.cubicTo(
        size.width * 0.5865537,
        size.height * 0.7791318,
        size.width * 0.5929098,
        size.height * 0.7761719,
        size.width * 0.5992244,
        size.height * 0.7731499);
    path_41.cubicTo(
        size.width * 0.6031127,
        size.height * 0.7713011,
        size.width * 0.6069803,
        size.height * 0.7693990,
        size.width * 0.6108686,
        size.height * 0.7675235);
    path_41.lineTo(size.width * 0.6224713, size.height * 0.7618349);
    path_41.lineTo(size.width * 0.6340222, size.height * 0.7560841);
    path_41.cubicTo(
        size.width * 0.6378586,
        size.height * 0.7541287,
        size.width * 0.6416951,
        size.height * 0.7522088,
        size.width * 0.6455212,
        size.height * 0.7502355);
    path_41.cubicTo(
        size.width * 0.6518254,
        size.height * 0.7470179,
        size.width * 0.6580882,
        size.height * 0.7437292,
        size.width * 0.6643095,
        size.height * 0.7403961);
    path_41.lineTo(size.width * 0.6749686, size.height * 0.7351252);
    path_41.lineTo(size.width * 0.6694421, size.height * 0.7323609);
    path_41.lineTo(size.width * 0.6197547, size.height * 0.7569552);
    path_41.close();

    Paint paint_41_fill = Paint()..style = PaintingStyle.fill;
    paint_41_fill.color = Color(0xffffc629).withOpacity(1.0);
    canvas.drawPath(path_41, paint_41_fill);

    Path path_42 = Path();
    path_42.moveTo(size.width * 0.7006729, size.height * 0.7561730);
    path_42.cubicTo(
        size.width * 0.6933940,
        size.height * 0.7594351,
        size.width * 0.6861773,
        size.height * 0.7627771,
        size.width * 0.6790228,
        size.height * 0.7662080);
    path_42.cubicTo(
        size.width * 0.6753938,
        size.height * 0.7679146,
        size.width * 0.6718165,
        size.height * 0.7696745,
        size.width * 0.6682185,
        size.height * 0.7714077);
    path_42.lineTo(size.width * 0.6574557, size.height * 0.7766875);
    path_42.lineTo(size.width * 0.6467551, size.height * 0.7820294);
    path_42.cubicTo(
        size.width * 0.6432089,
        size.height * 0.7838338,
        size.width * 0.6396317,
        size.height * 0.7856292,
        size.width * 0.6361063,
        size.height * 0.7874602);
    path_42.cubicTo(
        size.width * 0.6290037,
        size.height * 0.7910867,
        size.width * 0.6219632,
        size.height * 0.7947932,
        size.width * 0.6149954,
        size.height * 0.7985885);
    path_42.lineTo(size.width * 0.6150161, size.height * 0.7985885);
    path_42.cubicTo(
        size.width * 0.6150161,
        size.height * 0.7985885,
        size.width * 0.6054664,
        size.height * 0.8033083,
        size.width * 0.6054664,
        size.height * 0.8033083);
    path_42.lineTo(size.width * 0.6109930, size.height * 0.8060637);
    path_42.lineTo(size.width * 0.7145257, size.height * 0.7548220);
    path_42.lineTo(size.width * 0.7089784, size.height * 0.7520577);
    path_42.lineTo(size.width * 0.7006729, size.height * 0.7561641);
    path_42.close();

    Paint paint_42_fill = Paint()..style = PaintingStyle.fill;
    paint_42_fill.color = Color(0xffffc629).withOpacity(1.0);
    canvas.drawPath(path_42, paint_42_fill);

    Path path_43 = Path();
    path_43.moveTo(size.width * 0.5657228, size.height * 0.7835671);
    path_43.cubicTo(
        size.width * 0.5496926,
        size.height * 0.7914956,
        size.width * 0.5263835,
        size.height * 0.7934421,
        size.width * 0.5070767,
        size.height * 0.7892112);
    path_43.cubicTo(
        size.width * 0.5067242,
        size.height * 0.7891312,
        size.width * 0.5063613,
        size.height * 0.7890601,
        size.width * 0.5060087,
        size.height * 0.7889713);
    path_43.cubicTo(
        size.width * 0.5056251,
        size.height * 0.7888824,
        size.width * 0.5052518,
        size.height * 0.7887846,
        size.width * 0.5048682,
        size.height * 0.7886957);
    path_43.cubicTo(
        size.width * 0.5024004,
        size.height * 0.7880646,
        size.width * 0.4999430,
        size.height * 0.7873358,
        size.width * 0.4975374,
        size.height * 0.7864736);
    path_43.cubicTo(
        size.width * 0.4975685,
        size.height * 0.7864914,
        size.width * 0.4975996,
        size.height * 0.7865003,
        size.width * 0.4976411,
        size.height * 0.7865181);
    path_43.cubicTo(
        size.width * 0.4954014,
        size.height * 0.7857092,
        size.width * 0.4932447,
        size.height * 0.7848026,
        size.width * 0.4912228,
        size.height * 0.7837982);
    path_43.lineTo(size.width * 0.4908703, size.height * 0.7839760);
    path_43.lineTo(size.width * 0.4400838, size.height * 0.7588395);
    path_43.lineTo(size.width * 0.4387566, size.height * 0.7581818);
    path_43.lineTo(size.width * 0.4375123, size.height * 0.7575685);
    path_43.lineTo(size.width * 0.3877212, size.height * 0.7329209);
    path_43.lineTo(size.width * 0.3874828, size.height * 0.7330365);
    path_43.lineTo(size.width * 0.3372562, size.height * 0.7081756);
    path_43.lineTo(size.width * 0.3353069, size.height * 0.7071978);
    path_43.lineTo(size.width * 0.3330672, size.height * 0.7060957);
    path_43.lineTo(size.width * 0.2852255, size.height * 0.6824169);
    path_43.lineTo(size.width * 0.2859409, size.height * 0.6820614);
    path_43.lineTo(size.width * 0.2352996, size.height * 0.6569961);
    path_43.lineTo(size.width * 0.2334436, size.height * 0.6560717);
    path_43.lineTo(size.width * 0.2314839, size.height * 0.6551117);
    path_43.lineTo(size.width * 0.1823979, size.height * 0.6308197);
    path_43.lineTo(size.width * 0.1823564, size.height * 0.6308375);
    path_43.lineTo(size.width * 0.1309582, size.height * 0.6053988);
    path_43.lineTo(size.width * 0.1300768, size.height * 0.6049633);
    path_43.lineTo(size.width * 0.1291436, size.height * 0.6045100);
    path_43.lineTo(size.width * 0.07926962, size.height * 0.5798269);
    path_43.lineTo(size.width * 0.07944589, size.height * 0.5797380);
    path_43.cubicTo(
        size.width * 0.07499767,
        size.height * 0.5774625,
        size.width * 0.07155522,
        size.height * 0.5748938,
        size.width * 0.06909781,
        size.height * 0.5721650);
    path_43.cubicTo(
        size.width * 0.06867269,
        size.height * 0.5716317,
        size.width * 0.06824757,
        size.height * 0.5710895,
        size.width * 0.06787429,
        size.height * 0.5705296);
    path_43.cubicTo(
        size.width * 0.06602864,
        size.height * 0.5678186,
        size.width * 0.06486733,
        size.height * 0.5647254,
        size.width * 0.06484659,
        size.height * 0.5615789);
    path_43.cubicTo(
        size.width * 0.06477401,
        size.height * 0.5584413,
        size.width * 0.06585237,
        size.height * 0.5553215,
        size.width * 0.06760470,
        size.height * 0.5525661);
    path_43.cubicTo(
        size.width * 0.06795724,
        size.height * 0.5520150,
        size.width * 0.06835125,
        size.height * 0.5514817,
        size.width * 0.06874527,
        size.height * 0.5509573);
    path_43.cubicTo(
        size.width * 0.07135821,
        size.height * 0.5478819,
        size.width * 0.07516357,
        size.height * 0.5450020,
        size.width * 0.08017171,
        size.height * 0.5424955);
    path_43.lineTo(size.width * 0.07469697, size.height * 0.5397045);
    path_43.cubicTo(
        size.width * 0.07255063,
        size.height * 0.5407800,
        size.width * 0.07060129,
        size.height * 0.5419178,
        size.width * 0.06883859,
        size.height * 0.5430910);
    path_43.cubicTo(
        size.width * 0.06903560,
        size.height * 0.5429133,
        size.width * 0.06924297,
        size.height * 0.5427266,
        size.width * 0.06943998,
        size.height * 0.5425488);
    path_43.cubicTo(
        size.width * 0.06608048,
        size.height * 0.5445043,
        size.width * 0.06303205,
        size.height * 0.5470819,
        size.width * 0.06075091,
        size.height * 0.5502995);
    path_43.cubicTo(
        size.width * 0.06029468,
        size.height * 0.5509306,
        size.width * 0.05989030,
        size.height * 0.5515972,
        size.width * 0.05950665,
        size.height * 0.5522817);
    path_43.cubicTo(
        size.width * 0.05944444,
        size.height * 0.5523883,
        size.width * 0.05939259,
        size.height * 0.5524950,
        size.width * 0.05933038,
        size.height * 0.5526016);
    path_43.cubicTo(
        size.width * 0.05928891,
        size.height * 0.5526905,
        size.width * 0.05923706,
        size.height * 0.5527705,
        size.width * 0.05918522,
        size.height * 0.5528594);
    path_43.cubicTo(
        size.width * 0.05770248,
        size.height * 0.5554904,
        size.width * 0.05693518,
        size.height * 0.5582369,
        size.width * 0.05690408,
        size.height * 0.5610723);
    path_43.cubicTo(
        size.width * 0.05682113,
        size.height * 0.5690630,
        size.width * 0.06262767,
        size.height * 0.5766892,
        size.width * 0.07368083,
        size.height * 0.5823956);
    path_43.lineTo(size.width * 0.07351493, size.height * 0.5824845);
    path_43.lineTo(size.width * 0.08408075, size.height * 0.5877109);
    path_43.cubicTo(
        size.width * 0.09033315,
        size.height * 0.5910618,
        size.width * 0.09662702,
        size.height * 0.5943683,
        size.width * 0.1029624,
        size.height * 0.5976037);
    path_43.cubicTo(
        size.width * 0.1067885,
        size.height * 0.5995680,
        size.width * 0.1106249,
        size.height * 0.6014879,
        size.width * 0.1144510,
        size.height * 0.6034434);
    path_43.lineTo(size.width * 0.1260019, size.height * 0.6092031);
    path_43.lineTo(size.width * 0.1376046, size.height * 0.6148828);
    path_43.cubicTo(
        size.width * 0.1414825,
        size.height * 0.6167671,
        size.width * 0.1453501,
        size.height * 0.6186603,
        size.width * 0.1492384,
        size.height * 0.6205002);
    path_43.cubicTo(
        size.width * 0.1555841,
        size.height * 0.6235490,
        size.width * 0.1619713,
        size.height * 0.6265266,
        size.width * 0.1683896,
        size.height * 0.6294509);
    path_43.lineTo(size.width * 0.1770165, size.height * 0.6337262);
    path_43.lineTo(size.width * 0.1770683, size.height * 0.6336995);
    path_43.lineTo(size.width * 0.1875512, size.height * 0.6388904);
    path_43.cubicTo(
        size.width * 0.1937621,
        size.height * 0.6422146,
        size.width * 0.2000041,
        size.height * 0.6455034,
        size.width * 0.2062980,
        size.height * 0.6487121);
    path_43.cubicTo(
        size.width * 0.2101241,
        size.height * 0.6506853,
        size.width * 0.2139606,
        size.height * 0.6525963,
        size.width * 0.2177970,
        size.height * 0.6545518);
    path_43.lineTo(size.width * 0.2293479, size.height * 0.6603115);
    path_43.lineTo(size.width * 0.2409610, size.height * 0.6660000);
    path_43.cubicTo(
        size.width * 0.2448389,
        size.height * 0.6678755,
        size.width * 0.2487065,
        size.height * 0.6697776,
        size.width * 0.2525948,
        size.height * 0.6716175);
    path_43.cubicTo(
        size.width * 0.2589405,
        size.height * 0.6746662,
        size.width * 0.2653381,
        size.height * 0.6776439,
        size.width * 0.2717667,
        size.height * 0.6805770);
    path_43.lineTo(size.width * 0.2794293, size.height * 0.6843724);
    path_43.lineTo(size.width * 0.2787242, size.height * 0.6847279);
    path_43.lineTo(size.width * 0.2893108, size.height * 0.6899721);
    path_43.cubicTo(
        size.width * 0.2955632,
        size.height * 0.6933141,
        size.width * 0.3018467,
        size.height * 0.6966206,
        size.width * 0.3081717,
        size.height * 0.6998471);
    path_43.cubicTo(
        size.width * 0.3119978,
        size.height * 0.7018203,
        size.width * 0.3158342,
        size.height * 0.7037402,
        size.width * 0.3196707,
        size.height * 0.7056868);
    path_43.lineTo(size.width * 0.3312112, size.height * 0.7114465);
    path_43.lineTo(size.width * 0.3428139, size.height * 0.7171351);
    path_43.cubicTo(
        size.width * 0.3467022,
        size.height * 0.7190105,
        size.width * 0.3505594,
        size.height * 0.7209127,
        size.width * 0.3544477,
        size.height * 0.7227526);
    path_43.cubicTo(
        size.width * 0.3607623,
        size.height * 0.7257835,
        size.width * 0.3671184,
        size.height * 0.7287434,
        size.width * 0.3735056,
        size.height * 0.7316499);
    path_43.lineTo(size.width * 0.3822361, size.height * 0.7359696);
    path_43.lineTo(size.width * 0.3824746, size.height * 0.7358541);
    path_43.lineTo(size.width * 0.3929368, size.height * 0.7410360);
    path_43.cubicTo(
        size.width * 0.3991269,
        size.height * 0.7443425,
        size.width * 0.4053482,
        size.height * 0.7476135,
        size.width * 0.4116110,
        size.height * 0.7508133);
    path_43.cubicTo(
        size.width * 0.4154371,
        size.height * 0.7527865,
        size.width * 0.4192736,
        size.height * 0.7547064,
        size.width * 0.4231100,
        size.height * 0.7566530);
    path_43.lineTo(size.width * 0.4346609, size.height * 0.7624127);
    path_43.lineTo(size.width * 0.4462636, size.height * 0.7681013);
    path_43.cubicTo(
        size.width * 0.4501415,
        size.height * 0.7699767,
        size.width * 0.4540091,
        size.height * 0.7718699,
        size.width * 0.4578974,
        size.height * 0.7737276);
    path_43.cubicTo(
        size.width * 0.4642224,
        size.height * 0.7767497,
        size.width * 0.4705785,
        size.height * 0.7797184,
        size.width * 0.4769760,
        size.height * 0.7826338);
    path_43.lineTo(size.width * 0.4856755, size.height * 0.7869447);
    path_43.lineTo(size.width * 0.4860073, size.height * 0.7867758);
    path_43.cubicTo(
        size.width * 0.4907251,
        size.height * 0.7890868,
        size.width * 0.4960961,
        size.height * 0.7909356,
        size.width * 0.5019130,
        size.height * 0.7923133);
    path_43.cubicTo(
        size.width * 0.4984706,
        size.height * 0.7916111,
        size.width * 0.4950696,
        size.height * 0.7907756,
        size.width * 0.4917309,
        size.height * 0.7897357);
    path_43.cubicTo(
        size.width * 0.4974026,
        size.height * 0.7921800,
        size.width * 0.5035617,
        size.height * 0.7938154,
        size.width * 0.5098141,
        size.height * 0.7948732);
    path_43.cubicTo(
        size.width * 0.5129455,
        size.height * 0.7954154,
        size.width * 0.5161183,
        size.height * 0.7957709,
        size.width * 0.5193016,
        size.height * 0.7960287);
    path_43.cubicTo(
        size.width * 0.5224744,
        size.height * 0.7962686,
        size.width * 0.5256784,
        size.height * 0.7963664,
        size.width * 0.5288720,
        size.height * 0.7963575);
    path_43.cubicTo(
        size.width * 0.5320759,
        size.height * 0.7963220,
        size.width * 0.5352592,
        size.height * 0.7961709,
        size.width * 0.5384320,
        size.height * 0.7958864);
    path_43.cubicTo(
        size.width * 0.5416049,
        size.height * 0.7955753,
        size.width * 0.5447674,
        size.height * 0.7951576,
        size.width * 0.5478884,
        size.height * 0.7945532);
    path_43.cubicTo(
        size.width * 0.5541201,
        size.height * 0.7933621,
        size.width * 0.5602169,
        size.height * 0.7915578,
        size.width * 0.5658057,
        size.height * 0.7889535);
    path_43.cubicTo(
        size.width * 0.5645926,
        size.height * 0.7893712,
        size.width * 0.5633587,
        size.height * 0.7897445,
        size.width * 0.5621248,
        size.height * 0.7901179);
    path_43.cubicTo(
        size.width * 0.5653287,
        size.height * 0.7890335,
        size.width * 0.5683875,
        size.height * 0.7877802,
        size.width * 0.5712597,
        size.height * 0.7863581);
    path_43.lineTo(size.width * 0.5656917, size.height * 0.7835938);
    path_43.close();

    Paint paint_43_fill = Paint()..style = PaintingStyle.fill;
    paint_43_fill.color = Color(0xffffc629).withOpacity(1.0);
    canvas.drawPath(path_43, paint_43_fill);

    Path path_44 = Path();
    path_44.moveTo(size.width * 0.9725848, size.height * 0.3878015);
    path_44.cubicTo(
        size.width * 0.9709984,
        size.height * 0.3839440,
        size.width * 0.9686862,
        size.height * 0.3803442,
        size.width * 0.9658762,
        size.height * 0.3770643);
    path_44.cubicTo(
        size.width * 0.9630870,
        size.height * 0.3737845,
        size.width * 0.9598208,
        size.height * 0.3708424,
        size.width * 0.9562643,
        size.height * 0.3681937);
    path_44.cubicTo(
        size.width * 0.9560258,
        size.height * 0.3680248,
        size.width * 0.9557874,
        size.height * 0.3678559,
        size.width * 0.9555385,
        size.height * 0.3676871);
    path_44.cubicTo(
        size.width * 0.9513080,
        size.height * 0.3645050,
        size.width * 0.9464139,
        size.height * 0.3615185,
        size.width * 0.9408874,
        size.height * 0.3587809);
    path_44.lineTo(size.width * 0.9408355, size.height * 0.3588075);
    path_44.lineTo(size.width * 0.8904638, size.height * 0.3338844);
    path_44.lineTo(size.width * 0.8887737, size.height * 0.3330400);
    path_44.lineTo(size.width * 0.8871873, size.height * 0.3322578);
    path_44.lineTo(size.width * 0.8377384, size.height * 0.3077880);
    path_44.lineTo(size.width * 0.8322118, size.height * 0.3105434);
    path_44.lineTo(size.width * 0.8429020, size.height * 0.3158409);
    path_44.cubicTo(
        size.width * 0.8491129,
        size.height * 0.3191652,
        size.width * 0.8553653,
        size.height * 0.3224450,
        size.width * 0.8616696,
        size.height * 0.3256537);
    path_44.cubicTo(
        size.width * 0.8654853,
        size.height * 0.3276270,
        size.width * 0.8693321,
        size.height * 0.3295469,
        size.width * 0.8731582,
        size.height * 0.3315023);
    path_44.lineTo(size.width * 0.8847091, size.height * 0.3372531);
    path_44.lineTo(size.width * 0.8963118, size.height * 0.3429417);
    path_44.cubicTo(
        size.width * 0.9001794,
        size.height * 0.3448172,
        size.width * 0.9040470,
        size.height * 0.3467193,
        size.width * 0.9079456,
        size.height * 0.3485592);
    path_44.cubicTo(
        size.width * 0.9142810,
        size.height * 0.3515990,
        size.width * 0.9206474,
        size.height * 0.3545589,
        size.width * 0.9270657,
        size.height * 0.3574832);
    path_44.lineTo(size.width * 0.9357341, size.height * 0.3617674);
    path_44.lineTo(size.width * 0.9357755, size.height * 0.3617496);
    path_44.cubicTo(
        size.width * 0.9773441,
        size.height * 0.3826996,
        size.width * 0.9769812,
        size.height * 0.4165911,
        size.width * 0.9348320,
        size.height * 0.4374522);
    path_44.lineTo(size.width * 0.9347075, size.height * 0.4373811);
    path_44.lineTo(size.width * 0.9264851, size.height * 0.4414520);
    path_44.cubicTo(
        size.width * 0.9191854,
        size.height * 0.4447318,
        size.width * 0.9119376,
        size.height * 0.4480828,
        size.width * 0.9047520,
        size.height * 0.4515315);
    path_44.cubicTo(
        size.width * 0.9011126,
        size.height * 0.4532380,
        size.width * 0.8975353,
        size.height * 0.4549980,
        size.width * 0.8939374,
        size.height * 0.4567312);
    path_44.lineTo(size.width * 0.8831745, size.height * 0.4620020);
    path_44.lineTo(size.width * 0.8724739, size.height * 0.4673440);
    path_44.cubicTo(
        size.width * 0.8689381,
        size.height * 0.4691483,
        size.width * 0.8653609,
        size.height * 0.4709349,
        size.width * 0.8618355,
        size.height * 0.4727748);
    path_44.cubicTo(
        size.width * 0.8547951,
        size.height * 0.4763657,
        size.width * 0.8478272,
        size.height * 0.4800366,
        size.width * 0.8409319,
        size.height * 0.4837964);
    path_44.lineTo(size.width * 0.8311853, size.height * 0.4886139);
    path_44.lineTo(size.width * 0.8367222, size.height * 0.4913782);
    path_44.lineTo(size.width * 0.9402652, size.height * 0.4401365);
    path_44.lineTo(size.width * 0.9403793, size.height * 0.4401899);
    path_44.cubicTo(
        size.width * 0.9454704,
        size.height * 0.4376655,
        size.width * 0.9500327,
        size.height * 0.4349457,
        size.width * 0.9540661,
        size.height * 0.4320658);
    path_44.cubicTo(
        size.width * 0.9581514,
        size.height * 0.4292393,
        size.width * 0.9619361,
        size.height * 0.4260573,
        size.width * 0.9651608,
        size.height * 0.4224308);
    path_44.cubicTo(
        size.width * 0.9680537,
        size.height * 0.4192221,
        size.width * 0.9704385,
        size.height * 0.4156578,
        size.width * 0.9721597,
        size.height * 0.4118447);
    path_44.cubicTo(
        size.width * 0.9738706,
        size.height * 0.4080227,
        size.width * 0.9748245,
        size.height * 0.4039518,
        size.width * 0.9749075,
        size.height * 0.3998453);
    path_44.cubicTo(
        size.width * 0.9749800,
        size.height * 0.3957478,
        size.width * 0.9741713,
        size.height * 0.3916324,
        size.width * 0.9726056,
        size.height * 0.3877749);
    path_44.close();

    Paint paint_44_fill = Paint()..style = PaintingStyle.fill;
    paint_44_fill.color = Color(0xffffc629).withOpacity(1.0);
    canvas.drawPath(path_44, paint_44_fill);

    Path path_45 = Path();
    path_45.moveTo(size.width * 0.7272275, size.height * 0.5398201);
    path_45.lineTo(size.width * 0.7190672, size.height * 0.5438643);
    path_45.cubicTo(
        size.width * 0.7117468,
        size.height * 0.5471530,
        size.width * 0.7044679,
        size.height * 0.5505129,
        size.width * 0.6972616,
        size.height * 0.5539705);
    path_45.cubicTo(
        size.width * 0.6936429,
        size.height * 0.5556859,
        size.width * 0.6900449,
        size.height * 0.5574369,
        size.width * 0.6864573,
        size.height * 0.5591702);
    path_45.lineTo(size.width * 0.6756945, size.height * 0.5644499);
    path_45.lineTo(size.width * 0.6650042, size.height * 0.5697829);
    path_45.cubicTo(
        size.width * 0.6614477,
        size.height * 0.5715962,
        size.width * 0.6578808,
        size.height * 0.5733739,
        size.width * 0.6543451,
        size.height * 0.5752138);
    path_45.cubicTo(
        size.width * 0.6472839,
        size.height * 0.5788225,
        size.width * 0.6402849,
        size.height * 0.5825112,
        size.width * 0.6333482,
        size.height * 0.5862887);
    path_45.lineTo(size.width * 0.6238815, size.height * 0.5909729);
    path_45.lineTo(size.width * 0.6235600, size.height * 0.5908129);
    path_45.lineTo(size.width * 0.6153998, size.height * 0.5948572);
    path_45.cubicTo(
        size.width * 0.6080794,
        size.height * 0.5981459,
        size.width * 0.6008005,
        size.height * 0.6015057,
        size.width * 0.5936045,
        size.height * 0.6049633);
    path_45.cubicTo(
        size.width * 0.5899858,
        size.height * 0.6066699,
        size.width * 0.5863878,
        size.height * 0.6084298,
        size.width * 0.5828002,
        size.height * 0.6101630);
    path_45.lineTo(size.width * 0.5720374, size.height * 0.6154338);
    path_45.lineTo(size.width * 0.5613367, size.height * 0.6207758);
    path_45.cubicTo(
        size.width * 0.5577906,
        size.height * 0.6225801,
        size.width * 0.5542237,
        size.height * 0.6243667,
        size.width * 0.5506880,
        size.height * 0.6262066);
    path_45.cubicTo(
        size.width * 0.5436164,
        size.height * 0.6298153,
        size.width * 0.5366071,
        size.height * 0.6335040,
        size.width * 0.5296600,
        size.height * 0.6372905);
    path_45.lineTo(size.width * 0.5200481, size.height * 0.6420458);
    path_45.lineTo(size.width * 0.5202348, size.height * 0.6421435);
    path_45.cubicTo(
        size.width * 0.5050548,
        size.height * 0.6495298,
        size.width * 0.4865983,
        size.height * 0.6542496,
        size.width * 0.4672190,
        size.height * 0.6563472);
    path_45.cubicTo(
        size.width * 0.4649275,
        size.height * 0.6565783,
        size.width * 0.4626360,
        size.height * 0.6567827,
        size.width * 0.4603341,
        size.height * 0.6569339);
    path_45.cubicTo(
        size.width * 0.4549216,
        size.height * 0.6573249,
        size.width * 0.4494883,
        size.height * 0.6575205,
        size.width * 0.4440550,
        size.height * 0.6575116);
    path_45.cubicTo(
        size.width * 0.4386321,
        size.height * 0.6575205,
        size.width * 0.4332093,
        size.height * 0.6573338,
        size.width * 0.4277967,
        size.height * 0.6569605);
    path_45.cubicTo(
        size.width * 0.4257437,
        size.height * 0.6568272,
        size.width * 0.4236803,
        size.height * 0.6566494,
        size.width * 0.4216273,
        size.height * 0.6564450);
    path_45.cubicTo(
        size.width * 0.4015947,
        size.height * 0.6543740,
        size.width * 0.3825472,
        size.height * 0.6495031,
        size.width * 0.3670769,
        size.height * 0.6417969);
    path_45.lineTo(size.width * 0.3581079, size.height * 0.6373527);
    path_45.cubicTo(
        size.width * 0.3511608,
        size.height * 0.6335662,
        size.width * 0.3441515,
        size.height * 0.6298864,
        size.width * 0.3370799,
        size.height * 0.6262599);
    path_45.cubicTo(
        size.width * 0.3335442,
        size.height * 0.6244289,
        size.width * 0.3299877,
        size.height * 0.6226423,
        size.width * 0.3264312,
        size.height * 0.6208380);
    path_45.lineTo(size.width * 0.3157305, size.height * 0.6154961);
    path_45.lineTo(size.width * 0.3049677, size.height * 0.6102163);
    path_45.cubicTo(
        size.width * 0.3013801,
        size.height * 0.6084920,
        size.width * 0.2977925,
        size.height * 0.6067321,
        size.width * 0.2941634,
        size.height * 0.6050166);
    path_45.cubicTo(
        size.width * 0.2869571,
        size.height * 0.6015679,
        size.width * 0.2796885,
        size.height * 0.5981903,
        size.width * 0.2723681,
        size.height * 0.5949194);
    path_45.lineTo(size.width * 0.2645293, size.height * 0.5910440);
    path_45.lineTo(size.width * 0.2650477, size.height * 0.5907774);
    path_45.cubicTo(
        size.width * 0.2482710,
        size.height * 0.5821912,
        size.width * 0.2383273,
        size.height * 0.5714629,
        size.width * 0.2351648,
        size.height * 0.5603346);
    path_45.cubicTo(
        size.width * 0.2351026,
        size.height * 0.5600946,
        size.width * 0.2350300,
        size.height * 0.5598457,
        size.width * 0.2349782,
        size.height * 0.5595968);
    path_45.cubicTo(
        size.width * 0.2349471,
        size.height * 0.5594724,
        size.width * 0.2349263,
        size.height * 0.5593479,
        size.width * 0.2348849,
        size.height * 0.5592146);
    path_45.cubicTo(
        size.width * 0.2344079,
        size.height * 0.5570903,
        size.width * 0.2341590,
        size.height * 0.5549393,
        size.width * 0.2341798,
        size.height * 0.5527616);
    path_45.cubicTo(
        size.width * 0.2341901,
        size.height * 0.5491618,
        size.width * 0.2349471,
        size.height * 0.5455798,
        size.width * 0.2363158,
        size.height * 0.5421666);
    path_45.cubicTo(
        size.width * 0.2376637,
        size.height * 0.5387535,
        size.width * 0.2396545,
        size.height * 0.5355359,
        size.width * 0.2419979,
        size.height * 0.5325227);
    path_45.cubicTo(
        size.width * 0.2443620,
        size.height * 0.5295362,
        size.width * 0.2471201,
        size.height * 0.5267719,
        size.width * 0.2501478,
        size.height * 0.5242209);
    path_45.cubicTo(
        size.width * 0.2531340,
        size.height * 0.5216522,
        size.width * 0.2564416,
        size.height * 0.5193501,
        size.width * 0.2598530,
        size.height * 0.5171813);
    path_45.cubicTo(
        size.width * 0.2597804,
        size.height * 0.5172169,
        size.width * 0.2597078,
        size.height * 0.5172613,
        size.width * 0.2596352,
        size.height * 0.5172969);
    path_45.cubicTo(
        size.width * 0.2613357,
        size.height * 0.5162925,
        size.width * 0.2630984,
        size.height * 0.5153059,
        size.width * 0.2649752,
        size.height * 0.5143548);
    path_45.lineTo(size.width * 0.2649959, size.height * 0.5143548);
    path_45.cubicTo(
        size.width * 0.2768164,
        size.height * 0.5085240,
        size.width * 0.2827992,
        size.height * 0.5012177,
        size.width * 0.2828614,
        size.height * 0.4932715);
    path_45.cubicTo(
        size.width * 0.2829029,
        size.height * 0.4853163,
        size.width * 0.2768993,
        size.height * 0.4778056,
        size.width * 0.2655766,
        size.height * 0.4721793);
    path_45.lineTo(size.width * 0.2600189, size.height * 0.4749258);
    path_45.cubicTo(
        size.width * 0.2708958,
        size.height * 0.4803477,
        size.width * 0.2759039,
        size.height * 0.4874673,
        size.width * 0.2751262,
        size.height * 0.4944714);
    path_45.cubicTo(
        size.width * 0.2747633,
        size.height * 0.4974846,
        size.width * 0.2732702,
        size.height * 0.5004000,
        size.width * 0.2710720,
        size.height * 0.5029421);
    path_45.cubicTo(
        size.width * 0.2687287,
        size.height * 0.5056441,
        size.width * 0.2656491,
        size.height * 0.5079729,
        size.width * 0.2623311,
        size.height * 0.5100972);
    path_45.cubicTo(
        size.width * 0.2615949,
        size.height * 0.5105150,
        size.width * 0.2608380,
        size.height * 0.5109239,
        size.width * 0.2600500,
        size.height * 0.5113327);
    path_45.cubicTo(
        size.width * 0.2562239,
        size.height * 0.5132704,
        size.width * 0.2526777,
        size.height * 0.5153236,
        size.width * 0.2494427,
        size.height * 0.5174835);
    path_45.cubicTo(
        size.width * 0.2438746,
        size.height * 0.5209855,
        size.width * 0.2387835,
        size.height * 0.5251542,
        size.width * 0.2347086,
        size.height * 0.5300962);
    path_45.cubicTo(
        size.width * 0.2320749,
        size.height * 0.5332604,
        size.width * 0.2299078,
        size.height * 0.5367625,
        size.width * 0.2283629,
        size.height * 0.5405045);
    path_45.cubicTo(
        size.width * 0.2268283,
        size.height * 0.5442465,
        size.width * 0.2259988,
        size.height * 0.5482285,
        size.width * 0.2259469,
        size.height * 0.5522372);
    path_45.cubicTo(
        size.width * 0.2259158,
        size.height * 0.5562281,
        size.width * 0.2266831,
        size.height * 0.5602190,
        size.width * 0.2281555,
        size.height * 0.5639877);
    path_45.cubicTo(
        size.width * 0.2296486,
        size.height * 0.5677297,
        size.width * 0.2317431,
        size.height * 0.5712673,
        size.width * 0.2343560,
        size.height * 0.5744671);
    path_45.cubicTo(
        size.width * 0.2373526,
        size.height * 0.5782092,
        size.width * 0.2409610,
        size.height * 0.5814890,
        size.width * 0.2448908,
        size.height * 0.5843955);
    path_45.cubicTo(
        size.width * 0.2490279,
        size.height * 0.5875953,
        size.width * 0.2538079,
        size.height * 0.5905996,
        size.width * 0.2591997,
        size.height * 0.5933728);
    path_45.lineTo(size.width * 0.2586502, size.height * 0.5936483);
    path_45.lineTo(size.width * 0.3615089, size.height * 0.6445612);
    path_45.lineTo(size.width * 0.3614778, size.height * 0.6445612);
    path_45.cubicTo(
        size.width * 0.3699180,
        size.height * 0.6487743,
        size.width * 0.3794158,
        size.height * 0.6522497,
        size.width * 0.3898365,
        size.height * 0.6549695);
    path_45.cubicTo(
        size.width * 0.3967214,
        size.height * 0.6570672,
        size.width * 0.4038137,
        size.height * 0.6586849,
        size.width * 0.4109889,
        size.height * 0.6598670);
    path_45.cubicTo(
        size.width * 0.4217517,
        size.height * 0.6616358,
        size.width * 0.4327219,
        size.height * 0.6624713,
        size.width * 0.4436714,
        size.height * 0.6624802);
    path_45.cubicTo(
        size.width * 0.4491565,
        size.height * 0.6624713,
        size.width * 0.4546312,
        size.height * 0.6622491,
        size.width * 0.4600956,
        size.height * 0.6618225);
    path_45.cubicTo(
        size.width * 0.4655392,
        size.height * 0.6613692,
        size.width * 0.4709725,
        size.height * 0.6607381,
        size.width * 0.4763435,
        size.height * 0.6598226);
    path_45.cubicTo(
        size.width * 0.4820464,
        size.height * 0.6588804,
        size.width * 0.4876767,
        size.height * 0.6576627,
        size.width * 0.4932032,
        size.height * 0.6561428);
    path_45.cubicTo(
        size.width * 0.5055421,
        size.height * 0.6533074,
        size.width * 0.5167197,
        size.height * 0.6494143,
        size.width * 0.5264975,
        size.height * 0.6445790);
    path_45.lineTo(size.width * 0.5262798, size.height * 0.6444723);
    path_45.lineTo(size.width * 0.6289311, size.height * 0.5936661);
    path_45.lineTo(size.width * 0.6292421, size.height * 0.5938261);
    path_45.lineTo(size.width * 0.7327852, size.height * 0.5425844);
    path_45.lineTo(size.width * 0.7272482, size.height * 0.5398201);
    path_45.close();

    Paint paint_45_fill = Paint()..style = PaintingStyle.fill;
    paint_45_fill.color = Color(0xffffc629).withOpacity(1.0);
    canvas.drawPath(path_45, paint_45_fill);

    Path path_46 = Path();
    path_46.moveTo(size.width * 0.8363904, size.height * 0.4913160);
    path_46.lineTo(size.width * 0.8308431, size.height * 0.4885606);
    path_46.lineTo(size.width * 0.8226828, size.height * 0.4925871);
    path_46.cubicTo(
        size.width * 0.8226828,
        size.height * 0.4925871,
        size.width * 0.8226310,
        size.height * 0.4926137,
        size.width * 0.8226102,
        size.height * 0.4926226);
    path_46.cubicTo(
        size.width * 0.8153106,
        size.height * 0.4959024,
        size.width * 0.8080835,
        size.height * 0.4992445,
        size.width * 0.8008876,
        size.height * 0.5026932);
    path_46.cubicTo(
        size.width * 0.7972481,
        size.height * 0.5044087,
        size.width * 0.7936709,
        size.height * 0.5061597,
        size.width * 0.7900833,
        size.height * 0.5078929);
    path_46.lineTo(size.width * 0.7793204, size.height * 0.5131726);
    path_46.lineTo(size.width * 0.7686198, size.height * 0.5185057);
    path_46.cubicTo(
        size.width * 0.7650737,
        size.height * 0.5203189,
        size.width * 0.7615068,
        size.height * 0.5220966,
        size.width * 0.7579710,
        size.height * 0.5239365);
    path_46.cubicTo(
        size.width * 0.7509099,
        size.height * 0.5275452,
        size.width * 0.7439109,
        size.height * 0.5312250,
        size.width * 0.7369742,
        size.height * 0.5350115);
    path_46.lineTo(size.width * 0.7273208, size.height * 0.5397845);
    path_46.lineTo(size.width * 0.7328474, size.height * 0.5425488);
    path_46.lineTo(size.width * 0.8363904, size.height * 0.4913071);
    path_46.close();

    Paint paint_46_fill = Paint()..style = PaintingStyle.fill;
    paint_46_fill.color = Color(0xffffc629).withOpacity(1.0);
    canvas.drawPath(path_46, paint_46_fill);

    Path path_47 = Path();
    path_47.moveTo(size.width * 0.9627137, size.height * 0.6985939);
    path_47.cubicTo(
        size.width * 0.9599245,
        size.height * 0.6953140,
        size.width * 0.9566480,
        size.height * 0.6923631,
        size.width * 0.9530811,
        size.height * 0.6897143);
    path_47.cubicTo(
        size.width * 0.9528530,
        size.height * 0.6895454,
        size.width * 0.9526249,
        size.height * 0.6893943,
        size.width * 0.9523968,
        size.height * 0.6892344);
    path_47.cubicTo(
        size.width * 0.9481974,
        size.height * 0.6860790,
        size.width * 0.9433551,
        size.height * 0.6831280,
        size.width * 0.9379011,
        size.height * 0.6803993);
    path_47.lineTo(size.width * 0.9380048, size.height * 0.6803459);
    path_47.cubicTo(
        size.width * 0.9322812,
        size.height * 0.6774928,
        size.width * 0.9260600,
        size.height * 0.6749862,
        size.width * 0.9194032,
        size.height * 0.6728174);
    path_47.cubicTo(
        size.width * 0.9167695,
        size.height * 0.6719108,
        size.width * 0.9141151,
        size.height * 0.6710575,
        size.width * 0.9114192,
        size.height * 0.6702665);
    path_47.cubicTo(
        size.width * 0.9053327,
        size.height * 0.6685421,
        size.width * 0.8991321,
        size.height * 0.6671466,
        size.width * 0.8928590,
        size.height * 0.6660178);
    path_47.cubicTo(
        size.width * 0.8803127,
        size.height * 0.6637868,
        size.width * 0.8674658,
        size.height * 0.6627913,
        size.width * 0.8546499,
        size.height * 0.6628269);
    path_47.cubicTo(
        size.width * 0.8418237,
        size.height * 0.6628980,
        size.width * 0.8289871,
        size.height * 0.6639913,
        size.width * 0.8164615,
        size.height * 0.6663467);
    path_47.cubicTo(
        size.width * 0.8102299,
        size.height * 0.6675200,
        size.width * 0.8040293,
        size.height * 0.6689777,
        size.width * 0.7979636,
        size.height * 0.6707642);
    path_47.cubicTo(
        size.width * 0.7929969,
        size.height * 0.6722664,
        size.width * 0.7881132,
        size.height * 0.6739818,
        size.width * 0.7833954,
        size.height * 0.6759639);
    path_47.cubicTo(
        size.width * 0.7799322,
        size.height * 0.6773328,
        size.width * 0.7766038,
        size.height * 0.6787816,
        size.width * 0.7734413,
        size.height * 0.6803548);
    path_47.lineTo(size.width * 0.7734932, size.height * 0.6803815);
    path_47.lineTo(size.width * 0.7234325, size.height * 0.7051624);
    path_47.lineTo(size.width * 0.7226859, size.height * 0.7055268);
    path_47.lineTo(size.width * 0.7218772, size.height * 0.7059357);
    path_47.lineTo(size.width * 0.6701990, size.height * 0.7315165);
    path_47.lineTo(size.width * 0.6757359, size.height * 0.7342719);
    path_47.lineTo(size.width * 0.6843317, size.height * 0.7300144);
    path_47.cubicTo(
        size.width * 0.6907603,
        size.height * 0.7270812,
        size.width * 0.6971579,
        size.height * 0.7240947,
        size.width * 0.7035140,
        size.height * 0.7210549);
    path_47.cubicTo(
        size.width * 0.7074127,
        size.height * 0.7192061,
        size.width * 0.7112802,
        size.height * 0.7173129,
        size.width * 0.7151582,
        size.height * 0.7154285);
    path_47.lineTo(size.width * 0.7267609, size.height * 0.7097488);
    path_47.lineTo(size.width * 0.7383117, size.height * 0.7039802);
    path_47.cubicTo(
        size.width * 0.7421482,
        size.height * 0.7020248,
        size.width * 0.7459847,
        size.height * 0.7001138,
        size.width * 0.7498004,
        size.height * 0.6981405);
    path_47.cubicTo(
        size.width * 0.7560528,
        size.height * 0.6949496,
        size.width * 0.7622534,
        size.height * 0.6916876,
        size.width * 0.7684228,
        size.height * 0.6883900);
    path_47.lineTo(size.width * 0.7792478, size.height * 0.6830302);
    path_47.lineTo(size.width * 0.7792167, size.height * 0.6830125);
    path_47.cubicTo(
        size.width * 0.7878229,
        size.height * 0.6787727,
        size.width * 0.7975177,
        size.height * 0.6754040,
        size.width * 0.8078450,
        size.height * 0.6728886);
    path_47.cubicTo(
        size.width * 0.8106343,
        size.height * 0.6723019,
        size.width * 0.8134442,
        size.height * 0.6717686,
        size.width * 0.8162749,
        size.height * 0.6712975);
    path_47.cubicTo(
        size.width * 0.8287590,
        size.height * 0.6692443,
        size.width * 0.8414711,
        size.height * 0.6682044,
        size.width * 0.8541833,
        size.height * 0.6681688);
    path_47.cubicTo(
        size.width * 0.8669058,
        size.height * 0.6680977,
        size.width * 0.8795973,
        size.height * 0.6690399,
        size.width * 0.8921332,
        size.height * 0.6709864);
    path_47.cubicTo(
        size.width * 0.8983752,
        size.height * 0.6719642,
        size.width * 0.9045758,
        size.height * 0.6732263,
        size.width * 0.9106830,
        size.height * 0.6747907);
    path_47.cubicTo(
        size.width * 0.9112222,
        size.height * 0.6749240,
        size.width * 0.9117510,
        size.height * 0.6750751,
        size.width * 0.9122902,
        size.height * 0.6752173);
    path_47.cubicTo(
        size.width * 0.9193928,
        size.height * 0.6773772,
        size.width * 0.9261118,
        size.height * 0.6799726,
        size.width * 0.9322605,
        size.height * 0.6830125);
    path_47.lineTo(size.width * 0.9321879, size.height * 0.6830480);
    path_47.cubicTo(
        size.width * 0.9741920,
        size.height * 0.7039625,
        size.width * 0.9739846,
        size.height * 0.7379962,
        size.width * 0.9317835,
        size.height * 0.7589284);
    path_47.lineTo(size.width * 0.9316695, size.height * 0.7588751);
    path_47.lineTo(size.width * 0.9234989, size.height * 0.7629193);
    path_47.cubicTo(
        size.width * 0.9161785,
        size.height * 0.7662080,
        size.width * 0.9089099,
        size.height * 0.7695767,
        size.width * 0.9017140,
        size.height * 0.7730254);
    path_47.cubicTo(
        size.width * 0.8980849,
        size.height * 0.7747409,
        size.width * 0.8944973,
        size.height * 0.7765008,
        size.width * 0.8909097,
        size.height * 0.7782252);
    path_47.lineTo(size.width * 0.8801468, size.height * 0.7835049);
    path_47.lineTo(size.width * 0.8694462, size.height * 0.7888468);
    path_47.cubicTo(
        size.width * 0.8659001,
        size.height * 0.7906512,
        size.width * 0.8623228,
        size.height * 0.7924466,
        size.width * 0.8587974,
        size.height * 0.7942776);
    path_47.cubicTo(
        size.width * 0.8517155,
        size.height * 0.7979041,
        size.width * 0.8446855,
        size.height * 0.8015928,
        size.width * 0.8377176,
        size.height * 0.8053882);
    path_47.lineTo(size.width * 0.8281472, size.height * 0.8101257);
    path_47.lineTo(size.width * 0.8336738, size.height * 0.8128900);
    path_47.lineTo(size.width * 0.9371131, size.height * 0.7616927);
    path_47.lineTo(size.width * 0.9372064, size.height * 0.7617372);
    path_47.cubicTo(
        size.width * 0.9423183,
        size.height * 0.7592128,
        size.width * 0.9468909,
        size.height * 0.7564841,
        size.width * 0.9509244,
        size.height * 0.7535776);
    path_47.cubicTo(
        size.width * 0.9550097,
        size.height * 0.7507600,
        size.width * 0.9587632,
        size.height * 0.7475868,
        size.width * 0.9619775,
        size.height * 0.7439781);
    path_47.cubicTo(
        size.width * 0.9648601,
        size.height * 0.7407694,
        size.width * 0.9672553,
        size.height * 0.7372051,
        size.width * 0.9689869,
        size.height * 0.7333920);
    path_47.cubicTo(
        size.width * 0.9706977,
        size.height * 0.7295700,
        size.width * 0.9716516,
        size.height * 0.7254991,
        size.width * 0.9717346,
        size.height * 0.7213926);
    path_47.cubicTo(
        size.width * 0.9718072,
        size.height * 0.7172951,
        size.width * 0.9709984,
        size.height * 0.7131797,
        size.width * 0.9694224,
        size.height * 0.7093222);
    path_47.cubicTo(
        size.width * 0.9678359,
        size.height * 0.7054646,
        size.width * 0.9655237,
        size.height * 0.7018559,
        size.width * 0.9627137,
        size.height * 0.6985850);
    path_47.close();

    Paint paint_47_fill = Paint()..style = PaintingStyle.fill;
    paint_47_fill.color = Color(0xffffc629).withOpacity(1.0);
    canvas.drawPath(path_47, paint_47_fill);

    Path path_48 = Path();
    path_48.moveTo(size.width * 0.8481901, size.height * 0.4471673);
    path_48.lineTo(size.width * 0.8597410, size.height * 0.4414076);
    path_48.cubicTo(
        size.width * 0.8635774,
        size.height * 0.4394521,
        size.width * 0.8674139,
        size.height * 0.4375322,
        size.width * 0.8712400,
        size.height * 0.4355679);
    path_48.cubicTo(
        size.width * 0.8775339,
        size.height * 0.4323503,
        size.width * 0.8837863,
        size.height * 0.4290704,
        size.width * 0.8900076,
        size.height * 0.4257373);
    path_48.lineTo(size.width * 0.9004697, size.height * 0.4205553);
    path_48.lineTo(size.width * 0.9006563, size.height * 0.4206531);
    path_48.cubicTo(
        size.width * 0.9124664,
        size.height * 0.4148045,
        size.width * 0.9184596,
        size.height * 0.4074983,
        size.width * 0.9185115,
        size.height * 0.3995520);
    path_48.cubicTo(
        size.width * 0.9185633,
        size.height * 0.3916058,
        size.width * 0.9125598,
        size.height * 0.3840951,
        size.width * 0.9012266,
        size.height * 0.3784509);
    path_48.lineTo(size.width * 0.9011852, size.height * 0.3784687);
    path_48.lineTo(size.width * 0.8920813, size.height * 0.3739623);
    path_48.cubicTo(
        size.width * 0.8851342,
        size.height * 0.3701758,
        size.width * 0.8781249,
        size.height * 0.3664871,
        size.width * 0.8710534,
        size.height * 0.3628784);
    path_48.cubicTo(
        size.width * 0.8675280,
        size.height * 0.3610474,
        size.width * 0.8639507,
        size.height * 0.3592520,
        size.width * 0.8604046,
        size.height * 0.3574476);
    path_48.lineTo(size.width * 0.8497040, size.height * 0.3521057);
    path_48.lineTo(size.width * 0.8389411, size.height * 0.3468259);
    path_48.cubicTo(
        size.width * 0.8353432,
        size.height * 0.3451016,
        size.width * 0.8317659,
        size.height * 0.3433328,
        size.width * 0.8281368,
        size.height * 0.3416262);
    path_48.cubicTo(
        size.width * 0.8209409,
        size.height * 0.3381775,
        size.width * 0.8136723,
        size.height * 0.3348088,
        size.width * 0.8063416,
        size.height * 0.3315290);
    path_48.lineTo(size.width * 0.7981813, size.height * 0.3274848);
    path_48.lineTo(size.width * 0.7926340, size.height * 0.3302491);
    path_48.lineTo(size.width * 0.8961666, size.height * 0.3814908);
    path_48.lineTo(size.width * 0.8961770, size.height * 0.3814908);
    path_48.cubicTo(
        size.width * 0.9067014,
        size.height * 0.3868771,
        size.width * 0.9115332,
        size.height * 0.3938723,
        size.width * 0.9107556,
        size.height * 0.4007697);
    path_48.cubicTo(
        size.width * 0.9103823,
        size.height * 0.4037740,
        size.width * 0.9088996,
        size.height * 0.4066716,
        size.width * 0.9067014,
        size.height * 0.4092137);
    path_48.cubicTo(
        size.width * 0.9043580,
        size.height * 0.4119336,
        size.width * 0.9012785,
        size.height * 0.4142535,
        size.width * 0.8979708,
        size.height * 0.4163778);
    path_48.cubicTo(
        size.width * 0.8971309,
        size.height * 0.4168578,
        size.width * 0.8962600,
        size.height * 0.4173377,
        size.width * 0.8953475,
        size.height * 0.4177911);
    path_48.lineTo(size.width * 0.8951505, size.height * 0.4176933);
    path_48.lineTo(size.width * 0.8455564, size.height * 0.4422431);
    path_48.lineTo(size.width * 0.8441048, size.height * 0.4429542);
    path_48.lineTo(size.width * 0.8425599, size.height * 0.4437274);
    path_48.lineTo(size.width * 0.7916178, size.height * 0.4689439);
    path_48.lineTo(size.width * 0.7971548, size.height * 0.4716993);
    path_48.lineTo(size.width * 0.8058646, size.height * 0.4673884);
    path_48.cubicTo(
        size.width * 0.8122518,
        size.height * 0.4644730,
        size.width * 0.8186183,
        size.height * 0.4615132,
        size.width * 0.8249432,
        size.height * 0.4584822);
    path_48.cubicTo(
        size.width * 0.8288315,
        size.height * 0.4566334,
        size.width * 0.8327095,
        size.height * 0.4547402,
        size.width * 0.8365874,
        size.height * 0.4528558);
    path_48.lineTo(size.width * 0.8481901, size.height * 0.4471673);
    path_48.close();

    Paint paint_48_fill = Paint()..style = PaintingStyle.fill;
    paint_48_fill.color = Color(0xffffc629).withOpacity(1.0);
    canvas.drawPath(path_48, paint_48_fill);

    Path path_49 = Path();
    path_49.moveTo(size.width * 0.2601018, size.height * 0.4748547);
    path_49.lineTo(size.width * 0.2656284, size.height * 0.4720904);
    path_49.lineTo(size.width * 0.2560061, size.height * 0.4673262);
    path_49.cubicTo(
        size.width * 0.2490590,
        size.height * 0.4635397,
        size.width * 0.2420497,
        size.height * 0.4598510,
        size.width * 0.2349885,
        size.height * 0.4562423);
    path_49.cubicTo(
        size.width * 0.2314631,
        size.height * 0.4544113,
        size.width * 0.2278859,
        size.height * 0.4526159,
        size.width * 0.2243398,
        size.height * 0.4508115);
    path_49.lineTo(size.width * 0.2136391, size.height * 0.4454696);
    path_49.lineTo(size.width * 0.2028763, size.height * 0.4401899);
    path_49.cubicTo(
        size.width * 0.1992887,
        size.height * 0.4384566,
        size.width * 0.1957011,
        size.height * 0.4366967,
        size.width * 0.1920720,
        size.height * 0.4349901);
    path_49.cubicTo(
        size.width * 0.1849071,
        size.height * 0.4315592,
        size.width * 0.1776801,
        size.height * 0.4282083,
        size.width * 0.1703908,
        size.height * 0.4249462);
    path_49.lineTo(size.width * 0.1626142, size.height * 0.4210975);
    path_49.lineTo(size.width * 0.1627594, size.height * 0.4210264);
    path_49.cubicTo(
        size.width * 0.1541947,
        size.height * 0.4167600,
        size.width * 0.1434630,
        size.height * 0.4139957,
        size.width * 0.1318084,
        size.height * 0.4128846);
    path_49.cubicTo(
        size.width * 0.1309893,
        size.height * 0.4127958,
        size.width * 0.1301598,
        size.height * 0.4127158,
        size.width * 0.1293406,
        size.height * 0.4126447);
    path_49.cubicTo(
        size.width * 0.1262196,
        size.height * 0.4123869,
        size.width * 0.1230675,
        size.height * 0.4122625,
        size.width * 0.1199465,
        size.height * 0.4122536);
    path_49.cubicTo(
        size.width * 0.1168151,
        size.height * 0.4122713,
        size.width * 0.1136837,
        size.height * 0.4123869,
        size.width * 0.1105627,
        size.height * 0.4126358);
    path_49.cubicTo(
        size.width * 0.1082090,
        size.height * 0.4128402,
        size.width * 0.1058553,
        size.height * 0.4131069,
        size.width * 0.1035327,
        size.height * 0.4134624);
    path_49.cubicTo(
        size.width * 0.09390002,
        size.height * 0.4148045,
        size.width * 0.08503468,
        size.height * 0.4173644,
        size.width * 0.07739286,
        size.height * 0.4211420);
    path_49.lineTo(size.width * 0.08295055, size.height * 0.4239063);
    path_49.cubicTo(
        size.width * 0.08712919,
        size.height * 0.4218353,
        size.width * 0.09180552,
        size.height * 0.4201909,
        size.width * 0.09677219,
        size.height * 0.4189465);
    path_49.cubicTo(
        size.width * 0.09840009,
        size.height * 0.4186443,
        size.width * 0.1000384,
        size.height * 0.4183777,
        size.width * 0.1016766,
        size.height * 0.4181466);
    path_49.cubicTo(
        size.width * 0.1047251,
        size.height * 0.4177377,
        size.width * 0.1077839,
        size.height * 0.4174000,
        size.width * 0.1108530,
        size.height * 0.4172222);
    path_49.cubicTo(
        size.width * 0.1139326,
        size.height * 0.4170178,
        size.width * 0.1170329,
        size.height * 0.4169111,
        size.width * 0.1201020,
        size.height * 0.4169289);
    path_49.cubicTo(
        size.width * 0.1231919,
        size.height * 0.4169111,
        size.width * 0.1262818,
        size.height * 0.4170266,
        size.width * 0.1293510,
        size.height * 0.4172311);
    path_49.cubicTo(
        size.width * 0.1324306,
        size.height * 0.4174177,
        size.width * 0.1354997,
        size.height * 0.4177555,
        size.width * 0.1385482,
        size.height * 0.4181733);
    path_49.cubicTo(
        size.width * 0.1406945,
        size.height * 0.4184666,
        size.width * 0.1428201,
        size.height * 0.4188488,
        size.width * 0.1449354,
        size.height * 0.4192576);
    path_49.cubicTo(
        size.width * 0.1491244,
        size.height * 0.4203865,
        size.width * 0.1530852,
        size.height * 0.4218264,
        size.width * 0.1566832,
        size.height * 0.4235685);
    path_49.lineTo(size.width * 0.1565795, size.height * 0.4236219);
    path_49.lineTo(size.width * 0.2601122, size.height * 0.4748636);
    path_49.close();

    Paint paint_49_fill = Paint()..style = PaintingStyle.fill;
    paint_49_fill.color = Color(0xffffc629).withOpacity(1.0);
    canvas.drawPath(path_49, paint_49_fill);

    Path path_50 = Path();
    path_50.moveTo(size.width * 0.7402611, size.height * 0.4941070);
    path_50.lineTo(size.width * 0.7385088, size.height * 0.4949869);
    path_50.lineTo(size.width * 0.6877741, size.height * 0.5201056);
    path_50.lineTo(size.width * 0.6933111, size.height * 0.5228610);
    path_50.lineTo(size.width * 0.7020416, size.height * 0.5185412);
    path_50.cubicTo(
        size.width * 0.7084288,
        size.height * 0.5156258,
        size.width * 0.7147849,
        size.height * 0.5126749,
        size.width * 0.7210891,
        size.height * 0.5096439);
    path_50.cubicTo(
        size.width * 0.7249774,
        size.height * 0.5077951,
        size.width * 0.7288554,
        size.height * 0.5059019,
        size.width * 0.7327230,
        size.height * 0.5040176);
    path_50.lineTo(size.width * 0.7443360, size.height * 0.4983379);
    path_50.lineTo(size.width * 0.7558765, size.height * 0.4925782);
    path_50.cubicTo(
        size.width * 0.7597130,
        size.height * 0.4906227,
        size.width * 0.7635495,
        size.height * 0.4887028,
        size.width * 0.7673755,
        size.height * 0.4867385);
    path_50.cubicTo(
        size.width * 0.7736383,
        size.height * 0.4835387,
        size.width * 0.7798492,
        size.height * 0.4802766,
        size.width * 0.7860291,
        size.height * 0.4769612);
    path_50.lineTo(size.width * 0.7968230, size.height * 0.4716193);
    path_50.lineTo(size.width * 0.7912964, size.height * 0.4688550);
    path_50.lineTo(size.width * 0.7419408, size.height * 0.4932892);
    path_50.lineTo(size.width * 0.7402611, size.height * 0.4941159);
    path_50.close();

    Paint paint_50_fill = Paint()..style = PaintingStyle.fill;
    paint_50_fill.color = Color(0xffffc629).withOpacity(1.0);
    canvas.drawPath(path_50, paint_50_fill);

    Path path_51 = Path();
    path_51.moveTo(size.width * 0.2936450, size.height * 0.5421755);
    path_51.cubicTo(
        size.width * 0.2961853,
        size.height * 0.5391890,
        size.width * 0.2998662,
        size.height * 0.5363892,
        size.width * 0.3046566,
        size.height * 0.5339271);
    path_51.lineTo(size.width * 0.3046981, size.height * 0.5339449);
    path_51.cubicTo(
        size.width * 0.3097996,
        size.height * 0.5314205,
        size.width * 0.3143619,
        size.height * 0.5287007,
        size.width * 0.3183953,
        size.height * 0.5258031);
    path_51.cubicTo(
        size.width * 0.3224910,
        size.height * 0.5229854,
        size.width * 0.3262549,
        size.height * 0.5198034,
        size.width * 0.3294692,
        size.height * 0.5161858);
    path_51.cubicTo(
        size.width * 0.3323518,
        size.height * 0.5129682,
        size.width * 0.3347469,
        size.height * 0.5094128,
        size.width * 0.3364785,
        size.height * 0.5055997);
    path_51.cubicTo(
        size.width * 0.3381894,
        size.height * 0.5017777,
        size.width * 0.3391433,
        size.height * 0.4976979,
        size.width * 0.3392263,
        size.height * 0.4936003);
    path_51.cubicTo(
        size.width * 0.3392989,
        size.height * 0.4895028,
        size.width * 0.3384901,
        size.height * 0.4853874,
        size.width * 0.3369244,
        size.height * 0.4815299);
    path_51.cubicTo(
        size.width * 0.3353276,
        size.height * 0.4776723,
        size.width * 0.3330257,
        size.height * 0.4740636,
        size.width * 0.3302158,
        size.height * 0.4707927);
    path_51.cubicTo(
        size.width * 0.3274266,
        size.height * 0.4675128,
        size.width * 0.3241500,
        size.height * 0.4645619,
        size.width * 0.3205935,
        size.height * 0.4619131);
    path_51.cubicTo(
        size.width * 0.3203343,
        size.height * 0.4617265,
        size.width * 0.3200647,
        size.height * 0.4615487,
        size.width * 0.3198055,
        size.height * 0.4613621);
    path_51.cubicTo(
        size.width * 0.3155854,
        size.height * 0.4581978,
        size.width * 0.3107120,
        size.height * 0.4552379,
        size.width * 0.3052269,
        size.height * 0.4525003);
    path_51.lineTo(size.width * 0.2996692, size.height * 0.4552557);
    path_51.cubicTo(
        size.width * 0.3415385,
        size.height * 0.4761079,
        size.width * 0.3414556,
        size.height * 0.5099817,
        size.width * 0.2996485,
        size.height * 0.5309406);
    path_51.lineTo(size.width * 0.2995967, size.height * 0.5309139);
    path_51.cubicTo(
        size.width * 0.2974503,
        size.height * 0.5319894,
        size.width * 0.2955010,
        size.height * 0.5331182,
        size.width * 0.2937383,
        size.height * 0.5343004);
    path_51.cubicTo(
        size.width * 0.2939353,
        size.height * 0.5341226,
        size.width * 0.2941427,
        size.height * 0.5339360,
        size.width * 0.2943397,
        size.height * 0.5337582);
    path_51.cubicTo(
        size.width * 0.2909802,
        size.height * 0.5357137,
        size.width * 0.2879317,
        size.height * 0.5382913,
        size.width * 0.2856506,
        size.height * 0.5415089);
    path_51.cubicTo(
        size.width * 0.2852047,
        size.height * 0.5421311,
        size.width * 0.2848003,
        size.height * 0.5427799,
        size.width * 0.2844271,
        size.height * 0.5434555);
    path_51.cubicTo(
        size.width * 0.2843338,
        size.height * 0.5436066,
        size.width * 0.2842508,
        size.height * 0.5437666,
        size.width * 0.2841679,
        size.height * 0.5439177);
    path_51.cubicTo(
        size.width * 0.2841471,
        size.height * 0.5439532,
        size.width * 0.2841264,
        size.height * 0.5439977,
        size.width * 0.2841056,
        size.height * 0.5440332);
    path_51.cubicTo(
        size.width * 0.2826125,
        size.height * 0.5466731,
        size.width * 0.2818349,
        size.height * 0.5494374,
        size.width * 0.2818141,
        size.height * 0.5522728);
    path_51.cubicTo(
        size.width * 0.2817312,
        size.height * 0.5602990,
        size.width * 0.2875896,
        size.height * 0.5679519,
        size.width * 0.2987464,
        size.height * 0.5736761);
    path_51.lineTo(size.width * 0.2982280, size.height * 0.5739338);
    path_51.lineTo(size.width * 0.3088456, size.height * 0.5791869);
    path_51.cubicTo(
        size.width * 0.3150877,
        size.height * 0.5825289,
        size.width * 0.3213608,
        size.height * 0.5858176,
        size.width * 0.3276858,
        size.height * 0.5890441);
    path_51.cubicTo(
        size.width * 0.3315015,
        size.height * 0.5910174,
        size.width * 0.3353380,
        size.height * 0.5929373,
        size.width * 0.3391848,
        size.height * 0.5948927);
    path_51.lineTo(size.width * 0.3507357, size.height * 0.6006435);
    path_51.lineTo(size.width * 0.3623384, size.height * 0.6063321);
    path_51.cubicTo(
        size.width * 0.3662163,
        size.height * 0.6082076,
        size.width * 0.3700839,
        size.height * 0.6101097,
        size.width * 0.3739722,
        size.height * 0.6119585);
    path_51.cubicTo(
        size.width * 0.3803075,
        size.height * 0.6149983,
        size.width * 0.3866740,
        size.height * 0.6179582,
        size.width * 0.3930819,
        size.height * 0.6208824);
    path_51.lineTo(size.width * 0.4017606, size.height * 0.6251755);
    path_51.lineTo(size.width * 0.4020095, size.height * 0.6250511);
    path_51.cubicTo(
        size.width * 0.4066962,
        size.height * 0.6273354,
        size.width * 0.4120154,
        size.height * 0.6291664,
        size.width * 0.4177597,
        size.height * 0.6305264);
    path_51.cubicTo(
        size.width * 0.4143380,
        size.height * 0.6298331,
        size.width * 0.4109474,
        size.height * 0.6289887,
        size.width * 0.4076294,
        size.height * 0.6279576);
    path_51.cubicTo(
        size.width * 0.4133011,
        size.height * 0.6304019,
        size.width * 0.4194602,
        size.height * 0.6320374,
        size.width * 0.4257230,
        size.height * 0.6330862);
    path_51.cubicTo(
        size.width * 0.4288543,
        size.height * 0.6336373,
        size.width * 0.4320272,
        size.height * 0.6339840,
        size.width * 0.4352104,
        size.height * 0.6342417);
    path_51.cubicTo(
        size.width * 0.4383833,
        size.height * 0.6344817,
        size.width * 0.4415873,
        size.height * 0.6345795,
        size.width * 0.4447809,
        size.height * 0.6345795);
    path_51.cubicTo(
        size.width * 0.4479848,
        size.height * 0.6345350,
        size.width * 0.4511680,
        size.height * 0.6344017,
        size.width * 0.4543513,
        size.height * 0.6341084);
    path_51.cubicTo(
        size.width * 0.4575241,
        size.height * 0.6337973,
        size.width * 0.4606866,
        size.height * 0.6333796,
        size.width * 0.4638076,
        size.height * 0.6327751);
    path_51.cubicTo(
        size.width * 0.4700393,
        size.height * 0.6315841,
        size.width * 0.4761362,
        size.height * 0.6297797,
        size.width * 0.4817146,
        size.height * 0.6271843);
    path_51.cubicTo(
        size.width * 0.4804600,
        size.height * 0.6276110,
        size.width * 0.4791950,
        size.height * 0.6280021,
        size.width * 0.4779196,
        size.height * 0.6283843);
    path_51.cubicTo(
        size.width * 0.4811650,
        size.height * 0.6272910,
        size.width * 0.4842549,
        size.height * 0.6260288,
        size.width * 0.4871582,
        size.height * 0.6245889);
    path_51.lineTo(size.width * 0.4871064, size.height * 0.6245622);
    path_51.lineTo(size.width * 0.4946652, size.height * 0.6208202);
    path_51.cubicTo(
        size.width * 0.5010835,
        size.height * 0.6178959,
        size.width * 0.5074707,
        size.height * 0.6149183,
        size.width * 0.5138061,
        size.height * 0.6118785);
    path_51.cubicTo(
        size.width * 0.5176944,
        size.height * 0.6100297,
        size.width * 0.5215723,
        size.height * 0.6081365,
        size.width * 0.5254503,
        size.height * 0.6062521);
    path_51.lineTo(size.width * 0.5370530, size.height * 0.6005635);
    path_51.lineTo(size.width * 0.5486038, size.height * 0.5948038);
    path_51.cubicTo(
        size.width * 0.5524403,
        size.height * 0.5928484,
        size.width * 0.5562768,
        size.height * 0.5909374,
        size.width * 0.5601029,
        size.height * 0.5889641);
    path_51.cubicTo(
        size.width * 0.5663656,
        size.height * 0.5857643,
        size.width * 0.5725973,
        size.height * 0.5824934,
        size.width * 0.5787875,
        size.height * 0.5791780);
    path_51.lineTo(size.width * 0.5893740, size.height * 0.5739338);
    path_51.lineTo(size.width * 0.5896955, size.height * 0.5740938);
    path_51.lineTo(size.width * 0.5984053, size.height * 0.5697829);
    path_51.cubicTo(
        size.width * 0.6047925,
        size.height * 0.5668675,
        size.width * 0.6111589,
        size.height * 0.5639077,
        size.width * 0.6174735,
        size.height * 0.5608768);
    path_51.cubicTo(
        size.width * 0.6213618,
        size.height * 0.5590280,
        size.width * 0.6252294,
        size.height * 0.5571347,
        size.width * 0.6291073,
        size.height * 0.5552504);
    path_51.lineTo(size.width * 0.6407204, size.height * 0.5495707);
    path_51.lineTo(size.width * 0.6522609, size.height * 0.5438110);
    path_51.cubicTo(
        size.width * 0.6560974,
        size.height * 0.5418555,
        size.width * 0.6599338,
        size.height * 0.5399356,
        size.width * 0.6637599,
        size.height * 0.5379713);
    path_51.cubicTo(
        size.width * 0.6700538,
        size.height * 0.5347537,
        size.width * 0.6762958,
        size.height * 0.5314739,
        size.width * 0.6825171,
        size.height * 0.5281407);
    path_51.lineTo(size.width * 0.6932074, size.height * 0.5228432);
    path_51.lineTo(size.width * 0.6876808, size.height * 0.5200878);
    path_51.lineTo(size.width * 0.6382423, size.height * 0.5445576);
    path_51.lineTo(size.width * 0.6366351, size.height * 0.5453398);
    path_51.lineTo(size.width * 0.6349243, size.height * 0.5461931);
    path_51.lineTo(size.width * 0.5843348, size.height * 0.5712318);
    path_51.lineTo(size.width * 0.5840134, size.height * 0.5710718);
    path_51.lineTo(size.width * 0.5338905, size.height * 0.5958793);
    path_51.lineTo(size.width * 0.5329677, size.height * 0.5963326);
    path_51.lineTo(size.width * 0.5320863, size.height * 0.5967682);
    path_51.lineTo(size.width * 0.4806777, size.height * 0.6222157);
    path_51.cubicTo(
        size.width * 0.4646682,
        size.height * 0.6297975,
        size.width * 0.4418257,
        size.height * 0.6316019,
        size.width * 0.4228612,
        size.height * 0.6274243);
    path_51.cubicTo(
        size.width * 0.4225294,
        size.height * 0.6273532,
        size.width * 0.4222079,
        size.height * 0.6272821,
        size.width * 0.4218761,
        size.height * 0.6272021);
    path_51.cubicTo(
        size.width * 0.4214718,
        size.height * 0.6271043,
        size.width * 0.4210777,
        size.height * 0.6270066,
        size.width * 0.4206837,
        size.height * 0.6269088);
    path_51.cubicTo(
        size.width * 0.4182263,
        size.height * 0.6262866,
        size.width * 0.4157793,
        size.height * 0.6255577,
        size.width * 0.4133737,
        size.height * 0.6246956);
    path_51.cubicTo(
        size.width * 0.4133944,
        size.height * 0.6247045,
        size.width * 0.4134152,
        size.height * 0.6247133,
        size.width * 0.4134359,
        size.height * 0.6247222);
    path_51.cubicTo(
        size.width * 0.4112066,
        size.height * 0.6239223,
        size.width * 0.4090706,
        size.height * 0.6230157,
        size.width * 0.4070591,
        size.height * 0.6220113);
    path_51.lineTo(size.width * 0.4067895, size.height * 0.6221446);
    path_51.lineTo(size.width * 0.3564074, size.height * 0.5972037);
    path_51.lineTo(size.width * 0.3547795, size.height * 0.5963860);
    path_51.lineTo(size.width * 0.3532553, size.height * 0.5956393);
    path_51.lineTo(size.width * 0.3038168, size.height * 0.5711695);
    path_51.lineTo(size.width * 0.3043352, size.height * 0.5709029);
    path_51.cubicTo(
        size.width * 0.2998766,
        size.height * 0.5686186,
        size.width * 0.2964238,
        size.height * 0.5660409,
        size.width * 0.2939560,
        size.height * 0.5633033);
    path_51.cubicTo(
        size.width * 0.2935413,
        size.height * 0.5627789,
        size.width * 0.2931265,
        size.height * 0.5622545,
        size.width * 0.2927532,
        size.height * 0.5617034);
    path_51.cubicTo(
        size.width * 0.2909076,
        size.height * 0.5589835,
        size.width * 0.2897463,
        size.height * 0.5558904,
        size.width * 0.2897359,
        size.height * 0.5527527);
    path_51.cubicTo(
        size.width * 0.2896633,
        size.height * 0.5496062,
        size.width * 0.2907417,
        size.height * 0.5464864,
        size.width * 0.2924940,
        size.height * 0.5437310);
    path_51.cubicTo(
        size.width * 0.2928466,
        size.height * 0.5431799,
        size.width * 0.2932406,
        size.height * 0.5426466,
        size.width * 0.2936450,
        size.height * 0.5421222);
    path_51.close();

    Paint paint_51_fill = Paint()..style = PaintingStyle.fill;
    paint_51_fill.color = Color(0xffffc629).withOpacity(1.0);
    canvas.drawPath(path_51, paint_51_fill);

    Path path_52 = Path();
    path_52.moveTo(size.width * 0.8028058, size.height * 0.7888735);
    path_52.cubicTo(
        size.width * 0.8092034,
        size.height * 0.7859581,
        size.width * 0.8155698,
        size.height * 0.7829894,
        size.width * 0.8218948,
        size.height * 0.7799584);
    path_52.cubicTo(
        size.width * 0.8257831,
        size.height * 0.7781096,
        size.width * 0.8296610,
        size.height * 0.7762164,
        size.width * 0.8335390,
        size.height * 0.7743320);
    path_52.lineTo(size.width * 0.8451521, size.height * 0.7686523);
    path_52.lineTo(size.width * 0.8566926, size.height * 0.7628926);
    path_52.cubicTo(
        size.width * 0.8605290,
        size.height * 0.7609372,
        size.width * 0.8643655,
        size.height * 0.7590173,
        size.width * 0.8681916,
        size.height * 0.7570530);
    path_52.cubicTo(
        size.width * 0.8744647,
        size.height * 0.7538442,
        size.width * 0.8806964,
        size.height * 0.7505733,
        size.width * 0.8868969,
        size.height * 0.7472579);
    path_52.lineTo(size.width * 0.8973280, size.height * 0.7420938);
    path_52.lineTo(size.width * 0.8974939, size.height * 0.7421738);
    path_52.cubicTo(
        size.width * 0.9093143,
        size.height * 0.7363341,
        size.width * 0.9152971,
        size.height * 0.7290278,
        size.width * 0.9153490,
        size.height * 0.7210727);
    path_52.cubicTo(
        size.width * 0.9154008,
        size.height * 0.7131264,
        size.width * 0.9093869,
        size.height * 0.7056068,
        size.width * 0.8980745,
        size.height * 0.6999804);
    path_52.lineTo(size.width * 0.8980330, size.height * 0.6999982);
    path_52.cubicTo(
        size.width * 0.8894995,
        size.height * 0.6957851,
        size.width * 0.8788404,
        size.height * 0.6930386,
        size.width * 0.8672791,
        size.height * 0.6919453);
    path_52.cubicTo(
        size.width * 0.8664496,
        size.height * 0.6918564,
        size.width * 0.8656201,
        size.height * 0.6917764,
        size.width * 0.8647802,
        size.height * 0.6916964);
    path_52.cubicTo(
        size.width * 0.8616592,
        size.height * 0.6914387,
        size.width * 0.8585175,
        size.height * 0.6913142,
        size.width * 0.8553861,
        size.height * 0.6913054);
    path_52.cubicTo(
        size.width * 0.8522443,
        size.height * 0.6913142,
        size.width * 0.8491129,
        size.height * 0.6914387,
        size.width * 0.8460023,
        size.height * 0.6916876);
    path_52.cubicTo(
        size.width * 0.8436382,
        size.height * 0.6919009,
        size.width * 0.8412741,
        size.height * 0.6921675,
        size.width * 0.8389308,
        size.height * 0.6925231);
    path_52.cubicTo(
        size.width * 0.8295055,
        size.height * 0.6938386,
        size.width * 0.8208164,
        size.height * 0.6963273,
        size.width * 0.8132990,
        size.height * 0.6999804);
    path_52.lineTo(size.width * 0.8132783, size.height * 0.6999804);
    path_52.cubicTo(
        size.width * 0.8132783,
        size.height * 0.6999804,
        size.width * 0.8051180,
        size.height * 0.7040069,
        size.width * 0.8051180,
        size.height * 0.7040069);
    path_52.cubicTo(
        size.width * 0.7977977,
        size.height * 0.7072956,
        size.width * 0.7905188,
        size.height * 0.7106554,
        size.width * 0.7833228,
        size.height * 0.7141130);
    path_52.cubicTo(
        size.width * 0.7796937,
        size.height * 0.7158196,
        size.width * 0.7761165,
        size.height * 0.7175884,
        size.width * 0.7725185,
        size.height * 0.7193127);
    path_52.lineTo(size.width * 0.7617556, size.height * 0.7245925);
    path_52.lineTo(size.width * 0.7510550, size.height * 0.7299433);
    path_52.cubicTo(
        size.width * 0.7475089,
        size.height * 0.7317388,
        size.width * 0.7439316,
        size.height * 0.7335342,
        size.width * 0.7404063,
        size.height * 0.7353652);
    path_52.cubicTo(
        size.width * 0.7333243,
        size.height * 0.7389828,
        size.width * 0.7262943,
        size.height * 0.7426804,
        size.width * 0.7193368,
        size.height * 0.7464669);
    path_52.lineTo(size.width * 0.7097560, size.height * 0.7512044);
    path_52.lineTo(size.width * 0.7152826, size.height * 0.7539687);
    path_52.lineTo(size.width * 0.8183798, size.height * 0.7029492);
    path_52.lineTo(size.width * 0.8183798, size.height * 0.7029492);
    path_52.cubicTo(
        size.width * 0.8225480,
        size.height * 0.7008960,
        size.width * 0.8272036,
        size.height * 0.6992516,
        size.width * 0.8321392,
        size.height * 0.6980072);
    path_52.cubicTo(
        size.width * 0.8337878,
        size.height * 0.6977050,
        size.width * 0.8354468,
        size.height * 0.6974295,
        size.width * 0.8371059,
        size.height * 0.6971895);
    path_52.cubicTo(
        size.width * 0.8401647,
        size.height * 0.6967806,
        size.width * 0.8432131,
        size.height * 0.6964429,
        size.width * 0.8462926,
        size.height * 0.6962562);
    path_52.cubicTo(
        size.width * 0.8493722,
        size.height * 0.6960518,
        size.width * 0.8524724,
        size.height * 0.6959362,
        size.width * 0.8555416,
        size.height * 0.6959629);
    path_52.cubicTo(
        size.width * 0.8586419,
        size.height * 0.6959451,
        size.width * 0.8617214,
        size.height * 0.6960518,
        size.width * 0.8647906,
        size.height * 0.6962651);
    path_52.cubicTo(
        size.width * 0.8678701,
        size.height * 0.6964517,
        size.width * 0.8709393,
        size.height * 0.6967895,
        size.width * 0.8739877,
        size.height * 0.6972073);
    path_52.cubicTo(
        size.width * 0.8761341,
        size.height * 0.6975095,
        size.width * 0.8782597,
        size.height * 0.6978828,
        size.width * 0.8803749,
        size.height * 0.6982916);
    path_52.cubicTo(
        size.width * 0.8847609,
        size.height * 0.6994738,
        size.width * 0.8888877,
        size.height * 0.7009848,
        size.width * 0.8926205,
        size.height * 0.7028425);
    path_52.lineTo(size.width * 0.8926724, size.height * 0.7028158);
    path_52.cubicTo(
        size.width * 0.9034456,
        size.height * 0.7082289,
        size.width * 0.9084019,
        size.height * 0.7153041,
        size.width * 0.9076138,
        size.height * 0.7222815);
    path_52.cubicTo(
        size.width * 0.9072405,
        size.height * 0.7252858,
        size.width * 0.9057578,
        size.height * 0.7281923,
        size.width * 0.9035492,
        size.height * 0.7307344);
    path_52.cubicTo(
        size.width * 0.9012163,
        size.height * 0.7334364,
        size.width * 0.8981471,
        size.height * 0.7357563,
        size.width * 0.8948498,
        size.height * 0.7378718);
    path_52.cubicTo(
        size.width * 0.8940307,
        size.height * 0.7383428,
        size.width * 0.8931908,
        size.height * 0.7388050,
        size.width * 0.8922991,
        size.height * 0.7392584);
    path_52.lineTo(size.width * 0.8921228, size.height * 0.7391695);
    path_52.lineTo(size.width * 0.8426843, size.height * 0.7636393);
    path_52.lineTo(size.width * 0.8410771, size.height * 0.7644303);
    path_52.lineTo(size.width * 0.8393974, size.height * 0.7652659);
    path_52.lineTo(size.width * 0.7885902, size.height * 0.7904112);
    path_52.lineTo(size.width * 0.7941271, size.height * 0.7931666);
    path_52.lineTo(size.width * 0.8028162, size.height * 0.7888646);
    path_52.close();

    Paint paint_52_fill = Paint()..style = PaintingStyle.fill;
    paint_52_fill.color = Color(0xffffc629).withOpacity(1.0);
    canvas.drawPath(path_52, paint_52_fill);

    Path path_53 = Path();
    path_53.moveTo(size.width * 0.8280331, size.height * 0.8101612);
    path_53.lineTo(size.width * 0.8198314, size.height * 0.8142232);
    path_53.cubicTo(
        size.width * 0.8198314,
        size.height * 0.8142232,
        size.width * 0.8198625,
        size.height * 0.8142055,
        size.width * 0.8198729,
        size.height * 0.8141966);
    path_53.cubicTo(
        size.width * 0.8125421,
        size.height * 0.8174853,
        size.width * 0.8052736,
        size.height * 0.8208540,
        size.width * 0.7980776,
        size.height * 0.8243027);
    path_53.cubicTo(
        size.width * 0.7944485,
        size.height * 0.8260182,
        size.width * 0.7908609,
        size.height * 0.8277781,
        size.width * 0.7872733,
        size.height * 0.8295113);
    path_53.lineTo(size.width * 0.7765105, size.height * 0.8347910);
    path_53.lineTo(size.width * 0.7658099, size.height * 0.8401330);
    path_53.cubicTo(
        size.width * 0.7622534,
        size.height * 0.8419373,
        size.width * 0.7586865,
        size.height * 0.8437328,
        size.width * 0.7551611,
        size.height * 0.8455638);
    path_53.cubicTo(
        size.width * 0.7480688,
        size.height * 0.8491992,
        size.width * 0.7410180,
        size.height * 0.8528967,
        size.width * 0.7340502,
        size.height * 0.8566921);
    path_53.cubicTo(
        size.width * 0.7340502,
        size.height * 0.8566921,
        size.width * 0.7340709,
        size.height * 0.8566832,
        size.width * 0.7340813,
        size.height * 0.8566743);
    path_53.lineTo(size.width * 0.7245212, size.height * 0.8614029);
    path_53.lineTo(size.width * 0.7245523, size.height * 0.8614207);
    path_53.cubicTo(
        size.width * 0.7224786,
        size.height * 0.8624696,
        size.width * 0.7205811,
        size.height * 0.8635717,
        size.width * 0.7188702,
        size.height * 0.8647094);
    path_53.cubicTo(
        size.width * 0.7190672,
        size.height * 0.8645317,
        size.width * 0.7192642,
        size.height * 0.8643539,
        size.width * 0.7194612,
        size.height * 0.8641761);
    path_53.cubicTo(
        size.width * 0.7161121,
        size.height * 0.8661316,
        size.width * 0.7130533,
        size.height * 0.8687092,
        size.width * 0.7107722,
        size.height * 0.8719268);
    path_53.cubicTo(
        size.width * 0.7103263,
        size.height * 0.8725401,
        size.width * 0.7099219,
        size.height * 0.8731890,
        size.width * 0.7095486,
        size.height * 0.8738556);
    path_53.cubicTo(
        size.width * 0.7094346,
        size.height * 0.8740334,
        size.width * 0.7093413,
        size.height * 0.8742200,
        size.width * 0.7092376,
        size.height * 0.8744067);
    path_53.cubicTo(
        size.width * 0.7092376,
        size.height * 0.8744156,
        size.width * 0.7092272,
        size.height * 0.8744245,
        size.width * 0.7092168,
        size.height * 0.8744423);
    path_53.cubicTo(
        size.width * 0.7077237,
        size.height * 0.8770910,
        size.width * 0.7069461,
        size.height * 0.8798464,
        size.width * 0.7069150,
        size.height * 0.8826907);
    path_53.cubicTo(
        size.width * 0.7068320,
        size.height * 0.8907436,
        size.width * 0.7127215,
        size.height * 0.8984143,
        size.width * 0.7239509,
        size.height * 0.9041473);
    path_53.lineTo(size.width * 0.7241376, size.height * 0.9040585);
    path_53.cubicTo(
        size.width * 0.7652707,
        size.height * 0.9249640,
        size.width * 0.7649078,
        size.height * 0.9585978,
        size.width * 0.7232147,
        size.height * 0.9794144);
    path_53.lineTo(size.width * 0.7230696, size.height * 0.9793433);
    path_53.cubicTo(
        size.width * 0.7076926,
        size.height * 0.9869518,
        size.width * 0.6888525,
        size.height * 0.9917960,
        size.width * 0.6690688,
        size.height * 0.9939025);
    path_53.cubicTo(
        size.width * 0.6668706,
        size.height * 0.9941248,
        size.width * 0.6646620,
        size.height * 0.9943203,
        size.width * 0.6624638,
        size.height * 0.9944714);
    path_53.cubicTo(
        size.width * 0.6570513,
        size.height * 0.9948536,
        size.width * 0.6516181,
        size.height * 0.9950669,
        size.width * 0.6461848,
        size.height * 0.9950492);
    path_53.cubicTo(
        size.width * 0.6407515,
        size.height * 0.9950669,
        size.width * 0.6353286,
        size.height * 0.9948714,
        size.width * 0.6299265,
        size.height * 0.9944981);
    path_53.cubicTo(
        size.width * 0.6278527,
        size.height * 0.9943647,
        size.width * 0.6257893,
        size.height * 0.9941781,
        size.width * 0.6237259,
        size.height * 0.9939825);
    path_53.cubicTo(
        size.width * 0.6037141,
        size.height * 0.9919115,
        size.width * 0.5846666,
        size.height * 0.9870407,
        size.width * 0.5691963,
        size.height * 0.9793344);
    path_53.lineTo(size.width * 0.5691963, size.height * 0.9793344);
    path_53.cubicTo(
        size.width * 0.5691963,
        size.height * 0.9793344,
        size.width * 0.5603102,
        size.height * 0.9749436,
        size.width * 0.5603102,
        size.height * 0.9749436);
    path_53.cubicTo(
        size.width * 0.5603102,
        size.height * 0.9749436,
        size.width * 0.5603102,
        size.height * 0.9749436,
        size.width * 0.5603102,
        size.height * 0.9749436);
    path_53.cubicTo(
        size.width * 0.5533320,
        size.height * 0.9711393,
        size.width * 0.5462916,
        size.height * 0.9674417,
        size.width * 0.5391993,
        size.height * 0.9638064);
    path_53.cubicTo(
        size.width * 0.5356636,
        size.height * 0.9619754,
        size.width * 0.5320967,
        size.height * 0.9601888,
        size.width * 0.5285505,
        size.height * 0.9583844);
    path_53.lineTo(size.width * 0.5178499, size.height * 0.9530425);
    path_53.lineTo(size.width * 0.5070871, size.height * 0.9477628);
    path_53.cubicTo(
        size.width * 0.5034995,
        size.height * 0.9460384,
        size.width * 0.4999119,
        size.height * 0.9442785,
        size.width * 0.4962828,
        size.height * 0.9425631);
    path_53.cubicTo(
        size.width * 0.4890868,
        size.height * 0.9391232,
        size.width * 0.4818390,
        size.height * 0.9357634,
        size.width * 0.4745290,
        size.height * 0.9324836);
    path_53.lineTo(size.width * 0.4663273, size.height * 0.9284216);
    path_53.lineTo(size.width * 0.4607799, size.height * 0.9311859);
    path_53.lineTo(size.width * 0.5636386, size.height * 0.9820987);
    path_53.lineTo(size.width * 0.5635972, size.height * 0.9821165);
    path_53.cubicTo(
        size.width * 0.5720374,
        size.height * 0.9863118,
        size.width * 0.5815456,
        size.height * 0.9897961,
        size.width * 0.5919559,
        size.height * 0.9925071);
    path_53.cubicTo(
        size.width * 0.5988304,
        size.height * 0.9946047,
        size.width * 0.6059227,
        size.height * 0.9962313,
        size.width * 0.6130979,
        size.height * 0.9974046);
    path_53.cubicTo(
        size.width * 0.6238607,
        size.height * 0.9991823,
        size.width * 0.6348309,
        size.height * 1.000018,
        size.width * 0.6457804,
        size.height * 1.000027);
    path_53.cubicTo(
        size.width * 0.6512655,
        size.height * 1.000009,
        size.width * 0.6567403,
        size.height * 0.9997956,
        size.width * 0.6622046,
        size.height * 0.9993600);
    path_53.cubicTo(
        size.width * 0.6676586,
        size.height * 0.9989067,
        size.width * 0.6730919,
        size.height * 0.9982756,
        size.width * 0.6784629,
        size.height * 0.9973601);
    path_53.cubicTo(
        size.width * 0.6841865,
        size.height * 0.9964180,
        size.width * 0.6898479,
        size.height * 0.9951825,
        size.width * 0.6953952,
        size.height * 0.9936626);
    path_53.cubicTo(
        size.width * 0.7075682,
        size.height * 0.9908538,
        size.width * 0.7185903,
        size.height * 0.9870229,
        size.width * 0.7282540,
        size.height * 0.9822854);
    path_53.lineTo(size.width * 0.7283888, size.height * 0.9823476);
    path_53.cubicTo(
        size.width * 0.7335110,
        size.height * 0.9798055,
        size.width * 0.7381044,
        size.height * 0.9770768,
        size.width * 0.7421378,
        size.height * 0.9741703);
    path_53.cubicTo(
        size.width * 0.7462128,
        size.height * 0.9713526,
        size.width * 0.7499663,
        size.height * 0.9681884,
        size.width * 0.7531703,
        size.height * 0.9645886);
    path_53.cubicTo(
        size.width * 0.7560528,
        size.height * 0.9613798,
        size.width * 0.7584480,
        size.height * 0.9578156,
        size.width * 0.7601796,
        size.height * 0.9540025);
    path_53.cubicTo(
        size.width * 0.7618904,
        size.height * 0.9501804,
        size.width * 0.7628444,
        size.height * 0.9461007,
        size.width * 0.7629170,
        size.height * 0.9419942);
    path_53.cubicTo(
        size.width * 0.7629895,
        size.height * 0.9379055,
        size.width * 0.7621911,
        size.height * 0.9337813,
        size.width * 0.7606151,
        size.height * 0.9299237);
    path_53.cubicTo(
        size.width * 0.7590183,
        size.height * 0.9260662,
        size.width * 0.7567060,
        size.height * 0.9224664,
        size.width * 0.7538961,
        size.height * 0.9191954);
    path_53.cubicTo(
        size.width * 0.7511069,
        size.height * 0.9159156,
        size.width * 0.7478303,
        size.height * 0.9129646,
        size.width * 0.7442738,
        size.height * 0.9103159);
    path_53.cubicTo(
        size.width * 0.7439939,
        size.height * 0.9101115,
        size.width * 0.7436932,
        size.height * 0.9099159,
        size.width * 0.7434132,
        size.height * 0.9097115);
    path_53.cubicTo(
        size.width * 0.7392138,
        size.height * 0.9065739,
        size.width * 0.7343716,
        size.height * 0.9036318,
        size.width * 0.7289176,
        size.height * 0.9009120);
    path_53.lineTo(size.width * 0.7287413, size.height * 0.9010008);
    path_53.cubicTo(
        size.width * 0.7246456,
        size.height * 0.8988232,
        size.width * 0.7214209,
        size.height * 0.8963877,
        size.width * 0.7190983,
        size.height * 0.8938101);
    path_53.cubicTo(
        size.width * 0.7186732,
        size.height * 0.8932768,
        size.width * 0.7182585,
        size.height * 0.8927435,
        size.width * 0.7178748,
        size.height * 0.8921746);
    path_53.cubicTo(
        size.width * 0.7160188,
        size.height * 0.8894637,
        size.width * 0.7148678,
        size.height * 0.8863705,
        size.width * 0.7148471,
        size.height * 0.8832240);
    path_53.cubicTo(
        size.width * 0.7147745,
        size.height * 0.8800775,
        size.width * 0.7158529,
        size.height * 0.8769577,
        size.width * 0.7176052,
        size.height * 0.8742023);
    path_53.cubicTo(
        size.width * 0.7179474,
        size.height * 0.8736512,
        size.width * 0.7183414,
        size.height * 0.8731268,
        size.width * 0.7187458,
        size.height * 0.8726024);
    path_53.cubicTo(
        size.width * 0.7213587,
        size.height * 0.8695270,
        size.width * 0.7251641,
        size.height * 0.8666382,
        size.width * 0.7301722,
        size.height * 0.8641317);
    path_53.lineTo(size.width * 0.7301411, size.height * 0.8641139);
    path_53.lineTo(size.width * 0.8335597, size.height * 0.8129344);
    path_53.lineTo(size.width * 0.8280124, size.height * 0.8101790);
    path_53.close();

    Paint paint_53_fill = Paint()..style = PaintingStyle.fill;
    paint_53_fill.color = Color(0xffffc629).withOpacity(1.0);
    canvas.drawPath(path_53, paint_53_fill);

    Path path_54 = Path();
    path_54.moveTo(size.width * 0.7182792, size.height * 0.8312357);
    path_54.cubicTo(
        size.width * 0.7221675,
        size.height * 0.8293869,
        size.width * 0.7260351,
        size.height * 0.8274936,
        size.width * 0.7299130,
        size.height * 0.8256093);
    path_54.lineTo(size.width * 0.7415157, size.height * 0.8199296);
    path_54.lineTo(size.width * 0.7530562, size.height * 0.8141699);
    path_54.cubicTo(
        size.width * 0.7568927,
        size.height * 0.8122145,
        size.width * 0.7607291,
        size.height * 0.8102946,
        size.width * 0.7645552,
        size.height * 0.8083302);
    path_54.cubicTo(
        size.width * 0.7708180,
        size.height * 0.8051304,
        size.width * 0.7770393,
        size.height * 0.8018595,
        size.width * 0.7832191,
        size.height * 0.7985530);
    path_54.lineTo(size.width * 0.7940027, size.height * 0.7932110);
    path_54.lineTo(size.width * 0.7884761, size.height * 0.7904467);
    path_54.lineTo(size.width * 0.7390272, size.height * 0.8149254);
    path_54.lineTo(size.width * 0.7374408, size.height * 0.8157076);
    path_54.lineTo(size.width * 0.7358647, size.height * 0.8164987);
    path_54.lineTo(size.width * 0.6849538, size.height * 0.8416973);
    path_54.lineTo(size.width * 0.6851093, size.height * 0.8417773);
    path_54.cubicTo(
        size.width * 0.6812936,
        size.height * 0.8437150,
        size.width * 0.6777578,
        size.height * 0.8457682,
        size.width * 0.6745124,
        size.height * 0.8479370);
    path_54.cubicTo(
        size.width * 0.6689651,
        size.height * 0.8514301,
        size.width * 0.6638844,
        size.height * 0.8555899,
        size.width * 0.6598198,
        size.height * 0.8605230);
    path_54.cubicTo(
        size.width * 0.6571861,
        size.height * 0.8636873,
        size.width * 0.6550190,
        size.height * 0.8671982,
        size.width * 0.6534637,
        size.height * 0.8709224);
    path_54.cubicTo(
        size.width * 0.6519395,
        size.height * 0.8746645,
        size.width * 0.6510996,
        size.height * 0.8786376,
        size.width * 0.6510581,
        size.height * 0.8826463);
    path_54.cubicTo(
        size.width * 0.6510270,
        size.height * 0.8866460,
        size.width * 0.6517943,
        size.height * 0.8906369,
        size.width * 0.6532667,
        size.height * 0.8943879);
    path_54.cubicTo(
        size.width * 0.6547598,
        size.height * 0.8981388,
        size.width * 0.6568647,
        size.height * 0.9016675,
        size.width * 0.6594673,
        size.height * 0.9048762);
    path_54.cubicTo(
        size.width * 0.6624638,
        size.height * 0.9086004,
        size.width * 0.6660515,
        size.height * 0.9118714,
        size.width * 0.6699709,
        size.height * 0.9147690);
    path_54.cubicTo(
        size.width * 0.6742013,
        size.height * 0.9180488,
        size.width * 0.6791058,
        size.height * 0.9211242,
        size.width * 0.6846427,
        size.height * 0.9239596);
    path_54.lineTo(size.width * 0.6847879, size.height * 0.9238885);
    path_54.cubicTo(
        size.width * 0.6943169,
        size.height * 0.9289193,
        size.width * 0.6990036,
        size.height * 0.9352835,
        size.width * 0.6988999,
        size.height * 0.9416653);
    path_54.cubicTo(
        size.width * 0.6988273,
        size.height * 0.9450963,
        size.width * 0.6972616,
        size.height * 0.9484472,
        size.width * 0.6947627,
        size.height * 0.9513359);
    path_54.cubicTo(
        size.width * 0.6924401,
        size.height * 0.9540202,
        size.width * 0.6893917,
        size.height * 0.9563312,
        size.width * 0.6861047,
        size.height * 0.9584467);
    path_54.cubicTo(
        size.width * 0.6854619,
        size.height * 0.9588200,
        size.width * 0.6847879,
        size.height * 0.9591844,
        size.width * 0.6840932,
        size.height * 0.9595488);
    path_54.lineTo(size.width * 0.6837199, size.height * 0.9593622);
    path_54.cubicTo(
        size.width * 0.6677519,
        size.height * 0.9672640,
        size.width * 0.6445673,
        size.height * 0.9692194,
        size.width * 0.6253020,
        size.height * 0.9650508);
    path_54.cubicTo(
        size.width * 0.6248458,
        size.height * 0.9649441,
        size.width * 0.6243792,
        size.height * 0.9648552,
        size.width * 0.6239229,
        size.height * 0.9647397);
    path_54.cubicTo(
        size.width * 0.6235911,
        size.height * 0.9646597,
        size.width * 0.6232593,
        size.height * 0.9645797,
        size.width * 0.6229275,
        size.height * 0.9644997);
    path_54.cubicTo(
        size.width * 0.6204390,
        size.height * 0.9638686,
        size.width * 0.6179609,
        size.height * 0.9631309,
        size.width * 0.6155346,
        size.height * 0.9622598);
    path_54.cubicTo(
        size.width * 0.6155657,
        size.height * 0.9622776,
        size.width * 0.6155968,
        size.height * 0.9622865,
        size.width * 0.6156279,
        size.height * 0.9623042);
    path_54.cubicTo(
        size.width * 0.6133882,
        size.height * 0.9614954,
        size.width * 0.6112419,
        size.height * 0.9605977,
        size.width * 0.6092200,
        size.height * 0.9595844);
    path_54.lineTo(size.width * 0.6089504, size.height * 0.9597177);
    path_54.lineTo(size.width * 0.5582157, size.height * 0.9346079);
    path_54.lineTo(size.width * 0.5569300, size.height * 0.9339680);
    path_54.lineTo(size.width * 0.5555613, size.height * 0.9332924);
    path_54.lineTo(size.width * 0.5059776, size.height * 0.9087426);
    path_54.lineTo(size.width * 0.5061124, size.height * 0.9086715);
    path_54.cubicTo(
        size.width * 0.5003888,
        size.height * 0.9058184,
        size.width * 0.4941675,
        size.height * 0.9033118,
        size.width * 0.4875004,
        size.height * 0.9011431);
    path_54.cubicTo(
        size.width * 0.4848667,
        size.height * 0.9002364,
        size.width * 0.4822123,
        size.height * 0.8993831,
        size.width * 0.4795268,
        size.height * 0.8985921);
    path_54.cubicTo(
        size.width * 0.4734403,
        size.height * 0.8968677,
        size.width * 0.4672397,
        size.height * 0.8954722,
        size.width * 0.4609666,
        size.height * 0.8943434);
    path_54.cubicTo(
        size.width * 0.4484203,
        size.height * 0.8921124,
        size.width * 0.4355733,
        size.height * 0.8911169,
        size.width * 0.4227575,
        size.height * 0.8911525);
    path_54.cubicTo(
        size.width * 0.4099313,
        size.height * 0.8912236,
        size.width * 0.3970947,
        size.height * 0.8923169,
        size.width * 0.3845691,
        size.height * 0.8946723);
    path_54.cubicTo(
        size.width * 0.3783271,
        size.height * 0.8958456,
        size.width * 0.3721265,
        size.height * 0.8973033,
        size.width * 0.3660608,
        size.height * 0.8990898);
    path_54.cubicTo(
        size.width * 0.3611149,
        size.height * 0.9005920,
        size.width * 0.3562415,
        size.height * 0.9022985,
        size.width * 0.3515237,
        size.height * 0.9042718);
    path_54.cubicTo(
        size.width * 0.3482679,
        size.height * 0.9055606,
        size.width * 0.3451261,
        size.height * 0.9069294,
        size.width * 0.3421192,
        size.height * 0.9083960);
    path_54.lineTo(size.width * 0.3419740, size.height * 0.9083249);
    path_54.cubicTo(
        size.width * 0.3259231,
        size.height * 0.9162622,
        size.width * 0.3025932,
        size.height * 0.9182088,
        size.width * 0.2832761,
        size.height * 0.9139513);
    path_54.cubicTo(
        size.width * 0.2829443,
        size.height * 0.9138713,
        size.width * 0.2826022,
        size.height * 0.9138090,
        size.width * 0.2822704,
        size.height * 0.9137290);
    path_54.cubicTo(
        size.width * 0.2818763,
        size.height * 0.9136402,
        size.width * 0.2814927,
        size.height * 0.9135424,
        size.width * 0.2811090,
        size.height * 0.9134446);
    path_54.cubicTo(
        size.width * 0.2786413,
        size.height * 0.9128135,
        size.width * 0.2761942,
        size.height * 0.9120847,
        size.width * 0.2737783,
        size.height * 0.9112225);
    path_54.cubicTo(
        size.width * 0.2738094,
        size.height * 0.9112403,
        size.width * 0.2738405,
        size.height * 0.9112492,
        size.width * 0.2738716,
        size.height * 0.9112670);
    path_54.cubicTo(
        size.width * 0.2716319,
        size.height * 0.9104581,
        size.width * 0.2694856,
        size.height * 0.9095515,
        size.width * 0.2674533,
        size.height * 0.9085471);
    path_54.lineTo(size.width * 0.2673911, size.height * 0.9085738);
    path_54.lineTo(size.width * 0.2153707, size.height * 0.8828240);
    path_54.lineTo(size.width * 0.2150597, size.height * 0.8826640);
    path_54.lineTo(size.width * 0.2147693, size.height * 0.8825218);
    path_54.lineTo(size.width * 0.1640243, size.height * 0.8574032);
    path_54.lineTo(size.width * 0.1584978, size.height * 0.8601675);
    path_54.lineTo(size.width * 0.1692813, size.height * 0.8655094);
    path_54.cubicTo(
        size.width * 0.1754612,
        size.height * 0.8688159,
        size.width * 0.1816824,
        size.height * 0.8720868,
        size.width * 0.1879452,
        size.height * 0.8752867);
    path_54.cubicTo(
        size.width * 0.1917609,
        size.height * 0.8772599,
        size.width * 0.1955974,
        size.height * 0.8791798,
        size.width * 0.1994442,
        size.height * 0.8811263);
    path_54.lineTo(size.width * 0.2109847, size.height * 0.8868860);
    path_54.lineTo(size.width * 0.2225874, size.height * 0.8925746);
    path_54.cubicTo(
        size.width * 0.2264654,
        size.height * 0.8944501,
        size.width * 0.2303329,
        size.height * 0.8963433,
        size.width * 0.2342212,
        size.height * 0.8982010);
    path_54.cubicTo(
        size.width * 0.2405151,
        size.height * 0.9012142,
        size.width * 0.2468505,
        size.height * 0.9041651,
        size.width * 0.2532169,
        size.height * 0.9070716);
    path_54.lineTo(size.width * 0.2620097, size.height * 0.9114181);
    path_54.lineTo(size.width * 0.2620408, size.height * 0.9114003);
    path_54.cubicTo(
        size.width * 0.2668208,
        size.height * 0.9137557,
        size.width * 0.2722644,
        size.height * 0.9156401,
        size.width * 0.2781747,
        size.height * 0.9170444);
    path_54.cubicTo(
        size.width * 0.2747322,
        size.height * 0.9163422,
        size.width * 0.2713313,
        size.height * 0.9155067,
        size.width * 0.2679925,
        size.height * 0.9144668);
    path_54.cubicTo(
        size.width * 0.2736642,
        size.height * 0.9169111,
        size.width * 0.2798233,
        size.height * 0.9185466,
        size.width * 0.2860861,
        size.height * 0.9195954);
    path_54.cubicTo(
        size.width * 0.2892175,
        size.height * 0.9201376,
        size.width * 0.2923903,
        size.height * 0.9204931,
        size.width * 0.2955839,
        size.height * 0.9207509);
    path_54.cubicTo(
        size.width * 0.2987568,
        size.height * 0.9209909,
        size.width * 0.3019607,
        size.height * 0.9210887,
        size.width * 0.3051543,
        size.height * 0.9210798);
    path_54.cubicTo(
        size.width * 0.3083583,
        size.height * 0.9210353,
        size.width * 0.3115519,
        size.height * 0.9209020,
        size.width * 0.3147248,
        size.height * 0.9206087);
    path_54.cubicTo(
        size.width * 0.3178976,
        size.height * 0.9202976,
        size.width * 0.3210601,
        size.height * 0.9198798,
        size.width * 0.3241811,
        size.height * 0.9192754);
    path_54.cubicTo(
        size.width * 0.3304128,
        size.height * 0.9180844,
        size.width * 0.3365096,
        size.height * 0.9162800,
        size.width * 0.3420881,
        size.height * 0.9136846);
    path_54.cubicTo(
        size.width * 0.3408542,
        size.height * 0.9141112,
        size.width * 0.3395996,
        size.height * 0.9144934,
        size.width * 0.3383553,
        size.height * 0.9148668);
    path_54.cubicTo(
        size.width * 0.3413623,
        size.height * 0.9138535,
        size.width * 0.3442240,
        size.height * 0.9126891,
        size.width * 0.3469407,
        size.height * 0.9113736);
    path_54.lineTo(size.width * 0.3470755, size.height * 0.9114447);
    path_54.cubicTo(
        size.width * 0.3557438,
        size.height * 0.9071516,
        size.width * 0.3655216,
        size.height * 0.9037562,
        size.width * 0.3759423,
        size.height * 0.9012142);
    path_54.cubicTo(
        size.width * 0.3787315,
        size.height * 0.9006275,
        size.width * 0.3815207,
        size.height * 0.9001031,
        size.width * 0.3843410,
        size.height * 0.8996320);
    path_54.cubicTo(
        size.width * 0.3968251,
        size.height * 0.8975788,
        size.width * 0.4095372,
        size.height * 0.8965389,
        size.width * 0.4222494,
        size.height * 0.8965033);
    path_54.cubicTo(
        size.width * 0.4349616,
        size.height * 0.8964322,
        size.width * 0.4476738,
        size.height * 0.8973744,
        size.width * 0.4601993,
        size.height * 0.8993209);
    path_54.cubicTo(
        size.width * 0.4664517,
        size.height * 0.9002987,
        size.width * 0.4726522,
        size.height * 0.9015608,
        size.width * 0.4787491,
        size.height * 0.9031252);
    path_54.cubicTo(
        size.width * 0.4792883,
        size.height * 0.9032585,
        size.width * 0.4798275,
        size.height * 0.9034185,
        size.width * 0.4803666,
        size.height * 0.9035607);
    path_54.cubicTo(
        size.width * 0.4875211,
        size.height * 0.9057295,
        size.width * 0.4942712,
        size.height * 0.9083427,
        size.width * 0.5004510,
        size.height * 0.9114181);
    path_54.lineTo(size.width * 0.5003474, size.height * 0.9114714);
    path_54.lineTo(size.width * 0.5110480, size.height * 0.9167689);
    path_54.cubicTo(
        size.width * 0.5172589,
        size.height * 0.9200932,
        size.width * 0.5235113,
        size.height * 0.9233730,
        size.width * 0.5297948,
        size.height * 0.9265906);
    path_54.cubicTo(
        size.width * 0.5336209,
        size.height * 0.9285638,
        size.width * 0.5374574,
        size.height * 0.9304837,
        size.width * 0.5412938,
        size.height * 0.9324303);
    path_54.lineTo(size.width * 0.5528343, size.height * 0.9381900);
    path_54.lineTo(size.width * 0.5644474, size.height * 0.9438785);
    path_54.cubicTo(
        size.width * 0.5683253,
        size.height * 0.9457540,
        size.width * 0.5721929,
        size.height * 0.9476561,
        size.width * 0.5760812,
        size.height * 0.9495049);
    path_54.cubicTo(
        size.width * 0.5824062,
        size.height * 0.9525359,
        size.width * 0.5887726,
        size.height * 0.9554957,
        size.width * 0.5951598,
        size.height * 0.9584200);
    path_54.lineTo(size.width * 0.6038593, size.height * 0.9627309);
    path_54.lineTo(size.width * 0.6041081, size.height * 0.9626064);
    path_54.cubicTo(
        size.width * 0.6087948,
        size.height * 0.9648908,
        size.width * 0.6141140,
        size.height * 0.9667218,
        size.width * 0.6198687,
        size.height * 0.9680817);
    path_54.cubicTo(
        size.width * 0.6164470,
        size.height * 0.9673884,
        size.width * 0.6130564,
        size.height * 0.9665440,
        size.width * 0.6097280,
        size.height * 0.9655130);
    path_54.cubicTo(
        size.width * 0.6153998,
        size.height * 0.9679573,
        size.width * 0.6215588,
        size.height * 0.9695927,
        size.width * 0.6278112,
        size.height * 0.9706416);
    path_54.cubicTo(
        size.width * 0.6309530,
        size.height * 0.9711926,
        size.width * 0.6341155,
        size.height * 0.9715393,
        size.width * 0.6372987,
        size.height * 0.9717971);
    path_54.cubicTo(
        size.width * 0.6404716,
        size.height * 0.9720370,
        size.width * 0.6436755,
        size.height * 0.9721348,
        size.width * 0.6468691,
        size.height * 0.9721259);
    path_54.cubicTo(
        size.width * 0.6500731,
        size.height * 0.9720815,
        size.width * 0.6532563,
        size.height * 0.9719393,
        size.width * 0.6564396,
        size.height * 0.9716548);
    path_54.cubicTo(
        size.width * 0.6596124,
        size.height * 0.9713438,
        size.width * 0.6627749,
        size.height * 0.9709260,
        size.width * 0.6658959,
        size.height * 0.9703216);
    path_54.cubicTo(
        size.width * 0.6721276,
        size.height * 0.9691305,
        size.width * 0.6782244,
        size.height * 0.9673262,
        size.width * 0.6838029,
        size.height * 0.9647308);
    path_54.cubicTo(
        size.width * 0.6825690,
        size.height * 0.9651574,
        size.width * 0.6813144,
        size.height * 0.9655396,
        size.width * 0.6800597,
        size.height * 0.9659129);
    path_54.cubicTo(
        size.width * 0.6829319,
        size.height * 0.9649441,
        size.width * 0.6856693,
        size.height * 0.9638330,
        size.width * 0.6882822,
        size.height * 0.9625976);
    path_54.lineTo(size.width * 0.6886658, size.height * 0.9627842);
    path_54.cubicTo(
        size.width * 0.7004863,
        size.height * 0.9569356,
        size.width * 0.7064691,
        size.height * 0.9496382,
        size.width * 0.7065210,
        size.height * 0.9416831);
    path_54.cubicTo(
        size.width * 0.7065728,
        size.height * 0.9337369,
        size.width * 0.7005589,
        size.height * 0.9262262,
        size.width * 0.6892361,
        size.height * 0.9205909);
    path_54.lineTo(size.width * 0.6891013, size.height * 0.9206620);
    path_54.cubicTo(
        size.width * 0.6729571,
        size.height * 0.9121736,
        size.width * 0.6633348,
        size.height * 0.9016675,
        size.width * 0.6602449,
        size.height * 0.8907703);
    path_54.cubicTo(
        size.width * 0.6601827,
        size.height * 0.8905303,
        size.width * 0.6601205,
        size.height * 0.8902903,
        size.width * 0.6600583,
        size.height * 0.8900503);
    path_54.cubicTo(
        size.width * 0.6600272,
        size.height * 0.8899081,
        size.width * 0.6599961,
        size.height * 0.8897748,
        size.width * 0.6599650,
        size.height * 0.8896326);
    path_54.cubicTo(
        size.width * 0.6594880,
        size.height * 0.8875171,
        size.width * 0.6592495,
        size.height * 0.8853661,
        size.width * 0.6592702,
        size.height * 0.8832062);
    path_54.cubicTo(
        size.width * 0.6592910,
        size.height * 0.8796064,
        size.width * 0.6600375,
        size.height * 0.8760244,
        size.width * 0.6614062,
        size.height * 0.8726024);
    path_54.cubicTo(
        size.width * 0.6627438,
        size.height * 0.8691981,
        size.width * 0.6647346,
        size.height * 0.8659805,
        size.width * 0.6670883,
        size.height * 0.8629673);
    path_54.cubicTo(
        size.width * 0.6694524,
        size.height * 0.8599808,
        size.width * 0.6722105,
        size.height * 0.8572076,
        size.width * 0.6752382,
        size.height * 0.8546655);
    path_54.cubicTo(
        size.width * 0.6782244,
        size.height * 0.8520879,
        size.width * 0.6815321,
        size.height * 0.8497947,
        size.width * 0.6849331,
        size.height * 0.8476170);
    path_54.cubicTo(
        size.width * 0.6848294,
        size.height * 0.8476703,
        size.width * 0.6847361,
        size.height * 0.8477326,
        size.width * 0.6846324,
        size.height * 0.8477859);
    path_54.cubicTo(
        size.width * 0.6866024,
        size.height * 0.8466126,
        size.width * 0.6886555,
        size.height * 0.8454660,
        size.width * 0.6908433,
        size.height * 0.8443639);
    path_54.lineTo(size.width * 0.6907500, size.height * 0.8443105);
    path_54.lineTo(size.width * 0.6990761, size.height * 0.8401863);
    path_54.cubicTo(
        size.width * 0.7054944,
        size.height * 0.8372531,
        size.width * 0.7118816,
        size.height * 0.8342844,
        size.width * 0.7182273,
        size.height * 0.8312446);
    path_54.close();

    Paint paint_54_fill = Paint()..style = PaintingStyle.fill;
    paint_54_fill.color = Color(0xffffc629).withOpacity(1.0);
    canvas.drawPath(path_54, paint_54_fill);

    Path path_55 = Path();
    path_55.moveTo(size.width * 0.04354904, size.height * 0.3992943);
    path_55.cubicTo(
        size.width * 0.05220700,
        size.height * 0.3950100,
        size.width * 0.06197443,
        size.height * 0.3916147,
        size.width * 0.07238472,
        size.height * 0.3890726);
    path_55.cubicTo(
        size.width * 0.07517394,
        size.height * 0.3884859,
        size.width * 0.07798389,
        size.height * 0.3879526,
        size.width * 0.08081457,
        size.height * 0.3874904);
    path_55.cubicTo(
        size.width * 0.09329863,
        size.height * 0.3854372,
        size.width * 0.1060108,
        size.height * 0.3843973,
        size.width * 0.1187230,
        size.height * 0.3843617);
    path_55.cubicTo(
        size.width * 0.1314351,
        size.height * 0.3842906,
        size.width * 0.1441473,
        size.height * 0.3852239,
        size.width * 0.1566729,
        size.height * 0.3871794);
    path_55.cubicTo(
        size.width * 0.1629253,
        size.height * 0.3881482,
        size.width * 0.1691258,
        size.height * 0.3894192,
        size.width * 0.1752227,
        size.height * 0.3909836);
    path_55.cubicTo(
        size.width * 0.1757515,
        size.height * 0.3911169,
        size.width * 0.1762699,
        size.height * 0.3912680,
        size.width * 0.1767987,
        size.height * 0.3914013);
    path_55.cubicTo(
        size.width * 0.1837666,
        size.height * 0.3935168,
        size.width * 0.1903508,
        size.height * 0.3960500,
        size.width * 0.1963958,
        size.height * 0.3990187);
    path_55.lineTo(size.width * 0.1961469, size.height * 0.3991432);
    path_55.lineTo(size.width * 0.2067542, size.height * 0.4043962);
    path_55.cubicTo(
        size.width * 0.2129963,
        size.height * 0.4077383,
        size.width * 0.2192694,
        size.height * 0.4110359,
        size.width * 0.2255840,
        size.height * 0.4142624);
    path_55.cubicTo(
        size.width * 0.2294101,
        size.height * 0.4162356,
        size.width * 0.2332466,
        size.height * 0.4181466,
        size.width * 0.2370830,
        size.height * 0.4201109);
    path_55.lineTo(size.width * 0.2486235, size.height * 0.4258706);
    path_55.lineTo(size.width * 0.2602366, size.height * 0.4315592);
    path_55.cubicTo(
        size.width * 0.2641146,
        size.height * 0.4334347,
        size.width * 0.2679821,
        size.height * 0.4353368,
        size.width * 0.2718704,
        size.height * 0.4371767);
    path_55.cubicTo(
        size.width * 0.2782058,
        size.height * 0.4402165,
        size.width * 0.2845722,
        size.height * 0.4431764,
        size.width * 0.2909802,
        size.height * 0.4461007);
    path_55.lineTo(size.width * 0.2996589, size.height * 0.4503938);

    Paint paint_55_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.002073764;
    paint_55_stroke.color = Color(0xff0e2947).withOpacity(1.0);
    paint_55_stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_55, paint_55_stroke);

    Path path_56 = Path();
    path_56.moveTo(size.width * 0.2544716, size.height * 0.4225286);
    path_56.lineTo(size.width * 0.2526985, size.height * 0.4216397);
    path_56.lineTo(size.width * 0.2508839, size.height * 0.4207509);
    path_56.lineTo(size.width * 0.2022646, size.height * 0.3966811);
    path_56.lineTo(size.width * 0.2025652, size.height * 0.3965300);
    path_56.cubicTo(
        size.width * 0.1968002,
        size.height * 0.3936590,
        size.width * 0.1905270,
        size.height * 0.3911347,
        size.width * 0.1838081,
        size.height * 0.3889481);
    path_56.cubicTo(
        size.width * 0.1812262,
        size.height * 0.3880593,
        size.width * 0.1786133,
        size.height * 0.3872238,
        size.width * 0.1759796,
        size.height * 0.3864505);
    path_56.cubicTo(
        size.width * 0.1698931,
        size.height * 0.3847261,
        size.width * 0.1637029,
        size.height * 0.3833218,
        size.width * 0.1574194,
        size.height * 0.3821929);
    path_56.cubicTo(
        size.width * 0.1448731,
        size.height * 0.3799620,
        size.width * 0.1320365,
        size.height * 0.3789753,
        size.width * 0.1192103,
        size.height * 0.3790020);
    path_56.cubicTo(
        size.width * 0.1063841,
        size.height * 0.3790731,
        size.width * 0.09354748,
        size.height * 0.3801664,
        size.width * 0.08102195,
        size.height * 0.3825218);
    path_56.cubicTo(
        size.width * 0.07477992,
        size.height * 0.3836951,
        size.width * 0.06857937,
        size.height * 0.3851439,
        size.width * 0.06252398,
        size.height * 0.3869394);
    path_56.cubicTo(
        size.width * 0.05757805,
        size.height * 0.3884326,
        size.width * 0.05271508,
        size.height * 0.3901392,
        size.width * 0.04800763,
        size.height * 0.3921124);

    Paint paint_56_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.002073764;
    paint_56_stroke.color = Color(0xff0e2947).withOpacity(1.0);
    paint_56_stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_56, paint_56_stroke);

    Path path_57 = Path();
    path_57.moveTo(size.width * 0.09431478, size.height * 0.5292429);
    path_57.cubicTo(
        size.width * 0.09840009,
        size.height * 0.5264253,
        size.width * 0.1021640,
        size.height * 0.5232521,
        size.width * 0.1053679,
        size.height * 0.5196434);
    path_57.cubicTo(
        size.width * 0.1082505,
        size.height * 0.5164347,
        size.width * 0.1106457,
        size.height * 0.5128704,
        size.width * 0.1123773,
        size.height * 0.5090573);
    path_57.cubicTo(
        size.width * 0.1140881,
        size.height * 0.5052353,
        size.width * 0.1150420,
        size.height * 0.5011644,
        size.width * 0.1151146,
        size.height * 0.4970579);
    path_57.cubicTo(
        size.width * 0.1151872,
        size.height * 0.4929693,
        size.width * 0.1143888,
        size.height * 0.4888450,
        size.width * 0.1128127,
        size.height * 0.4849964);
    path_57.cubicTo(
        size.width * 0.1112160,
        size.height * 0.4811388,
        size.width * 0.1089141,
        size.height * 0.4775301,
        size.width * 0.1061041,
        size.height * 0.4742592);
    path_57.cubicTo(
        size.width * 0.1033149,
        size.height * 0.4709793,
        size.width * 0.1000384,
        size.height * 0.4680373,
        size.width * 0.09648186,
        size.height * 0.4653796);
    path_57.cubicTo(
        size.width * 0.09625375,
        size.height * 0.4652107,
        size.width * 0.09601526,
        size.height * 0.4650508,
        size.width * 0.09577678,
        size.height * 0.4648819);
    path_57.cubicTo(
        size.width * 0.09153593,
        size.height * 0.4616998,
        size.width * 0.08664185,
        size.height * 0.4587133,
        size.width * 0.08111527,
        size.height * 0.4559668);
    path_57.lineTo(size.width * 0.08093900, size.height * 0.4560557);
    path_57.cubicTo(
        size.width * 0.07683295,
        size.height * 0.4538691,
        size.width * 0.07359788,
        size.height * 0.4514337,
        size.width * 0.07127526,
        size.height * 0.4488383);
    path_57.cubicTo(
        size.width * 0.07085014,
        size.height * 0.4483139,
        size.width * 0.07043539,
        size.height * 0.4477806,
        size.width * 0.07007248,
        size.height * 0.4472295);
    path_57.cubicTo(
        size.width * 0.06822683,
        size.height * 0.4445185,
        size.width * 0.06706552,
        size.height * 0.4414165,
        size.width * 0.06704478,
        size.height * 0.4382788);
    path_57.cubicTo(
        size.width * 0.06697220,
        size.height * 0.4351323,
        size.width * 0.06805056,
        size.height * 0.4320214,
        size.width * 0.06980289,
        size.height * 0.4292571);
    path_57.cubicTo(
        size.width * 0.07014506,
        size.height * 0.4287060,
        size.width * 0.07053907,
        size.height * 0.4281816,
        size.width * 0.07093309,
        size.height * 0.4276572);
    path_57.cubicTo(
        size.width * 0.07354603,
        size.height * 0.4245818,
        size.width * 0.07736176,
        size.height * 0.4216931,
        size.width * 0.08236990,
        size.height * 0.4191865);
    path_57.lineTo(size.width * 0.07689516, size.height * 0.4163956);
    path_57.cubicTo(
        size.width * 0.07474882,
        size.height * 0.4174711,
        size.width * 0.07279948,
        size.height * 0.4186088,
        size.width * 0.07103678,
        size.height * 0.4197821);
    path_57.cubicTo(
        size.width * 0.07123379,
        size.height * 0.4196043,
        size.width * 0.07144116,
        size.height * 0.4194176,
        size.width * 0.07163817,
        size.height * 0.4192399);
    path_57.cubicTo(
        size.width * 0.06827867,
        size.height * 0.4211953,
        size.width * 0.06523024,
        size.height * 0.4237730,
        size.width * 0.06294910,
        size.height * 0.4269906);
    path_57.cubicTo(
        size.width * 0.06250324,
        size.height * 0.4276127,
        size.width * 0.06209886,
        size.height * 0.4282705,
        size.width * 0.06171521,
        size.height * 0.4289371);
    path_57.cubicTo(
        size.width * 0.06162189,
        size.height * 0.4290882,
        size.width * 0.06154931,
        size.height * 0.4292393,
        size.width * 0.06145599,
        size.height * 0.4293904);
    path_57.cubicTo(
        size.width * 0.06143525,
        size.height * 0.4294349,
        size.width * 0.06140415,
        size.height * 0.4294704,
        size.width * 0.06138341,
        size.height * 0.4295149);
    path_57.cubicTo(
        size.width * 0.05989030,
        size.height * 0.4321547,
        size.width * 0.05912301,
        size.height * 0.4349101,
        size.width * 0.05909190,
        size.height * 0.4377455);
    path_57.cubicTo(
        size.width * 0.05900895,
        size.height * 0.4457984,
        size.width * 0.06489844,
        size.height * 0.4534780,
        size.width * 0.07611750,
        size.height * 0.4592111);
    path_57.lineTo(size.width * 0.07630414, size.height * 0.4591222);
    path_57.cubicTo(
        size.width * 0.1175513,
        size.height * 0.4800811,
        size.width * 0.1170847,
        size.height * 0.5138482,
        size.width * 0.07504951,
        size.height * 0.5346559);

    Paint paint_57_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.002073764;
    paint_57_stroke.color = Color(0xff0e2947).withOpacity(1.0);
    paint_57_stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_57, paint_57_stroke);

    Path path_58 = Path();
    path_58.moveTo(size.width * 0.05873936, size.height * 0.4967291);
    path_58.cubicTo(
        size.width * 0.05879120,
        size.height * 0.4887828,
        size.width * 0.05277729,
        size.height * 0.4812721,
        size.width * 0.04145454,
        size.height * 0.4756369);
    path_58.lineTo(size.width * 0.04130937, size.height * 0.4757080);
    path_58.cubicTo(
        size.width * 0.02516512,
        size.height * 0.4672106,
        size.width * 0.01554286,
        size.height * 0.4567045,
        size.width * 0.01245295,
        size.height * 0.4457984);
    path_58.cubicTo(
        size.width * 0.01239074,
        size.height * 0.4455762,
        size.width * 0.01233889,
        size.height * 0.4453629,
        size.width * 0.01228705,
        size.height * 0.4451407);
    path_58.cubicTo(
        size.width * 0.01223521,
        size.height * 0.4449629,
        size.width * 0.01220410,
        size.height * 0.4447852,
        size.width * 0.01216262,
        size.height * 0.4445985);
    path_58.cubicTo(
        size.width * 0.01169603,
        size.height * 0.4425097,
        size.width * 0.01145754,
        size.height * 0.4403854,
        size.width * 0.01147828,
        size.height * 0.4382522);
    path_58.cubicTo(
        size.width * 0.01149902,
        size.height * 0.4346524,
        size.width * 0.01224558,
        size.height * 0.4310615,
        size.width * 0.01361426,
        size.height * 0.4276483);
    path_58.cubicTo(
        size.width * 0.01495184,
        size.height * 0.4242352,
        size.width * 0.01694265,
        size.height * 0.4210175,
        size.width * 0.01929637,
        size.height * 0.4180133);
    path_58.cubicTo(
        size.width * 0.02166046,
        size.height * 0.4150268,
        size.width * 0.02441857,
        size.height * 0.4122536,
        size.width * 0.02744626,
        size.height * 0.4097115);
    path_58.cubicTo(
        size.width * 0.03043248,
        size.height * 0.4071427,
        size.width * 0.03374014,
        size.height * 0.4048406,
        size.width * 0.03714111,
        size.height * 0.4026630);
    path_58.cubicTo(
        size.width * 0.03706853,
        size.height * 0.4026985,
        size.width * 0.03700631,
        size.height * 0.4027430,
        size.width * 0.03693373,
        size.height * 0.4027785);
    path_58.cubicTo(
        size.width * 0.03887270,
        size.height * 0.4016230,
        size.width * 0.04089462,
        size.height * 0.4004942,
        size.width * 0.04306170,
        size.height * 0.3994098);

    Paint paint_58_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.002073764;
    paint_58_stroke.color = Color(0xff0e2947).withOpacity(1.0);
    paint_58_stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_58, paint_58_stroke);

    Path path_59 = Path();
    path_59.moveTo(size.width * 0.04014807, size.height * 0.5947949);
    path_59.cubicTo(
        size.width * 0.02336095,
        size.height * 0.5862087,
        size.width * 0.01340688,
        size.height * 0.5754715,
        size.width * 0.01025476,
        size.height * 0.5643343);
    path_59.cubicTo(
        size.width * 0.01019255,
        size.height * 0.5641121,
        size.width * 0.01013034,
        size.height * 0.5638899,
        size.width * 0.01007849,
        size.height * 0.5636588);
    path_59.cubicTo(
        size.width * 0.01003702,
        size.height * 0.5634899,
        size.width * 0.01000591,
        size.height * 0.5633211,
        size.width * 0.009964435,
        size.height * 0.5631611);
    path_59.cubicTo(
        size.width * 0.009497838,
        size.height * 0.5610634,
        size.width * 0.009259355,
        size.height * 0.5589302,
        size.width * 0.009280093,
        size.height * 0.5567792);
    path_59.cubicTo(
        size.width * 0.009300831,
        size.height * 0.5531794,
        size.width * 0.01004739,
        size.height * 0.5495974,
        size.width * 0.01141607,
        size.height * 0.5461753);
    path_59.cubicTo(
        size.width * 0.01275365,
        size.height * 0.5427622,
        size.width * 0.01474446,
        size.height * 0.5395446,
        size.width * 0.01709818,
        size.height * 0.5365403);

    Paint paint_59_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.002073764;
    paint_59_stroke.color = Color(0xff0e2947).withOpacity(1.0);
    paint_59_stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_59, paint_59_stroke);

    Path path_60 = Path();
    path_60.moveTo(size.width * 0.5509265, size.height * 0.8133611);
    path_60.cubicTo(
        size.width * 0.5487801,
        size.height * 0.8135744,
        size.width * 0.5466234,
        size.height * 0.8137699,
        size.width * 0.5444770,
        size.height * 0.8139121);
    path_60.cubicTo(
        size.width * 0.5390749,
        size.height * 0.8143032,
        size.width * 0.5336313,
        size.height * 0.8144988,
        size.width * 0.5281980,
        size.height * 0.8144899);
    path_60.cubicTo(
        size.width * 0.5227647,
        size.height * 0.8145077,
        size.width * 0.5173418,
        size.height * 0.8143121,
        size.width * 0.5119397,
        size.height * 0.8139388);
    path_60.cubicTo(
        size.width * 0.5098037,
        size.height * 0.8137966,
        size.width * 0.5076677,
        size.height * 0.8136099,
        size.width * 0.5055421,
        size.height * 0.8133966);
    path_60.cubicTo(
        size.width * 0.4856029,
        size.height * 0.8113167,
        size.width * 0.4666280,
        size.height * 0.8064459,
        size.width * 0.4512199,
        size.height * 0.7987663);
    path_60.lineTo(size.width * 0.4511266, size.height * 0.7988107);

    Paint paint_60_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.002073764;
    paint_60_stroke.color = Color(0xff0e2947).withOpacity(1.0);
    paint_60_stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_60, paint_60_stroke);

    Path path_61 = Path();
    path_61.moveTo(size.width * 0.009798534, size.height * 0.5341226);
    path_61.cubicTo(
        size.width * 0.007164854,
        size.height * 0.5372869,
        size.width * 0.004997771,
        size.height * 0.5407978,
        size.width * 0.003442448,
        size.height * 0.5445310);
    path_61.cubicTo(
        size.width * 0.001918231,
        size.height * 0.5482641,
        size.width * 0.001078357,
        size.height * 0.5522461,
        size.width * 0.001036882,
        size.height * 0.5562459);
    path_61.cubicTo(
        size.width * 0.001005775,
        size.height * 0.5602457,
        size.width * 0.001773068,
        size.height * 0.5642366,
        size.width * 0.003245440,
        size.height * 0.5679875);
    path_61.cubicTo(
        size.width * 0.004738550,
        size.height * 0.5717384,
        size.width * 0.006843420,
        size.height * 0.5752760,
        size.width * 0.009445994,
        size.height * 0.5784758);
    path_61.cubicTo(
        size.width * 0.01244258,
        size.height * 0.5822001,
        size.width * 0.01600946,
        size.height * 0.5854621,
        size.width * 0.01991850,
        size.height * 0.5883508);
    path_61.cubicTo(
        size.width * 0.02403492,
        size.height * 0.5915418,
        size.width * 0.02878384,
        size.height * 0.5945372,
        size.width * 0.03412378,
        size.height * 0.5973104);
    path_61.lineTo(size.width * 0.03393714, size.height * 0.5973992);
    path_61.lineTo(size.width * 0.1374698, size.height * 0.6486410);
    path_61.lineTo(size.width * 0.1375113, size.height * 0.6486232);
    path_61.lineTo(size.width * 0.2398619, size.height * 0.6992871);
    path_61.lineTo(size.width * 0.2391464, size.height * 0.6996427);
    path_61.lineTo(size.width * 0.3426895, size.height * 0.7508844);
    path_61.lineTo(size.width * 0.3429176, size.height * 0.7507688);
    path_61.lineTo(size.width * 0.4461392, size.height * 0.8018506);
    path_61.lineTo(size.width * 0.4462014, size.height * 0.8018239);
    path_61.cubicTo(
        size.width * 0.4544964,
        size.height * 0.8058948,
        size.width * 0.4637973,
        size.height * 0.8092902,
        size.width * 0.4739898,
        size.height * 0.8119300);
    path_61.cubicTo(
        size.width * 0.4808643,
        size.height * 0.8140277,
        size.width * 0.4879462,
        size.height * 0.8156454,
        size.width * 0.4951215,
        size.height * 0.8168187);
    path_61.cubicTo(
        size.width * 0.5058843,
        size.height * 0.8186052,
        size.width * 0.5168545,
        size.height * 0.8194319,
        size.width * 0.5278040,
        size.height * 0.8194319);
    path_61.cubicTo(
        size.width * 0.5332787,
        size.height * 0.8194230,
        size.width * 0.5387535,
        size.height * 0.8192008,
        size.width * 0.5442282,
        size.height * 0.8187741);
    path_61.cubicTo(
        size.width * 0.5496718,
        size.height * 0.8183119,
        size.width * 0.5551155,
        size.height * 0.8176897,
        size.width * 0.5604865,
        size.height * 0.8167742);
    path_61.cubicTo(
        size.width * 0.5661894,
        size.height * 0.8158320,
        size.width * 0.5718300,
        size.height * 0.8146143,
        size.width * 0.5773566,
        size.height * 0.8130944);
    path_61.cubicTo(
        size.width * 0.5896955,
        size.height * 0.8102501,
        size.width * 0.6008627,
        size.height * 0.8063659,
        size.width * 0.6106301,
        size.height * 0.8015306);

    Paint paint_61_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.002073764;
    paint_61_stroke.color = Color(0xff0e2947).withOpacity(1.0);
    paint_61_stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_61, paint_61_stroke);

    Path path_62 = Path();
    path_62.moveTo(size.width * 0.02668934, size.height * 0.4030007);
    path_62.cubicTo(
        size.width * 0.02114202,
        size.height * 0.4064939,
        size.width * 0.01607167,
        size.height * 0.4106537,
        size.width * 0.01200709,
        size.height * 0.4155867);
    path_62.cubicTo(
        size.width * 0.009373412,
        size.height * 0.4187510,
        size.width * 0.007206329,
        size.height * 0.4222619,
        size.width * 0.005651006,
        size.height * 0.4259862);
    path_62.cubicTo(
        size.width * 0.004126790,
        size.height * 0.4297282,
        size.width * 0.003286916,
        size.height * 0.4337102,
        size.width * 0.003245440,
        size.height * 0.4377100);
    path_62.cubicTo(
        size.width * 0.003214334,
        size.height * 0.4417098,
        size.width * 0.003981626,
        size.height * 0.4456918,
        size.width * 0.005453999,
        size.height * 0.4494516);
    path_62.cubicTo(
        size.width * 0.006947109,
        size.height * 0.4532114,
        size.width * 0.009051979,
        size.height * 0.4567401,
        size.width * 0.01165455,
        size.height * 0.4599488);
    path_62.cubicTo(
        size.width * 0.01465114,
        size.height * 0.4636730,
        size.width * 0.01822838,
        size.height * 0.4669351,
        size.width * 0.02213743,
        size.height * 0.4698327);
    path_62.cubicTo(
        size.width * 0.02637828,
        size.height * 0.4731214,
        size.width * 0.03128273,
        size.height * 0.4761968,
        size.width * 0.03683004,
        size.height * 0.4790322);
    path_62.lineTo(size.width * 0.03698558, size.height * 0.4789522);
    path_62.cubicTo(
        size.width * 0.04651452,
        size.height * 0.4839831,
        size.width * 0.05120123,
        size.height * 0.4903472,
        size.width * 0.05108717,
        size.height * 0.4967202);
    path_62.cubicTo(
        size.width * 0.05108717,
        size.height * 0.4970490,
        size.width * 0.05105606,
        size.height * 0.4973868,
        size.width * 0.05102496,
        size.height * 0.4977157);
    path_62.cubicTo(
        size.width * 0.05102496,
        size.height * 0.4977868,
        size.width * 0.05102496,
        size.height * 0.4978490,
        size.width * 0.05101459,
        size.height * 0.4979201);
    path_62.cubicTo(
        size.width * 0.05065168,
        size.height * 0.5009333,
        size.width * 0.04915857,
        size.height * 0.5038487,
        size.width * 0.04696038,
        size.height * 0.5063908);
    path_62.cubicTo(
        size.width * 0.04462740,
        size.height * 0.5090928,
        size.width * 0.04157896,
        size.height * 0.5114038,
        size.width * 0.03828168,
        size.height * 0.5135193);

    Paint paint_62_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.002073764;
    paint_62_stroke.color = Color(0xff0e2947).withOpacity(1.0);
    paint_62_stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_62, paint_62_stroke);

    Path path_63 = Path();
    path_63.moveTo(size.width * 0.04844312, size.height * 0.09390610);
    path_63.cubicTo(
        size.width * 0.05709072,
        size.height * 0.08963078,
        size.width * 0.06683741,
        size.height * 0.08623540,
        size.width * 0.07722696,
        size.height * 0.08370220);
    path_63.cubicTo(
        size.width * 0.08003691,
        size.height * 0.08311557,
        size.width * 0.08286760,
        size.height * 0.08257337,
        size.width * 0.08570866,
        size.height * 0.08210229);
    path_63.cubicTo(
        size.width * 0.09820308,
        size.height * 0.08004906,
        size.width * 0.1109049,
        size.height * 0.07900912,
        size.width * 0.1236171,
        size.height * 0.07897357);
    path_63.cubicTo(
        size.width * 0.1363292,
        size.height * 0.07890246,
        size.width * 0.1490310,
        size.height * 0.07984463,
        size.width * 0.1615669,
        size.height * 0.08180008);
    path_63.cubicTo(
        size.width * 0.1678193,
        size.height * 0.08276892,
        size.width * 0.1740199,
        size.height * 0.08403107,
        size.width * 0.1801168,
        size.height * 0.08560432);
    path_63.cubicTo(
        size.width * 0.1806663,
        size.height * 0.08574654,
        size.width * 0.1812158,
        size.height * 0.08589764,
        size.width * 0.1817654,
        size.height * 0.08604874);
    path_63.cubicTo(
        size.width * 0.1888784,
        size.height * 0.08820863,
        size.width * 0.1956078,
        size.height * 0.09080405,
        size.width * 0.2017565,
        size.height * 0.09386166);
    path_63.lineTo(size.width * 0.2016839, size.height * 0.09389721);
    path_63.lineTo(size.width * 0.2124364, size.height * 0.09922137);
    path_63.cubicTo(
        size.width * 0.2186265,
        size.height * 0.1025368,
        size.width * 0.2248582,
        size.height * 0.1058077,
        size.width * 0.2311313,
        size.height * 0.1090075);
    path_63.cubicTo(
        size.width * 0.2349471,
        size.height * 0.1109807,
        size.width * 0.2387835,
        size.height * 0.1128918,
        size.width * 0.2426304,
        size.height * 0.1148472);
    path_63.lineTo(size.width * 0.2541709, size.height * 0.1206069);
    path_63.lineTo(size.width * 0.2657736, size.height * 0.1262955);
    path_63.cubicTo(
        size.width * 0.2696515,
        size.height * 0.1281709,
        size.width * 0.2735191,
        size.height * 0.1300731,
        size.width * 0.2774074,
        size.height * 0.1319219);
    path_63.cubicTo(
        size.width * 0.2837324,
        size.height * 0.1349528,
        size.width * 0.2901092,
        size.height * 0.1379215,
        size.width * 0.2965067,
        size.height * 0.1408369);
    path_63.lineTo(size.width * 0.3051025, size.height * 0.1450945);
    path_63.lineTo(size.width * 0.3049470, size.height * 0.1451745);
    path_63.lineTo(size.width * 0.3156580, size.height * 0.1504809);
    path_63.cubicTo(
        size.width * 0.3218689,
        size.height * 0.1538051,
        size.width * 0.3281109,
        size.height * 0.1570850,
        size.width * 0.3343944,
        size.height * 0.1602937);
    path_63.cubicTo(
        size.width * 0.3382101,
        size.height * 0.1622669,
        size.width * 0.3420466,
        size.height * 0.1641779,
        size.width * 0.3458831,
        size.height * 0.1661334);
    path_63.lineTo(size.width * 0.3574339, size.height * 0.1718931);
    path_63.lineTo(size.width * 0.3690366, size.height * 0.1775816);
    path_63.cubicTo(
        size.width * 0.3729146,
        size.height * 0.1794571,
        size.width * 0.3767821,
        size.height * 0.1813503,
        size.width * 0.3806704,
        size.height * 0.1831991);
    path_63.cubicTo(
        size.width * 0.3870058,
        size.height * 0.1862390,
        size.width * 0.3933826,
        size.height * 0.1892077,
        size.width * 0.3997905,
        size.height * 0.1921320);
    path_63.lineTo(size.width * 0.4084485, size.height * 0.1964162);
    path_63.lineTo(size.width * 0.4086974, size.height * 0.1962918);
    path_63.cubicTo(
        size.width * 0.4133944,
        size.height * 0.1985761,
        size.width * 0.4187344,
        size.height * 0.2004160,
        size.width * 0.4245098,
        size.height * 0.2017848);
    path_63.cubicTo(
        size.width * 0.4210674,
        size.height * 0.2010826,
        size.width * 0.4176664,
        size.height * 0.2002471,
        size.width * 0.4143276,
        size.height * 0.1992072);
    path_63.cubicTo(
        size.width * 0.4199994,
        size.height * 0.2016515,
        size.width * 0.4261585,
        size.height * 0.2032869,
        size.width * 0.4324109,
        size.height * 0.2043447);
    path_63.cubicTo(
        size.width * 0.4355422,
        size.height * 0.2048869,
        size.width * 0.4387151,
        size.height * 0.2052424,
        size.width * 0.4419087,
        size.height * 0.2054913);
    path_63.cubicTo(
        size.width * 0.4450816,
        size.height * 0.2057312,
        size.width * 0.4482855,
        size.height * 0.2058290,
        size.width * 0.4514791,
        size.height * 0.2058201);
    path_63.cubicTo(
        size.width * 0.4546831,
        size.height * 0.2057846,
        size.width * 0.4578663,
        size.height * 0.2056424,
        size.width * 0.4610392,
        size.height * 0.2053490);
    path_63.cubicTo(
        size.width * 0.4642120,
        size.height * 0.2050380,
        size.width * 0.4673745,
        size.height * 0.2046202,
        size.width * 0.4704955,
        size.height * 0.2040158);
    path_63.cubicTo(
        size.width * 0.4767272,
        size.height * 0.2028247,
        size.width * 0.4828241,
        size.height * 0.2010204,
        size.width * 0.4884128,
        size.height * 0.1984250);
    path_63.cubicTo(
        size.width * 0.4871582,
        size.height * 0.1988516,
        size.width * 0.4858932,
        size.height * 0.1992427,
        size.width * 0.4846179,
        size.height * 0.1996249);
    path_63.cubicTo(
        size.width * 0.4878633,
        size.height * 0.1985316,
        size.width * 0.4909532,
        size.height * 0.1972695,
        size.width * 0.4938565,
        size.height * 0.1958296);
    path_63.lineTo(size.width * 0.4938150, size.height * 0.1958118);
    path_63.lineTo(size.width * 0.5014050, size.height * 0.1920609);
    path_63.cubicTo(
        size.width * 0.5078129,
        size.height * 0.1891366,
        size.width * 0.5141897,
        size.height * 0.1861678,
        size.width * 0.5205251,
        size.height * 0.1831280);
    path_63.cubicTo(
        size.width * 0.5244238,
        size.height * 0.1812792,
        size.width * 0.5282913,
        size.height * 0.1793860,
        size.width * 0.5321693,
        size.height * 0.1775105);
    path_63.lineTo(size.width * 0.5437720, size.height * 0.1718219);
    path_63.lineTo(size.width * 0.5553228, size.height * 0.1660623);
    path_63.cubicTo(
        size.width * 0.5591593,
        size.height * 0.1641068,
        size.width * 0.5629958,
        size.height * 0.1621869,
        size.width * 0.5668115,
        size.height * 0.1602226);
    path_63.cubicTo(
        size.width * 0.5730950,
        size.height * 0.1570138,
        size.width * 0.5793370,
        size.height * 0.1537340,
        size.width * 0.5855479,
        size.height * 0.1504098);
    path_63.lineTo(size.width * 0.5962589, size.height * 0.1451034);

    Paint paint_63_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.002073764;
    paint_63_stroke.color = Color(0xff0e2947).withOpacity(1.0);
    paint_63_stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_63, paint_63_stroke);

    Path path_64 = Path();
    path_64.moveTo(size.width * 0.06742843, size.height * 0.08156898);
    path_64.cubicTo(
        size.width * 0.06247213,
        size.height * 0.08307113,
        size.width * 0.05760916,
        size.height * 0.08477770,
        size.width * 0.05289135,
        size.height * 0.08675093);

    Paint paint_64_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.002073764;
    paint_64_stroke.color = Color(0xff0e2947).withOpacity(1.0);
    paint_64_stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_64, paint_64_stroke);

    Path path_65 = Path();
    path_65.moveTo(size.width * 0.5414494, size.height * 0.1667289);
    path_65.lineTo(size.width * 0.5397074, size.height * 0.1675822);
    path_65.lineTo(size.width * 0.5379240, size.height * 0.1684710);
    path_65.lineTo(size.width * 0.4874278, size.height * 0.1934652);
    path_65.cubicTo(
        size.width * 0.4714909,
        size.height * 0.2010204,
        size.width * 0.4487832,
        size.height * 0.2028425,
        size.width * 0.4298601,
        size.height * 0.1987361);
    path_65.cubicTo(
        size.width * 0.4294039,
        size.height * 0.1986383,
        size.width * 0.4289580,
        size.height * 0.1985405,
        size.width * 0.4285018,
        size.height * 0.1984339);
    path_65.cubicTo(
        size.width * 0.4281700,
        size.height * 0.1983539,
        size.width * 0.4278382,
        size.height * 0.1982739,
        size.width * 0.4275064,
        size.height * 0.1981850);
    path_65.cubicTo(
        size.width * 0.4250179,
        size.height * 0.1975539,
        size.width * 0.4225397,
        size.height * 0.1968162,
        size.width * 0.4201134,
        size.height * 0.1959451);
    path_65.cubicTo(
        size.width * 0.4201445,
        size.height * 0.1959629,
        size.width * 0.4201860,
        size.height * 0.1959807,
        size.width * 0.4202275,
        size.height * 0.1959984);
    path_65.cubicTo(
        size.width * 0.4179775,
        size.height * 0.1951896,
        size.width * 0.4158311,
        size.height * 0.1942830,
        size.width * 0.4137988,
        size.height * 0.1932697);
    path_65.lineTo(size.width * 0.4135292, size.height * 0.1934030);
    path_65.lineTo(size.width * 0.3627739, size.height * 0.1682755);
    path_65.lineTo(size.width * 0.3615192, size.height * 0.1676444);
    path_65.lineTo(size.width * 0.3602957, size.height * 0.1670400);
    path_65.lineTo(size.width * 0.3105876, size.height * 0.1424368);
    path_65.lineTo(size.width * 0.3107431, size.height * 0.1423569);
    path_65.lineTo(size.width * 0.2598633, size.height * 0.1171760);
    path_65.lineTo(size.width * 0.2582562, size.height * 0.1163671);
    path_65.lineTo(size.width * 0.2566283, size.height * 0.1155672);
    path_65.lineTo(size.width * 0.2073867, size.height * 0.09119514);
    path_65.lineTo(size.width * 0.2074904, size.height * 0.09114181);
    path_65.cubicTo(
        size.width * 0.2017357,
        size.height * 0.08827085,
        size.width * 0.1954730,
        size.height * 0.08574654,
        size.width * 0.1887643,
        size.height * 0.08356888);
    path_65.cubicTo(
        size.width * 0.1861721,
        size.height * 0.08267115,
        size.width * 0.1835592,
        size.height * 0.08183564,
        size.width * 0.1809048,
        size.height * 0.08105345);
    path_65.cubicTo(
        size.width * 0.1748183,
        size.height * 0.07932910,
        size.width * 0.1686177,
        size.height * 0.07793362,
        size.width * 0.1623446,
        size.height * 0.07680479);

    Paint paint_65_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.002073764;
    paint_65_stroke.color = Color(0xff0e2947).withOpacity(1.0);
    paint_65_stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_65, paint_65_stroke);

    Path path_66 = Path();
    path_66.moveTo(size.width * 0.8189708, size.height * 0.2952020);
    path_66.cubicTo(
        size.width * 0.8163890,
        size.height * 0.2943132,
        size.width * 0.8137760,
        size.height * 0.2934688,
        size.width * 0.8111320,
        size.height * 0.2926955);
    path_66.cubicTo(
        size.width * 0.8050455,
        size.height * 0.2909711,
        size.width * 0.7988449,
        size.height * 0.2895757,
        size.width * 0.7925718,
        size.height * 0.2884379);
    path_66.cubicTo(
        size.width * 0.7800255,
        size.height * 0.2862070,
        size.width * 0.7671889,
        size.height * 0.2852203,
        size.width * 0.7543627,
        size.height * 0.2852470);
    path_66.cubicTo(
        size.width * 0.7415365,
        size.height * 0.2853181,
        size.width * 0.7286999,
        size.height * 0.2864114,
        size.width * 0.7161743,
        size.height * 0.2887668);
    path_66.cubicTo(
        size.width * 0.7099427,
        size.height * 0.2899401,
        size.width * 0.7037317,
        size.height * 0.2913978,
        size.width * 0.6976763,
        size.height * 0.2931844);
    path_66.cubicTo(
        size.width * 0.6927304,
        size.height * 0.2946865,
        size.width * 0.6878674,
        size.height * 0.2963842,
        size.width * 0.6831600,
        size.height * 0.2983574);

    Paint paint_66_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.002073764;
    paint_66_stroke.color = Color(0xff0e2947).withOpacity(1.0);
    paint_66_stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_66, paint_66_stroke);

    Path path_67 = Path();
    path_67.moveTo(size.width * 0.6787014, size.height * 0.3055393);
    path_67.cubicTo(
        size.width * 0.6873490,
        size.height * 0.3012550,
        size.width * 0.6971061,
        size.height * 0.2978686,
        size.width * 0.7074956,
        size.height * 0.2953265);
    path_67.cubicTo(
        size.width * 0.7103056,
        size.height * 0.2947398,
        size.width * 0.7131259,
        size.height * 0.2941976,
        size.width * 0.7159669,
        size.height * 0.2937354);
    path_67.cubicTo(
        size.width * 0.7284510,
        size.height * 0.2916822,
        size.width * 0.7411632,
        size.height * 0.2906423,
        size.width * 0.7538650,
        size.height * 0.2905978);
    path_67.cubicTo(
        size.width * 0.7665771,
        size.height * 0.2905267,
        size.width * 0.7792893,
        size.height * 0.2914689,
        size.width * 0.7918252,
        size.height * 0.2934244);
    path_67.cubicTo(
        size.width * 0.7980673,
        size.height * 0.2943932,
        size.width * 0.8042678,
        size.height * 0.2956553,
        size.width * 0.8103750,
        size.height * 0.2972286);
    path_67.cubicTo(
        size.width * 0.8109246,
        size.height * 0.2973619,
        size.width * 0.8114638,
        size.height * 0.2975219,
        size.width * 0.8120133,
        size.height * 0.2976641);

    Paint paint_67_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.002073764;
    paint_67_stroke.color = Color(0xff0e2947).withOpacity(1.0);
    paint_67_stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_67, paint_67_stroke);

    Path path_68 = Path();
    path_68.moveTo(size.width * 0.5363583, size.height * 0.2085311);
    path_68.lineTo(size.width * 0.5267775, size.height * 0.2132775);
    path_68.lineTo(size.width * 0.5269537, size.height * 0.2133664);
    path_68.cubicTo(
        size.width * 0.5117531,
        size.height * 0.2207616,
        size.width * 0.4932655,
        size.height * 0.2254902,
        size.width * 0.4738447,
        size.height * 0.2275790);
    path_68.cubicTo(
        size.width * 0.4715843,
        size.height * 0.2278101,
        size.width * 0.4693238,
        size.height * 0.2280145,
        size.width * 0.4670634,
        size.height * 0.2281656);
    path_68.cubicTo(
        size.width * 0.4616509,
        size.height * 0.2285567,
        size.width * 0.4562177,
        size.height * 0.2287522,
        size.width * 0.4507844,
        size.height * 0.2287434);
    path_68.cubicTo(
        size.width * 0.4453511,
        size.height * 0.2287611,
        size.width * 0.4399282,
        size.height * 0.2285656,
        size.width * 0.4345261,
        size.height * 0.2281923);
    path_68.cubicTo(
        size.width * 0.4323901,
        size.height * 0.2280501,
        size.width * 0.4302438,
        size.height * 0.2278634,
        size.width * 0.4281078,
        size.height * 0.2276590);

    Paint paint_68_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.002073764;
    paint_68_stroke.color = Color(0xff0e2947).withOpacity(1.0);
    paint_68_stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_68, paint_68_stroke);

    Path path_69 = Path();
    path_69.moveTo(size.width * 0.1016352, size.height * 0.1088120);
    path_69.cubicTo(
        size.width * 0.1032734,
        size.height * 0.1085098,
        size.width * 0.1049117,
        size.height * 0.1082342,
        size.width * 0.1065707,
        size.height * 0.1080031);
    path_69.cubicTo(
        size.width * 0.1096192,
        size.height * 0.1075943,
        size.width * 0.1126780,
        size.height * 0.1072565,
        size.width * 0.1157575,
        size.height * 0.1070698);
    path_69.cubicTo(
        size.width * 0.1188370,
        size.height * 0.1068654,
        size.width * 0.1219373,
        size.height * 0.1067588,
        size.width * 0.1250065,
        size.height * 0.1067765);
    path_69.cubicTo(
        size.width * 0.1281068,
        size.height * 0.1067588,
        size.width * 0.1311863,
        size.height * 0.1068743,
        size.width * 0.1342555,
        size.height * 0.1070787);
    path_69.cubicTo(
        size.width * 0.1373350,
        size.height * 0.1072654,
        size.width * 0.1404042,
        size.height * 0.1076032,
        size.width * 0.1434526,
        size.height * 0.1080120);
    path_69.cubicTo(
        size.width * 0.1455886,
        size.height * 0.1083053,
        size.width * 0.1477246,
        size.height * 0.1086875,
        size.width * 0.1498398,
        size.height * 0.1090964);
    path_69.cubicTo(
        size.width * 0.1542258,
        size.height * 0.1102786,
        size.width * 0.1583630,
        size.height * 0.1117896,
        size.width * 0.1620854,
        size.height * 0.1136473);
    path_69.lineTo(size.width * 0.1621580, size.height * 0.1136117);
    path_69.lineTo(size.width * 0.2655558, size.height * 0.1647823);
    path_69.lineTo(size.width * 0.2653899, size.height * 0.1648623);
    path_69.lineTo(size.width * 0.3682486, size.height * 0.2157663);
    path_69.lineTo(size.width * 0.3682175, size.height * 0.2157840);
    path_69.cubicTo(
        size.width * 0.3766473,
        size.height * 0.2199883,
        size.width * 0.3861556,
        size.height * 0.2234636,
        size.width * 0.3965762,
        size.height * 0.2261746);
    path_69.cubicTo(
        size.width * 0.4034507,
        size.height * 0.2282723,
        size.width * 0.4105430,
        size.height * 0.2298988,
        size.width * 0.4177286,
        size.height * 0.2310810);
    path_69.cubicTo(
        size.width * 0.4284914,
        size.height * 0.2328587,
        size.width * 0.4394617,
        size.height * 0.2336853,
        size.width * 0.4504111,
        size.height * 0.2336942);
    path_69.cubicTo(
        size.width * 0.4558962,
        size.height * 0.2336764,
        size.width * 0.4613710,
        size.height * 0.2334631,
        size.width * 0.4668353,
        size.height * 0.2330365);
    path_69.cubicTo(
        size.width * 0.4722893,
        size.height * 0.2325832,
        size.width * 0.4777226,
        size.height * 0.2319521,
        size.width * 0.4830936,
        size.height * 0.2310366);
    path_69.cubicTo(
        size.width * 0.4888172,
        size.height * 0.2300944,
        size.width * 0.4944786,
        size.height * 0.2288678,
        size.width * 0.5000156,
        size.height * 0.2273479);
    path_69.cubicTo(
        size.width * 0.5123337,
        size.height * 0.2245036,
        size.width * 0.5234802,
        size.height * 0.2206282,
        size.width * 0.5332269,
        size.height * 0.2158018);
    path_69.lineTo(size.width * 0.5330195, size.height * 0.2156952);

    Paint paint_69_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.002073764;
    paint_69_stroke.color = Color(0xff0e2947).withOpacity(1.0);
    paint_69_stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_69, paint_69_stroke);

    Path path_70 = Path();
    path_70.moveTo(size.width * 0.05322315, size.height * 0.1743107);
    path_70.lineTo(size.width * 0.04678411, size.height * 0.1711198);
    path_70.lineTo(size.width * 0.04725071, size.height * 0.1708798);
    path_70.cubicTo(
        size.width * 0.03046359,
        size.height * 0.1622936,
        size.width * 0.02051989,
        size.height * 0.1515652,
        size.width * 0.01736777,
        size.height * 0.1404281);
    path_70.cubicTo(
        size.width * 0.01730556,
        size.height * 0.1401881,
        size.width * 0.01723298,
        size.height * 0.1399481,
        size.width * 0.01718113,
        size.height * 0.1396992);
    path_70.cubicTo(
        size.width * 0.01715003,
        size.height * 0.1395748,
        size.width * 0.01712929,
        size.height * 0.1394503,
        size.width * 0.01709818,
        size.height * 0.1393259);
    path_70.cubicTo(
        size.width * 0.01662122,
        size.height * 0.1372016,
        size.width * 0.01637237,
        size.height * 0.1350417,
        size.width * 0.01639310,
        size.height * 0.1328729);
    path_70.cubicTo(
        size.width * 0.01641384,
        size.height * 0.1292731,
        size.width * 0.01716040,
        size.height * 0.1256822,
        size.width * 0.01852908,
        size.height * 0.1222690);
    path_70.cubicTo(
        size.width * 0.01986666,
        size.height * 0.1188559,
        size.width * 0.02185747,
        size.height * 0.1156383,
        size.width * 0.02421119,
        size.height * 0.1126340);
    path_70.cubicTo(
        size.width * 0.02657528,
        size.height * 0.1096475,
        size.width * 0.02933339,
        size.height * 0.1068743,
        size.width * 0.03236108,
        size.height * 0.1043322);
    path_70.cubicTo(
        size.width * 0.03534730,
        size.height * 0.1017635,
        size.width * 0.03865496,
        size.height * 0.09946136,
        size.width * 0.04205593,
        size.height * 0.09728370);
    path_70.cubicTo(
        size.width * 0.04198335,
        size.height * 0.09732814,
        size.width * 0.04190040,
        size.height * 0.09737258,
        size.width * 0.04182782,
        size.height * 0.09740814);

    Paint paint_70_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.002073764;
    paint_70_stroke.color = Color(0xff0e2947).withOpacity(1.0);
    paint_70_stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_70, paint_70_stroke);

    Path path_71 = Path();
    path_71.moveTo(size.width * 0.5546178, size.height * 0.3885126);
    path_71.cubicTo(
        size.width * 0.5524092,
        size.height * 0.3887348,
        size.width * 0.5502006,
        size.height * 0.3889304,
        size.width * 0.5479921,
        size.height * 0.3890815);
    path_71.cubicTo(
        size.width * 0.5425796,
        size.height * 0.3894726,
        size.width * 0.5371463,
        size.height * 0.3896681,
        size.width * 0.5317130,
        size.height * 0.3896592);
    path_71.cubicTo(
        size.width * 0.5262798,
        size.height * 0.3896770,
        size.width * 0.5208569,
        size.height * 0.3894814,
        size.width * 0.5154547,
        size.height * 0.3891081);
    path_71.cubicTo(
        size.width * 0.5133706,
        size.height * 0.3889748,
        size.width * 0.5112865,
        size.height * 0.3887882,
        size.width * 0.5092127,
        size.height * 0.3885926);
    path_71.cubicTo(
        size.width * 0.4892112,
        size.height * 0.3865216,
        size.width * 0.4701845,
        size.height * 0.3816508,
        size.width * 0.4547246,
        size.height * 0.3739445);
    path_71.lineTo(size.width * 0.4546312, size.height * 0.3739889);
    path_71.lineTo(size.width * 0.4456104, size.height * 0.3695270);
    path_71.cubicTo(
        size.width * 0.4386529,
        size.height * 0.3657405,
        size.width * 0.4316228,
        size.height * 0.3620429,
        size.width * 0.4245513,
        size.height * 0.3584253);
    path_71.cubicTo(
        size.width * 0.4210259,
        size.height * 0.3565854,
        size.width * 0.4174486,
        size.height * 0.3547989,
        size.width * 0.4139025,
        size.height * 0.3529945);
    path_71.lineTo(size.width * 0.4032019, size.height * 0.3476526);
    path_71.lineTo(size.width * 0.3924391, size.height * 0.3423729);
    path_71.cubicTo(
        size.width * 0.3888411,
        size.height * 0.3406396,
        size.width * 0.3852638,
        size.height * 0.3388797,
        size.width * 0.3816347,
        size.height * 0.3371731);
    path_71.cubicTo(
        size.width * 0.3744388,
        size.height * 0.3337244,
        size.width * 0.3671806,
        size.height * 0.3303646,
        size.width * 0.3598706,
        size.height * 0.3270848);
    path_71.lineTo(size.width * 0.3516792, size.height * 0.3230317);
    path_71.lineTo(size.width * 0.3514511, size.height * 0.3231472);
    path_71.lineTo(size.width * 0.3422021, size.height * 0.3185697);
    path_71.cubicTo(
        size.width * 0.3352343,
        size.height * 0.3147743,
        size.width * 0.3282042,
        size.height * 0.3110767,
        size.width * 0.3211120,
        size.height * 0.3074503);

    Paint paint_71_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.002073764;
    paint_71_stroke.color = Color(0xff0e2947).withOpacity(1.0);
    paint_71_stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_71, paint_71_stroke);

    Path path_72 = Path();
    path_72.moveTo(size.width * 0.03158342, size.height * 0.09762146);
    path_72.cubicTo(
        size.width * 0.02603610,
        size.height * 0.1011146,
        size.width * 0.02096575,
        size.height * 0.1052744,
        size.width * 0.01690117,
        size.height * 0.1102075);
    path_72.cubicTo(
        size.width * 0.01426749,
        size.height * 0.1133717,
        size.width * 0.01210041,
        size.height * 0.1168827,
        size.width * 0.01054509,
        size.height * 0.1206069);
    path_72.cubicTo(
        size.width * 0.009020872,
        size.height * 0.1243489,
        size.width * 0.008180998,
        size.height * 0.1283309,
        size.width * 0.008139523,
        size.height * 0.1323307);
    path_72.cubicTo(
        size.width * 0.008108416,
        size.height * 0.1363305,
        size.width * 0.008875709,
        size.height * 0.1403125,
        size.width * 0.01034808,
        size.height * 0.1440723);
    path_72.cubicTo(
        size.width * 0.01184119,
        size.height * 0.1478232,
        size.width * 0.01394606,
        size.height * 0.1513519,
        size.width * 0.01654863,
        size.height * 0.1545606);
    path_72.cubicTo(
        size.width * 0.01955559,
        size.height * 0.1582938,
        size.width * 0.02315357,
        size.height * 0.1615736,
        size.width * 0.02708335,
        size.height * 0.1644712);
    path_72.cubicTo(
        size.width * 0.03086797,
        size.height * 0.1674044,
        size.width * 0.03518140,
        size.height * 0.1701598,
        size.width * 0.04001327,
        size.height * 0.1727375);
    path_72.lineTo(size.width * 0.03948446, size.height * 0.1729952);
    path_72.lineTo(size.width * 0.1413477, size.height * 0.2234103);
    path_72.lineTo(size.width * 0.1408189, size.height * 0.2236681);
    path_72.lineTo(size.width * 0.2433977, size.height * 0.2744387);
    path_72.lineTo(size.width * 0.2426822, size.height * 0.2747942);
    path_72.lineTo(size.width * 0.3462149, size.height * 0.3260359);
    path_72.lineTo(size.width * 0.3464430, size.height * 0.3259204);
    path_72.lineTo(size.width * 0.4496646, size.height * 0.3770021);
    path_72.lineTo(size.width * 0.4497268, size.height * 0.3769666);
    path_72.cubicTo(
        size.width * 0.4580115,
        size.height * 0.3810375,
        size.width * 0.4673123,
        size.height * 0.3844239,
        size.width * 0.4774945,
        size.height * 0.3870727);
    path_72.cubicTo(
        size.width * 0.4843690,
        size.height * 0.3891704,
        size.width * 0.4914613,
        size.height * 0.3907969,
        size.width * 0.4986365,
        size.height * 0.3919702);
    path_72.cubicTo(
        size.width * 0.5093993,
        size.height * 0.3937479,
        size.width * 0.5203695,
        size.height * 0.3945745,
        size.width * 0.5313190,
        size.height * 0.3945834);
    path_72.cubicTo(
        size.width * 0.5368041,
        size.height * 0.3945656,
        size.width * 0.5422789,
        size.height * 0.3943523,
        size.width * 0.5477432,
        size.height * 0.3939257);
    path_72.cubicTo(
        size.width * 0.5531972,
        size.height * 0.3934723,
        size.width * 0.5586305,
        size.height * 0.3928324,
        size.width * 0.5640015,
        size.height * 0.3919258);
    path_72.cubicTo(
        size.width * 0.5697355,
        size.height * 0.3909836,
        size.width * 0.5754072,
        size.height * 0.3897481,
        size.width * 0.5809649,
        size.height * 0.3882282);
    path_72.cubicTo(
        size.width * 0.5932623,
        size.height * 0.3853839,
        size.width * 0.6044088,
        size.height * 0.3815085,
        size.width * 0.6141451,
        size.height * 0.3766910);

    Paint paint_72_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.002073764;
    paint_72_stroke.color = Color(0xff0e2947).withOpacity(1.0);
    paint_72_stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_72, paint_72_stroke);

    Path path_73 = Path();
    path_73.moveTo(size.width * 0.6455730, size.height * 0.1157894);
    path_73.lineTo(size.width * 0.6442043, size.height * 0.1164560);
    path_73.lineTo(size.width * 0.6428979, size.height * 0.1171138);

    Paint paint_73_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.002073764;
    paint_73_stroke.color = Color(0xff0e2947).withOpacity(1.0);
    paint_73_stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_73, paint_73_stroke);

    Path path_74 = Path();
    path_74.moveTo(size.width * 0.5972543, size.height * 0.1452011);
    path_74.lineTo(size.width * 0.6059123, size.height * 0.1409169);
    path_74.cubicTo(
        size.width * 0.6123202,
        size.height * 0.1379926,
        size.width * 0.6186971,
        size.height * 0.1350239,
        size.width * 0.6250324,
        size.height * 0.1319930);
    path_74.cubicTo(
        size.width * 0.6289207,
        size.height * 0.1301442,
        size.width * 0.6327986,
        size.height * 0.1282509,
        size.width * 0.6366662,
        size.height * 0.1263666);
    path_74.lineTo(size.width * 0.6482689, size.height * 0.1206780);
    path_74.lineTo(size.width * 0.6598094, size.height * 0.1149183);
    path_74.cubicTo(
        size.width * 0.6636459,
        size.height * 0.1129629,
        size.width * 0.6674823,
        size.height * 0.1110430,
        size.width * 0.6713084,
        size.height * 0.1090786);
    path_74.cubicTo(
        size.width * 0.6775919,
        size.height * 0.1058699,
        size.width * 0.6838443,
        size.height * 0.1025901,
        size.width * 0.6900449,
        size.height * 0.09926582);
    path_74.lineTo(size.width * 0.7007559, size.height * 0.09396832);

    Paint paint_74_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.002073764;
    paint_74_stroke.color = Color(0xff0e2947).withOpacity(1.0);
    paint_74_stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_74, paint_74_stroke);

    Paint paint_75_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.002073764;
    paint_75_stroke.color = Color(0xff0e2947).withOpacity(1.0);
    paint_75_stroke.strokeJoin = StrokeJoin.round;
    canvas.drawLine(
        Offset(size.width * 0.7403337, size.height * 0.1136739),
        Offset(size.width * 0.6368010, size.height * 0.1649156),
        paint_75_stroke);

    Path path_76 = Path();
    path_76.moveTo(size.width * 0.6729571, size.height * 0.3027572);
    path_76.lineTo(size.width * 0.6232075, size.height * 0.3273781);
    path_76.lineTo(size.width * 0.6219114, size.height * 0.3280181);
    path_76.lineTo(size.width * 0.6207086, size.height * 0.3286225);
    path_76.lineTo(size.width * 0.5694244, size.height * 0.3539989);

    Paint paint_76_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.002073764;
    paint_76_stroke.color = Color(0xff0e2947).withOpacity(1.0);
    paint_76_stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_76, paint_76_stroke);

    Path path_77 = Path();
    path_77.moveTo(size.width * 0.5836193, size.height * 0.3524790);
    path_77.cubicTo(
        size.width * 0.5900273,
        size.height * 0.3495547,
        size.width * 0.5964041,
        size.height * 0.3465860,
        size.width * 0.6027394,
        size.height * 0.3435461);
    path_77.cubicTo(
        size.width * 0.6066277,
        size.height * 0.3416973,
        size.width * 0.6104953,
        size.height * 0.3398041,
        size.width * 0.6143733,
        size.height * 0.3379198);
    path_77.lineTo(size.width * 0.6259760, size.height * 0.3322312);
    path_77.lineTo(size.width * 0.6375268, size.height * 0.3264715);
    path_77.cubicTo(
        size.width * 0.6413633,
        size.height * 0.3245160,
        size.width * 0.6451998,
        size.height * 0.3225961,
        size.width * 0.6490258,
        size.height * 0.3206318);
    path_77.cubicTo(
        size.width * 0.6552990,
        size.height * 0.3174231,
        size.width * 0.6615410,
        size.height * 0.3141521,
        size.width * 0.6677312,
        size.height * 0.3108279);
    path_77.lineTo(size.width * 0.6784733, size.height * 0.3055126);

    Paint paint_77_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.002073764;
    paint_77_stroke.color = Color(0xff0e2947).withOpacity(1.0);
    paint_77_stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_77, paint_77_stroke);

    Path path_78 = Path();
    path_78.moveTo(size.width * 0.7669712, size.height * 0.3143743);
    path_78.cubicTo(
        size.width * 0.7661417,
        size.height * 0.3142855,
        size.width * 0.7653122,
        size.height * 0.3142055,
        size.width * 0.7644826,
        size.height * 0.3141255);
    path_78.cubicTo(
        size.width * 0.7613616,
        size.height * 0.3138677,
        size.width * 0.7582199,
        size.height * 0.3137433,
        size.width * 0.7550885,
        size.height * 0.3137344);
    path_78.cubicTo(
        size.width * 0.7519571,
        size.height * 0.3137522,
        size.width * 0.7488257,
        size.height * 0.3138677,
        size.width * 0.7457047,
        size.height * 0.3141166);
    path_78.cubicTo(
        size.width * 0.7433303,
        size.height * 0.3143210,
        size.width * 0.7409662,
        size.height * 0.3145966,
        size.width * 0.7386228,
        size.height * 0.3149521);
    path_78.cubicTo(
        size.width * 0.7290731,
        size.height * 0.3162942,
        size.width * 0.7202804,
        size.height * 0.3188186,
        size.width * 0.7126904,
        size.height * 0.3225517);
    path_78.lineTo(size.width * 0.7125038, size.height * 0.3224628);
    path_78.lineTo(size.width * 0.7042605, size.height * 0.3265426);
    path_78.cubicTo(
        size.width * 0.6969713,
        size.height * 0.3298135,
        size.width * 0.6897235,
        size.height * 0.3331733,
        size.width * 0.6825482,
        size.height * 0.3366132);
    path_78.cubicTo(
        size.width * 0.6789192,
        size.height * 0.3383286,
        size.width * 0.6753315,
        size.height * 0.3400885,
        size.width * 0.6717439,
        size.height * 0.3418129);
    path_78.lineTo(size.width * 0.6609811, size.height * 0.3470926);
    path_78.lineTo(size.width * 0.6502805, size.height * 0.3524345);
    path_78.cubicTo(
        size.width * 0.6467343,
        size.height * 0.3542389,
        size.width * 0.6431571,
        size.height * 0.3560255,
        size.width * 0.6396317,
        size.height * 0.3578654);
    path_78.cubicTo(
        size.width * 0.6325602,
        size.height * 0.3614829,
        size.width * 0.6255508,
        size.height * 0.3651627,
        size.width * 0.6186037,
        size.height * 0.3689492);

    Paint paint_78_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.002073764;
    paint_78_stroke.color = Color(0xff0e2947).withOpacity(1.0);
    paint_78_stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_78, paint_78_stroke);

    Path path_79 = Path();
    path_79.moveTo(size.width * 0.6145081, size.height * 0.3764688);
    path_79.lineTo(size.width * 0.7179059, size.height * 0.3252982);
    path_79.lineTo(size.width * 0.7180926, size.height * 0.3253871);
    path_79.cubicTo(
        size.width * 0.7222816,
        size.height * 0.3233161,
        size.width * 0.7269683,
        size.height * 0.3216628,
        size.width * 0.7319349,
        size.height * 0.3204185);
    path_79.cubicTo(
        size.width * 0.7335525,
        size.height * 0.3201163,
        size.width * 0.7351804,
        size.height * 0.3198496,
        size.width * 0.7368186,
        size.height * 0.3196185);
    path_79.cubicTo(
        size.width * 0.7398671,
        size.height * 0.3192096,
        size.width * 0.7429259,
        size.height * 0.3188719,
        size.width * 0.7460054,
        size.height * 0.3186941);
    path_79.cubicTo(
        size.width * 0.7490850,
        size.height * 0.3184897,
        size.width * 0.7521852,
        size.height * 0.3183830,
        size.width * 0.7552544,
        size.height * 0.3184008);
    path_79.cubicTo(
        size.width * 0.7583547,
        size.height * 0.3183830,
        size.width * 0.7614342,
        size.height * 0.3184986,
        size.width * 0.7645034,
        size.height * 0.3187030);
    path_79.cubicTo(
        size.width * 0.7675933,
        size.height * 0.3188897,
        size.width * 0.7706521,
        size.height * 0.3192274,
        size.width * 0.7737005,
        size.height * 0.3196363);
    path_79.cubicTo(
        size.width * 0.7758469,
        size.height * 0.3199385,
        size.width * 0.7779725,
        size.height * 0.3203118,
        size.width * 0.7800981,
        size.height * 0.3207296);
    path_79.cubicTo(
        size.width * 0.7844841,
        size.height * 0.3219117,
        size.width * 0.7886109,
        size.height * 0.3234228,
        size.width * 0.7923437,
        size.height * 0.3252804);

    Paint paint_79_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.002073764;
    paint_79_stroke.color = Color(0xff0e2947).withOpacity(1.0);
    paint_79_stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_79, paint_79_stroke);

    Path path_80 = Path();
    path_80.moveTo(size.width * 0.1189407, size.height * 0.8751178);
    path_80.lineTo(size.width * 0.2221208, size.height * 0.9261817);
    path_80.lineTo(size.width * 0.2218824, size.height * 0.9262973);
    path_80.cubicTo(
        size.width * 0.2303122,
        size.height * 0.9304926,
        size.width * 0.2398100,
        size.height * 0.9339680,
        size.width * 0.2502203,
        size.height * 0.9366789);
    path_80.cubicTo(
        size.width * 0.2571052,
        size.height * 0.9387855,
        size.width * 0.2641975,
        size.height * 0.9404121,
        size.width * 0.2713831,
        size.height * 0.9415853);
    path_80.cubicTo(
        size.width * 0.2821459,
        size.height * 0.9433630,
        size.width * 0.2931058,
        size.height * 0.9441896,
        size.width * 0.3040656,
        size.height * 0.9441985);
    path_80.cubicTo(
        size.width * 0.3095507,
        size.height * 0.9441808,
        size.width * 0.3150255,
        size.height * 0.9439674,
        size.width * 0.3204898,
        size.height * 0.9435319);
    path_80.cubicTo(
        size.width * 0.3259438,
        size.height * 0.9430786,
        size.width * 0.3313875,
        size.height * 0.9424475,
        size.width * 0.3367481,
        size.height * 0.9415320);
    path_80.cubicTo(
        size.width * 0.3424925,
        size.height * 0.9405809,
        size.width * 0.3481746,
        size.height * 0.9393455,
        size.width * 0.3537323,
        size.height * 0.9378255);
    path_80.cubicTo(
        size.width * 0.3658430,
        size.height * 0.9350257,
        size.width * 0.3768132,
        size.height * 0.9312214,
        size.width * 0.3864459,
        size.height * 0.9265017);
    path_80.lineTo(size.width * 0.3864666, size.height * 0.9265017);
    path_80.cubicTo(
        size.width * 0.3906349,
        size.height * 0.9244574,
        size.width * 0.3952905,
        size.height * 0.9228130,
        size.width * 0.4002260,
        size.height * 0.9215686);
    path_80.cubicTo(
        size.width * 0.4018747,
        size.height * 0.9212664,
        size.width * 0.4035337,
        size.height * 0.9209909,
        size.width * 0.4051927,
        size.height * 0.9207509);
    path_80.cubicTo(
        size.width * 0.4082411,
        size.height * 0.9203420,
        size.width * 0.4112999,
        size.height * 0.9200043,
        size.width * 0.4143795,
        size.height * 0.9198176);
    path_80.cubicTo(
        size.width * 0.4174590,
        size.height * 0.9196043,
        size.width * 0.4205593,
        size.height * 0.9194976,
        size.width * 0.4236285,
        size.height * 0.9195243);
    path_80.cubicTo(
        size.width * 0.4267287,
        size.height * 0.9195065,
        size.width * 0.4298083,
        size.height * 0.9196132,
        size.width * 0.4328775,
        size.height * 0.9198265);
    path_80.cubicTo(
        size.width * 0.4359570,
        size.height * 0.9200132,
        size.width * 0.4390262,
        size.height * 0.9203509,
        size.width * 0.4420746,
        size.height * 0.9207687);
    path_80.cubicTo(
        size.width * 0.4442106,
        size.height * 0.9210620,
        size.width * 0.4463258,
        size.height * 0.9214353,
        size.width * 0.4484410,
        size.height * 0.9218531);
    path_80.cubicTo(
        size.width * 0.4528374,
        size.height * 0.9230352,
        size.width * 0.4569746,
        size.height * 0.9245462,
        size.width * 0.4607074,
        size.height * 0.9264039);

    Paint paint_80_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.002073764;
    paint_80_stroke.color = Color(0xff0e2947).withOpacity(1.0);
    paint_80_stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_80, paint_80_stroke);

    Path path_81 = Path();
    path_81.moveTo(size.width * 0.2278030, size.height * 0.9236930);
    path_81.lineTo(size.width * 0.2280000, size.height * 0.9235952);
    path_81.lineTo(size.width * 0.2184192, size.height * 0.9188577);
    path_81.cubicTo(
        size.width * 0.2114617,
        size.height * 0.9150712,
        size.width * 0.2044316,
        size.height * 0.9113736,
        size.width * 0.1973497,
        size.height * 0.9077560);
    path_81.cubicTo(
        size.width * 0.1938140,
        size.height * 0.9059161,
        size.width * 0.1902575,
        size.height * 0.9041296,
        size.width * 0.1867010,
        size.height * 0.9023252);
    path_81.lineTo(size.width * 0.1760003, size.height * 0.8969833);
    path_81.lineTo(size.width * 0.1652375, size.height * 0.8917124);
    path_81.cubicTo(
        size.width * 0.1616499,
        size.height * 0.8899792,
        size.width * 0.1580623,
        size.height * 0.8882193,
        size.width * 0.1544436,
        size.height * 0.8865038);
    path_81.cubicTo(
        size.width * 0.1472372,
        size.height * 0.8830462,
        size.width * 0.1399583,
        size.height * 0.8796775,
        size.width * 0.1326379,
        size.height * 0.8763977);
    path_81.cubicTo(
        size.width * 0.1326379,
        size.height * 0.8763977,
        size.width * 0.1326379,
        size.height * 0.8763977,
        size.width * 0.1326483,
        size.height * 0.8763977);

    Paint paint_81_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.002073764;
    paint_81_stroke.color = Color(0xff0e2947).withOpacity(1.0);
    paint_81_stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_81, paint_81_stroke);

    Path path_82 = Path();
    path_82.moveTo(size.width * 0.4234626, size.height * 0.9148757);
    path_82.cubicTo(
        size.width * 0.4203312,
        size.height * 0.9148934,
        size.width * 0.4171998,
        size.height * 0.9150001,
        size.width * 0.4140788,
        size.height * 0.9152579);
    path_82.cubicTo(
        size.width * 0.4117043,
        size.height * 0.9154712,
        size.width * 0.4093402,
        size.height * 0.9157378,
        size.width * 0.4069969,
        size.height * 0.9160934);
    path_82.cubicTo(
        size.width * 0.3975716,
        size.height * 0.9174177,
        size.width * 0.3888826,
        size.height * 0.9198976,
        size.width * 0.3813548,
        size.height * 0.9235507);
    path_82.lineTo(size.width * 0.3813237, size.height * 0.9235330);
    path_82.cubicTo(
        size.width * 0.3659052,
        size.height * 0.9311592,
        size.width * 0.3470133,
        size.height * 0.9360123,
        size.width * 0.3271881,
        size.height * 0.9381100);
    path_82.cubicTo(
        size.width * 0.3250314,
        size.height * 0.9383233,
        size.width * 0.3228850,
        size.height * 0.9385188,
        size.width * 0.3207283,
        size.height * 0.9386610);
    path_82.cubicTo(
        size.width * 0.3153158,
        size.height * 0.9390521,
        size.width * 0.3098825,
        size.height * 0.9392477,
        size.width * 0.3044493,
        size.height * 0.9392388);
    path_82.cubicTo(
        size.width * 0.2990160,
        size.height * 0.9392477,
        size.width * 0.2935931,
        size.height * 0.9390610,
        size.width * 0.2881910,
        size.height * 0.9386877);
    path_82.cubicTo(
        size.width * 0.2860965,
        size.height * 0.9385455,
        size.width * 0.2840019,
        size.height * 0.9383677,
        size.width * 0.2819074,
        size.height * 0.9381633);

    Paint paint_82_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.002073764;
    paint_82_stroke.color = Color(0xff0e2947).withOpacity(1.0);
    paint_82_stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_82, paint_82_stroke);

    Path path_83 = Path();
    path_83.moveTo(size.width * 0.08179961, size.height * 0.1110074);
    path_83.cubicTo(
        size.width * 0.07965327,
        size.height * 0.1120829,
        size.width * 0.07770393,
        size.height * 0.1132206,
        size.width * 0.07594123,
        size.height * 0.1143939);
    path_83.cubicTo(
        size.width * 0.07613824,
        size.height * 0.1142161,
        size.width * 0.07634561,
        size.height * 0.1140295,
        size.width * 0.07654262,
        size.height * 0.1138517);
    path_83.cubicTo(
        size.width * 0.07319349,
        size.height * 0.1158072,
        size.width * 0.07013469,
        size.height * 0.1183848,
        size.width * 0.06785355,
        size.height * 0.1216024);
    path_83.cubicTo(
        size.width * 0.06740769,
        size.height * 0.1222246,
        size.width * 0.06700331,
        size.height * 0.1228823,
        size.width * 0.06661966,
        size.height * 0.1235490);
    path_83.cubicTo(
        size.width * 0.06652634,
        size.height * 0.1237001,
        size.width * 0.06644339,
        size.height * 0.1238601,
        size.width * 0.06635007,
        size.height * 0.1240201);
    path_83.cubicTo(
        size.width * 0.06632933,
        size.height * 0.1240556,
        size.width * 0.06630860,
        size.height * 0.1240912,
        size.width * 0.06628786,
        size.height * 0.1241267);
    path_83.cubicTo(
        size.width * 0.06479475,
        size.height * 0.1267666,
        size.width * 0.06401709,
        size.height * 0.1295309,
        size.width * 0.06399635,
        size.height * 0.1323663);
    path_83.cubicTo(
        size.width * 0.06391340,
        size.height * 0.1400548,
        size.width * 0.06929482,
        size.height * 0.1474055,
        size.width * 0.07957032,
        size.height * 0.1530407);
    path_83.lineTo(size.width * 0.07904151, size.height * 0.1533074);
    path_83.lineTo(size.width * 0.08978360, size.height * 0.1586227);
    path_83.cubicTo(
        size.width * 0.09598416,
        size.height * 0.1619380,
        size.width * 0.1022158,
        size.height * 0.1652179,
        size.width * 0.1084890,
        size.height * 0.1684177);
    path_83.cubicTo(
        size.width * 0.1123150,
        size.height * 0.1703909,
        size.width * 0.1161515,
        size.height * 0.1723019,
        size.width * 0.1199880,
        size.height * 0.1742574);
    path_83.lineTo(size.width * 0.1315285, size.height * 0.1800171);
    path_83.lineTo(size.width * 0.1431415, size.height * 0.1857057);
    path_83.cubicTo(
        size.width * 0.1470195,
        size.height * 0.1875811,
        size.width * 0.1508871,
        size.height * 0.1894832,
        size.width * 0.1547857,
        size.height * 0.1913320);
    path_83.cubicTo(
        size.width * 0.1611211,
        size.height * 0.1943719,
        size.width * 0.1674979,
        size.height * 0.1973406,
        size.width * 0.1739162,
        size.height * 0.2002649);
    path_83.lineTo(size.width * 0.1808944, size.height * 0.2037225);
    path_83.lineTo(size.width * 0.1803760, size.height * 0.2039802);
    path_83.lineTo(size.width * 0.1910870, size.height * 0.2092777);
    path_83.cubicTo(
        size.width * 0.1972979,
        size.height * 0.2126020,
        size.width * 0.2035399,
        size.height * 0.2158818,
        size.width * 0.2098338,
        size.height * 0.2190994);
    path_83.cubicTo(
        size.width * 0.2136599,
        size.height * 0.2210638,
        size.width * 0.2174963,
        size.height * 0.2229837,
        size.width * 0.2213328,
        size.height * 0.2249391);
    path_83.lineTo(size.width * 0.2328733, size.height * 0.2306988);
    path_83.lineTo(size.width * 0.2444864, size.height * 0.2363874);
    path_83.cubicTo(
        size.width * 0.2483643,
        size.height * 0.2382628,
        size.width * 0.2522319,
        size.height * 0.2401650,
        size.width * 0.2561202,
        size.height * 0.2420138);
    path_83.cubicTo(
        size.width * 0.2624555,
        size.height * 0.2450447,
        size.width * 0.2688220,
        size.height * 0.2480134,
        size.width * 0.2752299,
        size.height * 0.2509377);
    path_83.lineTo(size.width * 0.2829547, size.height * 0.2547597);
    path_83.lineTo(size.width * 0.2822496, size.height * 0.2551153);
    path_83.lineTo(size.width * 0.2929710, size.height * 0.2604217);
    path_83.cubicTo(
        size.width * 0.2991715,
        size.height * 0.2637459,
        size.width * 0.3054136,
        size.height * 0.2670258,
        size.width * 0.3116971,
        size.height * 0.2702345);
    path_83.cubicTo(
        size.width * 0.3155232,
        size.height * 0.2721988,
        size.width * 0.3193596,
        size.height * 0.2741187,
        size.width * 0.3231961,
        size.height * 0.2760742);
    path_83.lineTo(size.width * 0.3347366, size.height * 0.2818339);
    path_83.lineTo(size.width * 0.3463497, size.height * 0.2875224);
    path_83.cubicTo(
        size.width * 0.3502276,
        size.height * 0.2893979,
        size.width * 0.3540952,
        size.height * 0.2912911,
        size.width * 0.3579835,
        size.height * 0.2931399);
    path_83.cubicTo(
        size.width * 0.3642981,
        size.height * 0.2961709,
        size.width * 0.3706645,
        size.height * 0.2991307,
        size.width * 0.3770517,
        size.height * 0.3020461);
    path_83.lineTo(size.width * 0.3857615, size.height * 0.3063570);
    path_83.lineTo(size.width * 0.3860000, size.height * 0.3062414);
    path_83.lineTo(size.width * 0.3963792, size.height * 0.3113789);
    path_83.cubicTo(
        size.width * 0.4025901,
        size.height * 0.3147032,
        size.width * 0.4088425,
        size.height * 0.3179919,
        size.width * 0.4151364,
        size.height * 0.3212006);
    path_83.cubicTo(
        size.width * 0.4189625,
        size.height * 0.3231739,
        size.width * 0.4227990,
        size.height * 0.3250938,
        size.width * 0.4266251,
        size.height * 0.3270403);
    path_83.lineTo(size.width * 0.4381759, size.height * 0.3328000);
    path_83.lineTo(size.width * 0.4497786, size.height * 0.3384886);
    path_83.cubicTo(
        size.width * 0.4536566,
        size.height * 0.3403641,
        size.width * 0.4575241,
        size.height * 0.3422573,
        size.width * 0.4614228,
        size.height * 0.3441061);
    path_83.cubicTo(
        size.width * 0.4677685,
        size.height * 0.3471459,
        size.width * 0.4741557,
        size.height * 0.3501147,
        size.width * 0.4805636,
        size.height * 0.3530478);
    path_83.lineTo(size.width * 0.4892009, size.height * 0.3573232);
    path_83.lineTo(size.width * 0.4895327, size.height * 0.3571632);
    path_83.cubicTo(
        size.width * 0.4942505,
        size.height * 0.3594653,
        size.width * 0.4996215,
        size.height * 0.3613230,
        size.width * 0.5054177,
        size.height * 0.3626918);
    path_83.cubicTo(
        size.width * 0.5019856,
        size.height * 0.3619896,
        size.width * 0.4985847,
        size.height * 0.3611541,
        size.width * 0.4952459,
        size.height * 0.3601141);
    path_83.cubicTo(
        size.width * 0.5009176,
        size.height * 0.3625584,
        size.width * 0.5070767,
        size.height * 0.3641939,
        size.width * 0.5133395,
        size.height * 0.3652516);
    path_83.cubicTo(
        size.width * 0.5164709,
        size.height * 0.3657938,
        size.width * 0.5196437,
        size.height * 0.3661494,
        size.width * 0.5228373,
        size.height * 0.3664071);
    path_83.cubicTo(
        size.width * 0.5260102,
        size.height * 0.3666471,
        size.width * 0.5292141,
        size.height * 0.3667449,
        size.width * 0.5324077,
        size.height * 0.3667360);
    path_83.cubicTo(
        size.width * 0.5356117,
        size.height * 0.3667004,
        size.width * 0.5388053,
        size.height * 0.3665582,
        size.width * 0.5419782,
        size.height * 0.3662649);
    path_83.cubicTo(
        size.width * 0.5451510,
        size.height * 0.3659538,
        size.width * 0.5483135,
        size.height * 0.3655361,
        size.width * 0.5514345,
        size.height * 0.3649316);
    path_83.cubicTo(
        size.width * 0.5576662,
        size.height * 0.3637406,
        size.width * 0.5637631,
        size.height * 0.3619363,
        size.width * 0.5693415,
        size.height * 0.3593408);
    path_83.cubicTo(
        size.width * 0.5680868,
        size.height * 0.3597675,
        size.width * 0.5668322,
        size.height * 0.3601586,
        size.width * 0.5655569,
        size.height * 0.3605319);

    Paint paint_83_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.002073764;
    paint_83_stroke.color = Color(0xff0e2947).withOpacity(1.0);
    paint_83_stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_83, paint_83_stroke);

    Path path_84 = Path();
    path_84.moveTo(size.width * 0.6197547, size.height * 0.7521821);
    path_84.lineTo(size.width * 0.6183964, size.height * 0.7528487);
    path_84.lineTo(size.width * 0.6169447, size.height * 0.7535687);

    Paint paint_84_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.002073764;
    paint_84_stroke.color = Color(0xff0e2947).withOpacity(1.0);
    paint_84_stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_84, paint_84_stroke);

    Path path_85 = Path();
    path_85.moveTo(size.width * 0.5714360, size.height * 0.7816028);
    path_85.lineTo(size.width * 0.5801562, size.height * 0.7772830);
    path_85.cubicTo(
        size.width * 0.5865433,
        size.height * 0.7743676,
        size.width * 0.5928994,
        size.height * 0.7714077,
        size.width * 0.5992140,
        size.height * 0.7683857);
    path_85.cubicTo(
        size.width * 0.6031024,
        size.height * 0.7665369,
        size.width * 0.6069699,
        size.height * 0.7646348,
        size.width * 0.6108582,
        size.height * 0.7627593);
    path_85.lineTo(size.width * 0.6224609, size.height * 0.7570707);
    path_85.lineTo(size.width * 0.6340118, size.height * 0.7513199);
    path_85.cubicTo(
        size.width * 0.6378483,
        size.height * 0.7493645,
        size.width * 0.6416847,
        size.height * 0.7474446,
        size.width * 0.6455108,
        size.height * 0.7454714);
    path_85.cubicTo(
        size.width * 0.6518151,
        size.height * 0.7422537,
        size.width * 0.6580778,
        size.height * 0.7389650,
        size.width * 0.6642991,
        size.height * 0.7356319);
    path_85.lineTo(size.width * 0.6749583, size.height * 0.7303610);

    Paint paint_85_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.002073764;
    paint_85_stroke.color = Color(0xff0e2947).withOpacity(1.0);
    paint_85_stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_85, paint_85_stroke);

    Path path_86 = Path();
    path_86.moveTo(size.width * 0.7006729, size.height * 0.7514088);
    path_86.cubicTo(
        size.width * 0.6933940,
        size.height * 0.7546709,
        size.width * 0.6861773,
        size.height * 0.7580129,
        size.width * 0.6790228,
        size.height * 0.7614438);
    path_86.cubicTo(
        size.width * 0.6753938,
        size.height * 0.7631504,
        size.width * 0.6718165,
        size.height * 0.7649103,
        size.width * 0.6682185,
        size.height * 0.7666436);
    path_86.lineTo(size.width * 0.6574557, size.height * 0.7719233);
    path_86.lineTo(size.width * 0.6467551, size.height * 0.7772652);
    path_86.cubicTo(
        size.width * 0.6432089,
        size.height * 0.7790696,
        size.width * 0.6396317,
        size.height * 0.7808650,
        size.width * 0.6361063,
        size.height * 0.7826960);
    path_86.cubicTo(
        size.width * 0.6290037,
        size.height * 0.7863225,
        size.width * 0.6219632,
        size.height * 0.7900290,
        size.width * 0.6149954,
        size.height * 0.7938243);
    path_86.lineTo(size.width * 0.6150161, size.height * 0.7938243);

    Paint paint_86_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.002073764;
    paint_86_stroke.color = Color(0xff0e2947).withOpacity(1.0);
    paint_86_stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_86, paint_86_stroke);

    Paint paint_87_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.002073764;
    paint_87_stroke.color = Color(0xff0e2947).withOpacity(1.0);
    paint_87_stroke.strokeJoin = StrokeJoin.round;
    canvas.drawLine(
        Offset(size.width * 0.6109930, size.height * 0.8012995),
        Offset(size.width * 0.7145257, size.height * 0.7500667),
        paint_87_stroke);

    Path path_88 = Path();
    path_88.moveTo(size.width * 0.2063188, size.height * 0.6439301);
    path_88.cubicTo(
        size.width * 0.2101449,
        size.height * 0.6459033,
        size.width * 0.2139813,
        size.height * 0.6478143,
        size.width * 0.2178178,
        size.height * 0.6497698);
    path_88.lineTo(size.width * 0.2293686, size.height * 0.6555295);
    path_88.lineTo(size.width * 0.2409817, size.height * 0.6612181);
    path_88.cubicTo(
        size.width * 0.2448597,
        size.height * 0.6630935,
        size.width * 0.2487272,
        size.height * 0.6649956,
        size.width * 0.2526155,
        size.height * 0.6668355);
    path_88.cubicTo(
        size.width * 0.2589613,
        size.height * 0.6698843,
        size.width * 0.2653588,
        size.height * 0.6728619,
        size.width * 0.2717875,
        size.height * 0.6757951);
    path_88.lineTo(size.width * 0.2794500, size.height * 0.6795904);
    path_88.lineTo(size.width * 0.2787450, size.height * 0.6799460);
    path_88.lineTo(size.width * 0.2893315, size.height * 0.6851901);
    path_88.cubicTo(
        size.width * 0.2955839,
        size.height * 0.6885322,
        size.width * 0.3018674,
        size.height * 0.6918387,
        size.width * 0.3081924,
        size.height * 0.6950652);
    path_88.cubicTo(
        size.width * 0.3120185,
        size.height * 0.6970384,
        size.width * 0.3158550,
        size.height * 0.6989583,
        size.width * 0.3196914,
        size.height * 0.7009048);
    path_88.lineTo(size.width * 0.3312319, size.height * 0.7066645);
    path_88.lineTo(size.width * 0.3428346, size.height * 0.7123531);
    path_88.cubicTo(
        size.width * 0.3467229,
        size.height * 0.7142286,
        size.width * 0.3505801,
        size.height * 0.7161307,
        size.width * 0.3544684,
        size.height * 0.7179706);
    path_88.cubicTo(
        size.width * 0.3607831,
        size.height * 0.7210015,
        size.width * 0.3671391,
        size.height * 0.7239614,
        size.width * 0.3735263,
        size.height * 0.7268679);
    path_88.lineTo(size.width * 0.3822569, size.height * 0.7311877);
    path_88.lineTo(size.width * 0.3824954, size.height * 0.7310721);
    path_88.lineTo(size.width * 0.3929575, size.height * 0.7362541);
    path_88.cubicTo(
        size.width * 0.3991477,
        size.height * 0.7395606,
        size.width * 0.4053690,
        size.height * 0.7428315,
        size.width * 0.4116317,
        size.height * 0.7460313);
    path_88.cubicTo(
        size.width * 0.4154578,
        size.height * 0.7480046,
        size.width * 0.4192943,
        size.height * 0.7499244,
        size.width * 0.4231308,
        size.height * 0.7518710);
    path_88.lineTo(size.width * 0.4346816, size.height * 0.7576307);
    path_88.lineTo(size.width * 0.4462843, size.height * 0.7633193);
    path_88.cubicTo(
        size.width * 0.4501623,
        size.height * 0.7651947,
        size.width * 0.4540298,
        size.height * 0.7670880,
        size.width * 0.4579181,
        size.height * 0.7689457);
    path_88.cubicTo(
        size.width * 0.4642431,
        size.height * 0.7719677,
        size.width * 0.4705992,
        size.height * 0.7749364,
        size.width * 0.4769968,
        size.height * 0.7778518);
    path_88.lineTo(size.width * 0.4856962, size.height * 0.7821627);
    path_88.lineTo(size.width * 0.4860280, size.height * 0.7819938);
    path_88.cubicTo(
        size.width * 0.4907458,
        size.height * 0.7843048,
        size.width * 0.4961169,
        size.height * 0.7861536,
        size.width * 0.5019338,
        size.height * 0.7875313);
    path_88.cubicTo(
        size.width * 0.4984913,
        size.height * 0.7868291,
        size.width * 0.4950904,
        size.height * 0.7859936,
        size.width * 0.4917516,
        size.height * 0.7849537);
    path_88.cubicTo(
        size.width * 0.4974233,
        size.height * 0.7873980,
        size.width * 0.5035824,
        size.height * 0.7890335,
        size.width * 0.5098348,
        size.height * 0.7900912);
    path_88.cubicTo(
        size.width * 0.5129662,
        size.height * 0.7906334,
        size.width * 0.5161391,
        size.height * 0.7909889,
        size.width * 0.5193223,
        size.height * 0.7912467);
    path_88.cubicTo(
        size.width * 0.5224952,
        size.height * 0.7914867,
        size.width * 0.5256991,
        size.height * 0.7915844,
        size.width * 0.5288927,
        size.height * 0.7915756);
    path_88.cubicTo(
        size.width * 0.5320967,
        size.height * 0.7915400,
        size.width * 0.5352799,
        size.height * 0.7913889,
        size.width * 0.5384528,
        size.height * 0.7911045);
    path_88.cubicTo(
        size.width * 0.5416256,
        size.height * 0.7907934,
        size.width * 0.5447881,
        size.height * 0.7903756,
        size.width * 0.5479091,
        size.height * 0.7897712);
    path_88.cubicTo(
        size.width * 0.5541408,
        size.height * 0.7885802,
        size.width * 0.5602377,
        size.height * 0.7867758,
        size.width * 0.5658264,
        size.height * 0.7841715);
    path_88.cubicTo(
        size.width * 0.5646133,
        size.height * 0.7845893,
        size.width * 0.5633794,
        size.height * 0.7849626,
        size.width * 0.5621455,
        size.height * 0.7853359);
    path_88.cubicTo(
        size.width * 0.5653495,
        size.height * 0.7842515,
        size.width * 0.5684083,
        size.height * 0.7829982,
        size.width * 0.5712804,
        size.height * 0.7815761);

    Paint paint_88_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.002073764;
    paint_88_stroke.color = Color(0xff0e2947).withOpacity(1.0);
    paint_88_stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_88, paint_88_stroke);

    Path path_89 = Path();
    path_89.moveTo(size.width * 0.07469697, size.height * 0.5349315);
    path_89.cubicTo(
        size.width * 0.07255063,
        size.height * 0.5360070,
        size.width * 0.07060129,
        size.height * 0.5371447,
        size.width * 0.06883859,
        size.height * 0.5383180);
    path_89.cubicTo(
        size.width * 0.06903560,
        size.height * 0.5381402,
        size.width * 0.06924297,
        size.height * 0.5379535,
        size.width * 0.06943998,
        size.height * 0.5377758);
    path_89.cubicTo(
        size.width * 0.06608048,
        size.height * 0.5397312,
        size.width * 0.06303205,
        size.height * 0.5423089,
        size.width * 0.06075091,
        size.height * 0.5455265);
    path_89.cubicTo(
        size.width * 0.06029468,
        size.height * 0.5461575,
        size.width * 0.05989030,
        size.height * 0.5468242,
        size.width * 0.05950665,
        size.height * 0.5475086);
    path_89.cubicTo(
        size.width * 0.05944444,
        size.height * 0.5476152,
        size.width * 0.05939259,
        size.height * 0.5477219,
        size.width * 0.05933038,
        size.height * 0.5478286);
    path_89.cubicTo(
        size.width * 0.05928891,
        size.height * 0.5479174,
        size.width * 0.05923706,
        size.height * 0.5479974,
        size.width * 0.05918522,
        size.height * 0.5480863);
    path_89.cubicTo(
        size.width * 0.05770248,
        size.height * 0.5507173,
        size.width * 0.05693518,
        size.height * 0.5534638,
        size.width * 0.05690408,
        size.height * 0.5562992);
    path_89.cubicTo(
        size.width * 0.05682113,
        size.height * 0.5642899,
        size.width * 0.06262767,
        size.height * 0.5719162,
        size.width * 0.07368083,
        size.height * 0.5776225);
    path_89.lineTo(size.width * 0.07351493, size.height * 0.5777114);
    path_89.lineTo(size.width * 0.08408075, size.height * 0.5829378);
    path_89.cubicTo(
        size.width * 0.09033315,
        size.height * 0.5862887,
        size.width * 0.09662702,
        size.height * 0.5895952,
        size.width * 0.1029624,
        size.height * 0.5928306);
    path_89.cubicTo(
        size.width * 0.1067885,
        size.height * 0.5947949,
        size.width * 0.1106249,
        size.height * 0.5967148,
        size.width * 0.1144510,
        size.height * 0.5986703);
    path_89.lineTo(size.width * 0.1260019, size.height * 0.6044300);
    path_89.lineTo(size.width * 0.1376046, size.height * 0.6101097);
    path_89.cubicTo(
        size.width * 0.1414825,
        size.height * 0.6119940,
        size.width * 0.1453501,
        size.height * 0.6138873,
        size.width * 0.1492384,
        size.height * 0.6157272);
    path_89.cubicTo(
        size.width * 0.1555841,
        size.height * 0.6187759,
        size.width * 0.1619713,
        size.height * 0.6217535,
        size.width * 0.1683896,
        size.height * 0.6246778);
    path_89.lineTo(size.width * 0.1770165, size.height * 0.6289531);
    path_89.lineTo(size.width * 0.1770683, size.height * 0.6289265);
    path_89.lineTo(size.width * 0.1875512, size.height * 0.6341173);

    Paint paint_89_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.002073764;
    paint_89_stroke.color = Color(0xff0e2947).withOpacity(1.0);
    paint_89_stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_89, paint_89_stroke);

    Path path_90 = Path();
    path_90.moveTo(size.width * 0.5070664, size.height * 0.7844471);
    path_90.cubicTo(
        size.width * 0.5067138,
        size.height * 0.7843671,
        size.width * 0.5063509,
        size.height * 0.7842959,
        size.width * 0.5059984,
        size.height * 0.7842071);
    path_90.cubicTo(
        size.width * 0.5056147,
        size.height * 0.7841182,
        size.width * 0.5052414,
        size.height * 0.7840204,
        size.width * 0.5048578,
        size.height * 0.7839315);
    path_90.cubicTo(
        size.width * 0.5023900,
        size.height * 0.7833004,
        size.width * 0.4999326,
        size.height * 0.7825716,
        size.width * 0.4975270,
        size.height * 0.7817094);
    path_90.cubicTo(
        size.width * 0.4975581,
        size.height * 0.7817272,
        size.width * 0.4975892,
        size.height * 0.7817361,
        size.width * 0.4976307,
        size.height * 0.7817539);
    path_90.cubicTo(
        size.width * 0.4953911,
        size.height * 0.7809450,
        size.width * 0.4932343,
        size.height * 0.7800384,
        size.width * 0.4912124,
        size.height * 0.7790340);
    path_90.lineTo(size.width * 0.4908599, size.height * 0.7792118);
    path_90.lineTo(size.width * 0.4400734, size.height * 0.7540753);
    path_90.lineTo(size.width * 0.4387462, size.height * 0.7534176);
    path_90.lineTo(size.width * 0.4375019, size.height * 0.7528043);
    path_90.lineTo(size.width * 0.3877109, size.height * 0.7281567);
    path_90.lineTo(size.width * 0.3874724, size.height * 0.7282723);
    path_90.lineTo(size.width * 0.3372458, size.height * 0.7034114);
    path_90.lineTo(size.width * 0.3352965, size.height * 0.7024336);
    path_90.lineTo(size.width * 0.3330568, size.height * 0.7013315);
    path_90.lineTo(size.width * 0.2852151, size.height * 0.6776527);
    path_90.lineTo(size.width * 0.2859305, size.height * 0.6772972);
    path_90.lineTo(size.width * 0.2352892, size.height * 0.6522319);
    path_90.lineTo(size.width * 0.2334332, size.height * 0.6513075);
    path_90.lineTo(size.width * 0.2314735, size.height * 0.6503475);
    path_90.lineTo(size.width * 0.1823875, size.height * 0.6260555);
    path_90.lineTo(size.width * 0.1823460, size.height * 0.6260733);
    path_90.lineTo(size.width * 0.1309478, size.height * 0.6006346);
    path_90.lineTo(size.width * 0.1300665, size.height * 0.6001991);
    path_90.lineTo(size.width * 0.1291333, size.height * 0.5997458);
    path_90.lineTo(size.width * 0.07925925, size.height * 0.5750627);
    path_90.lineTo(size.width * 0.07943552, size.height * 0.5749738);
    path_90.cubicTo(
        size.width * 0.07498730,
        size.height * 0.5726983,
        size.width * 0.07154485,
        size.height * 0.5701296,
        size.width * 0.06908744,
        size.height * 0.5674008);
    path_90.cubicTo(
        size.width * 0.06866232,
        size.height * 0.5668675,
        size.width * 0.06823720,
        size.height * 0.5663254,
        size.width * 0.06786392,
        size.height * 0.5657654);
    path_90.cubicTo(
        size.width * 0.06601827,
        size.height * 0.5630544,
        size.width * 0.06485696,
        size.height * 0.5599612,
        size.width * 0.06483622,
        size.height * 0.5568147);
    path_90.cubicTo(
        size.width * 0.06476364,
        size.height * 0.5536771,
        size.width * 0.06584200,
        size.height * 0.5505573,
        size.width * 0.06759433,
        size.height * 0.5478019);
    path_90.cubicTo(
        size.width * 0.06794687,
        size.height * 0.5472508,
        size.width * 0.06834089,
        size.height * 0.5467175,
        size.width * 0.06873490,
        size.height * 0.5461931);

    Paint paint_90_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.002073764;
    paint_90_stroke.color = Color(0xff0e2947).withOpacity(1.0);
    paint_90_stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_90, paint_90_stroke);

    Path path_91 = Path();
    path_91.moveTo(size.width * 0.8367118, size.height * 0.4866407);
    path_91.lineTo(size.width * 0.9402549, size.height * 0.4353990);
    path_91.lineTo(size.width * 0.9403689, size.height * 0.4354523);
    path_91.cubicTo(
        size.width * 0.9454600,
        size.height * 0.4329280,
        size.width * 0.9500223,
        size.height * 0.4302082,
        size.width * 0.9540558,
        size.height * 0.4273283);
    path_91.cubicTo(
        size.width * 0.9581411,
        size.height * 0.4245018,
        size.width * 0.9619257,
        size.height * 0.4213198,
        size.width * 0.9651504,
        size.height * 0.4176933);
    path_91.cubicTo(
        size.width * 0.9680433,
        size.height * 0.4144846,
        size.width * 0.9704281,
        size.height * 0.4109203,
        size.width * 0.9721494,
        size.height * 0.4071072);
    path_91.cubicTo(
        size.width * 0.9738602,
        size.height * 0.4032852,
        size.width * 0.9748141,
        size.height * 0.3992143,
        size.width * 0.9748971,
        size.height * 0.3951078);
    path_91.cubicTo(
        size.width * 0.9749697,
        size.height * 0.3910103,
        size.width * 0.9741609,
        size.height * 0.3868949,
        size.width * 0.9725952,
        size.height * 0.3830373);
    path_91.cubicTo(
        size.width * 0.9710088,
        size.height * 0.3791798,
        size.width * 0.9686965,
        size.height * 0.3755800,
        size.width * 0.9658866,
        size.height * 0.3723001);
    path_91.cubicTo(
        size.width * 0.9630974,
        size.height * 0.3690203,
        size.width * 0.9598312,
        size.height * 0.3660783,
        size.width * 0.9562747,
        size.height * 0.3634295);
    path_91.cubicTo(
        size.width * 0.9560362,
        size.height * 0.3632606,
        size.width * 0.9557977,
        size.height * 0.3630917,
        size.width * 0.9555489,
        size.height * 0.3629229);
    path_91.cubicTo(
        size.width * 0.9513184,
        size.height * 0.3597408,
        size.width * 0.9464243,
        size.height * 0.3567543,
        size.width * 0.9408977,
        size.height * 0.3540167);
    path_91.lineTo(size.width * 0.9408459, size.height * 0.3540433);
    path_91.lineTo(size.width * 0.8904742, size.height * 0.3291202);
    path_91.lineTo(size.width * 0.8887840, size.height * 0.3282758);
    path_91.lineTo(size.width * 0.8871976, size.height * 0.3274936);
    path_91.lineTo(size.width * 0.8377487, size.height * 0.3030238);

    Paint paint_91_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.002073764;
    paint_91_stroke.color = Color(0xff0e2947).withOpacity(1.0);
    paint_91_stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_91, paint_91_stroke);

    Path path_92 = Path();
    path_92.moveTo(size.width * 0.8428917, size.height * 0.3110679);
    path_92.cubicTo(
        size.width * 0.8491026,
        size.height * 0.3143921,
        size.width * 0.8553550,
        size.height * 0.3176719,
        size.width * 0.8616592,
        size.height * 0.3208807);
    path_92.cubicTo(
        size.width * 0.8654749,
        size.height * 0.3228539,
        size.width * 0.8693218,
        size.height * 0.3247738,
        size.width * 0.8731479,
        size.height * 0.3267292);
    path_92.lineTo(size.width * 0.8846987, size.height * 0.3324800);
    path_92.lineTo(size.width * 0.8963014, size.height * 0.3381686);
    path_92.cubicTo(
        size.width * 0.9001690,
        size.height * 0.3400441,
        size.width * 0.9040366,
        size.height * 0.3419462,
        size.width * 0.9079353,
        size.height * 0.3437861);
    path_92.cubicTo(
        size.width * 0.9142706,
        size.height * 0.3468259,
        size.width * 0.9206371,
        size.height * 0.3497858,
        size.width * 0.9270554,
        size.height * 0.3527101);
    path_92.lineTo(size.width * 0.9357237, size.height * 0.3569943);
    path_92.lineTo(size.width * 0.9357652, size.height * 0.3569765);
    path_92.cubicTo(
        size.width * 0.9773338,
        size.height * 0.3779265,
        size.width * 0.9769709,
        size.height * 0.4118180,
        size.width * 0.9348216,
        size.height * 0.4326791);
    path_92.lineTo(size.width * 0.9346972, size.height * 0.4326080);
    path_92.lineTo(size.width * 0.9264747, size.height * 0.4366789);
    path_92.cubicTo(
        size.width * 0.9191751,
        size.height * 0.4399588,
        size.width * 0.9119273,
        size.height * 0.4433097,
        size.width * 0.9047417,
        size.height * 0.4467584);
    path_92.cubicTo(
        size.width * 0.9011022,
        size.height * 0.4484650,
        size.width * 0.8975250,
        size.height * 0.4502249,
        size.width * 0.8939270,
        size.height * 0.4519581);
    path_92.lineTo(size.width * 0.8831641, size.height * 0.4572289);
    path_92.lineTo(size.width * 0.8724635, size.height * 0.4625709);
    path_92.cubicTo(
        size.width * 0.8689278,
        size.height * 0.4643752,
        size.width * 0.8653505,
        size.height * 0.4661618,
        size.width * 0.8618251,
        size.height * 0.4680017);
    path_92.cubicTo(
        size.width * 0.8547847,
        size.height * 0.4715926,
        size.width * 0.8478168,
        size.height * 0.4752635,
        size.width * 0.8409216,
        size.height * 0.4790233);

    Paint paint_92_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.002073764;
    paint_92_stroke.color = Color(0xff0e2947).withOpacity(1.0);
    paint_92_stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_92, paint_92_stroke);

    Path path_93 = Path();
    path_93.moveTo(size.width * 0.7190672, size.height * 0.5391001);
    path_93.cubicTo(
        size.width * 0.7117468,
        size.height * 0.5423889,
        size.width * 0.7044679,
        size.height * 0.5457487,
        size.width * 0.6972616,
        size.height * 0.5492063);
    path_93.cubicTo(
        size.width * 0.6936429,
        size.height * 0.5509217,
        size.width * 0.6900449,
        size.height * 0.5526727,
        size.width * 0.6864573,
        size.height * 0.5544060);
    path_93.lineTo(size.width * 0.6756945, size.height * 0.5596857);
    path_93.lineTo(size.width * 0.6650042, size.height * 0.5650188);
    path_93.cubicTo(
        size.width * 0.6614477,
        size.height * 0.5668320,
        size.width * 0.6578808,
        size.height * 0.5686097,
        size.width * 0.6543451,
        size.height * 0.5704496);
    path_93.cubicTo(
        size.width * 0.6472839,
        size.height * 0.5740583,
        size.width * 0.6402849,
        size.height * 0.5777470,
        size.width * 0.6333482,
        size.height * 0.5815245);
    path_93.lineTo(size.width * 0.6238815, size.height * 0.5862087);
    path_93.lineTo(size.width * 0.6235600, size.height * 0.5860487);
    path_93.lineTo(size.width * 0.6153998, size.height * 0.5900930);
    path_93.cubicTo(
        size.width * 0.6080794,
        size.height * 0.5933817,
        size.width * 0.6008005,
        size.height * 0.5967415,
        size.width * 0.5936045,
        size.height * 0.6001991);
    path_93.cubicTo(
        size.width * 0.5899858,
        size.height * 0.6019057,
        size.width * 0.5863878,
        size.height * 0.6036656,
        size.width * 0.5828002,
        size.height * 0.6053988);
    path_93.lineTo(size.width * 0.5720374, size.height * 0.6106697);
    path_93.lineTo(size.width * 0.5613367, size.height * 0.6160116);
    path_93.cubicTo(
        size.width * 0.5577906,
        size.height * 0.6178159,
        size.width * 0.5542237,
        size.height * 0.6196025,
        size.width * 0.5506880,
        size.height * 0.6214424);
    path_93.cubicTo(
        size.width * 0.5436164,
        size.height * 0.6250511,
        size.width * 0.5366071,
        size.height * 0.6287398,
        size.width * 0.5296600,
        size.height * 0.6325263);
    path_93.lineTo(size.width * 0.5200481, size.height * 0.6372816);
    path_93.lineTo(size.width * 0.5202348, size.height * 0.6373793);
    path_93.cubicTo(
        size.width * 0.5050548,
        size.height * 0.6447656,
        size.width * 0.4865983,
        size.height * 0.6494854,
        size.width * 0.4672190,
        size.height * 0.6515830);
    path_93.cubicTo(
        size.width * 0.4649275,
        size.height * 0.6518141,
        size.width * 0.4626360,
        size.height * 0.6520186,
        size.width * 0.4603341,
        size.height * 0.6521697);
    path_93.cubicTo(
        size.width * 0.4549216,
        size.height * 0.6525608,
        size.width * 0.4494883,
        size.height * 0.6527563,
        size.width * 0.4440550,
        size.height * 0.6527474);
    path_93.cubicTo(
        size.width * 0.4386321,
        size.height * 0.6527563,
        size.width * 0.4332093,
        size.height * 0.6525696,
        size.width * 0.4277967,
        size.height * 0.6521963);
    path_93.cubicTo(
        size.width * 0.4257437,
        size.height * 0.6520630,
        size.width * 0.4236803,
        size.height * 0.6518852,
        size.width * 0.4216273,
        size.height * 0.6516808);
    path_93.cubicTo(
        size.width * 0.4015947,
        size.height * 0.6496098,
        size.width * 0.3825472,
        size.height * 0.6447389,
        size.width * 0.3670769,
        size.height * 0.6370327);
    path_93.lineTo(size.width * 0.3581079, size.height * 0.6325885);
    path_93.cubicTo(
        size.width * 0.3511608,
        size.height * 0.6288020,
        size.width * 0.3441515,
        size.height * 0.6251222,
        size.width * 0.3370799,
        size.height * 0.6214957);
    path_93.cubicTo(
        size.width * 0.3335442,
        size.height * 0.6196647,
        size.width * 0.3299877,
        size.height * 0.6178782,
        size.width * 0.3264312,
        size.height * 0.6160738);
    path_93.lineTo(size.width * 0.3157305, size.height * 0.6107319);
    path_93.lineTo(size.width * 0.3049677, size.height * 0.6054522);
    path_93.cubicTo(
        size.width * 0.3013801,
        size.height * 0.6037278,
        size.width * 0.2977925,
        size.height * 0.6019679,
        size.width * 0.2941634,
        size.height * 0.6002524);
    path_93.cubicTo(
        size.width * 0.2869571,
        size.height * 0.5968037,
        size.width * 0.2796885,
        size.height * 0.5934261,
        size.width * 0.2723681,
        size.height * 0.5901552);
    path_93.lineTo(size.width * 0.2645293, size.height * 0.5862798);
    path_93.lineTo(size.width * 0.2650477, size.height * 0.5860132);
    path_93.cubicTo(
        size.width * 0.2482710,
        size.height * 0.5774270,
        size.width * 0.2383273,
        size.height * 0.5666987,
        size.width * 0.2351648,
        size.height * 0.5555704);
    path_93.cubicTo(
        size.width * 0.2351026,
        size.height * 0.5553304,
        size.width * 0.2350300,
        size.height * 0.5550815,
        size.width * 0.2349782,
        size.height * 0.5548326);
    path_93.cubicTo(
        size.width * 0.2349471,
        size.height * 0.5547082,
        size.width * 0.2349263,
        size.height * 0.5545838,
        size.width * 0.2348849,
        size.height * 0.5544504);
    path_93.cubicTo(
        size.width * 0.2344079,
        size.height * 0.5523261,
        size.width * 0.2341590,
        size.height * 0.5501751,
        size.width * 0.2341798,
        size.height * 0.5479974);
    path_93.cubicTo(
        size.width * 0.2341901,
        size.height * 0.5443976,
        size.width * 0.2349471,
        size.height * 0.5408156,
        size.width * 0.2363158,
        size.height * 0.5374024);
    path_93.cubicTo(
        size.width * 0.2376637,
        size.height * 0.5339893,
        size.width * 0.2396545,
        size.height * 0.5307717,
        size.width * 0.2419979,
        size.height * 0.5277585);
    path_93.cubicTo(
        size.width * 0.2443620,
        size.height * 0.5247720,
        size.width * 0.2471201,
        size.height * 0.5220077,
        size.width * 0.2501478,
        size.height * 0.5194567);
    path_93.cubicTo(
        size.width * 0.2531340,
        size.height * 0.5168880,
        size.width * 0.2564416,
        size.height * 0.5145859,
        size.width * 0.2598530,
        size.height * 0.5124171);
    path_93.cubicTo(
        size.width * 0.2597804,
        size.height * 0.5124527,
        size.width * 0.2597078,
        size.height * 0.5124971,
        size.width * 0.2596352,
        size.height * 0.5125327);
    path_93.cubicTo(
        size.width * 0.2613357,
        size.height * 0.5115283,
        size.width * 0.2630984,
        size.height * 0.5105417,
        size.width * 0.2649752,
        size.height * 0.5095906);
    path_93.lineTo(size.width * 0.2649959, size.height * 0.5095906);
    path_93.cubicTo(
        size.width * 0.2768164,
        size.height * 0.5037598,
        size.width * 0.2827992,
        size.height * 0.4964535,
        size.width * 0.2828614,
        size.height * 0.4885073);

    Paint paint_93_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.002073764;
    paint_93_stroke.color = Color(0xff0e2947).withOpacity(1.0);
    paint_93_stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_93, paint_93_stroke);

    Path path_94 = Path();
    path_94.moveTo(size.width * 0.2599981, size.height * 0.4701705);
    path_94.cubicTo(
        size.width * 0.2708750,
        size.height * 0.4755924,
        size.width * 0.2758832,
        size.height * 0.4827120,
        size.width * 0.2751055,
        size.height * 0.4897161);
    path_94.cubicTo(
        size.width * 0.2747426,
        size.height * 0.4927293,
        size.width * 0.2732495,
        size.height * 0.4956447,
        size.width * 0.2710513,
        size.height * 0.4981868);
    path_94.cubicTo(
        size.width * 0.2687079,
        size.height * 0.5008888,
        size.width * 0.2656284,
        size.height * 0.5032176,
        size.width * 0.2623104,
        size.height * 0.5053419);
    path_94.cubicTo(
        size.width * 0.2615742,
        size.height * 0.5057597,
        size.width * 0.2608173,
        size.height * 0.5061686,
        size.width * 0.2600292,
        size.height * 0.5065774);
    path_94.cubicTo(
        size.width * 0.2562031,
        size.height * 0.5085151,
        size.width * 0.2526570,
        size.height * 0.5105683,
        size.width * 0.2494219,
        size.height * 0.5127282);
    path_94.cubicTo(
        size.width * 0.2438539,
        size.height * 0.5162302,
        size.width * 0.2387628,
        size.height * 0.5203989,
        size.width * 0.2346878,
        size.height * 0.5253409);
    path_94.cubicTo(
        size.width * 0.2320542,
        size.height * 0.5285051,
        size.width * 0.2298871,
        size.height * 0.5320072,
        size.width * 0.2283421,
        size.height * 0.5357492);
    path_94.cubicTo(
        size.width * 0.2268075,
        size.height * 0.5394912,
        size.width * 0.2259780,
        size.height * 0.5434732,
        size.width * 0.2259262,
        size.height * 0.5474819);
    path_94.cubicTo(
        size.width * 0.2258951,
        size.height * 0.5514728,
        size.width * 0.2266624,
        size.height * 0.5554637,
        size.width * 0.2281348,
        size.height * 0.5592324);
    path_94.cubicTo(
        size.width * 0.2296279,
        size.height * 0.5629744,
        size.width * 0.2317224,
        size.height * 0.5665120,
        size.width * 0.2343353,
        size.height * 0.5697118);
    path_94.cubicTo(
        size.width * 0.2373319,
        size.height * 0.5734539,
        size.width * 0.2409402,
        size.height * 0.5767337,
        size.width * 0.2448700,
        size.height * 0.5796402);
    path_94.cubicTo(
        size.width * 0.2490072,
        size.height * 0.5828400,
        size.width * 0.2537872,
        size.height * 0.5858443,
        size.width * 0.2591790,
        size.height * 0.5886175);
    path_94.lineTo(size.width * 0.2586294, size.height * 0.5888930);
    path_94.lineTo(size.width * 0.3614881, size.height * 0.6398059);
    path_94.lineTo(size.width * 0.3614570, size.height * 0.6398059);
    path_94.cubicTo(
        size.width * 0.3698972,
        size.height * 0.6440190,
        size.width * 0.3793951,
        size.height * 0.6474944,
        size.width * 0.3898157,
        size.height * 0.6502142);
    path_94.cubicTo(
        size.width * 0.3967006,
        size.height * 0.6523119,
        size.width * 0.4037929,
        size.height * 0.6539296,
        size.width * 0.4109681,
        size.height * 0.6551117);
    path_94.cubicTo(
        size.width * 0.4217310,
        size.height * 0.6568805,
        size.width * 0.4327012,
        size.height * 0.6577160,
        size.width * 0.4436507,
        size.height * 0.6577249);
    path_94.cubicTo(
        size.width * 0.4491358,
        size.height * 0.6577160,
        size.width * 0.4546105,
        size.height * 0.6574938,
        size.width * 0.4600749,
        size.height * 0.6570672);
    path_94.cubicTo(
        size.width * 0.4655185,
        size.height * 0.6566139,
        size.width * 0.4709518,
        size.height * 0.6559828,
        size.width * 0.4763228,
        size.height * 0.6550673);
    path_94.cubicTo(
        size.width * 0.4820257,
        size.height * 0.6541251,
        size.width * 0.4876559,
        size.height * 0.6529074,
        size.width * 0.4931825,
        size.height * 0.6513875);
    path_94.cubicTo(
        size.width * 0.5055214,
        size.height * 0.6485521,
        size.width * 0.5166990,
        size.height * 0.6446590,
        size.width * 0.5264768,
        size.height * 0.6398237);
    path_94.lineTo(size.width * 0.5262590, size.height * 0.6397170);
    path_94.lineTo(size.width * 0.6289103, size.height * 0.5889108);
    path_94.lineTo(size.width * 0.6292214, size.height * 0.5890708);
    path_94.lineTo(size.width * 0.7327644, size.height * 0.5378291);

    Paint paint_94_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.002073764;
    paint_94_stroke.color = Color(0xff0e2947).withOpacity(1.0);
    paint_94_stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_94, paint_94_stroke);

    Path path_95 = Path();
    path_95.moveTo(size.width * 0.8226828, size.height * 0.4878318);
    path_95.cubicTo(
        size.width * 0.8226828,
        size.height * 0.4878318,
        size.width * 0.8226310,
        size.height * 0.4878584,
        size.width * 0.8226102,
        size.height * 0.4878673);
    path_95.cubicTo(
        size.width * 0.8153106,
        size.height * 0.4911471,
        size.width * 0.8080835,
        size.height * 0.4944892,
        size.width * 0.8008876,
        size.height * 0.4979379);
    path_95.cubicTo(
        size.width * 0.7972481,
        size.height * 0.4996534,
        size.width * 0.7936709,
        size.height * 0.5014044,
        size.width * 0.7900833,
        size.height * 0.5031376);
    path_95.lineTo(size.width * 0.7793204, size.height * 0.5084173);
    path_95.lineTo(size.width * 0.7686198, size.height * 0.5137504);
    path_95.cubicTo(
        size.width * 0.7650737,
        size.height * 0.5155636,
        size.width * 0.7615068,
        size.height * 0.5173413,
        size.width * 0.7579710,
        size.height * 0.5191812);
    path_95.cubicTo(
        size.width * 0.7509099,
        size.height * 0.5227899,
        size.width * 0.7439109,
        size.height * 0.5264697,
        size.width * 0.7369742,
        size.height * 0.5302562);

    Paint paint_95_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.002073764;
    paint_95_stroke.color = Color(0xff0e2947).withOpacity(1.0);
    paint_95_stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_95, paint_95_stroke);

    Paint paint_96_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.002073764;
    paint_96_stroke.color = Color(0xff0e2947).withOpacity(1.0);
    paint_96_stroke.strokeJoin = StrokeJoin.round;
    canvas.drawLine(
        Offset(size.width * 0.7328578, size.height * 0.5377935),
        Offset(size.width * 0.8363904, size.height * 0.4865518),
        paint_96_stroke);

    Path path_97 = Path();
    path_97.moveTo(size.width * 0.6757152, size.height * 0.7294989);
    path_97.lineTo(size.width * 0.6843109, size.height * 0.7252413);
    path_97.cubicTo(
        size.width * 0.6907396,
        size.height * 0.7223081,
        size.width * 0.6971372,
        size.height * 0.7193216,
        size.width * 0.7034933,
        size.height * 0.7162818);
    path_97.cubicTo(
        size.width * 0.7073919,
        size.height * 0.7144330,
        size.width * 0.7112595,
        size.height * 0.7125398,
        size.width * 0.7151374,
        size.height * 0.7106554);
    path_97.lineTo(size.width * 0.7267401, size.height * 0.7049757);
    path_97.lineTo(size.width * 0.7382910, size.height * 0.6992072);
    path_97.cubicTo(
        size.width * 0.7421275,
        size.height * 0.6972517,
        size.width * 0.7459639,
        size.height * 0.6953407,
        size.width * 0.7497797,
        size.height * 0.6933675);
    path_97.cubicTo(
        size.width * 0.7560321,
        size.height * 0.6901765,
        size.width * 0.7622326,
        size.height * 0.6869145,
        size.width * 0.7684021,
        size.height * 0.6836169);
    path_97.lineTo(size.width * 0.7792271, size.height * 0.6782572);
    path_97.lineTo(size.width * 0.7791960, size.height * 0.6782394);
    path_97.cubicTo(
        size.width * 0.7878021,
        size.height * 0.6739996,
        size.width * 0.7974970,
        size.height * 0.6706309,
        size.width * 0.8078243,
        size.height * 0.6681155);
    path_97.cubicTo(
        size.width * 0.8106135,
        size.height * 0.6675288,
        size.width * 0.8134235,
        size.height * 0.6669955,
        size.width * 0.8162542,
        size.height * 0.6665245);
    path_97.cubicTo(
        size.width * 0.8287382,
        size.height * 0.6644712,
        size.width * 0.8414504,
        size.height * 0.6634313,
        size.width * 0.8541626,
        size.height * 0.6633957);
    path_97.cubicTo(
        size.width * 0.8668851,
        size.height * 0.6633246,
        size.width * 0.8795765,
        size.height * 0.6642668,
        size.width * 0.8921124,
        size.height * 0.6662134);
    path_97.cubicTo(
        size.width * 0.8983545,
        size.height * 0.6671911,
        size.width * 0.9045550,
        size.height * 0.6684532,
        size.width * 0.9106623,
        size.height * 0.6700176);
    path_97.cubicTo(
        size.width * 0.9112014,
        size.height * 0.6701509,
        size.width * 0.9117302,
        size.height * 0.6703020,
        size.width * 0.9122694,
        size.height * 0.6704442);
    path_97.cubicTo(
        size.width * 0.9193721,
        size.height * 0.6726041,
        size.width * 0.9260911,
        size.height * 0.6751995,
        size.width * 0.9322398,
        size.height * 0.6782394);
    path_97.lineTo(size.width * 0.9321672, size.height * 0.6782749);
    path_97.cubicTo(
        size.width * 0.9741713,
        size.height * 0.6991894,
        size.width * 0.9739639,
        size.height * 0.7332231,
        size.width * 0.9317628,
        size.height * 0.7541553);
    path_97.lineTo(size.width * 0.9316487, size.height * 0.7541020);
    path_97.lineTo(size.width * 0.9234781, size.height * 0.7581462);
    path_97.cubicTo(
        size.width * 0.9161577,
        size.height * 0.7614349,
        size.width * 0.9088892,
        size.height * 0.7648037,
        size.width * 0.9016932,
        size.height * 0.7682524);
    path_97.cubicTo(
        size.width * 0.8980641,
        size.height * 0.7699678,
        size.width * 0.8944765,
        size.height * 0.7717277,
        size.width * 0.8908889,
        size.height * 0.7734521);
    path_97.lineTo(size.width * 0.8801261, size.height * 0.7787318);
    path_97.lineTo(size.width * 0.8694255, size.height * 0.7840737);
    path_97.cubicTo(
        size.width * 0.8658793,
        size.height * 0.7858781,
        size.width * 0.8623021,
        size.height * 0.7876735,
        size.width * 0.8587767,
        size.height * 0.7895046);
    path_97.cubicTo(
        size.width * 0.8516948,
        size.height * 0.7931310,
        size.width * 0.8446647,
        size.height * 0.7968197,
        size.width * 0.8376969,
        size.height * 0.8006151);

    Paint paint_97_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.002073764;
    paint_97_stroke.color = Color(0xff0e2947).withOpacity(1.0);
    paint_97_stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_97, paint_97_stroke);

    Path path_98 = Path();
    path_98.moveTo(size.width * 0.7971548, size.height * 0.4669351);
    path_98.lineTo(size.width * 0.8058646, size.height * 0.4626242);
    path_98.cubicTo(
        size.width * 0.8122518,
        size.height * 0.4597088,
        size.width * 0.8186183,
        size.height * 0.4567490,
        size.width * 0.8249432,
        size.height * 0.4537180);
    path_98.cubicTo(
        size.width * 0.8288315,
        size.height * 0.4518692,
        size.width * 0.8327095,
        size.height * 0.4499760,
        size.width * 0.8365874,
        size.height * 0.4480917);
    path_98.lineTo(size.width * 0.8481901, size.height * 0.4424031);
    path_98.lineTo(size.width * 0.8597410, size.height * 0.4366434);
    path_98.cubicTo(
        size.width * 0.8635774,
        size.height * 0.4346879,
        size.width * 0.8674139,
        size.height * 0.4327680,
        size.width * 0.8712400,
        size.height * 0.4308037);
    path_98.cubicTo(
        size.width * 0.8775339,
        size.height * 0.4275861,
        size.width * 0.8837863,
        size.height * 0.4243063,
        size.width * 0.8900076,
        size.height * 0.4209731);
    path_98.lineTo(size.width * 0.9004697, size.height * 0.4157912);
    path_98.lineTo(size.width * 0.9006563, size.height * 0.4158889);
    path_98.cubicTo(
        size.width * 0.9124664,
        size.height * 0.4100404,
        size.width * 0.9184596,
        size.height * 0.4027341,
        size.width * 0.9185115,
        size.height * 0.3947878);
    path_98.cubicTo(
        size.width * 0.9185633,
        size.height * 0.3868416,
        size.width * 0.9125598,
        size.height * 0.3793309,
        size.width * 0.9012266,
        size.height * 0.3736867);
    path_98.lineTo(size.width * 0.9011852, size.height * 0.3737045);
    path_98.lineTo(size.width * 0.8920813, size.height * 0.3691981);
    path_98.cubicTo(
        size.width * 0.8851342,
        size.height * 0.3654116,
        size.width * 0.8781249,
        size.height * 0.3617229,
        size.width * 0.8710534,
        size.height * 0.3581142);
    path_98.cubicTo(
        size.width * 0.8675280,
        size.height * 0.3562832,
        size.width * 0.8639507,
        size.height * 0.3544878,
        size.width * 0.8604046,
        size.height * 0.3526834);
    path_98.lineTo(size.width * 0.8497040, size.height * 0.3473415);
    path_98.lineTo(size.width * 0.8389411, size.height * 0.3420618);
    path_98.cubicTo(
        size.width * 0.8353432,
        size.height * 0.3403374,
        size.width * 0.8317659,
        size.height * 0.3385686,
        size.width * 0.8281368,
        size.height * 0.3368620);
    path_98.cubicTo(
        size.width * 0.8209409,
        size.height * 0.3334133,
        size.width * 0.8136723,
        size.height * 0.3300446,
        size.width * 0.8063416,
        size.height * 0.3267648);

    Paint paint_98_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.002073764;
    paint_98_stroke.color = Color(0xff0e2947).withOpacity(1.0);
    paint_98_stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_98, paint_98_stroke);

    Path path_99 = Path();
    path_99.moveTo(size.width * 0.7926340, size.height * 0.3254849);
    path_99.lineTo(size.width * 0.8961666, size.height * 0.3767266);
    path_99.lineTo(size.width * 0.8961770, size.height * 0.3767266);
    path_99.cubicTo(
        size.width * 0.9067014,
        size.height * 0.3821130,
        size.width * 0.9115332,
        size.height * 0.3891081,
        size.width * 0.9107556,
        size.height * 0.3960055);
    path_99.cubicTo(
        size.width * 0.9103823,
        size.height * 0.3990098,
        size.width * 0.9088996,
        size.height * 0.4019075,
        size.width * 0.9067014,
        size.height * 0.4044495);
    path_99.cubicTo(
        size.width * 0.9043580,
        size.height * 0.4071694,
        size.width * 0.9012785,
        size.height * 0.4094893,
        size.width * 0.8979708,
        size.height * 0.4116136);
    path_99.cubicTo(
        size.width * 0.8971309,
        size.height * 0.4120936,
        size.width * 0.8962600,
        size.height * 0.4125736,
        size.width * 0.8953475,
        size.height * 0.4130269);
    path_99.lineTo(size.width * 0.8951505, size.height * 0.4129291);
    path_99.lineTo(size.width * 0.8455564, size.height * 0.4374789);
    path_99.lineTo(size.width * 0.8441048, size.height * 0.4381900);
    path_99.lineTo(size.width * 0.8425599, size.height * 0.4389633);

    Paint paint_99_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.002073764;
    paint_99_stroke.color = Color(0xff0e2947).withOpacity(1.0);
    paint_99_stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_99, paint_99_stroke);

    Path path_100 = Path();
    path_100.moveTo(size.width * 0.2560061, size.height * 0.4625709);
    path_100.cubicTo(
        size.width * 0.2490590,
        size.height * 0.4587844,
        size.width * 0.2420497,
        size.height * 0.4550957,
        size.width * 0.2349885,
        size.height * 0.4514870);
    path_100.cubicTo(
        size.width * 0.2314631,
        size.height * 0.4496560,
        size.width * 0.2278859,
        size.height * 0.4478606,
        size.width * 0.2243398,
        size.height * 0.4460562);
    path_100.lineTo(size.width * 0.2136391, size.height * 0.4407143);
    path_100.lineTo(size.width * 0.2028763, size.height * 0.4354346);
    path_100.cubicTo(
        size.width * 0.1992887,
        size.height * 0.4337013,
        size.width * 0.1957011,
        size.height * 0.4319414,
        size.width * 0.1920720,
        size.height * 0.4302348);
    path_100.cubicTo(
        size.width * 0.1849071,
        size.height * 0.4268039,
        size.width * 0.1776801,
        size.height * 0.4234530,
        size.width * 0.1703908,
        size.height * 0.4201909);
    path_100.lineTo(size.width * 0.1626142, size.height * 0.4163422);
    path_100.lineTo(size.width * 0.1627594, size.height * 0.4162711);
    path_100.cubicTo(
        size.width * 0.1541947,
        size.height * 0.4120047,
        size.width * 0.1434630,
        size.height * 0.4092404,
        size.width * 0.1318084,
        size.height * 0.4081293);
    path_100.cubicTo(
        size.width * 0.1309893,
        size.height * 0.4080405,
        size.width * 0.1301598,
        size.height * 0.4079605,
        size.width * 0.1293406,
        size.height * 0.4078894);
    path_100.cubicTo(
        size.width * 0.1262196,
        size.height * 0.4076316,
        size.width * 0.1230675,
        size.height * 0.4075072,
        size.width * 0.1199465,
        size.height * 0.4074983);
    path_100.cubicTo(
        size.width * 0.1168151,
        size.height * 0.4075160,
        size.width * 0.1136837,
        size.height * 0.4076316,
        size.width * 0.1105627,
        size.height * 0.4078805);
    path_100.cubicTo(
        size.width * 0.1082090,
        size.height * 0.4080849,
        size.width * 0.1058553,
        size.height * 0.4083516,
        size.width * 0.1035327,
        size.height * 0.4087071);
    path_100.cubicTo(
        size.width * 0.09390002,
        size.height * 0.4100492,
        size.width * 0.08503468,
        size.height * 0.4126091,
        size.width * 0.07739286,
        size.height * 0.4163867);
    path_100.lineTo(size.width * 0.08295055, size.height * 0.4191510);
    path_100.cubicTo(
        size.width * 0.08712919,
        size.height * 0.4170800,
        size.width * 0.09180552,
        size.height * 0.4154356,
        size.width * 0.09677219,
        size.height * 0.4141912);
    path_100.cubicTo(
        size.width * 0.09840009,
        size.height * 0.4138890,
        size.width * 0.1000384,
        size.height * 0.4136224,
        size.width * 0.1016766,
        size.height * 0.4133913);
    path_100.cubicTo(
        size.width * 0.1047251,
        size.height * 0.4129824,
        size.width * 0.1077839,
        size.height * 0.4126447,
        size.width * 0.1108530,
        size.height * 0.4124669);
    path_100.cubicTo(
        size.width * 0.1139326,
        size.height * 0.4122625,
        size.width * 0.1170329,
        size.height * 0.4121558,
        size.width * 0.1201020,
        size.height * 0.4121736);
    path_100.cubicTo(
        size.width * 0.1231919,
        size.height * 0.4121558,
        size.width * 0.1262818,
        size.height * 0.4122713,
        size.width * 0.1293510,
        size.height * 0.4124758);
    path_100.cubicTo(
        size.width * 0.1324306,
        size.height * 0.4126624,
        size.width * 0.1354997,
        size.height * 0.4130002,
        size.width * 0.1385482,
        size.height * 0.4134180);
    path_100.cubicTo(
        size.width * 0.1406945,
        size.height * 0.4137113,
        size.width * 0.1428201,
        size.height * 0.4140935,
        size.width * 0.1449354,
        size.height * 0.4145023);
    path_100.cubicTo(
        size.width * 0.1491244,
        size.height * 0.4156312,
        size.width * 0.1530852,
        size.height * 0.4170711,
        size.width * 0.1566832,
        size.height * 0.4188132);
    path_100.lineTo(size.width * 0.1565795, size.height * 0.4188665);
    path_100.lineTo(size.width * 0.2601122, size.height * 0.4701083);

    Paint paint_100_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.002073764;
    paint_100_stroke.color = Color(0xff0e2947).withOpacity(1.0);
    paint_100_stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_100, paint_100_stroke);

    Path path_101 = Path();
    path_101.moveTo(size.width * 0.6933111, size.height * 0.5180879);
    path_101.lineTo(size.width * 0.7020416, size.height * 0.5137682);
    path_101.cubicTo(
        size.width * 0.7084288,
        size.height * 0.5108528,
        size.width * 0.7147849,
        size.height * 0.5079018,
        size.width * 0.7210891,
        size.height * 0.5048709);
    path_101.cubicTo(
        size.width * 0.7249774,
        size.height * 0.5030221,
        size.width * 0.7288554,
        size.height * 0.5011288,
        size.width * 0.7327230,
        size.height * 0.4992445);
    path_101.lineTo(size.width * 0.7443360, size.height * 0.4935648);
    path_101.lineTo(size.width * 0.7558765, size.height * 0.4878051);
    path_101.cubicTo(
        size.width * 0.7597130,
        size.height * 0.4858496,
        size.width * 0.7635495,
        size.height * 0.4839297,
        size.width * 0.7673755,
        size.height * 0.4819654);
    path_101.cubicTo(
        size.width * 0.7736383,
        size.height * 0.4787656,
        size.width * 0.7798492,
        size.height * 0.4755035,
        size.width * 0.7860291,
        size.height * 0.4721881);
    path_101.lineTo(size.width * 0.7968230, size.height * 0.4668462);

    Paint paint_101_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.002073764;
    paint_101_stroke.color = Color(0xff0e2947).withOpacity(1.0);
    paint_101_stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_101, paint_101_stroke);

    Path path_102 = Path();
    path_102.moveTo(size.width * 0.2996692, size.height * 0.4505004);
    path_102.cubicTo(
        size.width * 0.3415385,
        size.height * 0.4713526,
        size.width * 0.3414556,
        size.height * 0.5052264,
        size.width * 0.2996485,
        size.height * 0.5261853);
    path_102.lineTo(size.width * 0.2995967, size.height * 0.5261586);
    path_102.cubicTo(
        size.width * 0.2974503,
        size.height * 0.5272341,
        size.width * 0.2955010,
        size.height * 0.5283629,
        size.width * 0.2937383,
        size.height * 0.5295451);
    path_102.cubicTo(
        size.width * 0.2939353,
        size.height * 0.5293673,
        size.width * 0.2941427,
        size.height * 0.5291807,
        size.width * 0.2943397,
        size.height * 0.5290029);
    path_102.cubicTo(
        size.width * 0.2909802,
        size.height * 0.5309583,
        size.width * 0.2879317,
        size.height * 0.5335360,
        size.width * 0.2856506,
        size.height * 0.5367536);
    path_102.cubicTo(
        size.width * 0.2852047,
        size.height * 0.5373758,
        size.width * 0.2848003,
        size.height * 0.5380246,
        size.width * 0.2844271,
        size.height * 0.5387002);
    path_102.cubicTo(
        size.width * 0.2843338,
        size.height * 0.5388513,
        size.width * 0.2842508,
        size.height * 0.5390113,
        size.width * 0.2841679,
        size.height * 0.5391624);
    path_102.cubicTo(
        size.width * 0.2841471,
        size.height * 0.5391979,
        size.width * 0.2841264,
        size.height * 0.5392424,
        size.width * 0.2841056,
        size.height * 0.5392779);
    path_102.cubicTo(
        size.width * 0.2826125,
        size.height * 0.5419178,
        size.width * 0.2818349,
        size.height * 0.5446821,
        size.width * 0.2818141,
        size.height * 0.5475175);
    path_102.cubicTo(
        size.width * 0.2817312,
        size.height * 0.5555437,
        size.width * 0.2875896,
        size.height * 0.5631966,
        size.width * 0.2987464,
        size.height * 0.5689208);
    path_102.lineTo(size.width * 0.2982280, size.height * 0.5691785);
    path_102.lineTo(size.width * 0.3088456, size.height * 0.5744316);
    path_102.cubicTo(
        size.width * 0.3150877,
        size.height * 0.5777736,
        size.width * 0.3213608,
        size.height * 0.5810623,
        size.width * 0.3276858,
        size.height * 0.5842888);
    path_102.cubicTo(
        size.width * 0.3315015,
        size.height * 0.5862621,
        size.width * 0.3353380,
        size.height * 0.5881820,
        size.width * 0.3391848,
        size.height * 0.5901374);
    path_102.lineTo(size.width * 0.3507357, size.height * 0.5958882);
    path_102.lineTo(size.width * 0.3623384, size.height * 0.6015768);
    path_102.cubicTo(
        size.width * 0.3662163,
        size.height * 0.6034523,
        size.width * 0.3700839,
        size.height * 0.6053544,
        size.width * 0.3739722,
        size.height * 0.6072032);
    path_102.cubicTo(
        size.width * 0.3803075,
        size.height * 0.6102430,
        size.width * 0.3866740,
        size.height * 0.6132029,
        size.width * 0.3930819,
        size.height * 0.6161271);
    path_102.lineTo(size.width * 0.4017606, size.height * 0.6204202);
    path_102.lineTo(size.width * 0.4020095, size.height * 0.6202958);
    path_102.cubicTo(
        size.width * 0.4066962,
        size.height * 0.6225801,
        size.width * 0.4120154,
        size.height * 0.6244111,
        size.width * 0.4177597,
        size.height * 0.6257711);
    path_102.cubicTo(
        size.width * 0.4143380,
        size.height * 0.6250778,
        size.width * 0.4109474,
        size.height * 0.6242334,
        size.width * 0.4076294,
        size.height * 0.6232023);
    path_102.cubicTo(
        size.width * 0.4133011,
        size.height * 0.6256466,
        size.width * 0.4194602,
        size.height * 0.6272821,
        size.width * 0.4257230,
        size.height * 0.6283309);
    path_102.cubicTo(
        size.width * 0.4288543,
        size.height * 0.6288820,
        size.width * 0.4320272,
        size.height * 0.6292287,
        size.width * 0.4352104,
        size.height * 0.6294864);
    path_102.cubicTo(
        size.width * 0.4383833,
        size.height * 0.6297264,
        size.width * 0.4415873,
        size.height * 0.6298242,
        size.width * 0.4447809,
        size.height * 0.6298242);
    path_102.cubicTo(
        size.width * 0.4479848,
        size.height * 0.6297797,
        size.width * 0.4511680,
        size.height * 0.6296464,
        size.width * 0.4543513,
        size.height * 0.6293531);
    path_102.cubicTo(
        size.width * 0.4575241,
        size.height * 0.6290420,
        size.width * 0.4606866,
        size.height * 0.6286243,
        size.width * 0.4638076,
        size.height * 0.6280198);
    path_102.cubicTo(
        size.width * 0.4700393,
        size.height * 0.6268288,
        size.width * 0.4761362,
        size.height * 0.6250244,
        size.width * 0.4817146,
        size.height * 0.6224290);
    path_102.cubicTo(
        size.width * 0.4804600,
        size.height * 0.6228557,
        size.width * 0.4791950,
        size.height * 0.6232468,
        size.width * 0.4779196,
        size.height * 0.6236290);
    path_102.cubicTo(
        size.width * 0.4811650,
        size.height * 0.6225357,
        size.width * 0.4842549,
        size.height * 0.6212735,
        size.width * 0.4871582,
        size.height * 0.6198336);
    path_102.lineTo(size.width * 0.4871064, size.height * 0.6198069);
    path_102.lineTo(size.width * 0.4946652, size.height * 0.6160649);
    path_102.cubicTo(
        size.width * 0.5010835,
        size.height * 0.6131406,
        size.width * 0.5074707,
        size.height * 0.6101630,
        size.width * 0.5138061,
        size.height * 0.6071232);
    path_102.cubicTo(
        size.width * 0.5176944,
        size.height * 0.6052744,
        size.width * 0.5215723,
        size.height * 0.6033812,
        size.width * 0.5254503,
        size.height * 0.6014968);
    path_102.lineTo(size.width * 0.5370530, size.height * 0.5958082);
    path_102.lineTo(size.width * 0.5486038, size.height * 0.5900485);
    path_102.cubicTo(
        size.width * 0.5524403,
        size.height * 0.5880931,
        size.width * 0.5562768,
        size.height * 0.5861821,
        size.width * 0.5601029,
        size.height * 0.5842088);
    path_102.cubicTo(
        size.width * 0.5663656,
        size.height * 0.5810090,
        size.width * 0.5725973,
        size.height * 0.5777381,
        size.width * 0.5787875,
        size.height * 0.5744227);
    path_102.lineTo(size.width * 0.5893740, size.height * 0.5691785);
    path_102.lineTo(size.width * 0.5896955, size.height * 0.5693385);
    path_102.lineTo(size.width * 0.5984053, size.height * 0.5650276);
    path_102.cubicTo(
        size.width * 0.6047925,
        size.height * 0.5621122,
        size.width * 0.6111589,
        size.height * 0.5591524,
        size.width * 0.6174735,
        size.height * 0.5561215);
    path_102.cubicTo(
        size.width * 0.6213618,
        size.height * 0.5542727,
        size.width * 0.6252294,
        size.height * 0.5523794,
        size.width * 0.6291073,
        size.height * 0.5504951);
    path_102.lineTo(size.width * 0.6407204, size.height * 0.5448154);
    path_102.lineTo(size.width * 0.6522609, size.height * 0.5390557);
    path_102.cubicTo(
        size.width * 0.6560974,
        size.height * 0.5371002,
        size.width * 0.6599338,
        size.height * 0.5351803,
        size.width * 0.6637599,
        size.height * 0.5332160);
    path_102.cubicTo(
        size.width * 0.6700538,
        size.height * 0.5299984,
        size.width * 0.6762958,
        size.height * 0.5267186,
        size.width * 0.6825171,
        size.height * 0.5233854);
    path_102.lineTo(size.width * 0.6932074, size.height * 0.5180879);

    Paint paint_102_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.002073764;
    paint_102_stroke.color = Color(0xff0e2947).withOpacity(1.0);
    paint_102_stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_102, paint_102_stroke);

    Path path_103 = Path();
    path_103.moveTo(size.width * 0.3183953, size.height * 0.5210389);
    path_103.cubicTo(
        size.width * 0.3224910,
        size.height * 0.5182213,
        size.width * 0.3262549,
        size.height * 0.5150392,
        size.width * 0.3294692,
        size.height * 0.5114216);
    path_103.cubicTo(
        size.width * 0.3323518,
        size.height * 0.5082040,
        size.width * 0.3347469,
        size.height * 0.5046486,
        size.width * 0.3364785,
        size.height * 0.5008355);
    path_103.cubicTo(
        size.width * 0.3381894,
        size.height * 0.4970135,
        size.width * 0.3391433,
        size.height * 0.4929337,
        size.width * 0.3392263,
        size.height * 0.4888362);
    path_103.cubicTo(
        size.width * 0.3392989,
        size.height * 0.4847386,
        size.width * 0.3384901,
        size.height * 0.4806233,
        size.width * 0.3369244,
        size.height * 0.4767657);
    path_103.cubicTo(
        size.width * 0.3353276,
        size.height * 0.4729081,
        size.width * 0.3330257,
        size.height * 0.4692994,
        size.width * 0.3302158,
        size.height * 0.4660285);
    path_103.cubicTo(
        size.width * 0.3274266,
        size.height * 0.4627487,
        size.width * 0.3241500,
        size.height * 0.4597977,
        size.width * 0.3205935,
        size.height * 0.4571490);
    path_103.cubicTo(
        size.width * 0.3203343,
        size.height * 0.4569623,
        size.width * 0.3200647,
        size.height * 0.4567845,
        size.width * 0.3198055,
        size.height * 0.4565979);

    Paint paint_103_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.002073764;
    paint_103_stroke.color = Color(0xff0e2947).withOpacity(1.0);
    paint_103_stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_103, paint_103_stroke);

    Path path_104 = Path();
    path_104.moveTo(size.width * 0.7941167, size.height * 0.7884113);
    path_104.lineTo(size.width * 0.8028058, size.height * 0.7841093);
    path_104.cubicTo(
        size.width * 0.8092034,
        size.height * 0.7811939,
        size.width * 0.8155698,
        size.height * 0.7782252,
        size.width * 0.8218948,
        size.height * 0.7751942);
    path_104.cubicTo(
        size.width * 0.8257831,
        size.height * 0.7733454,
        size.width * 0.8296610,
        size.height * 0.7714522,
        size.width * 0.8335390,
        size.height * 0.7695678);
    path_104.lineTo(size.width * 0.8451521, size.height * 0.7638881);
    path_104.lineTo(size.width * 0.8566926, size.height * 0.7581285);
    path_104.cubicTo(
        size.width * 0.8605290,
        size.height * 0.7561730,
        size.width * 0.8643655,
        size.height * 0.7542531,
        size.width * 0.8681916,
        size.height * 0.7522888);
    path_104.cubicTo(
        size.width * 0.8744647,
        size.height * 0.7490800,
        size.width * 0.8806964,
        size.height * 0.7458091,
        size.width * 0.8868969,
        size.height * 0.7424937);
    path_104.lineTo(size.width * 0.8973280, size.height * 0.7373296);
    path_104.lineTo(size.width * 0.8974939, size.height * 0.7374096);
    path_104.cubicTo(
        size.width * 0.9093143,
        size.height * 0.7315699,
        size.width * 0.9152971,
        size.height * 0.7242636,
        size.width * 0.9153490,
        size.height * 0.7163085);
    path_104.cubicTo(
        size.width * 0.9154008,
        size.height * 0.7083622,
        size.width * 0.9093869,
        size.height * 0.7008426,
        size.width * 0.8980745,
        size.height * 0.6952163);
    path_104.lineTo(size.width * 0.8980330, size.height * 0.6952340);
    path_104.cubicTo(
        size.width * 0.8894995,
        size.height * 0.6910209,
        size.width * 0.8788404,
        size.height * 0.6882744,
        size.width * 0.8672791,
        size.height * 0.6871811);
    path_104.cubicTo(
        size.width * 0.8664496,
        size.height * 0.6870922,
        size.width * 0.8656201,
        size.height * 0.6870122,
        size.width * 0.8647802,
        size.height * 0.6869323);
    path_104.cubicTo(
        size.width * 0.8616592,
        size.height * 0.6866745,
        size.width * 0.8585175,
        size.height * 0.6865501,
        size.width * 0.8553861,
        size.height * 0.6865412);
    path_104.cubicTo(
        size.width * 0.8522443,
        size.height * 0.6865501,
        size.width * 0.8491129,
        size.height * 0.6866745,
        size.width * 0.8460023,
        size.height * 0.6869234);
    path_104.cubicTo(
        size.width * 0.8436382,
        size.height * 0.6871367,
        size.width * 0.8412741,
        size.height * 0.6874033,
        size.width * 0.8389308,
        size.height * 0.6877589);
    path_104.cubicTo(
        size.width * 0.8295055,
        size.height * 0.6890744,
        size.width * 0.8208164,
        size.height * 0.6915631,
        size.width * 0.8132990,
        size.height * 0.6952163);
    path_104.lineTo(size.width * 0.8132783, size.height * 0.6952163);
    path_104.cubicTo(
        size.width * 0.8132783,
        size.height * 0.6952163,
        size.width * 0.8051180,
        size.height * 0.6992427,
        size.width * 0.8051180,
        size.height * 0.6992427);
    path_104.cubicTo(
        size.width * 0.7977977,
        size.height * 0.7025314,
        size.width * 0.7905188,
        size.height * 0.7058912,
        size.width * 0.7833228,
        size.height * 0.7093488);
    path_104.cubicTo(
        size.width * 0.7796937,
        size.height * 0.7110554,
        size.width * 0.7761165,
        size.height * 0.7128242,
        size.width * 0.7725185,
        size.height * 0.7145486);
    path_104.lineTo(size.width * 0.7617556, size.height * 0.7198283);
    path_104.lineTo(size.width * 0.7510550, size.height * 0.7251791);
    path_104.cubicTo(
        size.width * 0.7475089,
        size.height * 0.7269746,
        size.width * 0.7439316,
        size.height * 0.7287700,
        size.width * 0.7404063,
        size.height * 0.7306010);
    path_104.cubicTo(
        size.width * 0.7333243,
        size.height * 0.7342186,
        size.width * 0.7262943,
        size.height * 0.7379162,
        size.width * 0.7193368,
        size.height * 0.7417027);

    Paint paint_104_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.002073764;
    paint_104_stroke.color = Color(0xff0e2947).withOpacity(1.0);
    paint_104_stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_104, paint_104_stroke);

    Path path_105 = Path();
    path_105.moveTo(size.width * 0.7152619, size.height * 0.7492134);
    path_105.lineTo(size.width * 0.8183590, size.height * 0.6981939);
    path_105.lineTo(size.width * 0.8183590, size.height * 0.6981939);
    path_105.cubicTo(
        size.width * 0.8225273,
        size.height * 0.6961407,
        size.width * 0.8271829,
        size.height * 0.6944963,
        size.width * 0.8321185,
        size.height * 0.6932519);
    path_105.cubicTo(
        size.width * 0.8337671,
        size.height * 0.6929497,
        size.width * 0.8354261,
        size.height * 0.6926742,
        size.width * 0.8370851,
        size.height * 0.6924342);
    path_105.cubicTo(
        size.width * 0.8401439,
        size.height * 0.6920253,
        size.width * 0.8431924,
        size.height * 0.6916876,
        size.width * 0.8462719,
        size.height * 0.6915009);
    path_105.cubicTo(
        size.width * 0.8493514,
        size.height * 0.6912965,
        size.width * 0.8524517,
        size.height * 0.6911809,
        size.width * 0.8555209,
        size.height * 0.6912076);
    path_105.cubicTo(
        size.width * 0.8586212,
        size.height * 0.6911898,
        size.width * 0.8617007,
        size.height * 0.6912965,
        size.width * 0.8647699,
        size.height * 0.6915098);
    path_105.cubicTo(
        size.width * 0.8678494,
        size.height * 0.6916964,
        size.width * 0.8709186,
        size.height * 0.6920342,
        size.width * 0.8739670,
        size.height * 0.6924520);
    path_105.cubicTo(
        size.width * 0.8761134,
        size.height * 0.6927542,
        size.width * 0.8782390,
        size.height * 0.6931275,
        size.width * 0.8803542,
        size.height * 0.6935363);
    path_105.cubicTo(
        size.width * 0.8847402,
        size.height * 0.6947185,
        size.width * 0.8888670,
        size.height * 0.6962295,
        size.width * 0.8925998,
        size.height * 0.6980872);
    path_105.lineTo(size.width * 0.8926516, size.height * 0.6980605);
    path_105.cubicTo(
        size.width * 0.9034248,
        size.height * 0.7034736,
        size.width * 0.9083811,
        size.height * 0.7105488,
        size.width * 0.9075931,
        size.height * 0.7175262);
    path_105.cubicTo(
        size.width * 0.9072198,
        size.height * 0.7205305,
        size.width * 0.9057371,
        size.height * 0.7234370,
        size.width * 0.9035285,
        size.height * 0.7259791);
    path_105.cubicTo(
        size.width * 0.9011955,
        size.height * 0.7286811,
        size.width * 0.8981264,
        size.height * 0.7310010,
        size.width * 0.8948291,
        size.height * 0.7331165);
    path_105.cubicTo(
        size.width * 0.8940099,
        size.height * 0.7335875,
        size.width * 0.8931701,
        size.height * 0.7340497,
        size.width * 0.8922783,
        size.height * 0.7345030);
    path_105.lineTo(size.width * 0.8921021, size.height * 0.7344142);
    path_105.lineTo(size.width * 0.8426635, size.height * 0.7588840);
    path_105.lineTo(size.width * 0.8410564, size.height * 0.7596750);
    path_105.lineTo(size.width * 0.8393766, size.height * 0.7605106);

    Paint paint_105_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.002073764;
    paint_105_stroke.color = Color(0xff0e2947).withOpacity(1.0);
    paint_105_stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_105, paint_105_stroke);

    Path path_106 = Path();
    path_106.moveTo(size.width * 0.4607903, size.height * 0.9264039);
    path_106.lineTo(size.width * 0.5636490, size.height * 0.9773168);
    path_106.lineTo(size.width * 0.5636075, size.height * 0.9773345);
    path_106.cubicTo(
        size.width * 0.5720477,
        size.height * 0.9815299,
        size.width * 0.5815559,
        size.height * 0.9850141,
        size.width * 0.5919662,
        size.height * 0.9877251);
    path_106.cubicTo(
        size.width * 0.5988408,
        size.height * 0.9898228,
        size.width * 0.6059330,
        size.height * 0.9914493,
        size.width * 0.6131083,
        size.height * 0.9926226);
    path_106.cubicTo(
        size.width * 0.6238711,
        size.height * 0.9944003,
        size.width * 0.6348413,
        size.height * 0.9952358,
        size.width * 0.6457908,
        size.height * 0.9952447);
    path_106.cubicTo(
        size.width * 0.6512759,
        size.height * 0.9952269,
        size.width * 0.6567506,
        size.height * 0.9950136,
        size.width * 0.6622150,
        size.height * 0.9945781);
    path_106.cubicTo(
        size.width * 0.6676690,
        size.height * 0.9941248,
        size.width * 0.6731022,
        size.height * 0.9934937,
        size.width * 0.6784733,
        size.height * 0.9925782);
    path_106.cubicTo(
        size.width * 0.6841969,
        size.height * 0.9916360,
        size.width * 0.6898583,
        size.height * 0.9904005,
        size.width * 0.6954056,
        size.height * 0.9888806);
    path_106.cubicTo(
        size.width * 0.7075786,
        size.height * 0.9860719,
        size.width * 0.7186006,
        size.height * 0.9822409,
        size.width * 0.7282644,
        size.height * 0.9775034);
    path_106.lineTo(size.width * 0.7283992, size.height * 0.9775656);
    path_106.cubicTo(
        size.width * 0.7335214,
        size.height * 0.9750236,
        size.width * 0.7381147,
        size.height * 0.9722948,
        size.width * 0.7421482,
        size.height * 0.9693883);
    path_106.cubicTo(
        size.width * 0.7462232,
        size.height * 0.9665707,
        size.width * 0.7499767,
        size.height * 0.9634064,
        size.width * 0.7531806,
        size.height * 0.9598066);
    path_106.cubicTo(
        size.width * 0.7560632,
        size.height * 0.9565979,
        size.width * 0.7584584,
        size.height * 0.9530336,
        size.width * 0.7601900,
        size.height * 0.9492205);
    path_106.cubicTo(
        size.width * 0.7619008,
        size.height * 0.9453985,
        size.width * 0.7628547,
        size.height * 0.9413187,
        size.width * 0.7629273,
        size.height * 0.9372122);
    path_106.cubicTo(
        size.width * 0.7629999,
        size.height * 0.9331236,
        size.width * 0.7622015,
        size.height * 0.9289993,
        size.width * 0.7606254,
        size.height * 0.9251418);
    path_106.cubicTo(
        size.width * 0.7590286,
        size.height * 0.9212842,
        size.width * 0.7567164,
        size.height * 0.9176844,
        size.width * 0.7539065,
        size.height * 0.9144135);
    path_106.cubicTo(
        size.width * 0.7511172,
        size.height * 0.9111336,
        size.width * 0.7478407,
        size.height * 0.9081827,
        size.width * 0.7442842,
        size.height * 0.9055339);
    path_106.cubicTo(
        size.width * 0.7440042,
        size.height * 0.9053295,
        size.width * 0.7437035,
        size.height * 0.9051339,
        size.width * 0.7434236,
        size.height * 0.9049295);
    path_106.cubicTo(
        size.width * 0.7392242,
        size.height * 0.9017919,
        size.width * 0.7343820,
        size.height * 0.8988498,
        size.width * 0.7289280,
        size.height * 0.8961300);
    path_106.lineTo(size.width * 0.7287517, size.height * 0.8962189);
    path_106.cubicTo(
        size.width * 0.7246560,
        size.height * 0.8940412,
        size.width * 0.7214313,
        size.height * 0.8916058,
        size.width * 0.7191087,
        size.height * 0.8890281);
    path_106.cubicTo(
        size.width * 0.7186836,
        size.height * 0.8884948,
        size.width * 0.7182688,
        size.height * 0.8879615,
        size.width * 0.7178852,
        size.height * 0.8873927);
    path_106.cubicTo(
        size.width * 0.7160292,
        size.height * 0.8846817,
        size.width * 0.7148782,
        size.height * 0.8815885,
        size.width * 0.7148575,
        size.height * 0.8784420);
    path_106.cubicTo(
        size.width * 0.7147849,
        size.height * 0.8752955,
        size.width * 0.7158633,
        size.height * 0.8721757,
        size.width * 0.7176156,
        size.height * 0.8694203);
    path_106.cubicTo(
        size.width * 0.7179578,
        size.height * 0.8688692,
        size.width * 0.7183518,
        size.height * 0.8683448,
        size.width * 0.7187562,
        size.height * 0.8678204);
    path_106.cubicTo(
        size.width * 0.7213691,
        size.height * 0.8647450,
        size.width * 0.7251745,
        size.height * 0.8618563,
        size.width * 0.7301826,
        size.height * 0.8593497);
    path_106.lineTo(size.width * 0.7301515, size.height * 0.8593319);
    path_106.lineTo(size.width * 0.8335701, size.height * 0.8081525);

    Paint paint_106_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.002073764;
    paint_106_stroke.color = Color(0xff0e2947).withOpacity(1.0);
    paint_106_stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_106, paint_106_stroke);

    Path path_107 = Path();
    path_107.moveTo(size.width * 0.7232147, size.height * 0.9746414);
    path_107.lineTo(size.width * 0.7230696, size.height * 0.9745702);
    path_107.cubicTo(
        size.width * 0.7076926,
        size.height * 0.9821787,
        size.width * 0.6888525,
        size.height * 0.9870229,
        size.width * 0.6690688,
        size.height * 0.9891295);
    path_107.cubicTo(
        size.width * 0.6668706,
        size.height * 0.9893517,
        size.width * 0.6646620,
        size.height * 0.9895472,
        size.width * 0.6624638,
        size.height * 0.9896983);
    path_107.cubicTo(
        size.width * 0.6570513,
        size.height * 0.9900805,
        size.width * 0.6516181,
        size.height * 0.9902939,
        size.width * 0.6461848,
        size.height * 0.9902761);
    path_107.cubicTo(
        size.width * 0.6407515,
        size.height * 0.9902939,
        size.width * 0.6353286,
        size.height * 0.9900983,
        size.width * 0.6299265,
        size.height * 0.9897250);
    path_107.cubicTo(
        size.width * 0.6278527,
        size.height * 0.9895917,
        size.width * 0.6257893,
        size.height * 0.9894050,
        size.width * 0.6237259,
        size.height * 0.9892095);
    path_107.cubicTo(
        size.width * 0.6037141,
        size.height * 0.9871385,
        size.width * 0.5846666,
        size.height * 0.9822676,
        size.width * 0.5691963,
        size.height * 0.9745614);
    path_107.lineTo(size.width * 0.5691963, size.height * 0.9745614);
    path_107.cubicTo(
        size.width * 0.5691963,
        size.height * 0.9745614,
        size.width * 0.5603102,
        size.height * 0.9701705,
        size.width * 0.5603102,
        size.height * 0.9701705);
    path_107.cubicTo(
        size.width * 0.5603102,
        size.height * 0.9701705,
        size.width * 0.5603102,
        size.height * 0.9701705,
        size.width * 0.5603102,
        size.height * 0.9701705);
    path_107.cubicTo(
        size.width * 0.5533320,
        size.height * 0.9663662,
        size.width * 0.5462916,
        size.height * 0.9626687,
        size.width * 0.5391993,
        size.height * 0.9590333);
    path_107.cubicTo(
        size.width * 0.5356636,
        size.height * 0.9572023,
        size.width * 0.5320967,
        size.height * 0.9554157,
        size.width * 0.5285505,
        size.height * 0.9536114);
    path_107.lineTo(size.width * 0.5178499, size.height * 0.9482694);
    path_107.lineTo(size.width * 0.5070871, size.height * 0.9429897);
    path_107.cubicTo(
        size.width * 0.5034995,
        size.height * 0.9412654,
        size.width * 0.4999119,
        size.height * 0.9395054,
        size.width * 0.4962828,
        size.height * 0.9377900);
    path_107.cubicTo(
        size.width * 0.4890868,
        size.height * 0.9343502,
        size.width * 0.4818390,
        size.height * 0.9309903,
        size.width * 0.4745290,
        size.height * 0.9277105);

    Paint paint_107_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.002073764;
    paint_107_stroke.color = Color(0xff0e2947).withOpacity(1.0);
    paint_107_stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_107, paint_107_stroke);

    Path path_108 = Path();
    path_108.moveTo(size.width * 0.8198314, size.height * 0.8094502);
    path_108.cubicTo(
        size.width * 0.8198314,
        size.height * 0.8094502,
        size.width * 0.8198625,
        size.height * 0.8094324,
        size.width * 0.8198729,
        size.height * 0.8094235);
    path_108.cubicTo(
        size.width * 0.8125421,
        size.height * 0.8127122,
        size.width * 0.8052736,
        size.height * 0.8160809,
        size.width * 0.7980776,
        size.height * 0.8195296);
    path_108.cubicTo(
        size.width * 0.7944485,
        size.height * 0.8212451,
        size.width * 0.7908609,
        size.height * 0.8230050,
        size.width * 0.7872733,
        size.height * 0.8247382);
    path_108.lineTo(size.width * 0.7765105, size.height * 0.8300180);
    path_108.lineTo(size.width * 0.7658099, size.height * 0.8353599);
    path_108.cubicTo(
        size.width * 0.7622534,
        size.height * 0.8371642,
        size.width * 0.7586865,
        size.height * 0.8389597,
        size.width * 0.7551611,
        size.height * 0.8407907);
    path_108.cubicTo(
        size.width * 0.7480688,
        size.height * 0.8444261,
        size.width * 0.7410180,
        size.height * 0.8481237,
        size.width * 0.7340502,
        size.height * 0.8519190);
    path_108.cubicTo(
        size.width * 0.7340502,
        size.height * 0.8519190,
        size.width * 0.7340709,
        size.height * 0.8519101,
        size.width * 0.7340813,
        size.height * 0.8519012);
    path_108.lineTo(size.width * 0.7245212, size.height * 0.8566299);
    path_108.lineTo(size.width * 0.7245523, size.height * 0.8566476);
    path_108.cubicTo(
        size.width * 0.7224786,
        size.height * 0.8576965,
        size.width * 0.7205811,
        size.height * 0.8587986,
        size.width * 0.7188702,
        size.height * 0.8599364);
    path_108.cubicTo(
        size.width * 0.7190672,
        size.height * 0.8597586,
        size.width * 0.7192642,
        size.height * 0.8595808,
        size.width * 0.7194612,
        size.height * 0.8594031);
    path_108.cubicTo(
        size.width * 0.7161121,
        size.height * 0.8613585,
        size.width * 0.7130533,
        size.height * 0.8639361,
        size.width * 0.7107722,
        size.height * 0.8671538);
    path_108.cubicTo(
        size.width * 0.7103263,
        size.height * 0.8677671,
        size.width * 0.7099219,
        size.height * 0.8684159,
        size.width * 0.7095486,
        size.height * 0.8690825);
    path_108.cubicTo(
        size.width * 0.7094346,
        size.height * 0.8692603,
        size.width * 0.7093413,
        size.height * 0.8694470,
        size.width * 0.7092376,
        size.height * 0.8696336);
    path_108.cubicTo(
        size.width * 0.7092376,
        size.height * 0.8696425,
        size.width * 0.7092272,
        size.height * 0.8696514,
        size.width * 0.7092168,
        size.height * 0.8696692);
    path_108.cubicTo(
        size.width * 0.7077237,
        size.height * 0.8723179,
        size.width * 0.7069461,
        size.height * 0.8750733,
        size.width * 0.7069150,
        size.height * 0.8779176);
    path_108.cubicTo(
        size.width * 0.7068320,
        size.height * 0.8859705,
        size.width * 0.7127215,
        size.height * 0.8936412,
        size.width * 0.7239509,
        size.height * 0.8993743);
    path_108.lineTo(size.width * 0.7241376, size.height * 0.8992854);

    Paint paint_108_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.002073764;
    paint_108_stroke.color = Color(0xff0e2947).withOpacity(1.0);
    paint_108_stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_108, paint_108_stroke);

    Path path_109 = Path();
    path_109.moveTo(size.width * 0.1584978, size.height * 0.8554122);
    path_109.lineTo(size.width * 0.1692813, size.height * 0.8607541);
    path_109.cubicTo(
        size.width * 0.1754612,
        size.height * 0.8640606,
        size.width * 0.1816824,
        size.height * 0.8673315,
        size.width * 0.1879452,
        size.height * 0.8705313);
    path_109.cubicTo(
        size.width * 0.1917609,
        size.height * 0.8725046,
        size.width * 0.1955974,
        size.height * 0.8744245,
        size.width * 0.1994442,
        size.height * 0.8763710);
    path_109.lineTo(size.width * 0.2109847, size.height * 0.8821307);
    path_109.lineTo(size.width * 0.2225874, size.height * 0.8878193);
    path_109.cubicTo(
        size.width * 0.2264654,
        size.height * 0.8896948,
        size.width * 0.2303329,
        size.height * 0.8915880,
        size.width * 0.2342212,
        size.height * 0.8934457);
    path_109.cubicTo(
        size.width * 0.2405151,
        size.height * 0.8964589,
        size.width * 0.2468505,
        size.height * 0.8994098,
        size.width * 0.2532169,
        size.height * 0.9023163);
    path_109.lineTo(size.width * 0.2620097, size.height * 0.9066628);
    path_109.lineTo(size.width * 0.2620408, size.height * 0.9066450);
    path_109.cubicTo(
        size.width * 0.2668208,
        size.height * 0.9090004,
        size.width * 0.2722644,
        size.height * 0.9108848,
        size.width * 0.2781747,
        size.height * 0.9122891);
    path_109.cubicTo(
        size.width * 0.2747322,
        size.height * 0.9115869,
        size.width * 0.2713313,
        size.height * 0.9107514,
        size.width * 0.2679925,
        size.height * 0.9097115);
    path_109.cubicTo(
        size.width * 0.2736642,
        size.height * 0.9121558,
        size.width * 0.2798233,
        size.height * 0.9137913,
        size.width * 0.2860861,
        size.height * 0.9148401);
    path_109.cubicTo(
        size.width * 0.2892175,
        size.height * 0.9153823,
        size.width * 0.2923903,
        size.height * 0.9157378,
        size.width * 0.2955839,
        size.height * 0.9159956);
    path_109.cubicTo(
        size.width * 0.2987568,
        size.height * 0.9162356,
        size.width * 0.3019607,
        size.height * 0.9163334,
        size.width * 0.3051543,
        size.height * 0.9163245);
    path_109.cubicTo(
        size.width * 0.3083583,
        size.height * 0.9162800,
        size.width * 0.3115519,
        size.height * 0.9161467,
        size.width * 0.3147248,
        size.height * 0.9158534);
    path_109.cubicTo(
        size.width * 0.3178976,
        size.height * 0.9155423,
        size.width * 0.3210601,
        size.height * 0.9151245,
        size.width * 0.3241811,
        size.height * 0.9145201);
    path_109.cubicTo(
        size.width * 0.3304128,
        size.height * 0.9133291,
        size.width * 0.3365096,
        size.height * 0.9115247,
        size.width * 0.3420881,
        size.height * 0.9089293);
    path_109.cubicTo(
        size.width * 0.3408542,
        size.height * 0.9093559,
        size.width * 0.3395996,
        size.height * 0.9097381,
        size.width * 0.3383553,
        size.height * 0.9101115);
    path_109.cubicTo(
        size.width * 0.3413623,
        size.height * 0.9090982,
        size.width * 0.3442240,
        size.height * 0.9079338,
        size.width * 0.3469407,
        size.height * 0.9066183);
    path_109.lineTo(size.width * 0.3470755, size.height * 0.9066894);
    path_109.cubicTo(
        size.width * 0.3557438,
        size.height * 0.9023963,
        size.width * 0.3655216,
        size.height * 0.8990009,
        size.width * 0.3759423,
        size.height * 0.8964589);
    path_109.cubicTo(
        size.width * 0.3787315,
        size.height * 0.8958722,
        size.width * 0.3815207,
        size.height * 0.8953478,
        size.width * 0.3843410,
        size.height * 0.8948767);
    path_109.cubicTo(
        size.width * 0.3968251,
        size.height * 0.8928235,
        size.width * 0.4095372,
        size.height * 0.8917835,
        size.width * 0.4222494,
        size.height * 0.8917480);
    path_109.cubicTo(
        size.width * 0.4349616,
        size.height * 0.8916769,
        size.width * 0.4476738,
        size.height * 0.8926191,
        size.width * 0.4601993,
        size.height * 0.8945656);
    path_109.cubicTo(
        size.width * 0.4664517,
        size.height * 0.8955433,
        size.width * 0.4726522,
        size.height * 0.8968055,
        size.width * 0.4787491,
        size.height * 0.8983699);
    path_109.cubicTo(
        size.width * 0.4792883,
        size.height * 0.8985032,
        size.width * 0.4798275,
        size.height * 0.8986632,
        size.width * 0.4803666,
        size.height * 0.8988054);
    path_109.cubicTo(
        size.width * 0.4875211,
        size.height * 0.9009742,
        size.width * 0.4942712,
        size.height * 0.9035874,
        size.width * 0.5004510,
        size.height * 0.9066628);
    path_109.lineTo(size.width * 0.5003474, size.height * 0.9067161);
    path_109.lineTo(size.width * 0.5110480, size.height * 0.9120136);
    path_109.cubicTo(
        size.width * 0.5172589,
        size.height * 0.9153378,
        size.width * 0.5235113,
        size.height * 0.9186177,
        size.width * 0.5297948,
        size.height * 0.9218353);
    path_109.cubicTo(
        size.width * 0.5336209,
        size.height * 0.9238085,
        size.width * 0.5374574,
        size.height * 0.9257284,
        size.width * 0.5412938,
        size.height * 0.9276750);
    path_109.lineTo(size.width * 0.5528343, size.height * 0.9334347);
    path_109.lineTo(size.width * 0.5644474, size.height * 0.9391232);
    path_109.cubicTo(
        size.width * 0.5683253,
        size.height * 0.9409987,
        size.width * 0.5721929,
        size.height * 0.9429008,
        size.width * 0.5760812,
        size.height * 0.9447496);
    path_109.cubicTo(
        size.width * 0.5824062,
        size.height * 0.9477806,
        size.width * 0.5887726,
        size.height * 0.9507404,
        size.width * 0.5951598,
        size.height * 0.9536647);
    path_109.lineTo(size.width * 0.6038593, size.height * 0.9579756);
    path_109.lineTo(size.width * 0.6041081, size.height * 0.9578511);
    path_109.cubicTo(
        size.width * 0.6087948,
        size.height * 0.9601355,
        size.width * 0.6141140,
        size.height * 0.9619665,
        size.width * 0.6198687,
        size.height * 0.9633264);
    path_109.cubicTo(
        size.width * 0.6164470,
        size.height * 0.9626331,
        size.width * 0.6130564,
        size.height * 0.9617887,
        size.width * 0.6097280,
        size.height * 0.9607576);
    path_109.cubicTo(
        size.width * 0.6153998,
        size.height * 0.9632020,
        size.width * 0.6215588,
        size.height * 0.9648374,
        size.width * 0.6278112,
        size.height * 0.9658863);
    path_109.cubicTo(
        size.width * 0.6309530,
        size.height * 0.9664373,
        size.width * 0.6341155,
        size.height * 0.9667840,
        size.width * 0.6372987,
        size.height * 0.9670418);
    path_109.cubicTo(
        size.width * 0.6404716,
        size.height * 0.9672817,
        size.width * 0.6436755,
        size.height * 0.9673795,
        size.width * 0.6468691,
        size.height * 0.9673706);
    path_109.cubicTo(
        size.width * 0.6500731,
        size.height * 0.9673262,
        size.width * 0.6532563,
        size.height * 0.9671840,
        size.width * 0.6564396,
        size.height * 0.9668995);
    path_109.cubicTo(
        size.width * 0.6596124,
        size.height * 0.9665884,
        size.width * 0.6627749,
        size.height * 0.9661707,
        size.width * 0.6658959,
        size.height * 0.9655663);
    path_109.cubicTo(
        size.width * 0.6721276,
        size.height * 0.9643752,
        size.width * 0.6782244,
        size.height * 0.9625709,
        size.width * 0.6838029,
        size.height * 0.9599755);
    path_109.cubicTo(
        size.width * 0.6825690,
        size.height * 0.9604021,
        size.width * 0.6813144,
        size.height * 0.9607843,
        size.width * 0.6800597,
        size.height * 0.9611576);
    path_109.cubicTo(
        size.width * 0.6829319,
        size.height * 0.9601888,
        size.width * 0.6856693,
        size.height * 0.9590777,
        size.width * 0.6882822,
        size.height * 0.9578422);
    path_109.lineTo(size.width * 0.6886658, size.height * 0.9580289);
    path_109.cubicTo(
        size.width * 0.7004863,
        size.height * 0.9521803,
        size.width * 0.7064691,
        size.height * 0.9448829,
        size.width * 0.7065210,
        size.height * 0.9369278);
    path_109.cubicTo(
        size.width * 0.7065728,
        size.height * 0.9289816,
        size.width * 0.7005589,
        size.height * 0.9214709,
        size.width * 0.6892361,
        size.height * 0.9158356);
    path_109.lineTo(size.width * 0.6891013, size.height * 0.9159067);
    path_109.cubicTo(
        size.width * 0.6729571,
        size.height * 0.9074183,
        size.width * 0.6633348,
        size.height * 0.8969122,
        size.width * 0.6602449,
        size.height * 0.8860150);
    path_109.cubicTo(
        size.width * 0.6601827,
        size.height * 0.8857750,
        size.width * 0.6601205,
        size.height * 0.8855350,
        size.width * 0.6600583,
        size.height * 0.8852950);
    path_109.cubicTo(
        size.width * 0.6600272,
        size.height * 0.8851528,
        size.width * 0.6599961,
        size.height * 0.8850195,
        size.width * 0.6599650,
        size.height * 0.8848773);
    path_109.cubicTo(
        size.width * 0.6594880,
        size.height * 0.8827618,
        size.width * 0.6592495,
        size.height * 0.8806108,
        size.width * 0.6592702,
        size.height * 0.8784509);
    path_109.cubicTo(
        size.width * 0.6592910,
        size.height * 0.8748511,
        size.width * 0.6600375,
        size.height * 0.8712691,
        size.width * 0.6614062,
        size.height * 0.8678470);
    path_109.cubicTo(
        size.width * 0.6627438,
        size.height * 0.8644428,
        size.width * 0.6647346,
        size.height * 0.8612252,
        size.width * 0.6670883,
        size.height * 0.8582120);
    path_109.cubicTo(
        size.width * 0.6694524,
        size.height * 0.8552255,
        size.width * 0.6722105,
        size.height * 0.8524523,
        size.width * 0.6752382,
        size.height * 0.8499102);
    path_109.cubicTo(
        size.width * 0.6782244,
        size.height * 0.8473326,
        size.width * 0.6815321,
        size.height * 0.8450394,
        size.width * 0.6849331,
        size.height * 0.8428617);
    path_109.cubicTo(
        size.width * 0.6848294,
        size.height * 0.8429150,
        size.width * 0.6847361,
        size.height * 0.8429773,
        size.width * 0.6846324,
        size.height * 0.8430306);
    path_109.cubicTo(
        size.width * 0.6866024,
        size.height * 0.8418573,
        size.width * 0.6886555,
        size.height * 0.8407107,
        size.width * 0.6908433,
        size.height * 0.8396086);
    path_109.lineTo(size.width * 0.6907500, size.height * 0.8395552);
    path_109.lineTo(size.width * 0.6990761, size.height * 0.8354310);
    path_109.cubicTo(
        size.width * 0.7054944,
        size.height * 0.8324978,
        size.width * 0.7118816,
        size.height * 0.8295291,
        size.width * 0.7182273,
        size.height * 0.8264893);
    path_109.cubicTo(
        size.width * 0.7221157,
        size.height * 0.8246405,
        size.width * 0.7259832,
        size.height * 0.8227472,
        size.width * 0.7298612,
        size.height * 0.8208629);
    path_109.lineTo(size.width * 0.7414639, size.height * 0.8151832);
    path_109.lineTo(size.width * 0.7530044, size.height * 0.8094235);
    path_109.cubicTo(
        size.width * 0.7568408,
        size.height * 0.8074680,
        size.width * 0.7606773,
        size.height * 0.8055481,
        size.width * 0.7645034,
        size.height * 0.8035838);
    path_109.cubicTo(
        size.width * 0.7707662,
        size.height * 0.8003840,
        size.width * 0.7769874,
        size.height * 0.7971130,
        size.width * 0.7831673,
        size.height * 0.7938066);
    path_109.lineTo(size.width * 0.7939508, size.height * 0.7884646);

    Paint paint_109_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.002073764;
    paint_109_stroke.color = Color(0xff0e2947).withOpacity(1.0);
    paint_109_stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_109, paint_109_stroke);

    Paint paint_110_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.002073764;
    paint_110_stroke.color = Color(0xff0e2947).withOpacity(1.0);
    paint_110_stroke.strokeJoin = StrokeJoin.round;
    canvas.drawLine(
        Offset(size.width * 0.2150597, size.height * 0.8778998),
        Offset(size.width * 0.2147693, size.height * 0.8777576),
        paint_110_stroke);

    Path path_111 = Path();
    path_111.moveTo(size.width * 0.3845588, size.height * 0.8899081);
    path_111.cubicTo(
        size.width * 0.3783167,
        size.height * 0.8910814,
        size.width * 0.3721162,
        size.height * 0.8925391,
        size.width * 0.3660504,
        size.height * 0.8943256);
    path_111.cubicTo(
        size.width * 0.3611045,
        size.height * 0.8958278,
        size.width * 0.3562311,
        size.height * 0.8975344,
        size.width * 0.3515133,
        size.height * 0.8995076);
    path_111.cubicTo(
        size.width * 0.3482575,
        size.height * 0.9007964,
        size.width * 0.3451158,
        size.height * 0.9021652,
        size.width * 0.3421088,
        size.height * 0.9036318);
    path_111.lineTo(size.width * 0.3419636, size.height * 0.9035607);
    path_111.cubicTo(
        size.width * 0.3259127,
        size.height * 0.9114981,
        size.width * 0.3025829,
        size.height * 0.9134446,
        size.width * 0.2832658,
        size.height * 0.9091871);
    path_111.cubicTo(
        size.width * 0.2829340,
        size.height * 0.9091071,
        size.width * 0.2825918,
        size.height * 0.9090449,
        size.width * 0.2822600,
        size.height * 0.9089649);
    path_111.cubicTo(
        size.width * 0.2818660,
        size.height * 0.9088760,
        size.width * 0.2814823,
        size.height * 0.9087782,
        size.width * 0.2810987,
        size.height * 0.9086804);
    path_111.cubicTo(
        size.width * 0.2786309,
        size.height * 0.9080493,
        size.width * 0.2761839,
        size.height * 0.9073205,
        size.width * 0.2737679,
        size.height * 0.9064583);
    path_111.cubicTo(
        size.width * 0.2737990,
        size.height * 0.9064761,
        size.width * 0.2738301,
        size.height * 0.9064850,
        size.width * 0.2738612,
        size.height * 0.9065028);
    path_111.cubicTo(
        size.width * 0.2716216,
        size.height * 0.9056939,
        size.width * 0.2694752,
        size.height * 0.9047873,
        size.width * 0.2674429,
        size.height * 0.9037829);
    path_111.lineTo(size.width * 0.2673807, size.height * 0.9038096);

    Paint paint_111_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.002073764;
    paint_111_stroke.color = Color(0xff0e2947).withOpacity(1.0);
    paint_111_stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_111, paint_111_stroke);

    Path path_112 = Path();
    path_112.moveTo(size.width * 0.7390272, size.height * 0.8101612);
    path_112.lineTo(size.width * 0.7374408, size.height * 0.8109434);
    path_112.lineTo(size.width * 0.7358647, size.height * 0.8117345);
    path_112.lineTo(size.width * 0.6849538, size.height * 0.8369331);
    path_112.lineTo(size.width * 0.6851093, size.height * 0.8370131);
    path_112.cubicTo(
        size.width * 0.6812936,
        size.height * 0.8389508,
        size.width * 0.6777578,
        size.height * 0.8410040,
        size.width * 0.6745124,
        size.height * 0.8431728);
    path_112.cubicTo(
        size.width * 0.6689651,
        size.height * 0.8466660,
        size.width * 0.6638844,
        size.height * 0.8508257,
        size.width * 0.6598198,
        size.height * 0.8557588);
    path_112.cubicTo(
        size.width * 0.6571861,
        size.height * 0.8589231,
        size.width * 0.6550190,
        size.height * 0.8624340,
        size.width * 0.6534637,
        size.height * 0.8661582);
    path_112.cubicTo(
        size.width * 0.6519395,
        size.height * 0.8699003,
        size.width * 0.6510996,
        size.height * 0.8738734,
        size.width * 0.6510581,
        size.height * 0.8778821);
    path_112.cubicTo(
        size.width * 0.6510270,
        size.height * 0.8818819,
        size.width * 0.6517943,
        size.height * 0.8858728,
        size.width * 0.6532667,
        size.height * 0.8896237);
    path_112.cubicTo(
        size.width * 0.6547598,
        size.height * 0.8933746,
        size.width * 0.6568647,
        size.height * 0.8969033,
        size.width * 0.6594673,
        size.height * 0.9001120);
    path_112.cubicTo(
        size.width * 0.6624638,
        size.height * 0.9038362,
        size.width * 0.6660515,
        size.height * 0.9071072,
        size.width * 0.6699709,
        size.height * 0.9100048);
    path_112.cubicTo(
        size.width * 0.6742013,
        size.height * 0.9132846,
        size.width * 0.6791058,
        size.height * 0.9163600,
        size.width * 0.6846427,
        size.height * 0.9191954);
    path_112.lineTo(size.width * 0.6847879, size.height * 0.9191243);
    path_112.cubicTo(
        size.width * 0.6943169,
        size.height * 0.9241552,
        size.width * 0.6990036,
        size.height * 0.9305193,
        size.width * 0.6988999,
        size.height * 0.9369011);
    path_112.cubicTo(
        size.width * 0.6988273,
        size.height * 0.9403321,
        size.width * 0.6972616,
        size.height * 0.9436830,
        size.width * 0.6947627,
        size.height * 0.9465717);
    path_112.cubicTo(
        size.width * 0.6924401,
        size.height * 0.9492560,
        size.width * 0.6893917,
        size.height * 0.9515670,
        size.width * 0.6861047,
        size.height * 0.9536825);
    path_112.cubicTo(
        size.width * 0.6854619,
        size.height * 0.9540558,
        size.width * 0.6847879,
        size.height * 0.9544202,
        size.width * 0.6840932,
        size.height * 0.9547846);
    path_112.lineTo(size.width * 0.6837199, size.height * 0.9545980);
    path_112.cubicTo(
        size.width * 0.6677519,
        size.height * 0.9624998,
        size.width * 0.6445673,
        size.height * 0.9644552,
        size.width * 0.6253020,
        size.height * 0.9602866);
    path_112.cubicTo(
        size.width * 0.6248458,
        size.height * 0.9601799,
        size.width * 0.6243792,
        size.height * 0.9600910,
        size.width * 0.6239229,
        size.height * 0.9599755);
    path_112.cubicTo(
        size.width * 0.6235911,
        size.height * 0.9598955,
        size.width * 0.6232593,
        size.height * 0.9598155,
        size.width * 0.6229275,
        size.height * 0.9597355);
    path_112.cubicTo(
        size.width * 0.6204390,
        size.height * 0.9591044,
        size.width * 0.6179609,
        size.height * 0.9583667,
        size.width * 0.6155346,
        size.height * 0.9574956);
    path_112.cubicTo(
        size.width * 0.6155657,
        size.height * 0.9575134,
        size.width * 0.6155968,
        size.height * 0.9575223,
        size.width * 0.6156279,
        size.height * 0.9575400);
    path_112.cubicTo(
        size.width * 0.6133882,
        size.height * 0.9567312,
        size.width * 0.6112419,
        size.height * 0.9558335,
        size.width * 0.6092200,
        size.height * 0.9548202);
    path_112.lineTo(size.width * 0.6089504, size.height * 0.9549535);

    Paint paint_112_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.002073764;
    paint_112_stroke.color = Color(0xff0e2947).withOpacity(1.0);
    paint_112_stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_112, paint_112_stroke);

    Paint paint_113_fill = Paint()..style = PaintingStyle.fill;
    paint_113_fill.color = step! >= 1
        ? Color(0xff2a7de1).withOpacity(1.0)
        : Color(0xffffc629).withOpacity(1.0);
    canvas.drawOval(
        Rect.fromCenter(
            center: Offset(size.width * 0.6832118, size.height * 0.1192470),
            width: size.width * 0.02444967,
            height: size.height * 0.01429257),
        paint_113_fill);

    Path path_114 = Path();
    path_114.moveTo(size.width * 0.6954367, size.height * 0.1192470);
    path_114.cubicTo(
        size.width * 0.6954367,
        size.height * 0.1231934,
        size.width * 0.6899619,
        size.height * 0.1263933,
        size.width * 0.6832118,
        size.height * 0.1263933);
    path_114.cubicTo(
        size.width * 0.6764617,
        size.height * 0.1263933,
        size.width * 0.6709870,
        size.height * 0.1231934,
        size.width * 0.6709870,
        size.height * 0.1192470);

    Paint paint_114_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.002073764;
    paint_114_stroke.color = Color(0xff0e2947).withOpacity(1.0);
    paint_114_stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_114, paint_114_stroke);

    Path path_115 = Path();
    path_115.moveTo(size.width * 0.4485758, size.height * 0.1625247);
    path_115.cubicTo(
        size.width * 0.4485758,
        size.height * 0.1625247,
        size.width * 0.4092573,
        size.height * 0.1373260,
        size.width * 0.3882915,
        size.height * 0.1685243);
    path_115.cubicTo(
        size.width * 0.3572265,
        size.height * 0.2147708,
        size.width * 0.4627396,
        size.height * 0.2671413,
        size.width * 0.4749230,
        size.height * 0.2601017);
    path_115.cubicTo(
        size.width * 0.4871167,
        size.height * 0.2530621,
        size.width * 0.5397696,
        size.height * 0.1813326,
        size.width * 0.5192912,
        size.height * 0.1576983);
    path_115.cubicTo(
        size.width * 0.4953288,
        size.height * 0.1300375,
        size.width * 0.4672501,
        size.height * 0.1358505,
        size.width * 0.4485655,
        size.height * 0.1625336);
    path_115.close();

    Paint paint_115_fill = Paint()..style = PaintingStyle.fill;
    paint_115_fill.color = Color(0xff65abef).withOpacity(1.0);
    canvas.drawPath(path_115, paint_115_fill);

    Path path_116 = Path();
    path_116.moveTo(size.width * 0.4515310, size.height * 0.1729597);
    path_116.cubicTo(
        size.width * 0.4515310,
        size.height * 0.1729597,
        size.width * 0.4222909,
        size.height * 0.1542229,
        size.width * 0.4067066,
        size.height * 0.1774216);
    path_116.cubicTo(
        size.width * 0.3836048,
        size.height * 0.2118020,
        size.width * 0.4620553,
        size.height * 0.2507422,
        size.width * 0.4711177,
        size.height * 0.2455069);
    path_116.cubicTo(
        size.width * 0.4801800,
        size.height * 0.2402716,
        size.width * 0.5193327,
        size.height * 0.1869411,
        size.width * 0.5041112,
        size.height * 0.1693687);
    path_116.cubicTo(
        size.width * 0.4862976,
        size.height * 0.1488010,
        size.width * 0.4654252,
        size.height * 0.1531207,
        size.width * 0.4515310,
        size.height * 0.1729597);
    path_116.close();

    Paint paint_116_fill = Paint()..style = PaintingStyle.fill;
    paint_116_fill.color = step! >= 1
        ? Color(0xff2a7de1).withOpacity(1.0)
        : Color(0xffffc629).withOpacity(1.0);
    canvas.drawPath(path_116, paint_116_fill);

    Path path_117 = Path();
    path_117.moveTo(size.width * 0.4989165, size.height * 0.1698043);
    path_117.cubicTo(
        size.width * 0.4987817,
        size.height * 0.1698043,
        size.width * 0.4986469,
        size.height * 0.1697509,
        size.width * 0.4985639,
        size.height * 0.1696443);
    path_117.cubicTo(
        size.width * 0.4872826,
        size.height * 0.1556361,
        size.width * 0.4763124,
        size.height * 0.1613869,
        size.width * 0.4758562,
        size.height * 0.1616358);
    path_117.cubicTo(
        size.width * 0.4756592,
        size.height * 0.1617425,
        size.width * 0.4754000,
        size.height * 0.1616892,
        size.width * 0.4752756,
        size.height * 0.1615292);
    path_117.cubicTo(
        size.width * 0.4751511,
        size.height * 0.1613603,
        size.width * 0.4752030,
        size.height * 0.1611381,
        size.width * 0.4754000,
        size.height * 0.1610314);
    path_117.cubicTo(
        size.width * 0.4755140,
        size.height * 0.1609692,
        size.width * 0.4875004,
        size.height * 0.1546318,
        size.width * 0.4992586,
        size.height * 0.1692354);
    path_117.cubicTo(
        size.width * 0.4993934,
        size.height * 0.1694043,
        size.width * 0.4993416,
        size.height * 0.1696265,
        size.width * 0.4991549,
        size.height * 0.1697421);
    path_117.cubicTo(
        size.width * 0.4990824,
        size.height * 0.1697865,
        size.width * 0.4989994,
        size.height * 0.1698043,
        size.width * 0.4989165,
        size.height * 0.1698043);
    path_117.close();

    Paint paint_117_fill = Paint()..style = PaintingStyle.fill;
    paint_117_fill.color = Color(0xfffbffff).withOpacity(1.0);
    canvas.drawPath(path_117, paint_117_fill);

    Path path_118 = Path();
    path_118.moveTo(size.width * 0.5041112, size.height * 0.1693599);
    path_118.cubicTo(
        size.width * 0.4862976,
        size.height * 0.1487921,
        size.width * 0.4654252,
        size.height * 0.1531118,
        size.width * 0.4515310,
        size.height * 0.1729508);

    Paint paint_118_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.002073764;
    paint_118_stroke.color = Color(0xff0e2947).withOpacity(1.0);
    paint_118_stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_118, paint_118_stroke);

    Path path_119 = Path();
    path_119.moveTo(size.width * 0.4067169, size.height * 0.1774128);
    path_119.cubicTo(
        size.width * 0.3836152,
        size.height * 0.2117931,
        size.width * 0.4620657,
        size.height * 0.2507333,
        size.width * 0.4711280,
        size.height * 0.2454980);

    Paint paint_119_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.002073764;
    paint_119_stroke.color = Color(0xff0e2947).withOpacity(1.0);
    paint_119_stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_119, paint_119_stroke);

    Path path_120 = Path();
    path_120.moveTo(size.width * 0.1180905, size.height * 0.1595204);
    path_120.cubicTo(
        size.width * 0.1180905,
        size.height * 0.1595204,
        size.width * 0.09893927,
        size.height * 0.1328818,
        size.width * 0.07449996,
        size.height * 0.1495387);
    path_120.cubicTo(
        size.width * 0.03827131,
        size.height * 0.1742307,
        size.width * 0.09452215,
        size.height * 0.2351697,
        size.width * 0.1052020,
        size.height * 0.2331520);
    path_120.cubicTo(
        size.width * 0.1158716,
        size.height * 0.2311432,
        size.width * 0.1751501,
        size.height * 0.1938830,
        size.width * 0.1685348,
        size.height * 0.1727463);
    path_120.cubicTo(
        size.width * 0.1607893,
        size.height * 0.1480010,
        size.width * 0.1395228,
        size.height * 0.1454411,
        size.width * 0.1180905,
        size.height * 0.1595115);
    path_120.close();

    Paint paint_120_fill = Paint()..style = PaintingStyle.fill;
    paint_120_fill.color = step! >= 1
        ? Color(0xff2a7de1).withOpacity(1.0)
        : Color(0xffffc629).withOpacity(1.0);
    canvas.drawPath(path_120, paint_120_fill);

    Path path_121 = Path();
    path_121.moveTo(size.width * 0.1635059, size.height * 0.1715197);
    path_121.cubicTo(
        size.width * 0.1633815,
        size.height * 0.1714753,
        size.width * 0.1632778,
        size.height * 0.1713864,
        size.width * 0.1632467,
        size.height * 0.1712620);
    path_121.cubicTo(
        size.width * 0.1587674,
        size.height * 0.1546762,
        size.width * 0.1460967,
        size.height * 0.1565694,
        size.width * 0.1455678,
        size.height * 0.1566583);
    path_121.cubicTo(
        size.width * 0.1453397,
        size.height * 0.1566939,
        size.width * 0.1451116,
        size.height * 0.1565694,
        size.width * 0.1450701,
        size.height * 0.1563739);
    path_121.cubicTo(
        size.width * 0.1450287,
        size.height * 0.1561783,
        size.width * 0.1451738,
        size.height * 0.1559917,
        size.width * 0.1454019,
        size.height * 0.1559472);
    path_121.cubicTo(
        size.width * 0.1455367,
        size.height * 0.1559206,
        size.width * 0.1593999,
        size.height * 0.1538051,
        size.width * 0.1640658,
        size.height * 0.1710931);
    path_121.cubicTo(
        size.width * 0.1641177,
        size.height * 0.1712886,
        size.width * 0.1639725,
        size.height * 0.1714842,
        size.width * 0.1637548,
        size.height * 0.1715286);
    path_121.cubicTo(
        size.width * 0.1636718,
        size.height * 0.1715464,
        size.width * 0.1635785,
        size.height * 0.1715375,
        size.width * 0.1635059,
        size.height * 0.1715109);
    path_121.close();

    Paint paint_121_fill = Paint()..style = PaintingStyle.fill;
    paint_121_fill.color = Color(0xfffbffff).withOpacity(1.0);
    canvas.drawPath(path_121, paint_121_fill);

    Path path_122 = Path();
    path_122.moveTo(size.width * 0.1685244, size.height * 0.1727463);
    path_122.cubicTo(
        size.width * 0.1607789,
        size.height * 0.1480010,
        size.width * 0.1395125,
        size.height * 0.1454411,
        size.width * 0.1180801,
        size.height * 0.1595115);

    Paint paint_122_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.002073764;
    paint_122_stroke.color = Color(0xff0e2947).withOpacity(1.0);
    paint_122_stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_122, paint_122_stroke);

    Path path_123 = Path();
    path_123.moveTo(size.width * 0.07448959, size.height * 0.1495387);
    path_123.cubicTo(
        size.width * 0.03826094,
        size.height * 0.1742307,
        size.width * 0.09451178,
        size.height * 0.2351697,
        size.width * 0.1051917,
        size.height * 0.2331520);

    Paint paint_123_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.002073764;
    paint_123_stroke.color = Color(0xff0e2947).withOpacity(1.0);
    paint_123_stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_123, paint_123_stroke);

    Path path_124 = Path();
    path_124.moveTo(size.width * 0.5430254, size.height * 0.3447372);
    path_124.cubicTo(
        size.width * 0.5430254,
        size.height * 0.3447372,
        size.width * 0.5253155,
        size.height * 0.3173697,
        size.width * 0.5000156,
        size.height * 0.3330578);
    path_124.cubicTo(
        size.width * 0.4625012,
        size.height * 0.3563010,
        size.width * 0.5154340,
        size.height * 0.4193821,
        size.width * 0.5262072,
        size.height * 0.4177911);
    path_124.cubicTo(
        size.width * 0.5369804,
        size.height * 0.4162000,
        size.width * 0.5981875,
        size.height * 0.3813130,
        size.width * 0.5927128,
        size.height * 0.3599364);
    path_124.cubicTo(
        size.width * 0.5862945,
        size.height * 0.3349155,
        size.width * 0.5651939,
        size.height * 0.3315201,
        size.width * 0.5430358,
        size.height * 0.3447372);
    path_124.close();

    Paint paint_124_fill = Paint()..style = PaintingStyle.fill;
    paint_124_fill.color = step! >= 1
        ? Color(0xff2a7de1).withOpacity(1.0)
        : Color(0xffffc629).withOpacity(1.0);
    canvas.drawPath(path_124, paint_124_fill);

    Path path_125 = Path();
    path_125.moveTo(size.width * 0.5877461, size.height * 0.3585142);
    path_125.cubicTo(
        size.width * 0.5876217,
        size.height * 0.3584698,
        size.width * 0.5875284,
        size.height * 0.3583720,
        size.width * 0.5875076,
        size.height * 0.3582476);
    path_125.cubicTo(
        size.width * 0.5839200,
        size.height * 0.3415018,
        size.width * 0.5711664,
        size.height * 0.3428973,
        size.width * 0.5706272,
        size.height * 0.3429684);
    path_125.cubicTo(
        size.width * 0.5703991,
        size.height * 0.3429950,
        size.width * 0.5701814,
        size.height * 0.3428617,
        size.width * 0.5701502,
        size.height * 0.3426662);
    path_125.cubicTo(
        size.width * 0.5701191,
        size.height * 0.3424706,
        size.width * 0.5702747,
        size.height * 0.3422840,
        size.width * 0.5705028,
        size.height * 0.3422573);
    path_125.cubicTo(
        size.width * 0.5706479,
        size.height * 0.3422395,
        size.width * 0.5845940,
        size.height * 0.3406752,
        size.width * 0.5883372,
        size.height * 0.3581231);
    path_125.cubicTo(
        size.width * 0.5883786,
        size.height * 0.3583187,
        size.width * 0.5882231,
        size.height * 0.3585053,
        size.width * 0.5879950,
        size.height * 0.3585409);
    path_125.cubicTo(
        size.width * 0.5879120,
        size.height * 0.3585587,
        size.width * 0.5878187,
        size.height * 0.3585409,
        size.width * 0.5877461,
        size.height * 0.3585142);
    path_125.close();

    Paint paint_125_fill = Paint()..style = PaintingStyle.fill;
    paint_125_fill.color = Color(0xfffbffff).withOpacity(1.0);
    canvas.drawPath(path_125, paint_125_fill);

    Path path_126 = Path();
    path_126.moveTo(size.width * 0.5927024, size.height * 0.3599452);
    path_126.cubicTo(
        size.width * 0.5862841,
        size.height * 0.3349244,
        size.width * 0.5651836,
        size.height * 0.3315290,
        size.width * 0.5430254,
        size.height * 0.3447461);

    Paint paint_126_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.002073764;
    paint_126_stroke.color = Color(0xff0e2947).withOpacity(1.0);
    paint_126_stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_126, paint_126_stroke);

    Path path_127 = Path();
    path_127.moveTo(size.width * 0.5000052, size.height * 0.3330578);
    path_127.cubicTo(
        size.width * 0.4624908,
        size.height * 0.3563010,
        size.width * 0.5154236,
        size.height * 0.4193821,
        size.width * 0.5261968,
        size.height * 0.4177911);

    Paint paint_127_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.002073764;
    paint_127_stroke.color = Color(0xff0e2947).withOpacity(1.0);
    paint_127_stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_127, paint_127_stroke);

    Path path_128 = Path();
    path_128.moveTo(size.width * 0.9439358, size.height * 0.3711447);
    path_128.cubicTo(
        size.width * 0.9439358,
        size.height * 0.3711447,
        size.width * 0.9146957,
        size.height * 0.3524079,
        size.width * 0.8991114,
        size.height * 0.3756066);
    path_128.cubicTo(
        size.width * 0.8760097,
        size.height * 0.4099870,
        size.width * 0.9544601,
        size.height * 0.4489272,
        size.width * 0.9635225,
        size.height * 0.4436919);
    path_128.cubicTo(
        size.width * 0.9725848,
        size.height * 0.4384566,
        size.width * 1.011738,
        size.height * 0.3851261,
        size.width * 0.9965161,
        size.height * 0.3675537);
    path_128.cubicTo(
        size.width * 0.9787024,
        size.height * 0.3469859,
        size.width * 0.9578300,
        size.height * 0.3513057,
        size.width * 0.9439358,
        size.height * 0.3711447);
    path_128.close();

    Paint paint_128_fill = Paint()..style = PaintingStyle.fill;
    paint_128_fill.color = Color(0xff2a7de1).withOpacity(1.0);
    canvas.drawPath(path_128, paint_128_fill);

    Path path_129 = Path();
    path_129.moveTo(size.width * 0.9913213, size.height * 0.3679893);
    path_129.cubicTo(
        size.width * 0.9911865,
        size.height * 0.3679893,
        size.width * 0.9910517,
        size.height * 0.3679359,
        size.width * 0.9909688,
        size.height * 0.3678293);
    path_129.cubicTo(
        size.width * 0.9796875,
        size.height * 0.3538211,
        size.width * 0.9687173,
        size.height * 0.3595719,
        size.width * 0.9682610,
        size.height * 0.3598208);
    path_129.cubicTo(
        size.width * 0.9680640,
        size.height * 0.3599275,
        size.width * 0.9678048,
        size.height * 0.3598741,
        size.width * 0.9676804,
        size.height * 0.3597141);
    path_129.cubicTo(
        size.width * 0.9675560,
        size.height * 0.3595453,
        size.width * 0.9676078,
        size.height * 0.3593231,
        size.width * 0.9678048,
        size.height * 0.3592164);
    path_129.cubicTo(
        size.width * 0.9679189,
        size.height * 0.3591542,
        size.width * 0.9799052,
        size.height * 0.3528167,
        size.width * 0.9916635,
        size.height * 0.3674204);
    path_129.cubicTo(
        size.width * 0.9917983,
        size.height * 0.3675893,
        size.width * 0.9917464,
        size.height * 0.3678115,
        size.width * 0.9915598,
        size.height * 0.3679270);
    path_129.cubicTo(
        size.width * 0.9914872,
        size.height * 0.3679715,
        size.width * 0.9914042,
        size.height * 0.3679893,
        size.width * 0.9913213,
        size.height * 0.3679893);
    path_129.close();

    Paint paint_129_fill = Paint()..style = PaintingStyle.fill;
    paint_129_fill.color = Color(0xfffbffff).withOpacity(1.0);
    canvas.drawPath(path_129, paint_129_fill);

    Path path_130 = Path();
    path_130.moveTo(size.width * 0.9965161, size.height * 0.3675537);
    path_130.cubicTo(
        size.width * 0.9787024,
        size.height * 0.3469859,
        size.width * 0.9578300,
        size.height * 0.3513057,
        size.width * 0.9439358,
        size.height * 0.3711447);

    Paint paint_130_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.002073764;
    paint_130_stroke.color = Color(0xff0e2947).withOpacity(1.0);
    paint_130_stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_130, paint_130_stroke);

    Path path_131 = Path();
    path_131.moveTo(size.width * 0.8991218, size.height * 0.3756066);
    path_131.cubicTo(
        size.width * 0.8760200,
        size.height * 0.4099870,
        size.width * 0.9544705,
        size.height * 0.4489272,
        size.width * 0.9635329,
        size.height * 0.4436919);

    Paint paint_131_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.002073764;
    paint_131_stroke.color = Color(0xff0e2947).withOpacity(1.0);
    paint_131_stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_131, paint_131_stroke);

    Path path_132 = Path();
    path_132.moveTo(size.width * 0.4808540, size.height * 0.5920573);
    path_132.cubicTo(
        size.width * 0.4808540,
        size.height * 0.5920573,
        size.width * 0.4503074,
        size.height * 0.5749293,
        size.width * 0.4364443,
        size.height * 0.5989192);
    path_132.cubicTo(
        size.width * 0.4159037,
        size.height * 0.6344728,
        size.width * 0.4970501,
        size.height * 0.6691199,
        size.width * 0.5057080,
        size.height * 0.6634046);
    path_132.cubicTo(
        size.width * 0.5143764,
        size.height * 0.6576894,
        size.width * 0.5495474,
        size.height * 0.6023679,
        size.width * 0.5330713,
        size.height * 0.5856488);
    path_132.cubicTo(
        size.width * 0.5137853,
        size.height * 0.5660765,
        size.width * 0.4932655,
        size.height * 0.5715162,
        size.width * 0.4808540,
        size.height * 0.5920573);
    path_132.close();

    Paint paint_132_fill = Paint()..style = PaintingStyle.fill;
    paint_132_fill.color = Color(0xff2a7de1).withOpacity(1.0);
    canvas.drawPath(path_132, paint_132_fill);

    Path path_133 = Path();
    path_133.moveTo(size.width * 0.5279077, size.height * 0.5863598);
    path_133.cubicTo(
        size.width * 0.5277729,
        size.height * 0.5863598,
        size.width * 0.5276381,
        size.height * 0.5863154,
        size.width * 0.5275448,
        size.height * 0.5862265);
    path_133.cubicTo(
        size.width * 0.5152577,
        size.height * 0.5728494,
        size.width * 0.5047334,
        size.height * 0.5791780,
        size.width * 0.5042979,
        size.height * 0.5794535);
    path_133.cubicTo(
        size.width * 0.5041112,
        size.height * 0.5795691,
        size.width * 0.5038416,
        size.height * 0.5795335,
        size.width * 0.5037069,
        size.height * 0.5793735);
    path_133.cubicTo(
        size.width * 0.5035721,
        size.height * 0.5792136,
        size.width * 0.5036135,
        size.height * 0.5789825,
        size.width * 0.5038002,
        size.height * 0.5788669);
    path_133.cubicTo(
        size.width * 0.5039142,
        size.height * 0.5787958,
        size.width * 0.5154029,
        size.height * 0.5718273,
        size.width * 0.5282084,
        size.height * 0.5857732);
    path_133.cubicTo(
        size.width * 0.5283535,
        size.height * 0.5859332,
        size.width * 0.5283224,
        size.height * 0.5861554,
        size.width * 0.5281358,
        size.height * 0.5862798);
    path_133.cubicTo(
        size.width * 0.5280632,
        size.height * 0.5863243,
        size.width * 0.5279803,
        size.height * 0.5863510,
        size.width * 0.5278973,
        size.height * 0.5863598);
    path_133.close();

    Paint paint_133_fill = Paint()..style = PaintingStyle.fill;
    paint_133_fill.color = Color(0xfffbffff).withOpacity(1.0);
    canvas.drawPath(path_133, paint_133_fill);

    Path path_134 = Path();
    path_134.moveTo(size.width * 0.5330713, size.height * 0.5856399);
    path_134.cubicTo(
        size.width * 0.5137853,
        size.height * 0.5660676,
        size.width * 0.4932655,
        size.height * 0.5715073,
        size.width * 0.4808540,
        size.height * 0.5920484);

    Paint paint_134_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.002073764;
    paint_134_stroke.color = Color(0xff0e2947).withOpacity(1.0);
    paint_134_stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_134, paint_134_stroke);

    Path path_135 = Path();
    path_135.moveTo(size.width * 0.4364443, size.height * 0.5989103);
    path_135.cubicTo(
        size.width * 0.4159037,
        size.height * 0.6344639,
        size.width * 0.4970501,
        size.height * 0.6691110,
        size.width * 0.5057080,
        size.height * 0.6633957);

    Paint paint_135_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.002073764;
    paint_135_stroke.color = Color(0xff0e2947).withOpacity(1.0);
    paint_135_stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_135, paint_135_stroke);

    Path path_136 = Path();
    path_136.moveTo(size.width * 0.1018944, size.height * 0.3793309);
    path_136.cubicTo(
        size.width * 0.1018944,
        size.height * 0.3793309,
        size.width * 0.08585382,
        size.height * 0.3606297,
        size.width * 0.06896301,
        size.height * 0.3742112);
    path_136.cubicTo(
        size.width * 0.04391195,
        size.height * 0.3943434,
        size.width * 0.08980434,
        size.height * 0.4364834,
        size.width * 0.09754985,
        size.height * 0.4344479);
    path_136.cubicTo(
        size.width * 0.1052954,
        size.height * 0.4324125,
        size.width * 0.1465010,
        size.height * 0.4017919,
        size.width * 0.1401242,
        size.height * 0.3865038);
    path_136.cubicTo(
        size.width * 0.1326483,
        size.height * 0.3686115,
        size.width * 0.1167529,
        size.height * 0.3678204,
        size.width * 0.1018944,
        size.height * 0.3793309);
    path_136.close();

    Paint paint_136_fill = Paint()..style = PaintingStyle.fill;
    paint_136_fill.color = Color(0xff8dc9f7).withOpacity(1.0);
    canvas.drawPath(path_136, paint_136_fill);

    Path path_137 = Path();
    path_137.moveTo(size.width * 0.1363189, size.height * 0.3858550);
    path_137.cubicTo(
        size.width * 0.1362255,
        size.height * 0.3858283,
        size.width * 0.1361426,
        size.height * 0.3857661,
        size.width * 0.1361115,
        size.height * 0.3856772);
    path_137.cubicTo(
        size.width * 0.1316322,
        size.height * 0.3736423,
        size.width * 0.1223935,
        size.height * 0.3757044,
        size.width * 0.1220099,
        size.height * 0.3757933);
    path_137.cubicTo(
        size.width * 0.1218440,
        size.height * 0.3758288,
        size.width * 0.1216677,
        size.height * 0.3757488,
        size.width * 0.1216262,
        size.height * 0.3756066);
    path_137.cubicTo(
        size.width * 0.1215744,
        size.height * 0.3754644,
        size.width * 0.1216781,
        size.height * 0.3753133,
        size.width * 0.1218440,
        size.height * 0.3752778);
    path_137.cubicTo(
        size.width * 0.1219477,
        size.height * 0.3752511,
        size.width * 0.1320365,
        size.height * 0.3729757,
        size.width * 0.1367129,
        size.height * 0.3855083);
    path_137.cubicTo(
        size.width * 0.1367647,
        size.height * 0.3856505,
        size.width * 0.1366714,
        size.height * 0.3858016,
        size.width * 0.1365055,
        size.height * 0.3858461);
    path_137.cubicTo(
        size.width * 0.1364433,
        size.height * 0.3858639,
        size.width * 0.1363811,
        size.height * 0.3858639,
        size.width * 0.1363189,
        size.height * 0.3858461);
    path_137.close();

    Paint paint_137_fill = Paint()..style = PaintingStyle.fill;
    paint_137_fill.color = Color(0xfffbffff).withOpacity(1.0);
    canvas.drawPath(path_137, paint_137_fill);

    Path path_138 = Path();
    path_138.moveTo(size.width * 0.1401242, size.height * 0.3865038);
    path_138.cubicTo(
        size.width * 0.1326483,
        size.height * 0.3686115,
        size.width * 0.1167529,
        size.height * 0.3678204,
        size.width * 0.1018944,
        size.height * 0.3793309);

    Paint paint_138_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.002073764;
    paint_138_stroke.color = Color(0xff0e2947).withOpacity(1.0);
    paint_138_stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_138, paint_138_stroke);

    Path path_139 = Path();
    path_139.moveTo(size.width * 0.06896301, size.height * 0.3742112);
    path_139.cubicTo(
        size.width * 0.04391195,
        size.height * 0.3943434,
        size.width * 0.08980434,
        size.height * 0.4364834,
        size.width * 0.09754985,
        size.height * 0.4344479);

    Paint paint_139_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.002073764;
    paint_139_stroke.color = Color(0xff0e2947).withOpacity(1.0);
    paint_139_stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_139, paint_139_stroke);

    Path path_140 = Path();
    path_140.moveTo(size.width * 0.4495298, size.height * 0.7626793);
    path_140.cubicTo(
        size.width * 0.4495298,
        size.height * 0.7626793,
        size.width * 0.4346298,
        size.height * 0.7455958,
        size.width * 0.4192217,
        size.height * 0.7581907);
    path_140.cubicTo(
        size.width * 0.3963896,
        size.height * 0.7768563,
        size.width * 0.4389225,
        size.height * 0.8152721,
        size.width * 0.4460251,
        size.height * 0.8133433);
    path_140.cubicTo(
        size.width * 0.4531278,
        size.height * 0.8114145,
        size.width * 0.4907147,
        size.height * 0.7830160,
        size.width * 0.4847112,
        size.height * 0.7690168);
    path_140.cubicTo(
        size.width * 0.4776915,
        size.height * 0.7526265,
        size.width * 0.4630715,
        size.height * 0.7520043,
        size.width * 0.4495298,
        size.height * 0.7626793);
    path_140.close();

    Paint paint_140_fill = Paint()..style = PaintingStyle.fill;
    paint_140_fill.color = Color(0xff8dc9f7).withOpacity(1.0);
    canvas.drawPath(path_140, paint_140_fill);

    Path path_141 = Path();
    path_141.moveTo(size.width * 0.4812169, size.height * 0.7684479);
    path_141.cubicTo(
        size.width * 0.4811339,
        size.height * 0.7684301,
        size.width * 0.4810510,
        size.height * 0.7683679,
        size.width * 0.4810199,
        size.height * 0.7682879);
    path_141.cubicTo(
        size.width * 0.4767894,
        size.height * 0.7572663,
        size.width * 0.4683284,
        size.height * 0.7592128,
        size.width * 0.4679759,
        size.height * 0.7593017);
    path_141.cubicTo(
        size.width * 0.4678204,
        size.height * 0.7593373,
        size.width * 0.4676648,
        size.height * 0.7592662,
        size.width * 0.4676234,
        size.height * 0.7591328);
    path_141.cubicTo(
        size.width * 0.4675819,
        size.height * 0.7589995,
        size.width * 0.4676648,
        size.height * 0.7588662,
        size.width * 0.4678204,
        size.height * 0.7588306);
    path_141.cubicTo(
        size.width * 0.4679137,
        size.height * 0.7588040,
        size.width * 0.4771730,
        size.height * 0.7566441,
        size.width * 0.4815694,
        size.height * 0.7681368);
    path_141.cubicTo(
        size.width * 0.4816213,
        size.height * 0.7682701,
        size.width * 0.4815383,
        size.height * 0.7684035,
        size.width * 0.4813828,
        size.height * 0.7684479);
    path_141.cubicTo(
        size.width * 0.4813206,
        size.height * 0.7684657,
        size.width * 0.4812687,
        size.height * 0.7684657,
        size.width * 0.4812065,
        size.height * 0.7684479);
    path_141.close();

    Paint paint_141_fill = Paint()..style = PaintingStyle.fill;
    paint_141_fill.color = Color(0xfffbffff).withOpacity(1.0);
    canvas.drawPath(path_141, paint_141_fill);

    Path path_142 = Path();
    path_142.moveTo(size.width * 0.4847112, size.height * 0.7690168);
    path_142.cubicTo(
        size.width * 0.4776915,
        size.height * 0.7526265,
        size.width * 0.4630715,
        size.height * 0.7520043,
        size.width * 0.4495298,
        size.height * 0.7626793);

    Paint paint_142_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.002073764;
    paint_142_stroke.color = Color(0xff0e2947).withOpacity(1.0);
    paint_142_stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_142, paint_142_stroke);

    Path path_143 = Path();
    path_143.moveTo(size.width * 0.4192217, size.height * 0.7581818);
    path_143.cubicTo(
        size.width * 0.3963896,
        size.height * 0.7768475,
        size.width * 0.4389225,
        size.height * 0.8152632,
        size.width * 0.4460251,
        size.height * 0.8133344);

    Paint paint_143_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.002073764;
    paint_143_stroke.color = Color(0xff0e2947).withOpacity(1.0);
    paint_143_stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_143, paint_143_stroke);

    Path path_144 = Path();
    path_144.moveTo(size.width * 0.8460541, size.height * 0.6481610);
    path_144.cubicTo(
        size.width * 0.8460541,
        size.height * 0.6481610,
        size.width * 0.8255135,
        size.height * 0.6349972,
        size.width * 0.8145744,
        size.height * 0.6512897);
    path_144.cubicTo(
        size.width * 0.7983472,
        size.height * 0.6754395,
        size.width * 0.8534575,
        size.height * 0.7027892,
        size.width * 0.8598239,
        size.height * 0.6991183);
    path_144.cubicTo(
        size.width * 0.8661904,
        size.height * 0.6954385,
        size.width * 0.8936885,
        size.height * 0.6579827,
        size.width * 0.8829982,
        size.height * 0.6456367);
    path_144.cubicTo(
        size.width * 0.8704831,
        size.height * 0.6311930,
        size.width * 0.8558216,
        size.height * 0.6342240,
        size.width * 0.8460645,
        size.height * 0.6481610);
    path_144.close();

    Paint paint_144_fill = Paint()..style = PaintingStyle.fill;
    paint_144_fill.color = Color(0xff8dc9f7).withOpacity(1.0);
    canvas.drawPath(path_144, paint_144_fill);

    Path path_145 = Path();
    path_145.moveTo(size.width * 0.8793381, size.height * 0.6459478);
    path_145.cubicTo(
        size.width * 0.8792447,
        size.height * 0.6459478,
        size.width * 0.8791514,
        size.height * 0.6459122,
        size.width * 0.8790892,
        size.height * 0.6458411);
    path_145.cubicTo(
        size.width * 0.8711674,
        size.height * 0.6360016,
        size.width * 0.8634634,
        size.height * 0.6400370,
        size.width * 0.8631420,
        size.height * 0.6402147);
    path_145.cubicTo(
        size.width * 0.8630072,
        size.height * 0.6402859,
        size.width * 0.8628205,
        size.height * 0.6402592,
        size.width * 0.8627272,
        size.height * 0.6401347);
    path_145.cubicTo(
        size.width * 0.8626443,
        size.height * 0.6400192,
        size.width * 0.8626754,
        size.height * 0.6398592,
        size.width * 0.8628205,
        size.height * 0.6397792);
    path_145.cubicTo(
        size.width * 0.8629035,
        size.height * 0.6397348,
        size.width * 0.8713230,
        size.height * 0.6352817,
        size.width * 0.8795765,
        size.height * 0.6455389);
    path_145.cubicTo(
        size.width * 0.8796699,
        size.height * 0.6456545,
        size.width * 0.8796388,
        size.height * 0.6458144,
        size.width * 0.8795040,
        size.height * 0.6458944);
    path_145.cubicTo(
        size.width * 0.8794521,
        size.height * 0.6459211,
        size.width * 0.8793899,
        size.height * 0.6459389,
        size.width * 0.8793381,
        size.height * 0.6459389);
    path_145.close();

    Paint paint_145_fill = Paint()..style = PaintingStyle.fill;
    paint_145_fill.color = Color(0xfffbffff).withOpacity(1.0);
    canvas.drawPath(path_145, paint_145_fill);

    Path path_146 = Path();
    path_146.moveTo(size.width * 0.8829879, size.height * 0.6456367);
    path_146.cubicTo(
        size.width * 0.8704727,
        size.height * 0.6311930,
        size.width * 0.8558112,
        size.height * 0.6342240,
        size.width * 0.8460541,
        size.height * 0.6481610);

    Paint paint_146_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.002073764;
    paint_146_stroke.color = Color(0xff0e2947).withOpacity(1.0);
    paint_146_stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_146, paint_146_stroke);

    Path path_147 = Path();
    path_147.moveTo(size.width * 0.8145744, size.height * 0.6512897);
    path_147.cubicTo(
        size.width * 0.7983472,
        size.height * 0.6754395,
        size.width * 0.8534575,
        size.height * 0.7027892,
        size.width * 0.8598239,
        size.height * 0.6991183);

    Paint paint_147_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.002073764;
    paint_147_stroke.color = Color(0xff0e2947).withOpacity(1.0);
    paint_147_stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_147, paint_147_stroke);

    Path path_148 = Path();
    path_148.moveTo(size.width * 0.5762782, size.height * 0.9357723);
    path_148.cubicTo(
        size.width * 0.5762782,
        size.height * 0.9357723,
        size.width * 0.5500658,
        size.height * 0.9217108,
        size.width * 0.5388053,
        size.height * 0.9422342);
    path_148.cubicTo(
        size.width * 0.5221219,
        size.height * 0.9726503,
        size.width * 0.5915307,
        size.height * 1.000791,
        size.width * 0.5987474,
        size.height * 0.9958313);
    path_148.cubicTo(
        size.width * 0.6059745,
        size.height * 0.9908716,
        size.width * 0.6346443,
        size.height * 0.9434963,
        size.width * 0.6203664,
        size.height * 0.9295771);
    path_148.cubicTo(
        size.width * 0.6036415,
        size.height * 0.9132846,
        size.width * 0.5863774,
        size.height * 0.9181910,
        size.width * 0.5762782,
        size.height * 0.9357723);
    path_148.close();

    Paint paint_148_fill = Paint()..style = PaintingStyle.fill;
    paint_148_fill.color = Color(0xff8dc9f7).withOpacity(1.0);
    canvas.drawPath(path_148, paint_148_fill);

    Path path_149 = Path();
    path_149.moveTo(size.width * 0.6160115, size.height * 0.9302526);
    path_149.cubicTo(
        size.width * 0.6158975,
        size.height * 0.9302526,
        size.width * 0.6157834,
        size.height * 0.9302259,
        size.width * 0.6157005,
        size.height * 0.9301459);
    path_149.cubicTo(
        size.width * 0.6050310,
        size.height * 0.9189999,
        size.width * 0.5962486,
        size.height * 0.9245107,
        size.width * 0.5958753,
        size.height * 0.9247507);
    path_149.cubicTo(
        size.width * 0.5957198,
        size.height * 0.9248573,
        size.width * 0.5954916,
        size.height * 0.9248307,
        size.width * 0.5953776,
        size.height * 0.9246885);
    path_149.cubicTo(
        size.width * 0.5952532,
        size.height * 0.9245551,
        size.width * 0.5952843,
        size.height * 0.9243596,
        size.width * 0.5954398,
        size.height * 0.9242618);
    path_149.cubicTo(
        size.width * 0.5955331,
        size.height * 0.9241996,
        size.width * 0.6051243,
        size.height * 0.9181288,
        size.width * 0.6162500,
        size.height * 0.9297549);
    path_149.cubicTo(
        size.width * 0.6163744,
        size.height * 0.9298882,
        size.width * 0.6163537,
        size.height * 0.9300748,
        size.width * 0.6161982,
        size.height * 0.9301904);
    path_149.cubicTo(
        size.width * 0.6161360,
        size.height * 0.9302348,
        size.width * 0.6160737,
        size.height * 0.9302526,
        size.width * 0.6160012,
        size.height * 0.9302615);
    path_149.close();

    Paint paint_149_fill = Paint()..style = PaintingStyle.fill;
    paint_149_fill.color = Color(0xfffbffff).withOpacity(1.0);
    canvas.drawPath(path_149, paint_149_fill);

    Path path_150 = Path();
    path_150.moveTo(size.width * 0.6203664, size.height * 0.9295682);
    path_150.cubicTo(
        size.width * 0.6036415,
        size.height * 0.9132757,
        size.width * 0.5863774,
        size.height * 0.9181821,
        size.width * 0.5762782,
        size.height * 0.9357634);

    Paint paint_150_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.002073764;
    paint_150_stroke.color = Color(0xff0e2947).withOpacity(1.0);
    paint_150_stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_150, paint_150_stroke);

    Path path_151 = Path();
    path_151.moveTo(size.width * 0.5388053, size.height * 0.9422253);
    path_151.cubicTo(
        size.width * 0.5221219,
        size.height * 0.9726415,
        size.width * 0.5915307,
        size.height * 1.000782,
        size.width * 0.5987474,
        size.height * 0.9958224);

    Paint paint_151_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.002073764;
    paint_151_stroke.color = Color(0xff0e2947).withOpacity(1.0);
    paint_151_stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_151, paint_151_stroke);

    Path path_152 = Path();
    path_152.moveTo(size.width * 0.1367336, size.height * 0.8401063);
    path_152.cubicTo(
        size.width * 0.1367336,
        size.height * 0.8401063,
        size.width * 0.1222173,
        size.height * 0.8210762,
        size.width * 0.1048391,
        size.height * 0.8335822);
    path_152.cubicTo(
        size.width * 0.07908298,
        size.height * 0.8521234,
        size.width * 0.1213152,
        size.height * 0.8954545,
        size.width * 0.1290296,
        size.height * 0.8938190);
    path_152.cubicTo(
        size.width * 0.1367440,
        size.height * 0.8921835,
        size.width * 0.1789658,
        size.height * 0.8641317,
        size.width * 0.1736777,
        size.height * 0.8488881);
    path_152.cubicTo(
        size.width * 0.1674875,
        size.height * 0.8310401,
        size.width * 0.1519861,
        size.height * 0.8295380,
        size.width * 0.1367336,
        size.height * 0.8401152);
    path_152.close();

    Paint paint_152_fill = Paint()..style = PaintingStyle.fill;
    paint_152_fill.color = Color(0xff8dc9f7).withOpacity(1.0);
    canvas.drawPath(path_152, paint_152_fill);

    Path path_153 = Path();
    path_153.moveTo(size.width * 0.1699968, size.height * 0.8480703);
    path_153.cubicTo(
        size.width * 0.1699035,
        size.height * 0.8480437,
        size.width * 0.1698309,
        size.height * 0.8479726,
        size.width * 0.1698101,
        size.height * 0.8478926);
    path_153.cubicTo(
        size.width * 0.1661811,
        size.height * 0.8359199,
        size.width * 0.1570254,
        size.height * 0.8375020,
        size.width * 0.1566314,
        size.height * 0.8375820);
    path_153.cubicTo(
        size.width * 0.1564655,
        size.height * 0.8376087,
        size.width * 0.1562996,
        size.height * 0.8375198,
        size.width * 0.1562685,
        size.height * 0.8373865);
    path_153.cubicTo(
        size.width * 0.1562270,
        size.height * 0.8372442,
        size.width * 0.1563307,
        size.height * 0.8371020,
        size.width * 0.1564966,
        size.height * 0.8370754);
    path_153.cubicTo(
        size.width * 0.1566003,
        size.height * 0.8370576,
        size.width * 0.1666166,
        size.height * 0.8352888,
        size.width * 0.1704012,
        size.height * 0.8477681);
    path_153.cubicTo(
        size.width * 0.1704426,
        size.height * 0.8479103,
        size.width * 0.1703493,
        size.height * 0.8480525,
        size.width * 0.1701834,
        size.height * 0.8480881);
    path_153.cubicTo(
        size.width * 0.1701212,
        size.height * 0.8481059,
        size.width * 0.1700590,
        size.height * 0.8480970,
        size.width * 0.1699968,
        size.height * 0.8480881);
    path_153.close();

    Paint paint_153_fill = Paint()..style = PaintingStyle.fill;
    paint_153_fill.color = Color(0xfffbffff).withOpacity(1.0);
    canvas.drawPath(path_153, paint_153_fill);

    Path path_154 = Path();
    path_154.moveTo(size.width * 0.1736777, size.height * 0.8488792);
    path_154.cubicTo(
        size.width * 0.1674875,
        size.height * 0.8310312,
        size.width * 0.1519861,
        size.height * 0.8295291,
        size.width * 0.1367336,
        size.height * 0.8401063);

    Paint paint_154_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.002073764;
    paint_154_stroke.color = Color(0xff0e2947).withOpacity(1.0);
    paint_154_stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_154, paint_154_stroke);

    Path path_155 = Path();
    path_155.moveTo(size.width * 0.1048391, size.height * 0.8335822);
    path_155.cubicTo(
        size.width * 0.07908298,
        size.height * 0.8521234,
        size.width * 0.1213152,
        size.height * 0.8954545,
        size.width * 0.1290296,
        size.height * 0.8938190);

    Paint paint_155_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.002073764;
    paint_155_stroke.color = Color(0xff0e2947).withOpacity(1.0);
    paint_155_stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_155, paint_155_stroke);

    Paint paint_156_fill = Paint()..style = PaintingStyle.fill;
    paint_156_fill.color = Color(0xff2a7de1).withOpacity(1.0);
    canvas.drawOval(
        Rect.fromCenter(
            center: Offset(size.width * 0.3519799, size.height * 0.1849946),
            width: size.width * 0.02444967,
            height: size.height * 0.01429257),
        paint_156_fill);

    Path path_157 = Path();
    path_157.moveTo(size.width * 0.3642048, size.height * 0.1849946);
    path_157.cubicTo(
        size.width * 0.3642048,
        size.height * 0.1889410,
        size.width * 0.3587300,
        size.height * 0.1921409,
        size.width * 0.3519799,
        size.height * 0.1921409);
    path_157.cubicTo(
        size.width * 0.3452298,
        size.height * 0.1921409,
        size.width * 0.3397551,
        size.height * 0.1889410,
        size.width * 0.3397551,
        size.height * 0.1849946);

    Paint paint_157_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.002073764;
    paint_157_stroke.color = Color(0xff0e2947).withOpacity(1.0);
    paint_157_stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_157, paint_157_stroke);

    Paint paint_158_fill = Paint()..style = PaintingStyle.fill;
    paint_158_fill.color = Color(0xff2a7de1).withOpacity(1.0);
    canvas.drawOval(
        Rect.fromCenter(
            center: Offset(size.width * 0.5364931, size.height * 0.1907098),
            width: size.width * 0.02444967,
            height: size.height * 0.01429257),
        paint_158_fill);

    Path path_159 = Path();
    path_159.moveTo(size.width * 0.5487179, size.height * 0.1907098);
    path_159.cubicTo(
        size.width * 0.5487179,
        size.height * 0.1946563,
        size.width * 0.5432432,
        size.height * 0.1978561,
        size.width * 0.5364931,
        size.height * 0.1978561);
    path_159.cubicTo(
        size.width * 0.5297430,
        size.height * 0.1978561,
        size.width * 0.5242682,
        size.height * 0.1946563,
        size.width * 0.5242682,
        size.height * 0.1907098);

    Paint paint_159_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.002073764;
    paint_159_stroke.color = Color(0xff0e2947).withOpacity(1.0);
    paint_159_stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_159, paint_159_stroke);

    Paint paint_160_fill = Paint()..style = PaintingStyle.fill;
    paint_160_fill.color = Color(0xff2a7de1).withOpacity(1.0);
    canvas.drawOval(
        Rect.fromCenter(
            center: Offset(size.width * 0.5876217, size.height * 0.1649779),
            width: size.width * 0.02444967,
            height: size.height * 0.01429257),
        paint_160_fill);

    Path path_161 = Path();
    path_161.moveTo(size.width * 0.5998465, size.height * 0.1649779);
    path_161.cubicTo(
        size.width * 0.5998465,
        size.height * 0.1689243,
        size.width * 0.5943718,
        size.height * 0.1721242,
        size.width * 0.5876217,
        size.height * 0.1721242);
    path_161.cubicTo(
        size.width * 0.5808716,
        size.height * 0.1721242,
        size.width * 0.5753969,
        size.height * 0.1689243,
        size.width * 0.5753969,
        size.height * 0.1649779);

    Paint paint_161_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.002073764;
    paint_161_stroke.color = Color(0xff0e2947).withOpacity(1.0);
    paint_161_stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_161, paint_161_stroke);

    Paint paint_162_fill = Paint()..style = PaintingStyle.fill;
    paint_162_fill.color = Color(0xff2a7de1).withOpacity(1.0);
    canvas.drawOval(
        Rect.fromCenter(
            center: Offset(size.width * 0.6331927, size.height * 0.1449700),
            width: size.width * 0.02444967,
            height: size.height * 0.01429257),
        paint_162_fill);

    Path path_163 = Path();
    path_163.moveTo(size.width * 0.6454175, size.height * 0.1449700);
    path_163.cubicTo(
        size.width * 0.6454175,
        size.height * 0.1489165,
        size.width * 0.6399428,
        size.height * 0.1521163,
        size.width * 0.6331927,
        size.height * 0.1521163);
    path_163.cubicTo(
        size.width * 0.6264426,
        size.height * 0.1521163,
        size.width * 0.6209678,
        size.height * 0.1489165,
        size.width * 0.6209678,
        size.height * 0.1449700);

    Paint paint_163_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.002073764;
    paint_163_stroke.color = Color(0xff0e2947).withOpacity(1.0);
    paint_163_stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_163, paint_163_stroke);

    Paint paint_164_fill = Paint()..style = PaintingStyle.fill;
    paint_164_fill.color = Color(0xff2a7de1).withOpacity(1.0);
    canvas.drawOval(
        Rect.fromCenter(
            center: Offset(size.width * 0.7443464, size.height * 0.5079996),
            width: size.width * 0.02444967,
            height: size.height * 0.01429257),
        paint_164_fill);

    Path path_165 = Path();
    path_165.moveTo(size.width * 0.7565712, size.height * 0.5079996);
    path_165.cubicTo(
        size.width * 0.7565712,
        size.height * 0.5119460,
        size.width * 0.7510965,
        size.height * 0.5151459,
        size.width * 0.7443464,
        size.height * 0.5151459);
    path_165.cubicTo(
        size.width * 0.7375963,
        size.height * 0.5151459,
        size.width * 0.7321216,
        size.height * 0.5119460,
        size.width * 0.7321216,
        size.height * 0.5079996);

    Paint paint_165_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.002073764;
    paint_165_stroke.color = Color(0xff0e2947).withOpacity(1.0);
    paint_165_stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_165, paint_165_stroke);

    Paint paint_166_fill = Paint()..style = PaintingStyle.fill;
    paint_166_fill.color = Color(0xff2a7de1).withOpacity(1.0);
    canvas.drawOval(
        Rect.fromCenter(
            center: Offset(size.width * 0.7954750, size.height * 0.4822765),
            width: size.width * 0.02444967,
            height: size.height * 0.01429257),
        paint_166_fill);

    Path path_167 = Path();
    path_167.moveTo(size.width * 0.8076999, size.height * 0.4822765);
    path_167.cubicTo(
        size.width * 0.8076999,
        size.height * 0.4862230,
        size.width * 0.8022251,
        size.height * 0.4894228,
        size.width * 0.7954750,
        size.height * 0.4894228);
    path_167.cubicTo(
        size.width * 0.7887249,
        size.height * 0.4894228,
        size.width * 0.7832502,
        size.height * 0.4862230,
        size.width * 0.7832502,
        size.height * 0.4822765);

    Paint paint_167_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.002073764;
    paint_167_stroke.color = Color(0xff0e2947).withOpacity(1.0);
    paint_167_stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_167, paint_167_stroke);

    Paint paint_168_fill = Paint()..style = PaintingStyle.fill;
    paint_168_fill.color = Color(0xff2a7de1).withOpacity(1.0);
    canvas.drawOval(
        Rect.fromCenter(
            center: Offset(size.width * 0.8410460, size.height * 0.4622598),
            width: size.width * 0.02444967,
            height: size.height * 0.01429257),
        paint_168_fill);

    Path path_169 = Path();
    path_169.moveTo(size.width * 0.8532708, size.height * 0.4622598);
    path_169.cubicTo(
        size.width * 0.8532708,
        size.height * 0.4662062,
        size.width * 0.8477961,
        size.height * 0.4694061,
        size.width * 0.8410460,
        size.height * 0.4694061);
    path_169.cubicTo(
        size.width * 0.8342959,
        size.height * 0.4694061,
        size.width * 0.8288212,
        size.height * 0.4662062,
        size.width * 0.8288212,
        size.height * 0.4622598);

    Paint paint_169_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.002073764;
    paint_169_stroke.color = Color(0xff0e2947).withOpacity(1.0);
    paint_169_stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_169, paint_169_stroke);

    Paint paint_170_fill = Paint()..style = PaintingStyle.fill;
    paint_170_fill.color = Color(0xff2a7de1).withOpacity(1.0);
    canvas.drawOval(
        Rect.fromCenter(
            center: Offset(size.width * 0.8910652, size.height * 0.4365367),
            width: size.width * 0.02444967,
            height: size.height * 0.01429257),
        paint_170_fill);

    Path path_171 = Path();
    path_171.moveTo(size.width * 0.9032900, size.height * 0.4365367);
    path_171.cubicTo(
        size.width * 0.9032900,
        size.height * 0.4404832,
        size.width * 0.8978153,
        size.height * 0.4436830,
        size.width * 0.8910652,
        size.height * 0.4436830);
    path_171.cubicTo(
        size.width * 0.8843151,
        size.height * 0.4436830,
        size.width * 0.8788404,
        size.height * 0.4404832,
        size.width * 0.8788404,
        size.height * 0.4365367);

    Paint paint_171_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.002073764;
    paint_171_stroke.color = Color(0xff0e2947).withOpacity(1.0);
    paint_171_stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_171, paint_171_stroke);

    Paint paint_172_fill = Paint()..style = PaintingStyle.fill;
    paint_172_fill.color = Color(0xff2a7de1).withOpacity(1.0);
    canvas.drawOval(
        Rect.fromCenter(
            center: Offset(size.width * 0.5820640, size.height * 0.5899419),
            width: size.width * 0.02444967,
            height: size.height * 0.01429257),
        paint_172_fill);

    Path path_173 = Path();
    path_173.moveTo(size.width * 0.5942889, size.height * 0.5899419);
    path_173.cubicTo(
        size.width * 0.5942889,
        size.height * 0.5938883,
        size.width * 0.5888141,
        size.height * 0.5970882,
        size.width * 0.5820640,
        size.height * 0.5970882);
    path_173.cubicTo(
        size.width * 0.5753139,
        size.height * 0.5970882,
        size.width * 0.5698392,
        size.height * 0.5938883,
        size.width * 0.5698392,
        size.height * 0.5899419);

    Paint paint_173_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.002073764;
    paint_173_stroke.color = Color(0xff0e2947).withOpacity(1.0);
    paint_173_stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_173, paint_173_stroke);

    Paint paint_174_fill = Paint()..style = PaintingStyle.fill;
    paint_174_fill.color = Color(0xffffe197).withOpacity(1.0);
    canvas.drawOval(
        Rect.fromCenter(
            center: Offset(size.width * 0.5398214, size.height * 0.7995662),
            width: size.width * 0.02444967,
            height: size.height * 0.01429257),
        paint_174_fill);

    Path path_175 = Path();
    path_175.moveTo(size.width * 0.5520567, size.height * 0.8014684);
    path_175.cubicTo(
        size.width * 0.5520567,
        size.height * 0.8054148,
        size.width * 0.5465819,
        size.height * 0.8086147,
        size.width * 0.5398318,
        size.height * 0.8086147);
    path_175.cubicTo(
        size.width * 0.5330817,
        size.height * 0.8086147,
        size.width * 0.5276070,
        size.height * 0.8054148,
        size.width * 0.5276070,
        size.height * 0.8014684);

    Paint paint_175_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.002073764;
    paint_175_stroke.color = Color(0xff0e2947).withOpacity(1.0);
    paint_175_stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_175, paint_175_stroke);

    Paint paint_176_fill = Paint()..style = PaintingStyle.fill;
    paint_176_fill.color = Color(0xffffe197).withOpacity(1.0);
    canvas.drawOval(
        Rect.fromCenter(
            center: Offset(size.width * 0.2975125, size.height * 0.9253373),
            width: size.width * 0.02444967,
            height: size.height * 0.01429257),
        paint_176_fill);

    Path path_177 = Path();
    path_177.moveTo(size.width * 0.3097374, size.height * 0.9272394);
    path_177.cubicTo(
        size.width * 0.3097374,
        size.height * 0.9311859,
        size.width * 0.3042626,
        size.height * 0.9343857,
        size.width * 0.2975125,
        size.height * 0.9343857);
    path_177.cubicTo(
        size.width * 0.2907624,
        size.height * 0.9343857,
        size.width * 0.2852877,
        size.height * 0.9311859,
        size.width * 0.2852877,
        size.height * 0.9272394);

    Paint paint_177_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.002073764;
    paint_177_stroke.color = Color(0xff0e2947).withOpacity(1.0);
    paint_177_stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_177, paint_177_stroke);

    Paint paint_178_fill = Paint()..style = PaintingStyle.fill;
    paint_178_fill.color = Color(0xffffe197).withOpacity(1.0);
    canvas.drawOval(
        Rect.fromCenter(
            center: Offset(size.width * 0.2274919, size.height * 0.9062806),
            width: size.width * 0.02444967,
            height: size.height * 0.01429257),
        paint_178_fill);

    Path path_179 = Path();
    path_179.moveTo(size.width * 0.2397167, size.height * 0.9081827);
    path_179.cubicTo(
        size.width * 0.2397167,
        size.height * 0.9121291,
        size.width * 0.2342420,
        size.height * 0.9153290,
        size.width * 0.2274919,
        size.height * 0.9153290);
    path_179.cubicTo(
        size.width * 0.2207418,
        size.height * 0.9153290,
        size.width * 0.2152670,
        size.height * 0.9121291,
        size.width * 0.2152670,
        size.height * 0.9081827);

    Paint paint_179_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.002073764;
    paint_179_stroke.color = Color(0xff0e2947).withOpacity(1.0);
    paint_179_stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_179, paint_179_stroke);

    Paint paint_180_fill = Paint()..style = PaintingStyle.fill;
    paint_180_fill.color = Color(0xffffe197).withOpacity(1.0);
    canvas.drawOval(
        Rect.fromCenter(
            center: Offset(size.width * 0.9233018, size.height * 0.6890388),
            width: size.width * 0.02444967,
            height: size.height * 0.01429257),
        paint_180_fill);

    Path path_181 = Path();
    path_181.moveTo(size.width * 0.9355267, size.height * 0.6909409);
    path_181.cubicTo(
        size.width * 0.9355267,
        size.height * 0.6948874,
        size.width * 0.9300519,
        size.height * 0.6980872,
        size.width * 0.9233018,
        size.height * 0.6980872);
    path_181.cubicTo(
        size.width * 0.9165517,
        size.height * 0.6980872,
        size.width * 0.9110770,
        size.height * 0.6948874,
        size.width * 0.9110770,
        size.height * 0.6909409);

    Paint paint_181_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.002073764;
    paint_181_stroke.color = Color(0xff0e2947).withOpacity(1.0);
    paint_181_stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_181, paint_181_stroke);

    Paint paint_182_fill = Paint()..style = PaintingStyle.fill;
    paint_182_fill.color = Color(0xffffe197).withOpacity(1.0);
    canvas.drawOval(
        Rect.fromCenter(
            center: Offset(size.width * 0.9399749, size.height * 0.7271523),
            width: size.width * 0.02444967,
            height: size.height * 0.01429257),
        paint_182_fill);

    Path path_183 = Path();
    path_183.moveTo(size.width * 0.9521997, size.height * 0.7252413);
    path_183.cubicTo(
        size.width * 0.9521997,
        size.height * 0.7291878,
        size.width * 0.9467250,
        size.height * 0.7323876,
        size.width * 0.9399749,
        size.height * 0.7323876);
    path_183.cubicTo(
        size.width * 0.9332248,
        size.height * 0.7323876,
        size.width * 0.9277501,
        size.height * 0.7291878,
        size.width * 0.9277501,
        size.height * 0.7252413);

    Paint paint_183_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.002073764;
    paint_183_stroke.color = Color(0xff0e2947).withOpacity(1.0);
    paint_183_stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_183, paint_183_stroke);

    Paint paint_184_fill = Paint()..style = PaintingStyle.fill;
    paint_184_fill.color = Color(0xffffe197).withOpacity(1.0);
    canvas.drawOval(
        Rect.fromCenter(
            center: Offset(size.width * 0.8866170, size.height * 0.7595417),
            width: size.width * 0.02444967,
            height: size.height * 0.01429257),
        paint_184_fill);

    Path path_185 = Path();
    path_185.moveTo(size.width * 0.8988522, size.height * 0.7576396);
    path_185.cubicTo(
        size.width * 0.8988522,
        size.height * 0.7615860,
        size.width * 0.8933774,
        size.height * 0.7647859,
        size.width * 0.8866273,
        size.height * 0.7647859);
    path_185.cubicTo(
        size.width * 0.8798772,
        size.height * 0.7647859,
        size.width * 0.8744025,
        size.height * 0.7615860,
        size.width * 0.8744025,
        size.height * 0.7576396);

    Paint paint_185_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.002073764;
    paint_185_stroke.color = Color(0xff0e2947).withOpacity(1.0);
    paint_185_stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_185, paint_185_stroke);

    Paint paint_186_fill = Paint()..style = PaintingStyle.fill;
    paint_186_fill.color = Color(0xff2a7de1).withOpacity(1.0);
    canvas.drawOval(
        Rect.fromCenter(
            center: Offset(size.width * 0.6465373, size.height * 0.5575436),
            width: size.width * 0.02444967,
            height: size.height * 0.01429257),
        paint_186_fill);

    Path path_187 = Path();
    path_187.moveTo(size.width * 0.6587622, size.height * 0.5575436);
    path_187.cubicTo(
        size.width * 0.6587622,
        size.height * 0.5614901,
        size.width * 0.6532874,
        size.height * 0.5646899,
        size.width * 0.6465373,
        size.height * 0.5646899);
    path_187.cubicTo(
        size.width * 0.6397872,
        size.height * 0.5646899,
        size.width * 0.6343125,
        size.height * 0.5614901,
        size.width * 0.6343125,
        size.height * 0.5575436);

    Paint paint_187_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.002073764;
    paint_187_stroke.color = Color(0xff0e2947).withOpacity(1.0);
    paint_187_stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_187, paint_187_stroke);

    Paint paint_188_fill = Paint()..style = PaintingStyle.fill;
    paint_188_fill.color = Color(0xff2a7de1).withOpacity(1.0);
    canvas.drawOval(
        Rect.fromCenter(
            center: Offset(size.width * 0.6965461, size.height * 0.5318205),
            width: size.width * 0.02444967,
            height: size.height * 0.01429257),
        paint_188_fill);

    Path path_189 = Path();
    path_189.moveTo(size.width * 0.7087814, size.height * 0.5318205);
    path_189.cubicTo(
        size.width * 0.7087814,
        size.height * 0.5357670,
        size.width * 0.7033066,
        size.height * 0.5389668,
        size.width * 0.6965565,
        size.height * 0.5389668);
    path_189.cubicTo(
        size.width * 0.6898064,
        size.height * 0.5389668,
        size.width * 0.6843317,
        size.height * 0.5357670,
        size.width * 0.6843317,
        size.height * 0.5318205);

    Paint paint_189_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.002073764;
    paint_189_stroke.color = Color(0xff0e2947).withOpacity(1.0);
    paint_189_stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_189, paint_189_stroke);

    Paint paint_190_fill = Paint()..style = PaintingStyle.fill;
    paint_190_fill.color = Color(0xffffe197).withOpacity(1.0);
    canvas.drawOval(
        Rect.fromCenter(
            center: Offset(size.width * 0.7765831, size.height * 0.6938030),
            width: size.width * 0.02444967,
            height: size.height * 0.01429257),
        paint_190_fill);

    Path path_191 = Path();
    path_191.moveTo(size.width * 0.7888079, size.height * 0.6957051);
    path_191.cubicTo(
        size.width * 0.7888079,
        size.height * 0.6996516,
        size.width * 0.7833332,
        size.height * 0.7028514,
        size.width * 0.7765831,
        size.height * 0.7028514);
    path_191.cubicTo(
        size.width * 0.7698330,
        size.height * 0.7028514,
        size.width * 0.7643582,
        size.height * 0.6996516,
        size.width * 0.7643582,
        size.height * 0.6957051);

    Paint paint_191_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.002073764;
    paint_191_stroke.color = Color(0xff0e2947).withOpacity(1.0);
    paint_191_stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_191, paint_191_stroke);

    Paint paint_192_fill = Paint()..style = PaintingStyle.fill;
    paint_192_fill.color = Color(0xffffe197).withOpacity(1.0);
    canvas.drawOval(
        Rect.fromCenter(
            center: Offset(size.width * 0.6143007, size.height * 0.7757453),
            width: size.width * 0.02444967,
            height: size.height * 0.01429257),
        paint_192_fill);

    Path path_193 = Path();
    path_193.moveTo(size.width * 0.6265255, size.height * 0.7776474);
    path_193.cubicTo(
        size.width * 0.6265255,
        size.height * 0.7815939,
        size.width * 0.6210508,
        size.height * 0.7847937,
        size.width * 0.6143007,
        size.height * 0.7847937);
    path_193.cubicTo(
        size.width * 0.6075506,
        size.height * 0.7847937,
        size.width * 0.6020758,
        size.height * 0.7815939,
        size.width * 0.6020758,
        size.height * 0.7776474);

    Paint paint_193_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.002073764;
    paint_193_stroke.color = Color(0xff0e2947).withOpacity(1.0);
    paint_193_stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_193, paint_193_stroke);

    Paint paint_194_fill = Paint()..style = PaintingStyle.fill;
    paint_194_fill.color = Color(0xffffe197).withOpacity(1.0);
    canvas.drawOval(
        Rect.fromCenter(
            center: Offset(size.width * 0.6732059, size.height * 0.7471602),
            width: size.width * 0.02444967,
            height: size.height * 0.01429257),
        paint_194_fill);

    Path path_195 = Path();
    path_195.moveTo(size.width * 0.6854308, size.height * 0.7490623);
    path_195.cubicTo(
        size.width * 0.6854308,
        size.height * 0.7530087,
        size.width * 0.6799560,
        size.height * 0.7562086,
        size.width * 0.6732059,
        size.height * 0.7562086);
    path_195.cubicTo(
        size.width * 0.6664558,
        size.height * 0.7562086,
        size.width * 0.6609811,
        size.height * 0.7530087,
        size.width * 0.6609811,
        size.height * 0.7490623);

    Paint paint_195_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.002073764;
    paint_195_stroke.color = Color(0xff0e2947).withOpacity(1.0);
    paint_195_stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_195, paint_195_stroke);

    Paint paint_196_fill = Paint()..style = PaintingStyle.fill;
    paint_196_fill.color = Color(0xffffe197).withOpacity(1.0);
    canvas.drawOval(
        Rect.fromCenter(
            center: Offset(size.width * 0.7287828, size.height * 0.7176239),
            width: size.width * 0.02444967,
            height: size.height * 0.01429257),
        paint_196_fill);

    Path path_197 = Path();
    path_197.moveTo(size.width * 0.7410076, size.height * 0.7195261);
    path_197.cubicTo(
        size.width * 0.7410076,
        size.height * 0.7234725,
        size.width * 0.7355329,
        size.height * 0.7266724,
        size.width * 0.7287828,
        size.height * 0.7266724);
    path_197.cubicTo(
        size.width * 0.7220327,
        size.height * 0.7266724,
        size.width * 0.7165580,
        size.height * 0.7234725,
        size.width * 0.7165580,
        size.height * 0.7195261);

    Paint paint_197_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.002073764;
    paint_197_stroke.color = Color(0xff0e2947).withOpacity(1.0);
    paint_197_stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_197, paint_197_stroke);

    Paint paint_198_fill = Paint()..style = PaintingStyle.fill;
    paint_198_fill.color = Color(0xffffe197).withOpacity(1.0);
    canvas.drawOval(
        Rect.fromCenter(
            center: Offset(size.width * 0.8288212, size.height * 0.7862247),
            width: size.width * 0.02444967,
            height: size.height * 0.01429257),
        paint_198_fill);

    Path path_199 = Path();
    path_199.moveTo(size.width * 0.8410460, size.height * 0.7843226);
    path_199.cubicTo(
        size.width * 0.8410460,
        size.height * 0.7882691,
        size.width * 0.8355713,
        size.height * 0.7914689,
        size.width * 0.8288212,
        size.height * 0.7914689);
    path_199.cubicTo(
        size.width * 0.8220711,
        size.height * 0.7914689,
        size.width * 0.8165963,
        size.height * 0.7882691,
        size.width * 0.8165963,
        size.height * 0.7843226);

    Paint paint_199_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.002073764;
    paint_199_stroke.color = Color(0xff0e2947).withOpacity(1.0);
    paint_199_stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_199, paint_199_stroke);

    Paint paint_200_fill = Paint()..style = PaintingStyle.fill;
    paint_200_fill.color = Color(0xffffe197).withOpacity(1.0);
    canvas.drawOval(
        Rect.fromCenter(
            center: Offset(size.width * 0.6832118, size.height * 0.8748422),
            width: size.width * 0.02444967,
            height: size.height * 0.01429257),
        paint_200_fill);

    Path path_201 = Path();
    path_201.moveTo(size.width * 0.6954367, size.height * 0.8767444);
    path_201.cubicTo(
        size.width * 0.6954367,
        size.height * 0.8806908,
        size.width * 0.6899619,
        size.height * 0.8838906,
        size.width * 0.6832118,
        size.height * 0.8838906);
    path_201.cubicTo(
        size.width * 0.6764617,
        size.height * 0.8838906,
        size.width * 0.6709870,
        size.height * 0.8806908,
        size.width * 0.6709870,
        size.height * 0.8767444);

    Paint paint_201_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.002073764;
    paint_201_stroke.color = Color(0xff0e2947).withOpacity(1.0);
    paint_201_stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_201, paint_201_stroke);

    Paint paint_202_fill = Paint()..style = PaintingStyle.fill;
    paint_202_fill.color = Color(0xffffe197).withOpacity(1.0);
    canvas.drawOval(
        Rect.fromCenter(
            center: Offset(size.width * 0.7254544, size.height * 0.9215242),
            width: size.width * 0.02444967,
            height: size.height * 0.01429257),
        paint_202_fill);

    Path path_203 = Path();
    path_203.moveTo(size.width * 0.7376793, size.height * 0.9234352);
    path_203.cubicTo(
        size.width * 0.7376793,
        size.height * 0.9273817,
        size.width * 0.7322045,
        size.height * 0.9305815,
        size.width * 0.7254544,
        size.height * 0.9305815);
    path_203.cubicTo(
        size.width * 0.7187043,
        size.height * 0.9305815,
        size.width * 0.7132296,
        size.height * 0.9273817,
        size.width * 0.7132296,
        size.height * 0.9234352);

    Paint paint_203_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.002073764;
    paint_203_stroke.color = Color(0xff0e2947).withOpacity(1.0);
    paint_203_stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_203, paint_203_stroke);

    Paint paint_204_fill = Paint()..style = PaintingStyle.fill;
    paint_204_fill.color = Color(0xffffe197).withOpacity(1.0);
    canvas.drawOval(
        Rect.fromCenter(
            center: Offset(size.width * 0.7187769, size.height * 0.9577356),
            width: size.width * 0.02444967,
            height: size.height * 0.01429257),
        paint_204_fill);

    Path path_205 = Path();
    path_205.moveTo(size.width * 0.7310121, size.height * 0.9596377);
    path_205.cubicTo(
        size.width * 0.7310121,
        size.height * 0.9635842,
        size.width * 0.7255374,
        size.height * 0.9667840,
        size.width * 0.7187873,
        size.height * 0.9667840);
    path_205.cubicTo(
        size.width * 0.7120372,
        size.height * 0.9667840,
        size.width * 0.7065624,
        size.height * 0.9635842,
        size.width * 0.7065624,
        size.height * 0.9596377);

    Paint paint_205_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.002073764;
    paint_205_stroke.color = Color(0xff0e2947).withOpacity(1.0);
    paint_205_stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_205, paint_205_stroke);

    Paint paint_206_fill = Paint()..style = PaintingStyle.fill;
    paint_206_fill.color = Color(0xffffe197).withOpacity(1.0);
    canvas.drawOval(
        Rect.fromCenter(
            center: Offset(size.width * 0.6576527, size.height * 0.9758413),
            width: size.width * 0.02444967,
            height: size.height * 0.01429257),
        paint_206_fill);

    Path path_207 = Path();
    path_207.moveTo(size.width * 0.6698775, size.height * 0.9777434);
    path_207.cubicTo(
        size.width * 0.6698775,
        size.height * 0.9816899,
        size.width * 0.6644028,
        size.height * 0.9848897,
        size.width * 0.6576527,
        size.height * 0.9848897);
    path_207.cubicTo(
        size.width * 0.6509026,
        size.height * 0.9848897,
        size.width * 0.6454279,
        size.height * 0.9816899,
        size.width * 0.6454279,
        size.height * 0.9777434);

    Paint paint_207_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.002073764;
    paint_207_stroke.color = Color(0xff0e2947).withOpacity(1.0);
    paint_207_stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_207, paint_207_stroke);

    Paint paint_208_fill = Paint()..style = PaintingStyle.fill;
    paint_208_fill.color = Color(0xffffe197).withOpacity(1.0);
    canvas.drawOval(
        Rect.fromCenter(
            center: Offset(size.width * 0.7254544, size.height * 0.8376798),
            width: size.width * 0.02444967,
            height: size.height * 0.01429257),
        paint_208_fill);

    Path path_209 = Path();
    path_209.moveTo(size.width * 0.7376793, size.height * 0.8395819);
    path_209.cubicTo(
        size.width * 0.7376793,
        size.height * 0.8435283,
        size.width * 0.7322045,
        size.height * 0.8467282,
        size.width * 0.7254544,
        size.height * 0.8467282);
    path_209.cubicTo(
        size.width * 0.7187043,
        size.height * 0.8467282,
        size.width * 0.7132296,
        size.height * 0.8435283,
        size.width * 0.7132296,
        size.height * 0.8395819);

    Paint paint_209_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.002073764;
    paint_209_stroke.color = Color(0xff0e2947).withOpacity(1.0);
    paint_209_stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_209, paint_209_stroke);

    Paint paint_210_fill = Paint()..style = PaintingStyle.fill;
    paint_210_fill.color = Color(0xffffe197).withOpacity(1.0);
    canvas.drawOval(
        Rect.fromCenter(
            center: Offset(size.width * 0.7810313, size.height * 0.8081436),
            width: size.width * 0.02444967,
            height: size.height * 0.01429257),
        paint_210_fill);

    Path path_211 = Path();
    path_211.moveTo(size.width * 0.7932561, size.height * 0.8100457);
    path_211.cubicTo(
        size.width * 0.7932561,
        size.height * 0.8139921,
        size.width * 0.7877814,
        size.height * 0.8171920,
        size.width * 0.7810313,
        size.height * 0.8171920);
    path_211.cubicTo(
        size.width * 0.7742812,
        size.height * 0.8171920,
        size.width * 0.7688064,
        size.height * 0.8139921,
        size.width * 0.7688064,
        size.height * 0.8100457);

    Paint paint_211_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.002073764;
    paint_211_stroke.color = Color(0xff0e2947).withOpacity(1.0);
    paint_211_stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_211, paint_211_stroke);

    Paint paint_212_fill = Paint()..style = PaintingStyle.fill;
    paint_212_fill.color = Color(0xffffe197).withOpacity(1.0);
    canvas.drawOval(
        Rect.fromCenter(
            center: Offset(size.width * 0.4920316, size.height * 0.9186710),
            width: size.width * 0.02444967,
            height: size.height * 0.01429257),
        paint_212_fill);

    Path path_213 = Path();
    path_213.moveTo(size.width * 0.5042564, size.height * 0.9205731);
    path_213.cubicTo(
        size.width * 0.5042564,
        size.height * 0.9245196,
        size.width * 0.4987817,
        size.height * 0.9277194,
        size.width * 0.4920316,
        size.height * 0.9277194);
    path_213.cubicTo(
        size.width * 0.4852815,
        size.height * 0.9277194,
        size.width * 0.4798067,
        size.height * 0.9245196,
        size.width * 0.4798067,
        size.height * 0.9205731);

    Paint paint_213_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.002073764;
    paint_213_stroke.color = Color(0xff0e2947).withOpacity(1.0);
    paint_213_stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_213, paint_213_stroke);

    Paint paint_214_fill = Paint()..style = PaintingStyle.fill;
    paint_214_fill.color = Color(0xffffe197).withOpacity(1.0);
    canvas.drawOval(
        Rect.fromCenter(
            center: Offset(size.width * 0.3597565, size.height * 0.9139068),
            width: size.width * 0.02444967,
            height: size.height * 0.01429257),
        paint_214_fill);

    Path path_215 = Path();
    path_215.moveTo(size.width * 0.3719814, size.height * 0.9158089);
    path_215.cubicTo(
        size.width * 0.3719814,
        size.height * 0.9197554,
        size.width * 0.3665066,
        size.height * 0.9229552,
        size.width * 0.3597565,
        size.height * 0.9229552);
    path_215.cubicTo(
        size.width * 0.3530064,
        size.height * 0.9229552,
        size.width * 0.3475317,
        size.height * 0.9197554,
        size.width * 0.3475317,
        size.height * 0.9158089);

    Paint paint_215_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.002073764;
    paint_215_stroke.color = Color(0xff0e2947).withOpacity(1.0);
    paint_215_stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_215, paint_215_stroke);

    Paint paint_216_fill = Paint()..style = PaintingStyle.fill;
    paint_216_fill.color = Color(0xffffe197).withOpacity(1.0);
    canvas.drawOval(
        Rect.fromCenter(
            center: Offset(size.width * 0.4297875, size.height * 0.9005653),
            width: size.width * 0.02444967,
            height: size.height * 0.01429257),
        paint_216_fill);

    Path path_217 = Path();
    path_217.moveTo(size.width * 0.4420124, size.height * 0.9024674);
    path_217.cubicTo(
        size.width * 0.4420124,
        size.height * 0.9064139,
        size.width * 0.4365376,
        size.height * 0.9096137,
        size.width * 0.4297875,
        size.height * 0.9096137);
    path_217.cubicTo(
        size.width * 0.4230374,
        size.height * 0.9096137,
        size.width * 0.4175627,
        size.height * 0.9064139,
        size.width * 0.4175627,
        size.height * 0.9024674);

    Paint paint_217_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.002073764;
    paint_217_stroke.color = Color(0xff0e2947).withOpacity(1.0);
    paint_217_stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_217, paint_217_stroke);

    Paint paint_218_fill = Paint()..style = PaintingStyle.fill;
    paint_218_fill.color = Color(0xff2a7de1).withOpacity(1.0);
    canvas.drawOval(
        Rect.fromCenter(
            center: Offset(size.width * 0.2930643, size.height * 0.1583116),
            width: size.width * 0.02444967,
            height: size.height * 0.01429257),
        paint_218_fill);

    Path path_219 = Path();
    path_219.moveTo(size.width * 0.3052995, size.height * 0.1583116);
    path_219.cubicTo(
        size.width * 0.3052995,
        size.height * 0.1622580,
        size.width * 0.2998248,
        size.height * 0.1654578,
        size.width * 0.2930747,
        size.height * 0.1654578);
    path_219.cubicTo(
        size.width * 0.2863246,
        size.height * 0.1654578,
        size.width * 0.2808498,
        size.height * 0.1622580,
        size.width * 0.2808498,
        size.height * 0.1583116);

    Paint paint_219_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.002073764;
    paint_219_stroke.color = Color(0xff0e2947).withOpacity(1.0);
    paint_219_stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_219, paint_219_stroke);

    Paint paint_220_fill = Paint()..style = PaintingStyle.fill;
    paint_220_fill.color = Color(0xff2a7de1).withOpacity(1.0);
    canvas.drawOval(
        Rect.fromCenter(
            center: Offset(size.width * 0.2352685, size.height * 0.1287754),
            width: size.width * 0.02444967,
            height: size.height * 0.01429257),
        paint_220_fill);

    Path path_221 = Path();
    path_221.moveTo(size.width * 0.2474933, size.height * 0.1287754);
    path_221.cubicTo(
        size.width * 0.2474933,
        size.height * 0.1327218,
        size.width * 0.2420186,
        size.height * 0.1359216,
        size.width * 0.2352685,
        size.height * 0.1359216);
    path_221.cubicTo(
        size.width * 0.2285184,
        size.height * 0.1359216,
        size.width * 0.2230437,
        size.height * 0.1327218,
        size.width * 0.2230437,
        size.height * 0.1287754);

    Paint paint_221_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.002073764;
    paint_221_stroke.color = Color(0xff0e2947).withOpacity(1.0);
    paint_221_stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_221, paint_221_stroke);

    Paint paint_222_fill = Paint()..style = PaintingStyle.fill;
    paint_222_fill.color = Color(0xff2a7de1).withOpacity(1.0);
    canvas.drawOval(
        Rect.fromCenter(
            center: Offset(size.width * 0.1841399, size.height * 0.1040033),
            width: size.width * 0.02444967,
            height: size.height * 0.01429257),
        paint_222_fill);

    Path path_223 = Path();
    path_223.moveTo(size.width * 0.1963647, size.height * 0.1040033);
    path_223.cubicTo(
        size.width * 0.1963647,
        size.height * 0.1079498,
        size.width * 0.1908900,
        size.height * 0.1111496,
        size.width * 0.1841399,
        size.height * 0.1111496);
    path_223.cubicTo(
        size.width * 0.1773898,
        size.height * 0.1111496,
        size.width * 0.1719150,
        size.height * 0.1079498,
        size.width * 0.1719150,
        size.height * 0.1040033);

    Paint paint_223_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.002073764;
    paint_223_stroke.color = Color(0xff0e2947).withOpacity(1.0);
    paint_223_stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_223, paint_223_stroke);

    Paint paint_224_fill = Paint()..style = PaintingStyle.fill;
    paint_224_fill.color = Color(0xff2a7de1).withOpacity(1.0);
    canvas.drawOval(
        Rect.fromCenter(
            center: Offset(size.width * 0.1218958, size.height * 0.09161289),
            width: size.width * 0.02444967,
            height: size.height * 0.01429257),
        paint_224_fill);

    Path path_225 = Path();
    path_225.moveTo(size.width * 0.1341207, size.height * 0.09161289);
    path_225.cubicTo(
        size.width * 0.1341207,
        size.height * 0.09555935,
        size.width * 0.1286459,
        size.height * 0.09875918,
        size.width * 0.1218958,
        size.height * 0.09875918);
    path_225.cubicTo(
        size.width * 0.1151457,
        size.height * 0.09875918,
        size.width * 0.1096710,
        size.height * 0.09555935,
        size.width * 0.1096710,
        size.height * 0.09161289);

    Paint paint_225_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.002073764;
    paint_225_stroke.color = Color(0xff0e2947).withOpacity(1.0);
    paint_225_stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_225, paint_225_stroke);

    Paint paint_226_fill = Paint()..style = PaintingStyle.fill;
    paint_226_fill.color = step! >= 1
        ? Color(0xff2a7de1).withOpacity(1.0)
        : Color(0xffffc629).withOpacity(1.0);
    canvas.drawOval(
        Rect.fromCenter(
            center: Offset(size.width * 0.06742843, size.height * 0.1011413),
            width: size.width * 0.02444967,
            height: size.height * 0.01429257),
        paint_226_fill);

    Path path_227 = Path();
    path_227.moveTo(size.width * 0.07965327, size.height * 0.1011413);
    path_227.cubicTo(
        size.width * 0.07965327,
        size.height * 0.1050877,
        size.width * 0.07417853,
        size.height * 0.1082876,
        size.width * 0.06742843,
        size.height * 0.1082876);
    path_227.cubicTo(
        size.width * 0.06067833,
        size.height * 0.1082876,
        size.width * 0.05520359,
        size.height * 0.1050877,
        size.width * 0.05520359,
        size.height * 0.1011413);

    Paint paint_227_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.002073764;
    paint_227_stroke.color = Color(0xff0e2947).withOpacity(1.0);
    paint_227_stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_227, paint_227_stroke);

    Paint paint_228_fill = Paint()..style = PaintingStyle.fill;
    paint_228_fill.color = Color(0xff2a7de1).withOpacity(1.0);
    canvas.drawOval(
        Rect.fromCenter(
            center: Offset(size.width * 0.04074946, size.height * 0.1392548),
            width: size.width * 0.02444967,
            height: size.height * 0.01429257),
        paint_228_fill);

    Path path_229 = Path();
    path_229.moveTo(size.width * 0.05297430, size.height * 0.1392548);
    path_229.cubicTo(
        size.width * 0.05297430,
        size.height * 0.1432013,
        size.width * 0.04749956,
        size.height * 0.1464011,
        size.width * 0.04074946,
        size.height * 0.1464011);
    path_229.cubicTo(
        size.width * 0.03399936,
        size.height * 0.1464011,
        size.width * 0.02852462,
        size.height * 0.1432013,
        size.width * 0.02852462,
        size.height * 0.1392548);

    Paint paint_229_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.002073764;
    paint_229_stroke.color = Color(0xff0e2947).withOpacity(1.0);
    paint_229_stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_229, paint_229_stroke);

    Paint paint_230_fill = Paint()..style = PaintingStyle.fill;
    paint_230_fill.color = Color(0xff2a7de1).withOpacity(1.0);
    canvas.drawOval(
        Rect.fromCenter(
            center: Offset(size.width * 0.1719150, size.height * 0.2183439),
            width: size.width * 0.02444967,
            height: size.height * 0.01429257),
        paint_230_fill);

    Path path_231 = Path();
    path_231.moveTo(size.width * 0.1841399, size.height * 0.2183439);
    path_231.cubicTo(
        size.width * 0.1841399,
        size.height * 0.2222904,
        size.width * 0.1786651,
        size.height * 0.2254902,
        size.width * 0.1719150,
        size.height * 0.2254902);
    path_231.cubicTo(
        size.width * 0.1651649,
        size.height * 0.2254902,
        size.width * 0.1596902,
        size.height * 0.2222904,
        size.width * 0.1596902,
        size.height * 0.2183439);

    Paint paint_231_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.002073764;
    paint_231_stroke.color = Color(0xff0e2947).withOpacity(1.0);
    paint_231_stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_231, paint_231_stroke);

    Paint paint_232_fill = Paint()..style = PaintingStyle.fill;
    paint_232_fill.color = Color(0xff2a7de1).withOpacity(1.0);
    canvas.drawOval(
        Rect.fromCenter(
            center: Offset(size.width * 0.2352685, size.height * 0.2488312),
            width: size.width * 0.02444967,
            height: size.height * 0.01429257),
        paint_232_fill);

    Path path_233 = Path();
    path_233.moveTo(size.width * 0.2474933, size.height * 0.2488312);
    path_233.cubicTo(
        size.width * 0.2474933,
        size.height * 0.2527776,
        size.width * 0.2420186,
        size.height * 0.2559775,
        size.width * 0.2352685,
        size.height * 0.2559775);
    path_233.cubicTo(
        size.width * 0.2285184,
        size.height * 0.2559775,
        size.width * 0.2230437,
        size.height * 0.2527776,
        size.width * 0.2230437,
        size.height * 0.2488312);

    Paint paint_233_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.002073764;
    paint_233_stroke.color = Color(0xff0e2947).withOpacity(1.0);
    paint_233_stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_233, paint_233_stroke);

    Paint paint_234_fill = Paint()..style = PaintingStyle.fill;
    paint_234_fill.color = Color(0xff2a7de1).withOpacity(1.0);
    canvas.drawOval(
        Rect.fromCenter(
            center: Offset(size.width * 0.2975125, size.height * 0.2783674),
            width: size.width * 0.02444967,
            height: size.height * 0.01429257),
        paint_234_fill);

    Path path_235 = Path();
    path_235.moveTo(size.width * 0.3097374, size.height * 0.2783674);
    path_235.cubicTo(
        size.width * 0.3097374,
        size.height * 0.2823138,
        size.width * 0.3042626,
        size.height * 0.2855137,
        size.width * 0.2975125,
        size.height * 0.2855137);
    path_235.cubicTo(
        size.width * 0.2907624,
        size.height * 0.2855137,
        size.width * 0.2852877,
        size.height * 0.2823138,
        size.width * 0.2852877,
        size.height * 0.2783674);

    Paint paint_235_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.002073764;
    paint_235_stroke.color = Color(0xff0e2947).withOpacity(1.0);
    paint_235_stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_235, paint_235_stroke);

    Paint paint_236_fill = Paint()..style = PaintingStyle.fill;
    paint_236_fill.color = Color(0xff2a7de1).withOpacity(1.0);
    canvas.drawOval(
        Rect.fromCenter(
            center: Offset(size.width * 0.3597565, size.height * 0.3088546),
            width: size.width * 0.02444967,
            height: size.height * 0.01429257),
        paint_236_fill);

    Path path_237 = Path();
    path_237.moveTo(size.width * 0.3719814, size.height * 0.3088546);
    path_237.cubicTo(
        size.width * 0.3719814,
        size.height * 0.3128011,
        size.width * 0.3665066,
        size.height * 0.3160009,
        size.width * 0.3597565,
        size.height * 0.3160009);
    path_237.cubicTo(
        size.width * 0.3530064,
        size.height * 0.3160009,
        size.width * 0.3475317,
        size.height * 0.3128011,
        size.width * 0.3475317,
        size.height * 0.3088546);

    Paint paint_237_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.002073764;
    paint_237_stroke.color = Color(0xff0e2947).withOpacity(1.0);
    paint_237_stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_237, paint_237_stroke);

    Paint paint_238_fill = Paint()..style = PaintingStyle.fill;
    paint_238_fill.color = Color(0xff2a7de1).withOpacity(1.0);
    canvas.drawOval(
        Rect.fromCenter(
            center: Offset(size.width * 0.4297875, size.height * 0.3441150),
            width: size.width * 0.02444967,
            height: size.height * 0.01429257),
        paint_238_fill);

    Path path_239 = Path();
    path_239.moveTo(size.width * 0.4420124, size.height * 0.3441150);
    path_239.cubicTo(
        size.width * 0.4420124,
        size.height * 0.3480614,
        size.width * 0.4365376,
        size.height * 0.3512613,
        size.width * 0.4297875,
        size.height * 0.3512613);
    path_239.cubicTo(
        size.width * 0.4230374,
        size.height * 0.3512613,
        size.width * 0.4175627,
        size.height * 0.3480614,
        size.width * 0.4175627,
        size.height * 0.3441150);

    Paint paint_239_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.002073764;
    paint_239_stroke.color = Color(0xff0e2947).withOpacity(1.0);
    paint_239_stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_239, paint_239_stroke);

    Paint paint_240_fill = Paint()..style = PaintingStyle.fill;
    paint_240_fill.color = Color(0xffffe197).withOpacity(1.0);
    canvas.drawOval(
        Rect.fromCenter(
            center: Offset(size.width * 0.1185571, size.height * 0.6175760),
            width: size.width * 0.02444967,
            height: size.height * 0.01429257),
        paint_240_fill);

    Path path_241 = Path();
    path_241.moveTo(size.width * 0.1307819, size.height * 0.6194781);
    path_241.cubicTo(
        size.width * 0.1307819,
        size.height * 0.6234245,
        size.width * 0.1253072,
        size.height * 0.6266244,
        size.width * 0.1185571,
        size.height * 0.6266244);
    path_241.cubicTo(
        size.width * 0.1118070,
        size.height * 0.6266244,
        size.width * 0.1063322,
        size.height * 0.6234245,
        size.width * 0.1063322,
        size.height * 0.6194781);

    Paint paint_241_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.002073764;
    paint_241_stroke.color = Color(0xff0e2947).withOpacity(1.0);
    paint_241_stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_241, paint_241_stroke);

    Paint paint_242_fill = Paint()..style = PaintingStyle.fill;
    paint_242_fill.color = Color(0xffffe197).withOpacity(1.0);
    canvas.drawOval(
        Rect.fromCenter(
            center: Offset(size.width * 0.05297430, size.height * 0.5823245),
            width: size.width * 0.02444967,
            height: size.height * 0.01429257),
        paint_242_fill);

    Path path_243 = Path();
    path_243.moveTo(size.width * 0.06520950, size.height * 0.5842266);
    path_243.cubicTo(
        size.width * 0.06520950,
        size.height * 0.5881731,
        size.width * 0.05973477,
        size.height * 0.5913729,
        size.width * 0.05298466,
        size.height * 0.5913729);
    path_243.cubicTo(
        size.width * 0.04623456,
        size.height * 0.5913729,
        size.width * 0.04075983,
        size.height * 0.5881731,
        size.width * 0.04075983,
        size.height * 0.5842266);

    Paint paint_243_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.002073764;
    paint_243_stroke.color = Color(0xff0e2947).withOpacity(1.0);
    paint_243_stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_243, paint_243_stroke);

    Paint paint_244_fill = Paint()..style = PaintingStyle.fill;
    paint_244_fill.color = Color(0xffffe197).withOpacity(1.0);
    canvas.drawOval(
        Rect.fromCenter(
            center: Offset(size.width * 0.04741661, size.height * 0.5299184),
            width: size.width * 0.02444967,
            height: size.height * 0.01429257),
        paint_244_fill);

    Path path_245 = Path();
    path_245.moveTo(size.width * 0.05965182, size.height * 0.5318205);
    path_245.cubicTo(
        size.width * 0.05965182,
        size.height * 0.5357670,
        size.width * 0.05417708,
        size.height * 0.5389668,
        size.width * 0.04742698,
        size.height * 0.5389668);
    path_245.cubicTo(
        size.width * 0.04067688,
        size.height * 0.5389668,
        size.width * 0.03520214,
        size.height * 0.5357670,
        size.width * 0.03520214,
        size.height * 0.5318205);

    Paint paint_245_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.002073764;
    paint_245_stroke.color = Color(0xff0e2947).withOpacity(1.0);
    paint_245_stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_245, paint_245_stroke);

    Paint paint_246_fill = Paint()..style = PaintingStyle.fill;
    paint_246_fill.color = Color(0xffffe197).withOpacity(1.0);
    canvas.drawOval(
        Rect.fromCenter(
            center: Offset(size.width * 0.08188256, size.height * 0.4937070),
            width: size.width * 0.02444967,
            height: size.height * 0.01429257),
        paint_246_fill);

    Path path_247 = Path();
    path_247.moveTo(size.width * 0.09410740, size.height * 0.4956091);
    path_247.cubicTo(
        size.width * 0.09410740,
        size.height * 0.4995556,
        size.width * 0.08863266,
        size.height * 0.5027554,
        size.width * 0.08188256,
        size.height * 0.5027554);
    path_247.cubicTo(
        size.width * 0.07513246,
        size.height * 0.5027554,
        size.width * 0.06965773,
        size.height * 0.4995556,
        size.width * 0.06965773,
        size.height * 0.4956091);

    Paint paint_247_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.002073764;
    paint_247_stroke.color = Color(0xff0e2947).withOpacity(1.0);
    paint_247_stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_247, paint_247_stroke);

    Paint paint_248_fill = Paint()..style = PaintingStyle.fill;
    paint_248_fill.color = Color(0xffffe197).withOpacity(1.0);
    canvas.drawOval(
        Rect.fromCenter(
            center: Offset(size.width * 0.03853053, size.height * 0.4403498),
            width: size.width * 0.02444967,
            height: size.height * 0.01429257),
        paint_248_fill);

    Path path_249 = Path();
    path_249.moveTo(size.width * 0.05075537, size.height * 0.4384477);
    path_249.cubicTo(
        size.width * 0.05075537,
        size.height * 0.4423942,
        size.width * 0.04528063,
        size.height * 0.4455940,
        size.width * 0.03853053,
        size.height * 0.4455940);
    path_249.cubicTo(
        size.width * 0.03178043,
        size.height * 0.4455940,
        size.width * 0.02630569,
        size.height * 0.4423942,
        size.width * 0.02630569,
        size.height * 0.4384477);

    Paint paint_249_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.002073764;
    paint_249_stroke.color = Color(0xff0e2947).withOpacity(1.0);
    paint_249_stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_249, paint_249_stroke);

    Paint paint_250_fill = Paint()..style = PaintingStyle.fill;
    paint_250_fill.color = Color(0xffffe197).withOpacity(1.0);
    canvas.drawOval(
        Rect.fromCenter(
            center: Offset(size.width * 0.1819106, size.height * 0.6480632),
            width: size.width * 0.02444967,
            height: size.height * 0.01429257),
        paint_250_fill);

    Path path_251 = Path();
    path_251.moveTo(size.width * 0.1941458, size.height * 0.6499742);
    path_251.cubicTo(
        size.width * 0.1941458,
        size.height * 0.6539207,
        size.width * 0.1886710,
        size.height * 0.6571205,
        size.width * 0.1819209,
        size.height * 0.6571205);
    path_251.cubicTo(
        size.width * 0.1751708,
        size.height * 0.6571205,
        size.width * 0.1696961,
        size.height * 0.6539207,
        size.width * 0.1696961,
        size.height * 0.6499742);

    Paint paint_251_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.002073764;
    paint_251_stroke.color = Color(0xff0e2947).withOpacity(1.0);
    paint_251_stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_251, paint_251_stroke);

    Paint paint_252_fill = Paint()..style = PaintingStyle.fill;
    paint_252_fill.color = Color(0xffffe197).withOpacity(1.0);
    canvas.drawOval(
        Rect.fromCenter(
            center: Offset(size.width * 0.2441649, size.height * 0.6775994),
            width: size.width * 0.02444967,
            height: size.height * 0.01429257),
        paint_252_fill);

    Path path_253 = Path();
    path_253.moveTo(size.width * 0.2563898, size.height * 0.6795104);
    path_253.cubicTo(
        size.width * 0.2563898,
        size.height * 0.6834569,
        size.width * 0.2509150,
        size.height * 0.6866567,
        size.width * 0.2441649,
        size.height * 0.6866567);
    path_253.cubicTo(
        size.width * 0.2374148,
        size.height * 0.6866567,
        size.width * 0.2319401,
        size.height * 0.6834569,
        size.width * 0.2319401,
        size.height * 0.6795104);

    Paint paint_253_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.002073764;
    paint_253_stroke.color = Color(0xff0e2947).withOpacity(1.0);
    paint_253_stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_253, paint_253_stroke);

    Paint paint_254_fill = Paint()..style = PaintingStyle.fill;
    paint_254_fill.color = Color(0xffffe197).withOpacity(1.0);
    canvas.drawOval(
        Rect.fromCenter(
            center: Offset(size.width * 0.3064090, size.height * 0.7080956),
            width: size.width * 0.02444967,
            height: size.height * 0.01429257),
        paint_254_fill);

    Path path_255 = Path();
    path_255.moveTo(size.width * 0.3186338, size.height * 0.7099977);
    path_255.cubicTo(
        size.width * 0.3186338,
        size.height * 0.7139441,
        size.width * 0.3131591,
        size.height * 0.7171440,
        size.width * 0.3064090,
        size.height * 0.7171440);
    path_255.cubicTo(
        size.width * 0.2996589,
        size.height * 0.7171440,
        size.width * 0.2941841,
        size.height * 0.7139441,
        size.width * 0.2941841,
        size.height * 0.7099977);

    Paint paint_255_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.002073764;
    paint_255_stroke.color = Color(0xff0e2947).withOpacity(1.0);
    paint_255_stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_255, paint_255_stroke);

    Paint paint_256_fill = Paint()..style = PaintingStyle.fill;
    paint_256_fill.color = Color(0xffffe197).withOpacity(1.0);
    canvas.drawOval(
        Rect.fromCenter(
            center: Offset(size.width * 0.3764296, size.height * 0.7433470),
            width: size.width * 0.02444967,
            height: size.height * 0.01429257),
        paint_256_fill);

    Path path_257 = Path();
    path_257.moveTo(size.width * 0.3886544, size.height * 0.7452491);
    path_257.cubicTo(
        size.width * 0.3886544,
        size.height * 0.7491956,
        size.width * 0.3831797,
        size.height * 0.7523954,
        size.width * 0.3764296,
        size.height * 0.7523954);
    path_257.cubicTo(
        size.width * 0.3696795,
        size.height * 0.7523954,
        size.width * 0.3642048,
        size.height * 0.7491956,
        size.width * 0.3642048,
        size.height * 0.7452491);

    Paint paint_257_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.002073764;
    paint_257_stroke.color = Color(0xff0e2947).withOpacity(1.0);
    paint_257_stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_257, paint_257_stroke);

    Paint paint_258_fill = Paint()..style = PaintingStyle.fill;
    paint_258_fill.color = Color(0xff2a7de1).withOpacity(1.0);
    canvas.drawOval(
        Rect.fromCenter(
            center: Offset(size.width * 0.3052995, size.height * 0.4908449),
            width: size.width * 0.02444967,
            height: size.height * 0.01429257),
        paint_258_fill);

    Path path_259 = Path();
    path_259.moveTo(size.width * 0.3175243, size.height * 0.4927559);
    path_259.cubicTo(
        size.width * 0.3175243,
        size.height * 0.4967024,
        size.width * 0.3120496,
        size.height * 0.4999022,
        size.width * 0.3052995,
        size.height * 0.4999022);
    path_259.cubicTo(
        size.width * 0.2985494,
        size.height * 0.4999022,
        size.width * 0.2930747,
        size.height * 0.4967024,
        size.width * 0.2930747,
        size.height * 0.4927559);

    Paint paint_259_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.002073764;
    paint_259_stroke.color = Color(0xff0e2947).withOpacity(1.0);
    paint_259_stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_259, paint_259_stroke);

    Paint paint_260_fill = Paint()..style = PaintingStyle.fill;
    paint_260_fill.color = Color(0xff2a7de1).withOpacity(1.0);
    canvas.drawOval(
        Rect.fromCenter(
            center: Offset(size.width * 0.2719534, size.height * 0.4508293),
            width: size.width * 0.02444967,
            height: size.height * 0.01429257),
        paint_260_fill);

    Path path_261 = Path();
    path_261.moveTo(size.width * 0.2841782, size.height * 0.4527314);
    path_261.cubicTo(
        size.width * 0.2841782,
        size.height * 0.4566779,
        size.width * 0.2787035,
        size.height * 0.4598777,
        size.width * 0.2719534,
        size.height * 0.4598777);
    path_261.cubicTo(
        size.width * 0.2652033,
        size.height * 0.4598777,
        size.width * 0.2597285,
        size.height * 0.4566779,
        size.width * 0.2597285,
        size.height * 0.4527314);

    Paint paint_261_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.002073764;
    paint_261_stroke.color = Color(0xff0e2947).withOpacity(1.0);
    paint_261_stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_261, paint_261_stroke);

    Paint paint_262_fill = Paint()..style = PaintingStyle.fill;
    paint_262_fill.color = Color(0xffffe197).withOpacity(1.0);
    canvas.drawOval(
        Rect.fromCenter(
            center: Offset(size.width * 0.2230437, size.height * 0.4279594),
            width: size.width * 0.02444967,
            height: size.height * 0.01429257),
        paint_262_fill);

    Path path_263 = Path();
    path_263.moveTo(size.width * 0.2352685, size.height * 0.4260573);
    path_263.cubicTo(
        size.width * 0.2352685,
        size.height * 0.4300037,
        size.width * 0.2297938,
        size.height * 0.4332036,
        size.width * 0.2230437,
        size.height * 0.4332036);
    path_263.cubicTo(
        size.width * 0.2162936,
        size.height * 0.4332036,
        size.width * 0.2108188,
        size.height * 0.4300037,
        size.width * 0.2108188,
        size.height * 0.4260573);

    Paint paint_263_fill = Paint()..style = PaintingStyle.fill;
    paint_263_fill.color = Color(0xffffe197).withOpacity(1.0);
    canvas.drawPath(path_263, paint_263_fill);

    Paint paint_264_fill = Paint()..style = PaintingStyle.fill;
    paint_264_fill.color = Color(0xffffe197).withOpacity(1.0);
    canvas.drawOval(
        Rect.fromCenter(
            center: Offset(size.width * 0.1719150, size.height * 0.4012853),
            width: size.width * 0.02444967,
            height: size.height * 0.01429257),
        paint_264_fill);

    Path path_265 = Path();
    path_265.moveTo(size.width * 0.1841399, size.height * 0.4031874);
    path_265.cubicTo(
        size.width * 0.1841399,
        size.height * 0.4071338,
        size.width * 0.1786651,
        size.height * 0.4103337,
        size.width * 0.1719150,
        size.height * 0.4103337);
    path_265.cubicTo(
        size.width * 0.1651649,
        size.height * 0.4103337,
        size.width * 0.1596902,
        size.height * 0.4071338,
        size.width * 0.1596902,
        size.height * 0.4031874);

    Paint paint_265_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.002073764;
    paint_265_stroke.color = Color(0xff0e2947).withOpacity(1.0);
    paint_265_stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_265, paint_265_stroke);

    Path path_266 = Path();
    path_266.moveTo(size.width * 0.2352685, size.height * 0.4279594);
    path_266.cubicTo(
        size.width * 0.2352685,
        size.height * 0.4319059,
        size.width * 0.2297938,
        size.height * 0.4351057,
        size.width * 0.2230437,
        size.height * 0.4351057);
    path_266.cubicTo(
        size.width * 0.2162936,
        size.height * 0.4351057,
        size.width * 0.2108188,
        size.height * 0.4319059,
        size.width * 0.2108188,
        size.height * 0.4279594);

    Paint paint_266_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.002073764;
    paint_266_stroke.color = Color(0xff0e2947).withOpacity(1.0);
    paint_266_stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_266, paint_266_stroke);

    Paint paint_267_fill = Paint()..style = PaintingStyle.fill;
    paint_267_fill.color = Color(0xff2a7de1).withOpacity(1.0);
    canvas.drawOval(
        Rect.fromCenter(
            center: Offset(size.width * 0.3019607, size.height * 0.5889908),
            width: size.width * 0.02444967,
            height: size.height * 0.01429257),
        paint_267_fill);

    Path path_268 = Path();
    path_268.moveTo(size.width * 0.3141856, size.height * 0.5889908);
    path_268.cubicTo(
        size.width * 0.3141856,
        size.height * 0.5929373,
        size.width * 0.3087108,
        size.height * 0.5961371,
        size.width * 0.3019607,
        size.height * 0.5961371);
    path_268.cubicTo(
        size.width * 0.2952106,
        size.height * 0.5961371,
        size.width * 0.2897359,
        size.height * 0.5929373,
        size.width * 0.2897359,
        size.height * 0.5889908);

    Paint paint_268_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.002073764;
    paint_268_stroke.color = Color(0xff0e2947).withOpacity(1.0);
    paint_268_stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_268, paint_268_stroke);

    Paint paint_269_fill = Paint()..style = PaintingStyle.fill;
    paint_269_fill.color = Color(0xff2a7de1).withOpacity(1.0);
    canvas.drawOval(
        Rect.fromCenter(
            center: Offset(size.width * 0.3642048, size.height * 0.6194781),
            width: size.width * 0.02444967,
            height: size.height * 0.01429257),
        paint_269_fill);

    Path path_270 = Path();
    path_270.moveTo(size.width * 0.3764296, size.height * 0.6194781);
    path_270.cubicTo(
        size.width * 0.3764296,
        size.height * 0.6234245,
        size.width * 0.3709549,
        size.height * 0.6266244,
        size.width * 0.3642048,
        size.height * 0.6266244);
    path_270.cubicTo(
        size.width * 0.3574547,
        size.height * 0.6266244,
        size.width * 0.3519799,
        size.height * 0.6234245,
        size.width * 0.3519799,
        size.height * 0.6194781);

    Paint paint_270_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.002073764;
    paint_270_stroke.color = Color(0xff0e2947).withOpacity(1.0);
    paint_270_stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_270, paint_270_stroke);

    Paint paint_271_fill = Paint()..style = PaintingStyle.fill;
    paint_271_fill.color = Color(0xff2a7de1).withOpacity(1.0);
    canvas.drawOval(
        Rect.fromCenter(
            center: Offset(size.width * 0.2652759, size.height * 0.5442110),
            width: size.width * 0.02444967,
            height: size.height * 0.01429257),
        paint_271_fill);

    Path path_272 = Path();
    path_272.moveTo(size.width * 0.2775111, size.height * 0.5461131);
    path_272.cubicTo(
        size.width * 0.2775111,
        size.height * 0.5500596,
        size.width * 0.2720363,
        size.height * 0.5532594,
        size.width * 0.2652862,
        size.height * 0.5532594);
    path_272.cubicTo(
        size.width * 0.2585361,
        size.height * 0.5532594,
        size.width * 0.2530614,
        size.height * 0.5500596,
        size.width * 0.2530614,
        size.height * 0.5461131);

    Paint paint_272_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.002073764;
    paint_272_stroke.color = Color(0xff0e2947).withOpacity(1.0);
    paint_272_stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_272, paint_272_stroke);

    Paint paint_273_fill = Paint()..style = PaintingStyle.fill;
    paint_273_fill.color = Color(0xff2a7de1).withOpacity(1.0);
    canvas.drawOval(
        Rect.fromCenter(
            center: Offset(size.width * 0.6331927, size.height * 0.3441150),
            width: size.width * 0.02444967,
            height: size.height * 0.01429257),
        paint_273_fill);

    Path path_274 = Path();
    path_274.moveTo(size.width * 0.6454175, size.height * 0.3441150);
    path_274.cubicTo(
        size.width * 0.6454175,
        size.height * 0.3480614,
        size.width * 0.6399428,
        size.height * 0.3512613,
        size.width * 0.6331927,
        size.height * 0.3512613);
    path_274.cubicTo(
        size.width * 0.6264426,
        size.height * 0.3512613,
        size.width * 0.6209678,
        size.height * 0.3480614,
        size.width * 0.6209678,
        size.height * 0.3441150);

    Paint paint_274_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.002073764;
    paint_274_stroke.color = Color(0xff0e2947).withOpacity(1.0);
    paint_274_stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_274, paint_274_stroke);

    Paint paint_275_fill = Paint()..style = PaintingStyle.fill;
    paint_275_fill.color = step == 1
        ? Color(0xff2a7de1).withOpacity(1.0)
        : Color(0xffffc629).withOpacity(1.0);
    canvas.drawOval(
        Rect.fromCenter(
            center: Offset(size.width * 0.7032237, size.height * 0.3107656),
            width: size.width * 0.02444967,
            height: size.height * 0.01429257),
        paint_275_fill);

    Path path_276 = Path();
    path_276.moveTo(size.width * 0.7154485, size.height * 0.3107656);
    path_276.cubicTo(
        size.width * 0.7154485,
        size.height * 0.3147121,
        size.width * 0.7099738,
        size.height * 0.3179119,
        size.width * 0.7032237,
        size.height * 0.3179119);
    path_276.cubicTo(
        size.width * 0.6964736,
        size.height * 0.3179119,
        size.width * 0.6909988,
        size.height * 0.3147121,
        size.width * 0.6909988,
        size.height * 0.3107656);

    Paint paint_276_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.002073764;
    paint_276_stroke.color = Color(0xff0e2947).withOpacity(1.0);
    paint_276_stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_276, paint_276_stroke);

    Paint paint_277_fill = Paint()..style = PaintingStyle.fill;
    paint_277_fill.color = Color(0xff2a7de1).withOpacity(1.0);
    canvas.drawOval(
        Rect.fromCenter(
            center: Offset(size.width * 0.7921467, size.height * 0.3060015),
            width: size.width * 0.02444967,
            height: size.height * 0.01429257),
        paint_277_fill);

    Path path_278 = Path();
    path_278.moveTo(size.width * 0.8043715, size.height * 0.3060015);
    path_278.cubicTo(
        size.width * 0.8043715,
        size.height * 0.3099479,
        size.width * 0.7988968,
        size.height * 0.3131477,
        size.width * 0.7921467,
        size.height * 0.3131477);
    path_278.cubicTo(
        size.width * 0.7853966,
        size.height * 0.3131477,
        size.width * 0.7799218,
        size.height * 0.3099479,
        size.width * 0.7799218,
        size.height * 0.3060015);

    Paint paint_278_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.002073764;
    paint_278_stroke.color = Color(0xff0e2947).withOpacity(1.0);
    paint_278_stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_278, paint_278_stroke);

    Paint paint_279_fill = Paint()..style = PaintingStyle.fill;
    paint_279_fill.color = Color(0xff2a7de1).withOpacity(1.0);
    canvas.drawOval(
        Rect.fromCenter(
            center: Offset(size.width * 0.8743921, size.height * 0.3431639),
            width: size.width * 0.02444967,
            height: size.height * 0.01429257),
        paint_279_fill);

    Path path_280 = Path();
    path_280.moveTo(size.width * 0.8866170, size.height * 0.3431639);
    path_280.cubicTo(
        size.width * 0.8866170,
        size.height * 0.3471104,
        size.width * 0.8811422,
        size.height * 0.3503102,
        size.width * 0.8743921,
        size.height * 0.3503102);
    path_280.cubicTo(
        size.width * 0.8676420,
        size.height * 0.3503102,
        size.width * 0.8621673,
        size.height * 0.3471104,
        size.width * 0.8621673,
        size.height * 0.3431639);

    Paint paint_280_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.002073764;
    paint_280_stroke.color = Color(0xff0e2947).withOpacity(1.0);
    paint_280_stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_280, paint_280_stroke);

    Path path_281 = Path();
    path_281.moveTo(size.width * 0.3174518, size.height * 0.006675200);
    path_281.cubicTo(
        size.width * 0.3174518,
        size.height * 0.006675200,
        size.width * 0.4413488,
        size.height * -0.007315165,
        size.width * 0.4638076,
        size.height * 0.008728423);
    path_281.cubicTo(
        size.width * 0.4862665,
        size.height * 0.02477201,
        size.width * 0.4809058,
        size.height * 0.1119318,
        size.width * 0.4719161,
        size.height * 0.1157805);
    path_281.cubicTo(
        size.width * 0.4629367,
        size.height * 0.1196292,
        size.width * 0.4277449,
        size.height * 0.1202691,
        size.width * 0.4277449,
        size.height * 0.1221979);
    path_281.cubicTo(
        size.width * 0.4277449,
        size.height * 0.1241267,
        size.width * 0.4359777,
        size.height * 0.1369616,
        size.width * 0.4322346,
        size.height * 0.1388815);
    path_281.cubicTo(
        size.width * 0.4284914,
        size.height * 0.1408103,
        size.width * 0.4022894,
        size.height * 0.1247667,
        size.width * 0.3985463,
        size.height * 0.1247667);
    path_281.cubicTo(
        size.width * 0.3948031,
        size.height * 0.1247667,
        size.width * 0.3280798,
        size.height * 0.1244111,
        size.width * 0.3198470,
        size.height * 0.1218424);
    path_281.cubicTo(
        size.width * 0.3116141,
        size.height * 0.1192736,
        size.width * 0.3002292,
        size.height * 0.008595097,
        size.width * 0.3174518,
        size.height * 0.006666311);
    path_281.close();

    Paint paint_281_fill = Paint()..style = PaintingStyle.fill;
    paint_281_fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path_281, paint_281_fill);

    Path path_282 = Path();
    path_282.moveTo(size.width * 0.4313947, size.height * 0.1400814);
    path_282.cubicTo(
        size.width * 0.4280663,
        size.height * 0.1400814,
        size.width * 0.4208185,
        size.height * 0.1365172,
        size.width * 0.4109370,
        size.height * 0.1314863);
    path_282.cubicTo(
        size.width * 0.4059807,
        size.height * 0.1289620,
        size.width * 0.3998113,
        size.height * 0.1258244,
        size.width * 0.3985567,
        size.height * 0.1258066);
    path_282.cubicTo(
        size.width * 0.3978619,
        size.height * 0.1258066,
        size.width * 0.3281524,
        size.height * 0.1255400,
        size.width * 0.3194426,
        size.height * 0.1228201);
    path_282.cubicTo(
        size.width * 0.3119667,
        size.height * 0.1204914,
        size.width * 0.3045115,
        size.height * 0.05379269,
        size.width * 0.3083687,
        size.height * 0.02370540);
    path_282.cubicTo(
        size.width * 0.3098618,
        size.height * 0.01207047,
        size.width * 0.3127754,
        size.height * 0.006168560,
        size.width * 0.3172962,
        size.height * 0.005661920);
    path_282.cubicTo(
        size.width * 0.3177939,
        size.height * 0.005608590,
        size.width * 0.3678961,
        size.height * 7.894498e-19,
        size.width * 0.4097342,
        size.height * 7.894498e-19);
    path_282.cubicTo(
        size.width * 0.4387462,
        size.height * 7.894498e-19,
        size.width * 0.4571923,
        size.height * 0.002675413,
        size.width * 0.4645749,
        size.height * 0.007946243);
    path_282.cubicTo(
        size.width * 0.4811754,
        size.height * 0.01980339,
        size.width * 0.4831247,
        size.height * 0.06808526,
        size.width * 0.4792053,
        size.height * 0.09698149);
    path_282.cubicTo(
        size.width * 0.4780959,
        size.height * 0.1051322,
        size.width * 0.4760325,
        size.height * 0.1151761,
        size.width * 0.4724552,
        size.height * 0.1167049);
    path_282.cubicTo(
        size.width * 0.4672501,
        size.height * 0.1189359,
        size.width * 0.4539158,
        size.height * 0.1201003,
        size.width * 0.4432048,
        size.height * 0.1210335);
    path_282.cubicTo(
        size.width * 0.4374397,
        size.height * 0.1215402,
        size.width * 0.4309696,
        size.height * 0.1221002,
        size.width * 0.4290721,
        size.height * 0.1226335);
    path_282.cubicTo(
        size.width * 0.4293417,
        size.height * 0.1233979,
        size.width * 0.4300364,
        size.height * 0.1248378,
        size.width * 0.4306170,
        size.height * 0.1260555);
    path_282.cubicTo(
        size.width * 0.4338625,
        size.height * 0.1328107,
        size.width * 0.4360814,
        size.height * 0.1381082,
        size.width * 0.4328671,
        size.height * 0.1397703);
    path_282.cubicTo(
        size.width * 0.4324731,
        size.height * 0.1399748,
        size.width * 0.4319754,
        size.height * 0.1400814,
        size.width * 0.4314051,
        size.height * 0.1400814);
    path_282.close();
    path_282.moveTo(size.width * 0.4097239, size.height * 0.002053224);
    path_282.cubicTo(
        size.width * 0.3680516,
        size.height * 0.002053224,
        size.width * 0.3180946,
        size.height * 0.007635148,
        size.width * 0.3175969,
        size.height * 0.007697367);
    path_282.cubicTo(
        size.width * 0.3161764,
        size.height * 0.007857359,
        size.width * 0.3135220,
        size.height * 0.009457273,
        size.width * 0.3116556,
        size.height * 0.01840791);
    path_282.cubicTo(
        size.width * 0.3051958,
        size.height * 0.04939292,
        size.width * 0.3151291,
        size.height * 0.1185803,
        size.width * 0.3202617,
        size.height * 0.1208913);
    path_282.cubicTo(
        size.width * 0.3277376,
        size.height * 0.1232201,
        size.width * 0.3878042,
        size.height * 0.1237445,
        size.width * 0.3985359,
        size.height * 0.1237445);
    path_282.cubicTo(
        size.width * 0.4003297,
        size.height * 0.1237445,
        size.width * 0.4046535,
        size.height * 0.1259044,
        size.width * 0.4121502,
        size.height * 0.1297175);
    path_282.cubicTo(
        size.width * 0.4190351,
        size.height * 0.1332196,
        size.width * 0.4284603,
        size.height * 0.1380193,
        size.width * 0.4313843,
        size.height * 0.1380193);
    path_282.cubicTo(
        size.width * 0.4315606,
        size.height * 0.1380193,
        size.width * 0.4316332,
        size.height * 0.1380015,
        size.width * 0.4316332,
        size.height * 0.1380015);
    path_282.cubicTo(
        size.width * 0.4333129,
        size.height * 0.1371305,
        size.width * 0.4297357,
        size.height * 0.1296553,
        size.width * 0.4283774,
        size.height * 0.1268377);
    path_282.cubicTo(
        size.width * 0.4271331,
        size.height * 0.1242512,
        size.width * 0.4265317,
        size.height * 0.1229623,
        size.width * 0.4265317,
        size.height * 0.1222068);
    path_282.cubicTo(
        size.width * 0.4265317,
        size.height * 0.1205447,
        size.width * 0.4288025,
        size.height * 0.1202247,
        size.width * 0.4429352,
        size.height * 0.1189892);
    path_282.cubicTo(
        size.width * 0.4534492,
        size.height * 0.1180737,
        size.width * 0.4665450,
        size.height * 0.1169271,
        size.width * 0.4713561,
        size.height * 0.1148650);
    path_282.cubicTo(
        size.width * 0.4725278,
        size.height * 0.1143583,
        size.width * 0.4750060,
        size.height * 0.1099764,
        size.width * 0.4767894,
        size.height * 0.09674151);
    path_282.cubicTo(
        size.width * 0.4807918,
        size.height * 0.06716086,
        size.width * 0.4782307,
        size.height * 0.02039891,
        size.width * 0.4630092,
        size.height * 0.009519492);
    path_282.cubicTo(
        size.width * 0.4560725,
        size.height * 0.004568645,
        size.width * 0.4381448,
        size.height * 0.002053224,
        size.width * 0.4097031,
        size.height * 0.002053224);
    path_282.close();

    Paint paint_282_fill = Paint()..style = PaintingStyle.fill;
    paint_282_fill.color = Color(0xff0e2947).withOpacity(1.0);
    canvas.drawPath(path_282, paint_282_fill);

    Path path_283 = Path();
    path_283.moveTo(size.width * 0.4502660, size.height * 0.1684977);
    path_283.cubicTo(
        size.width * 0.4502660,
        size.height * 0.1684977,
        size.width * 0.4167125,
        size.height * 0.1469966,
        size.width * 0.3988366,
        size.height * 0.1736174);
    path_283.cubicTo(
        size.width * 0.3723339,
        size.height * 0.2130731,
        size.width * 0.4623456,
        size.height * 0.2577551,
        size.width * 0.4727559,
        size.height * 0.2517466);
    path_283.cubicTo(
        size.width * 0.4831559,
        size.height * 0.2457380,
        size.width * 0.5280839,
        size.height * 0.1845413,
        size.width * 0.5106125,
        size.height * 0.1643823);
    path_283.cubicTo(
        size.width * 0.4901652,
        size.height * 0.1407836,
        size.width * 0.4662132,
        size.height * 0.1457433,
        size.width * 0.4502763,
        size.height * 0.1685066);
    path_283.close();

    Paint paint_283_fill = Paint()..style = PaintingStyle.fill;
    paint_283_fill.color = Color(0xff65abef).withOpacity(1.0);
    canvas.drawPath(path_283, paint_283_fill);

    Path path_284 = Path();
    path_284.moveTo(size.width * 0.4515310, size.height * 0.1729597);
    path_284.cubicTo(
        size.width * 0.4515310,
        size.height * 0.1729597,
        size.width * 0.4222909,
        size.height * 0.1542229,
        size.width * 0.4067066,
        size.height * 0.1774216);
    path_284.cubicTo(
        size.width * 0.3836048,
        size.height * 0.2118020,
        size.width * 0.4620553,
        size.height * 0.2507422,
        size.width * 0.4711177,
        size.height * 0.2455069);
    path_284.cubicTo(
        size.width * 0.4801800,
        size.height * 0.2402716,
        size.width * 0.5193327,
        size.height * 0.1869411,
        size.width * 0.5041112,
        size.height * 0.1693687);
    path_284.cubicTo(
        size.width * 0.4862976,
        size.height * 0.1488010,
        size.width * 0.4654252,
        size.height * 0.1531207,
        size.width * 0.4515310,
        size.height * 0.1729597);
    path_284.close();

    Paint paint_284_fill = Paint()..style = PaintingStyle.fill;
    paint_284_fill.color = Color(0xff2a7de1).withOpacity(1.0);
    canvas.drawPath(path_284, paint_284_fill);

    Path path_285 = Path();
    path_285.moveTo(size.width * 0.4989165, size.height * 0.1698043);
    path_285.cubicTo(
        size.width * 0.4987817,
        size.height * 0.1698043,
        size.width * 0.4986469,
        size.height * 0.1697509,
        size.width * 0.4985639,
        size.height * 0.1696443);
    path_285.cubicTo(
        size.width * 0.4872826,
        size.height * 0.1556361,
        size.width * 0.4763124,
        size.height * 0.1613869,
        size.width * 0.4758562,
        size.height * 0.1616358);
    path_285.cubicTo(
        size.width * 0.4756592,
        size.height * 0.1617425,
        size.width * 0.4754000,
        size.height * 0.1616892,
        size.width * 0.4752756,
        size.height * 0.1615292);
    path_285.cubicTo(
        size.width * 0.4751511,
        size.height * 0.1613603,
        size.width * 0.4752030,
        size.height * 0.1611381,
        size.width * 0.4754000,
        size.height * 0.1610314);
    path_285.cubicTo(
        size.width * 0.4755140,
        size.height * 0.1609692,
        size.width * 0.4875004,
        size.height * 0.1546318,
        size.width * 0.4992586,
        size.height * 0.1692354);
    path_285.cubicTo(
        size.width * 0.4993934,
        size.height * 0.1694043,
        size.width * 0.4993416,
        size.height * 0.1696265,
        size.width * 0.4991549,
        size.height * 0.1697421);
    path_285.cubicTo(
        size.width * 0.4990824,
        size.height * 0.1697865,
        size.width * 0.4989994,
        size.height * 0.1698043,
        size.width * 0.4989165,
        size.height * 0.1698043);
    path_285.close();

    Paint paint_285_fill = Paint()..style = PaintingStyle.fill;
    paint_285_fill.color = Color(0xfffbffff).withOpacity(1.0);
    canvas.drawPath(path_285, paint_285_fill);

    Path path_286 = Path();
    path_286.moveTo(size.width * 0.5041112, size.height * 0.1693599);
    path_286.cubicTo(
        size.width * 0.4862976,
        size.height * 0.1487921,
        size.width * 0.4654252,
        size.height * 0.1531118,
        size.width * 0.4515310,
        size.height * 0.1729508);

    Paint paint_286_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.002073764;
    paint_286_stroke.color = Color(0xff0e2947).withOpacity(1.0);
    paint_286_stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_286, paint_286_stroke);

    Path path_287 = Path();
    path_287.moveTo(size.width * 0.4067169, size.height * 0.1774128);
    path_287.cubicTo(
        size.width * 0.3836152,
        size.height * 0.2117931,
        size.width * 0.4620657,
        size.height * 0.2507333,
        size.width * 0.4711280,
        size.height * 0.2454980);

    Paint paint_287_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.002073764;
    paint_287_stroke.color = Color(0xff0e2947).withOpacity(1.0);
    paint_287_stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_287, paint_287_stroke);

    Paint paint_288_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.002073764;
    paint_288_stroke.color = Color(0xff0e2947).withOpacity(1.0);
    paint_288_stroke.strokeJoin = StrokeJoin.round;
    canvas.drawLine(
        Offset(size.width * 0.5163153, size.height * 0.1342506),
        Offset(size.width * 0.5220389, size.height * 0.1211491),
        paint_288_stroke);

    Paint paint_289_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.002073764;
    paint_289_stroke.color = Color(0xff0e2947).withOpacity(1.0);
    paint_289_stroke.strokeJoin = StrokeJoin.round;
    canvas.drawLine(
        Offset(size.width * 0.5218004, size.height * 0.1369438),
        Offset(size.width * 0.5306554, size.height * 0.1306241),
        paint_289_stroke);

    Paint paint_290_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.002073764;
    paint_290_stroke.color = Color(0xff0e2947).withOpacity(1.0);
    paint_290_stroke.strokeJoin = StrokeJoin.round;
    canvas.drawLine(
        Offset(size.width * 0.5132151, size.height * 0.1301353),
        Offset(size.width * 0.5125618, size.height * 0.1202780),
        paint_290_stroke);

    Paint paint_291_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.002073764;
    paint_291_stroke.color = Color(0xff0e2947).withOpacity(1.0);
    paint_291_stroke.strokeJoin = StrokeJoin.round;
    canvas.drawLine(
        Offset(size.width * 0.4234729, size.height * 0.2553286),
        Offset(size.width * 0.4185477, size.height * 0.2649903),
        paint_291_stroke);

    Paint paint_292_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.002073764;
    paint_292_stroke.color = Color(0xff0e2947).withOpacity(1.0);
    paint_292_stroke.strokeJoin = StrokeJoin.round;
    canvas.drawLine(
        Offset(size.width * 0.4194706, size.height * 0.2531154),
        Offset(size.width * 0.4125131, size.height * 0.2575685),
        paint_292_stroke);

    Paint paint_293_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.002073764;
    paint_293_stroke.color = Color(0xff0e2947).withOpacity(1.0);
    paint_293_stroke.strokeJoin = StrokeJoin.round;
    canvas.drawLine(
        Offset(size.width * 0.4256089, size.height * 0.2585284),
        Offset(size.width * 0.4256400, size.height * 0.2659769),
        paint_293_stroke);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
