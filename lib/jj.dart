// import 'dart:math';
// import 'dart:ui';

// import 'package:flutter/material.dart';
// import 'package:freezed_annotation/freezed_annotation.dart';
// import 'dart:math' as math;

// class PathHandler extends StatefulWidget {
//   final PathType? pathType;
//   final Impact impact;

//   const PathHandler({
//     Key? key,
//     this.pathType,
//     this.impact,
//   }) : super(key: key);

//   @override
//   _PathHandlerState createState() => _PathHandlerState();
// }

// class _PathHandlerState extends State<PathHandler> {
//   GlobalKey _containerKey = GlobalKey();
//   Offset? containerOffset;
//   Offset? limitPoint;
//   int? activeStep;

//   @override
//   void initState() {
//     WidgetsBinding.instance
//         .addPostFrameCallback((_) => _getContainerKey(_containerKey));
//     super.initState();
//   }

//   // container of full path
//   _getContainerKey(GlobalKey key) {
//     final RenderBox renderBox = key.currentContext.findRenderObject();
//     final position = renderBox.globalToLocal(Offset.zero);
//     setState(() {
//       containerOffset = position;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     final double width = MediaQuery.of(context).size.width;
// //    final double height = MediaQuery.of(context).size.height;
//     final double height = widget.pathType.height;
//     final double sidesPadding = widget.pathType.sidesPadding;
//     final int steps = widget.pathType.steps;
//     double radius = height / steps;
//     final double pointSize = widget.pathType.pointSize;
//     final double top = (radius - pointSize) / 2;

//     List<Positioned> pointsWidgets = [];
//     int drawnPoints = 0;
//     int activeIndex=0;

//     if (widget.pathType.isFinished) {
//       activeIndex = widget.pathType.points.length - 1;
//     } else {
//       for (int j = 0; j < widget.pathType.points.length; j++) {
//         if (widget.pathType.points[j].active!) {
//           activeIndex = j;
//           break;
//         }
//       }
//     }

//     setState(() {
//       activeStep = ((activeIndex + 1) / 3).floor();
//     });
//     for (int i = 0; i <= steps; i++) {
//       for (int k = 0; k < (i == 0 || i == steps ? 2 : 3); k++) {
//         if (drawnPoints < widget.pathType.points.length) {
//           int tmp = 0;
//           if (i == 0) {
//             tmp = k + 2;
//           } else if (k == 0) {
//             tmp = 0;
//           } else if (k == 1) {
//             tmp = next(1, 3);
//           } else if (k == 2) {
//             tmp = 3;
//           }
//           pointsWidgets.add(
//             Positioned(
//               top: top + radius * i,
//               left: _getPointPosition(
//                     positionsEnumMapper[i % 2 == 0 ? tmp : 3 - tmp]!,
//                     width,
//                     radius,
//                     sidesPadding,
//                   ) +
//                   radius / 2,
//               child: SinglePoint(
//                 key: GlobalKey(),
//                 size: pointSize,
//                 hasRings: widget.pathType.points[drawnPoints].isHeadPoint!,
//                 isActive: widget.pathType.points[drawnPoints].active!,
//                 isPassed: widget.pathType.isFinished
//                     ? true
//                     : drawnPoints > activeIndex
//                         ? false
//                         : true,
//                 text: "",
//                 lineFromTop: widget.pathType.points[drawnPoints].isFromTop!,
//                 onTap: () {},
//               ),
//             ),
//           );
//           drawnPoints++;
//         }
//       }
//     }

//     setState(() {
//       limitPoint = Offset(
//         pointsWidgets[activeIndex].left!,
//         pointsWidgets[activeIndex].top!,
//       );
//     });

