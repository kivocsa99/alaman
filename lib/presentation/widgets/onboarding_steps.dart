import 'package:alaman/application/provider/hive.setting.provider.dart';
import 'package:alaman/application/provider/language.provider.dart';
import 'package:alaman/constants.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:responsive_framework/responsive_framework.dart';

class OnBoardingSteps extends HookConsumerWidget {
  final int index;
  final VoidCallback next;
  const OnBoardingSteps({super.key, required this.index, required this.next});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final locale =
        ref.watch(languageHiveNotifierProvider.notifier).getLanguage();
    final controller1 =
        useAnimationController(duration: const Duration(seconds: 1));
    final controller2 =
        useAnimationController(duration: const Duration(seconds: 1));
    final controller3 =
        useAnimationController(duration: const Duration(seconds: 1));
    final controller4 =
        useAnimationController(duration: const Duration(seconds: 1));

    useEffect(() {
      controller1.forward();
      controller2.forward();
      controller3.forward();
      controller4.forward();
      return null;
    }, const []);

    return ResponsiveRowColumn(
      layout: ResponsiveRowColumnType.COLUMN,
      columnMainAxisAlignment: MainAxisAlignment.start,
      children: [
        ResponsiveRowColumnItem(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: ResponsiveRowColumn(
            layout: ResponsiveRowColumnType.ROW,
            rowMainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ResponsiveRowColumnItem(
                child: GestureDetector(
                  child: Text(
                    locale == "en" ? "EN" : "AR",
                    style: Theme.of(context).primaryTextTheme.bodyMedium,
                  ),
                  onTap: () {
                    context.setLocale(locale == "en"
                        ? const Locale("ar")
                        : const Locale("en"));
                    ref
                        .read(languageHiveNotifierProvider.notifier)
                        .setLanguage(locale == "en" ? "ar" : "en");
                  },
                ),
              ),
              ResponsiveRowColumnItem(
                child: Image.asset(
                  'assets/Asset 6.png',
                  scale: 5,
                ),
              ),
              const ResponsiveRowColumnItem(
                  child: Gap(
                20,
              ))
            ],
          ),
        )),
        const ResponsiveRowColumnItem(child: Gap(10)),
        ResponsiveRowColumnItem(
            child: FadeTransition(
          opacity: CurvedAnimation(parent: controller1, curve: Curves.easeIn),
          child: SlideTransition(
            position: Tween<Offset>(
              begin: const Offset(0, 0.2),
              end: Offset.zero,
            ).animate(
                CurvedAnimation(parent: controller1, curve: Curves.easeOut)),
            child: SvgPicture.asset(
              onBoardingImages[index],
              width: double.infinity,
              height: 300,
              fit: BoxFit.contain,
            ),
          ),
        )),
        ResponsiveRowColumnItem(
          child: FadeTransition(
            opacity: CurvedAnimation(parent: controller2, curve: Curves.easeIn),
            child: SlideTransition(
              position: Tween<Offset>(
                begin: const Offset(0, 0.2),
                end: Offset.zero,
              ).animate(
                  CurvedAnimation(parent: controller2, curve: Curves.easeOut)),
              child: Text(
                onBoardingTitle[index],
                textAlign: TextAlign.center,
                style: Theme.of(context).primaryTextTheme.titleMedium,
              ),
            ),
          ),
        ),
        ResponsiveRowColumnItem(
            child: FadeTransition(
          opacity: CurvedAnimation(parent: controller3, curve: Curves.easeIn),
          child: SlideTransition(
            position: Tween<Offset>(
              begin: const Offset(0, 0.2),
              end: Offset.zero,
            ).animate(
                CurvedAnimation(parent: controller3, curve: Curves.easeOut)),
            child: Text(
              onBoardingDescription[index],
              style: Theme.of(context).primaryTextTheme.bodyMedium,
              textAlign: TextAlign.center,
            ),
          ),
        )),
        const ResponsiveRowColumnItem(child: Gap(20)),
        ResponsiveRowColumnItem(
          child: FadeTransition(
            opacity: CurvedAnimation(parent: controller4, curve: Curves.easeIn),
            child: SlideTransition(
              position: Tween<Offset>(
                begin: const Offset(0, 0.2),
                end: Offset.zero,
              ).animate(
                  CurvedAnimation(parent: controller4, curve: Curves.easeOut)),
              child: GestureDetector(
                onTap: next,
                child: Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      boxShadow: index == 2
                          ? [
                              BoxShadow(
                                color: Colors.blue.withOpacity(
                                    0.5), // Shadow color with some opacity
                                spreadRadius: 1,
                                blurRadius: 4,
                                offset: const Offset(
                                    0, 4), // Position of the shadow
                              ),
                            ]
                          : null,
                      color: const Color(0xff2A7DE1),
                    ),
                    height: 40,
                    width: 150,
                    child: Text(index == 2 ? "Get started" : "Continue",
                        style: Theme.of(context)
                            .primaryTextTheme
                            .titleSmall
                            ?.copyWith(color: Colors.white))),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
