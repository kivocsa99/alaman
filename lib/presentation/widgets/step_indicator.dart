import 'package:flutter/material.dart';

class StepIndicator extends StatelessWidget {
  final int currentStep;
  final int stepCount;

  const StepIndicator({
    Key? key,
    required this.currentStep,
    required this.stepCount,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(stepCount * 2 - 1, (index) {
        bool isCircle = index % 2 == 0;
        int circleIndex = index ~/ 2;

        return isCircle
            ? AnimatedContainer(
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeInOut,
                width: 15,
                height: 15,
                decoration: BoxDecoration(
                  color: circleIndex <= currentStep
                      ? Colors.blue
                      : Colors.transparent,
                  border: Border.all(
                      color: circleIndex <= currentStep
                          ? Colors.blue
                          : Colors.grey),
                  shape: BoxShape.circle,
                ),
              )
            : Container(
                width: 20,
                height: 2,
                color: circleIndex < currentStep ? Colors.blue : Colors.grey,
              );
      }),
    );
  }
}
