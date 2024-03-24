import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerAffect extends HookWidget {
  final double? width;
  final double? height;
  final BoxDecoration? decoration;
  const ShimmerAffect({
    Key? key,
    this.width,
    this.height,
    this.decoration,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
        baseColor: Colors.grey[400]!,
        highlightColor: Colors.grey[300]!,
        child: Container(
          decoration: decoration,
          height: height,
          width: width,
        ));
  }
}