//     return Stack(
//       children: <Widget>[
//         Stack(
//           children: <Widget>[
//             Container(
//               key: _containerKey,
//               constraints: BoxConstraints(
//                 minHeight: height + radius * 1.5,
//                 minWidth: MediaQuery.of(context).size.width,
//               ),
//               child: CustomPaint(
//                 painter: PathPainter(
//                   width: width,
//                   height: height,
//                   steps: steps,
//                   radius: radius,
//                   sidesPadding: sidesPadding,
//                   limitPoint: limitPoint!,
//                   activeStep: activeStep!,
//                   pointsCount: widget.pathType.points.length,
//                   isFinished: widget.pathType.isFinished,
//                 ),
//               ),
//             ),
//             // first circle
//             Positioned(
//               left: sidesPadding / 2,
//               top: 30,
//               child: Container(
//                 width: 100,
//                 height: 100,
//                 decoration: BoxDecoration(
//                   color: Color(0xFF1f58a1),
//                   border: Border.all(
//                     width: 6,
//                     color: Color(0xFF1f58a1),
//                   ),
//                   shape: BoxShape.circle,
//                 ),
//                 child: ClipOval(
//                   child: Image.network(
//                     widget.impact.image,
//                     fit: BoxFit.cover,
//                   ),
//                 ),
//               ),
//             ),
//             // last circle
//             Positioned(
//               top: height + 30,
//               left: steps % 2 == 0 ? width - 100 - sidesPadding : 15,
//               child: Container(
//                 width: 100,
//                 height: 100,
//                 decoration: BoxDecoration(
//                   color: Color(0xFF1f58a1),
//                   border: Border.all(
//                     width: 8,
//                     color: Color(0xFF1f58a1),
//                   ),
//                   shape: BoxShape.circle,
//                 ),
//                 child: ClipOval(
//                   child: Image.network(
//                     widget.impact.image,
//                     fit: BoxFit.cover,
//                   ),
//                 ),
//               ),
//             ),
//             Positioned(
//               top: height + radius,
//               left: steps % 2 == 0 ? width - 150 - sidesPadding : 15,
//               child: Container(
//                 width: 150,
//                 child: Text(
// "",
//                   maxLines: 3,
//                   textAlign: steps % 2 == 0 ? TextAlign.right : TextAlign.left,
//                   style: TextStyle(
//                     fontWeight: FontWeight.normal,
//                     fontSize: 12,
//                     color: Color(0xFF1f58a1),
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//         Container(
//           constraints: BoxConstraints(
//             minHeight: height + radius,
//             minWidth: MediaQuery.of(context).size.width,
//             maxWidth: MediaQuery.of(context).size.width,
//             maxHeight: height + radius,
//           ),
//           child: Stack(
//             children: pointsWidgets,
//           ),
//         ),
//       ],
//     );
//   }
// }





// class SinglePoint extends StatefulWidget {
//   final globalKey = GlobalKey<SinglePointState>();

//   final GestureTapCallback? onTap;
//   final double size;
//   final bool hasRings;
//   final bool isActive;
//   final bool isPassed;
//   final bool lineFromTop;
//   final String text;

//   SinglePoint({
//     Key? key,
//     this.onTap,
//     this.size = 20,
//     this.hasRings = false,
//     this.isActive = false,
//     this.isPassed = false,
//     this.lineFromTop = false,
//     this.text = '',
//   }) : super(key: key);

//   @override
//   SinglePointState createState() => SinglePointState();
// }

