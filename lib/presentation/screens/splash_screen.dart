import 'package:alaman/presentation/widgets/responsive_widget.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

@RoutePage()
class SplashScreen extends HookConsumerWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SafeArea(
      child: Scaffold(
        body: ResponsiveWidget(
            child: Container(
          decoration: const BoxDecoration(
              color: Color(0xff0F5BA0),
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    'assets/Background dark.png',
                  ))),
          child: Center(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              SvgPicture.asset('assets/Logo.svg'),
            ]),
          ),
        )),
      ),
    );
  }
}
