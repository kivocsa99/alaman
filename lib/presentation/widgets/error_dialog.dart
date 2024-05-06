import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:lottie/lottie.dart';

class ErrorDialog extends StatelessWidget {
  final String? description;
  const ErrorDialog({super.key, this.description});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: SizedBox(
        height: 100,
        width: 100,
        child: Lottie.asset("assets/error.json"),
      ),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            description!,
            style: Theme.of(context).primaryTextTheme.bodyMedium!.copyWith(color: const Color(0xff16437B)),
          ).tr(),
          const Gap(20),
          AuthhContainer(
            raduis: 50,
            height: 50,
            onTap: () async {
              context.router.maybePop();
            },
            color: const Color(0xffFFC629),
            child: Text(
              "back",
              style: Theme.of(context).primaryTextTheme.titleSmall?.copyWith(color: Colors.white),
            ).tr(),
          ),
        ],
      ),
    );
  }
}

class AuthhContainer extends StatelessWidget {
  final Color? color;
  final double? height;
  final VoidCallback? onTap;
  final Widget? child;
  final double? raduis;
  final Alignment? alignment;
  const AuthhContainer({super.key, this.color, this.alignment, this.height, this.child, this.onTap, this.raduis});

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
            gradient: color == null ? const LinearGradient(begin: Alignment.topCenter, end: Alignment.bottomCenter, colors: [Color(0xff0E3F6C), Color(0xff0F5BA0)]) : null),
        alignment: alignment ?? Alignment.center,
        child: child,
      ),
    );
  }
}