// class SinglePointState extends State<SinglePoint> {
//   @override
//   Widget build(BuildContext context) {
//     return Stack(
//       children: <Widget>[
//         Container(
//           transform: Matrix4.translationValues(
//             widget.lineFromTop ? -18 : 38,
//             widget.lineFromTop ? -20 : 10,
//             0,
//           ),
//           child: RotationTransition(
//             turns: AlwaysStoppedAnimation(45 / 360),
//             child: Container(
//               width: 10,
//               height: 10,
//               transform: Matrix4.translationValues(
//                 3,
//                 widget.lineFromTop ? -30 : 50,
//                 0,
//               ),
//               color: widget.isPassed && widget.hasRings
//                   ? Colors.orangeAccent
//                   : Color(0xFF6a91c4),
//             ),
//           ),
//         ),
//         Container(
//           width: 1,
//           height: widget.lineFromTop ? 60 : 30,
//           transform: Matrix4.translationValues(
//             widget.size / 2,
//             widget.lineFromTop ? -widget.size * 2 : widget.size,
//             0,
//           ),
//           color: widget.isPassed && widget.hasRings
//               ? Colors.orangeAccent
//               : Color(0xFF6a91c4),
//         ),
//         Container(
//           transform: Matrix4.translationValues(
//             -widget.size,
//             widget.lineFromTop ? -widget.size * 3.5 : widget.size * 3.1,
//             0,
//           ),
//           child: Container(
//             width: 80,
//             child: Text(
//               widget.text,
//               maxLines: 3,
//               style: TextStyle(
//                 fontWeight: FontWeight.normal,
//                 fontSize: 12,
//                 color: Color(0xFF1f58a1),
//               ),
//             ),
//           ),
//         ),
//         widget.hasRings
//             ? Container(
//                 width: widget.size * 3,
//                 height: widget.size * 3,
//                 transform:
//                     Matrix4.translationValues(-widget.size, -widget.size, 0),
//                 decoration: BoxDecoration(
//                   border: Border.all(
//                     color:
//                         widget.isPassed ? Color(0xFF1f58a1) : Color(0xFF6a91c4),
//                     width: 2,
//                   ),
//                   shape: BoxShape.circle,
//                 ),
//               )
//             : Container(),
//         widget.hasRings
//             ? Container(
//                 width: widget.size + 24,
//                 height: widget.size + 24,
//                 transform: Matrix4.translationValues(-12, -12, 0),
//                 decoration: BoxDecoration(
//                   border: Border.all(
//                     color: widget.isPassed
//                         ? Colors.orangeAccent
//                         : Color(0xFF6a91c4),
//                     width: 5,
//                   ),
//                   shape: BoxShape.circle,
//                 ),
//               )
//             : Container(),
//         Container(
//           width: widget.isActive ? widget.size + 8 : widget.size,
//           height: widget.isActive ? widget.size + 8 : widget.size,
//           transform:
//               widget.isActive ? Matrix4.translationValues(-4, -4, 0) : null,
//           decoration: BoxDecoration(
//             color: widget.isPassed ? Color(0xFF1f58a1) : Color(0xFF6a91c4),
//             shape: BoxShape.circle,
//           ),
//         ),
//       ],
//     );
//   }
// }

// class Point {
//   final double x, y;

//   Point(this.x, this.y);
// }

// class PointModel {
//   PointModel({
//     this.id,
//     this.text,
//     this.active,
//     this.isFromTop,
//     this.isHeadPoint = false,
//   });

//   int? id;
//   String? text;
//   bool? active;
//   bool? isFromTop;
//   bool? isHeadPoint;
// }

// int _getPointPosition(
//   PointPosition position,
//   double width,
//   double radius,
//   double sidesPadding,
// ) {
//   switch (position) {
//     case PointPosition.atStart:
//       return sidesPadding.round();
//       break;
//     case PointPosition.atMiddle1:
//       return (width / 3).round();
//       break;
//     case PointPosition.atMiddle2:
//       return (width / 4.5).round();
//       break;
//     case PointPosition.atEnd:
//       return (width - radius - sidesPadding).round();
//       break;
//   }
// }

// enum PointPosition { atStart, atMiddle1, atMiddle2, atEnd }

// Map<int, PointPosition> positionsEnumMapper = {
//   0: PointPosition.atStart,
//   1: PointPosition.atMiddle1,
//   2: PointPosition.atMiddle2,
//   3: PointPosition.atEnd,
// };

// final _random = math.Random();

// int next(int min, int max) => min + _random.nextInt(max - min);

// class PathType {
//   final double height;
//   final double sidesPadding;
//   final int steps;
//   final double pointSize;
//   List<PointModel> points;
//   final bool isFinished;
//   final bool isHeadPoint;

//   PathType({
//     this.height = 850,
//     this.sidesPadding = 15,
//     this.steps = 6,
//     this.pointSize = 20,
//     required this.points,
//     this.isFinished = false,
//     this.isHeadPoint = false,
//   });

