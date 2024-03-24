import 'package:flutter/cupertino.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class SlideAndFadeAnimation extends HookWidget {
  final AnimationController controller;
  final Offset offset;
  final Widget child;
  const SlideAndFadeAnimation(
      {super.key,
      required this.controller,
      required this.offset,
      required this.child});

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: CurvedAnimation(parent: controller, curve: Curves.easeIn),
      child: SlideTransition(
        position: Tween<Offset>(
          begin: offset,
          end: Offset.zero,
        ).animate(CurvedAnimation(parent: controller, curve: Curves.easeOut)),
        child: child,
      ),
    );
  }
}
