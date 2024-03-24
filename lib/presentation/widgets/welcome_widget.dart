import 'package:alaman/presentation/widgets/auth_container.dart';
import 'package:alaman/routes/app_route.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:responsive_framework/responsive_framework.dart';

class WelcomeWidget extends HookWidget {
  const WelcomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final controller1 =
        useAnimationController(duration: const Duration(milliseconds: 1500));
    final controller2 =
        useAnimationController(duration: const Duration(milliseconds: 1500));
    final controller3 =
        useAnimationController(duration: const Duration(milliseconds: 1500));
    final controller4 =
        useAnimationController(duration: const Duration(milliseconds: 1500));
    final controller5 =
        useAnimationController(duration: const Duration(milliseconds: 1500));
    final controller6 =
        useAnimationController(duration: const Duration(milliseconds: 1500));
    final controller7 =
        useAnimationController(duration: const Duration(milliseconds: 1500));
    useEffect(() {
      controller1.forward();
      controller2.forward();
      controller3.forward();
      controller4.forward();
      controller5.forward();
      controller6.forward();
      controller7.forward();

      return null;
    }, const []);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: ResponsiveRowColumn(
        layout: ResponsiveRowColumnType.COLUMN,
        columnMainAxisAlignment: MainAxisAlignment.start,
        children: [
          const ResponsiveRowColumnItem(child: Gap(10)),
          ResponsiveRowColumnItem(
              child: FadeTransition(
            opacity: CurvedAnimation(parent: controller1, curve: Curves.easeIn),
            child: SlideTransition(
              position: Tween<Offset>(
                begin: const Offset(-2, 0.2),
                end: Offset.zero,
              ).animate(
                  CurvedAnimation(parent: controller1, curve: Curves.easeOut)),
              child: Text(
                "Let's Get Started",
                style: Theme.of(context).primaryTextTheme.titleLarge,
              ),
            ),
          )),
          ResponsiveRowColumnItem(
              child: FadeTransition(
            opacity: CurvedAnimation(parent: controller2, curve: Curves.easeIn),
            child: SlideTransition(
              position: Tween<Offset>(
                begin: const Offset(0, 2),
                end: Offset.zero,
              ).animate(
                  CurvedAnimation(parent: controller2, curve: Curves.easeOut)),
              child: Text(
                "Unlock the power of giving",
                style: Theme.of(context).primaryTextTheme.bodyLarge,
              ),
            ),
          )),
          const ResponsiveRowColumnItem(child: Gap(50)),
          ResponsiveRowColumnItem(
              child: FadeTransition(
            opacity: CurvedAnimation(parent: controller3, curve: Curves.easeIn),
            child: SlideTransition(
              position: Tween<Offset>(
                begin: const Offset(0, 0.5),
                end: Offset.zero,
              ).animate(
                  CurvedAnimation(parent: controller3, curve: Curves.easeOut)),
              child: AuthContainer(
                height: 60,
                raduis: 50,
                onTap: () {},
                color: const Color(0xff2A7DE1),
                child: Text(
                  "Continue with google",
                  style: Theme.of(context)
                      .primaryTextTheme
                      .titleSmall
                      ?.copyWith(color: Colors.white),
                ),
              ),
            ),
          )),
          const ResponsiveRowColumnItem(child: Gap(20)),
          ResponsiveRowColumnItem(
              child: FadeTransition(
            opacity: CurvedAnimation(parent: controller4, curve: Curves.easeIn),
            child: SlideTransition(
              position: Tween<Offset>(
                begin: const Offset(0, 0.5),
                end: Offset.zero,
              ).animate(
                  CurvedAnimation(parent: controller4, curve: Curves.easeOut)),
              child: AuthContainer(
                height: 60,
                raduis: 50,
                onTap: () {},
                color: const Color(0xff16437B),
                child: Text(
                  "Continue with Apple",
                  style: Theme.of(context)
                      .primaryTextTheme
                      .titleSmall
                      ?.copyWith(color: Colors.white),
                ),
              ),
            ),
          )),
          const ResponsiveRowColumnItem(child: Gap(20)),
          ResponsiveRowColumnItem(
              child: FadeTransition(
            opacity: CurvedAnimation(parent: controller5, curve: Curves.easeIn),
            child: SlideTransition(
              position: Tween<Offset>(
                begin: const Offset(0, 0.5),
                end: Offset.zero,
              ).animate(
                  CurvedAnimation(parent: controller5, curve: Curves.easeOut)),
              child: Text(
                "Fast and easy. No password required.",
                style: Theme.of(context).primaryTextTheme.bodyLarge,
              ),
            ),
          )),
          const ResponsiveRowColumnItem(child: Gap(20)),
          ResponsiveRowColumnItem(
              child: FadeTransition(
            opacity: CurvedAnimation(parent: controller6, curve: Curves.easeIn),
            child: SlideTransition(
              position: Tween<Offset>(
                begin: const Offset(0, 0.5),
                end: Offset.zero,
              ).animate(
                  CurvedAnimation(parent: controller6, curve: Curves.easeOut)),
              child: AuthContainer(
                raduis: 50,
                height: 60,
                onTap: () {
                  context.router.push(const RegisterRoute());
                },
                color: const Color(0xffFFC629),
                child: Text(
                  "Sign up with email",
                  style: Theme.of(context)
                      .primaryTextTheme
                      .titleSmall
                      ?.copyWith(color: Colors.white),
                ),
              ),
            ),
          )),
          const ResponsiveRowColumnItem(child: Gap(10)),
          ResponsiveRowColumnItem(
              child: FadeTransition(
            opacity: CurvedAnimation(parent: controller7, curve: Curves.easeIn),
            child: SlideTransition(
              position: Tween<Offset>(
                begin: const Offset(0, 0.5),
                end: Offset.zero,
              ).animate(
                  CurvedAnimation(parent: controller7, curve: Curves.easeOut)),
              child: AuthContainer(
                raduis: 30,
                height: 80,
                onTap: () => context.router.push(const LoginRoute()),
                color: const Color(0xffEFEFEF),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Do you have an account Already?",
                      style: Theme.of(context)
                          .primaryTextTheme
                          .titleSmall
                          ?.copyWith(color: Colors.black),
                      textAlign: TextAlign.center,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8),
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          color: const Color(0xffB12732).withOpacity(0.3),
                        ),
                        child: Text(
                          "If yes, Login",
                          style: Theme.of(context)
                              .primaryTextTheme
                              .bodyMedium
                              ?.copyWith(color: const Color(0xff2A7DE1)),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )),
        ],
      ),
    );
  }
}