//   void updatePointsFromBackend(List<dynamic> backendSteps) {
//     this.points = backendSteps
//         .map((step) => PointModel(
//               id: step['id'],
//               text: step['name'],
//               active:
//                   false, // You need a logic to set active based on your condition
//               isFromTop: false, // Determine based on your UI design or data
//               isHeadPoint: false, // Determine based on your UI design or data
//             ))
//         .toList();
//   }
// }

// class PathPainter extends CustomPainter {
//   final double width, height;
//   final int pointsCount;
//   final int steps;
//   final int activeStep;
//   final double radius;
//   final double sidesPadding;
//   final Offset limitPoint;
//   final bool isFinished;

//   PathPainter({
//     required this.width,
//     required this.height,
//     required this.pointsCount,
//     required this.steps,
//     required this.activeStep,
//     required this.radius,
//     required this.sidesPadding,
//     required this.limitPoint,
//     this.isFinished = false,
//   });

//   @override
//   Future<void> paint(Canvas canvas, Size size) async {
//     final Point start = Point(sidesPadding, radius / 2);

//     final Paint wavePainter = Paint()
//       ..color = Color(0xFF1f58a1).withOpacity(0.5)
//       ..strokeWidth = 8
//       ..style = PaintingStyle.stroke;

//     double degToRad(double deg) => deg * (math.pi / 180.0);

//     double xe = width - radius / 2 - sidesPadding;

//     Path path = Path();
//     path.moveTo(start.x, start.y);
//     bool finished = false;

//     for (int i = 0; i < steps; i++) {
//       if (finished) {
//         path
//           ..lineTo(radius / 2 + sidesPadding, start.y + (radius) * i)
//           ..arcTo(
//             Rect.fromLTWH(sidesPadding, start.y + (radius) * i, radius, radius),
//             degToRad(-90),
//             degToRad(-180),
//             false,
//           );
//       } else {
//         path
//           ..lineTo((radius + sidesPadding), start.y + (radius * i))
//           ..arcTo(
//             Rect.fromLTWH(
//                 xe - radius / 2, start.y + (radius) * i, radius, radius),
//             degToRad(-90),
//             degToRad(180),
//             false,
//           );
//       }
//       finished = !finished;
//     }
//     // last line
//     // odd - right to left
//     // even - left to right
//     steps % 2 != 0
//         ? path.lineTo((start.x + sidesPadding / 2), start.y + (radius * steps))
//         : path.lineTo((xe), start.y + (radius * steps));

//     canvas.drawPath(path, wavePainter);

//     ///////////////////////////////////////////////////////////////

//     double pathLength = 0;

//     double fromSide = activeStep % 2 == 0
//         ? limitPoint.dx - radius / 2 + ((steps - (activeStep + 2)) * 10)
//         : width -
//             limitPoint.dx -
//             radius / 2 -
//             sidesPadding * (activeStep - 1) +
//             ((steps - activeStep) * 5);

//     if (activeStep == 0) {
//       pathLength = limitPoint.dx - sidesPadding;
//     } else {
//       pathLength = (10 * (((activeStep - 1) * 3) - 1)) +
//           (xe) +
//           (width - radius) +
//           ((math.pi * radius)) * activeStep +
//           (fromSide - radius) -
//           (activeStep * sidesPadding) -
//           radius -
//           (math.pi * radius / 2);
//     }

//     PathMetrics metrics;

//     final Paint wavePainter3 = Paint()
//       ..color = Color(0xFF1f58a1)
//       ..strokeWidth = 10
//       ..style = PaintingStyle.stroke;

//     metrics = path.computeMetrics();
//     double flow = isFinished ? metrics.first.length : pathLength;

//     metrics = path.computeMetrics();
//     Path path3 = metrics.first.extractPath(0, flow);

//     canvas.drawPath(path3, wavePainter3);
//   }

//   @override
//   bool shouldRepaint(CustomPainter oldDelegate) => true;
// }
