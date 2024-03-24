import 'package:flutter/material.dart';

class AuthContainer extends StatelessWidget {
  final Color? color;
  final double? height;
  final VoidCallback? onTap;
  final Widget? child;
  final double? raduis;
  final Alignment? alignment;
  const AuthContainer(
      {super.key,
      this.color,
      this.alignment,
      this.height,
      this.child,
      this.onTap,
      this.raduis});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.only(left: 20, right: 20),
        height: height,
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(raduis!),
            color: color,
            border: Border.all(width: 1, color: Colors.grey.withOpacity(0.3)),
            gradient: color == null
                ? const LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Color(0xff0E3F6C), Color(0xff0F5BA0)])
                : null),
        alignment: alignment ?? Alignment.center,
        child: child,
      ),
    );
  }
}
