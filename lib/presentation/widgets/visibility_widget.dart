import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class VisibilityWidget extends HookWidget {
  final bool? isVisible;
  const VisibilityWidget({super.key, this.isVisible = false});

  @override
  Widget build(BuildContext context) {
    final animationController = useAnimationController(
      duration: const Duration(milliseconds: 800),
    );

    final animation = useAnimation(
      ColorTween(begin: Colors.transparent, end: Colors.black)
          .animate(animationController),
    );

    useEffect(() {
      if (isVisible!) {
        animationController.repeat(reverse: true);
      } else {
        animationController.stop();
      }
      return animationController.dispose;
    }, [isVisible]);

    return Visibility(
      visible: isVisible!,
      child: Material(
        child: Center(
          child: Container(
            width: double.infinity,
            color: animation,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Opacity(
                    opacity: animationController.value,
                    child: Image.asset("assets/logo.png"),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text("loading"),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
