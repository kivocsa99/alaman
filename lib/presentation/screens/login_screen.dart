import 'package:alaman/application/provider/login.provider.dart';
import 'package:alaman/presentation/widgets/register/password.dart';
import 'package:alaman/presentation/widgets/register/phone.dart';
import 'package:alaman/presentation/widgets/responsive_widget.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

@RoutePage()
class LoginScreen extends HookConsumerWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final loginStep = ref.watch(loginNotifierProvider);
    final stepWidget = useState<Widget>(const PhoneStep());

    switch (loginStep) {
      case LoginStep.phone:
        stepWidget.value = const PhoneStep(
          isLogin: true,
        );
        break;
      case LoginStep.password:
        stepWidget.value = const PasswordStep(
          isLogin: true,
        );
        break;
    }
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: ResponsiveWidget(
          child: Container(
            padding: const EdgeInsets.only(
                top: 150, bottom: 50, left: 20, right: 20),
            child: AnimatedSwitcher(
              duration: const Duration(milliseconds: 500),
              child: stepWidget.value,
            ),
          ),
        ),
      ),
    );
  }
}
