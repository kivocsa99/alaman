import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:responsive_framework/responsive_framework.dart';

class ResponsiveWidget extends HookWidget {
  final Widget? child;
  const ResponsiveWidget({super.key, this.child});

  @override
  Widget build(BuildContext context) {
    return MaxWidthBox(
      maxWidth: 1200,
      background: Container(color: const Color(0xffF9F9F9)),
      child: ResponsiveScaledBox(
          width: ResponsiveValue<double>(context, conditionalValues: [
            const Condition.equals(name: MOBILE, value: 450),
            const Condition.between(start: 800, end: 1100, value: 800),
            const Condition.between(start: 1000, end: 1200, value: 1000),
          ]).value,
          child: child!),
    );
  }
}
