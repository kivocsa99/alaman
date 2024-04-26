import 'package:alaman/application/provider/auth.repository.provider.dart';
import 'package:alaman/presentation/widgets/auth_container.dart';
import 'package:alaman/routes/app_route.dart';
import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:sign_in_with_apple/sign_in_with_apple.dart';

class WelcomeWidget extends HookConsumerWidget {
  const WelcomeWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller1 = useAnimationController(duration: const Duration(milliseconds: 1500));
    final controller2 = useAnimationController(duration: const Duration(milliseconds: 1500));
    final controller3 = useAnimationController(duration: const Duration(milliseconds: 1500));
    final controller4 = useAnimationController(duration: const Duration(milliseconds: 1500));
    final controller5 = useAnimationController(duration: const Duration(milliseconds: 1500));
    final controller6 = useAnimationController(duration: const Duration(milliseconds: 1500));
    final controller7 = useAnimationController(duration: const Duration(milliseconds: 1500));
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
    const List<String> scopes = <String>[
      'email',
      'https://www.googleapis.com/auth/contacts.readonly',
    ];

    GoogleSignIn _googleSignIn = GoogleSignIn(
      scopes: scopes,
    );
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
              ).animate(CurvedAnimation(parent: controller1, curve: Curves.easeOut)),
              child: Text(
                "welcometitle",
                style: Theme.of(context).primaryTextTheme.titleLarge,
              ).tr(),
            ),
          )),
          ResponsiveRowColumnItem(
              child: FadeTransition(
            opacity: CurvedAnimation(parent: controller2, curve: Curves.easeIn),
            child: SlideTransition(
              position: Tween<Offset>(
                begin: const Offset(0, 2),
                end: Offset.zero,
              ).animate(CurvedAnimation(parent: controller2, curve: Curves.easeOut)),
              child: Text(
                "welcomedescription",
                style: Theme.of(context).primaryTextTheme.bodyLarge,
              ).tr(),
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
              ).animate(CurvedAnimation(parent: controller6, curve: Curves.easeOut)),
              child: AuthContainer(
                raduis: 50,
                height: 60,
                onTap: () async {
                  try {
                    final cedentails = await _googleSignIn.signIn().then((value) async {
                      if (value?.id == null) {
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("please authorize apple signin")));
                      } else {
                        ref
                            .read(checkSocialProvider(socialId: value!.id, googleToken: value.id).future)
                            .then((value) => value.fold((l) => context.router.push(RegisterRoute()), (r) => context.router.replaceAll([MainRoute()])));
                      }
                    });
                  } catch (error) {
                    print(error);
                  }
                },
                color: const Color(0xffFFC629),
                child: Text(
                  "googlecontinue",
                  style: Theme.of(context).primaryTextTheme.titleSmall?.copyWith(color: Colors.white),
                ).tr(),
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
              ).animate(CurvedAnimation(parent: controller6, curve: Curves.easeOut)),
              child: AuthContainer(
                raduis: 50,
                height: 60,
                onTap: () async {
                  final credential = await SignInWithApple.getAppleIDCredential(
                    scopes: [
                      AppleIDAuthorizationScopes.email,
                      AppleIDAuthorizationScopes.fullName,
                    ],
                  ).then((value) async {
                    if (value.userIdentifier == null) {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("please authorize apple signin")));
                    } else {
                      ref
                          .read(checkSocialProvider(socialId: value.userIdentifier!, appleToken: value.identityToken).future)
                          .then((value) => value.fold((l) => context.router.push(RegisterRoute()), (r) => context.router.replaceAll([MainRoute()])));
                    }
                  });
                },
                color: Color(0xff0E2947),
                child: Text(
                  "applecontinue",
                  style: Theme.of(context).primaryTextTheme.titleSmall?.copyWith(color: Colors.white),
                ).tr(),
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
              ).animate(CurvedAnimation(parent: controller6, curve: Curves.easeOut)),
              child: AuthContainer(
                raduis: 50,
                height: 60,
                onTap: () {
                  context.router.push(const RegisterRoute());
                },
                color: const Color(0xffFFC629),
                child: Text(
                  "signupemail",
                  style: Theme.of(context).primaryTextTheme.titleSmall?.copyWith(color: Colors.white),
                ).tr(),
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
              ).animate(CurvedAnimation(parent: controller7, curve: Curves.easeOut)),
              child: AuthContainer(
                raduis: 30,
                height: 80,
                onTap: () => context.router.push(const LoginRoute()),
                color: const Color(0xffEFEFEF),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "doyouhaveaccount",
                      style: Theme.of(context).primaryTextTheme.titleSmall?.copyWith(color: Colors.black),
                      textAlign: TextAlign.center,
                    ).tr(),
                    Padding(
                      padding: const EdgeInsets.only(top: 8),
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          color: const Color(0xffB12732).withOpacity(0.3),
                        ),
                        child: Text(
                          "ifyes",
                          style: Theme.of(context).primaryTextTheme.bodyMedium?.copyWith(color: const Color(0xff2A7DE1)),
                        ).tr(),
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
