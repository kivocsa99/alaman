import 'dart:ui';

import 'package:alaman/domain/userregistration/user.registration.model.dart';
import 'package:alaman/domain/usersetting/model/user.setting.model.dart';
import 'package:alaman/routes/app_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:responsive_framework/responsive_framework.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  await Hive.initFlutter();
  Hive.registerAdapter(UserSettingsAdapter());
  Hive.registerAdapter(UserRegistrationAdapter());
  await Hive.openBox("setting");
  await Hive.openBox("register");
  await Hive.openBox("login");
  runApp(EasyLocalization(
      supportedLocales: const [Locale('ar'), Locale('en')],
      path: 'assets',
      child: ProviderScope(child: MyAppScreen())));
}

class MyAppScreen extends HookConsumerWidget {
  final appRouter = AppRouter();

  MyAppScreen({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp.router(
      scrollBehavior: MyCustomScrollBehavior(),
      theme: ThemeData(
        bottomSheetTheme: const BottomSheetThemeData(
            surfaceTintColor: Colors.white, modalBackgroundColor: Colors.white),
        fontFamily: "Satoshi",
        dividerColor: Colors.transparent,
        floatingActionButtonTheme:
            const FloatingActionButtonThemeData(backgroundColor: Colors.blue),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          unselectedItemColor: Color(0xff16437B),
          selectedItemColor: Colors.blue,
          type: BottomNavigationBarType.fixed,
          selectedLabelStyle: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w700,
          ),
          unselectedLabelStyle: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w700,
          ),
        ),
        primaryTextTheme: const TextTheme(
            titleMedium: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.w500,
                color: Color(0xff0E2947)),
            bodyMedium: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Color(0xff58595B)),
            bodyLarge: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w700,
                color: Color(0xff58595B)),
            titleSmall: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Color(0xff58595B)),
            titleLarge: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.w500,
                color: Color(0xff0E2947))),
        pageTransitionsTheme: const PageTransitionsTheme(
          builders: {
            TargetPlatform.android: CupertinoPageTransitionsBuilder(),
            TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
          },
        ),
      ),
      builder: (context, child) => ResponsiveBreakpoints.builder(
        child: child!,
        breakpoints: [
          const Breakpoint(start: 0, end: 450, name: MOBILE),
          const Breakpoint(start: 451, end: 800, name: TABLET),
          const Breakpoint(start: 801, end: 1920, name: DESKTOP),
          const Breakpoint(start: 1921, end: double.infinity, name: '4K'),
        ],
      ),
      title: "Al-aman Fund",
      locale: context.locale,
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      debugShowCheckedModeBanner: false,
      routerConfig: appRouter.config(),
    );
  }
}

class MyCustomScrollBehavior extends MaterialScrollBehavior {
  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
      };
}
