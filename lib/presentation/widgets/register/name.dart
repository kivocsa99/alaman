import 'package:alaman/application/provider/registration.provider.dart';
import 'package:alaman/domain/userregistration/user.registration.model.dart';
import 'package:alaman/presentation/widgets/auth_container.dart';
import 'package:alaman/presentation/widgets/auth_field.dart';
import 'package:alaman/routes/app_route.dart';
import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:gap/gap.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:responsive_framework/responsive_framework.dart';

class NameStep extends HookConsumerWidget {
  const NameStep({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final box = Hive.box("register");
    final register = useState<UserRegistration>(box.getAt(0));
    final formKey = useState(GlobalKey<FormState>());
    final controller1 =
        useAnimationController(duration: const Duration(seconds: 1));
    final controller2 =
        useAnimationController(duration: const Duration(seconds: 1));
    final controller3 =
        useAnimationController(duration: const Duration(seconds: 1));
    final controller4 =
        useAnimationController(duration: const Duration(seconds: 1));
    final controller5 =
        useAnimationController(duration: const Duration(seconds: 1));
    final controller6 =
        useAnimationController(duration: const Duration(seconds: 1));
    useEffect(() {
      controller5.forward();
      controller1.forward();
      controller2.forward();
      controller3.forward();
      controller4.forward();
      controller6.forward();
      return null;
    }, const []);
    return ResponsiveRowColumn(
      layout: ResponsiveRowColumnType.COLUMN,
      columnMainAxisAlignment: MainAxisAlignment.start,
      columnCrossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ResponsiveRowColumnItem(
            child: FadeTransition(
          opacity: CurvedAnimation(parent: controller1, curve: Curves.easeIn),
          child: SlideTransition(
            position: Tween<Offset>(
              begin: const Offset(0, 0.5),
              end: Offset.zero,
            ).animate(
                CurvedAnimation(parent: controller1, curve: Curves.easeOut)),
            child: Text(
              "nametitle",
              style: Theme.of(context)
                  .primaryTextTheme
                  .titleLarge
                  ?.copyWith(color: Colors.black),
            ).tr(),
          ),
        )),
        const ResponsiveRowColumnItem(child: Gap(10)),
        ResponsiveRowColumnItem(
            child: FadeTransition(
          opacity: CurvedAnimation(parent: controller2, curve: Curves.easeIn),
          child: SlideTransition(
            position: Tween<Offset>(
              begin: const Offset(0, 0.5),
              end: Offset.zero,
            ).animate(
                CurvedAnimation(parent: controller2, curve: Curves.easeOut)),
            child: Form(
              key: formKey.value,
              child: AuthField(
                validator: RequiredValidator(errorText: "reqfield".tr()),
                hint: "fullname".tr(),
                inputAction: TextInputAction.done,
                onChanged: (value) async {
                  register.value.name = value;
                  await box.putAt(0, register.value);
                },
              ),
            ),
          ),
        )),
        const ResponsiveRowColumnItem(child: Gap(10)),
        ResponsiveRowColumnItem(
          child: FadeTransition(
            opacity: CurvedAnimation(parent: controller3, curve: Curves.easeIn),
            child: SlideTransition(
              position: Tween<Offset>(
                begin: const Offset(0, 0.5),
                end: Offset.zero,
              ).animate(
                  CurvedAnimation(parent: controller3, curve: Curves.easeOut)),
              child: GestureDetector(
                onTap: () => context.router.push(const LoginRoute()),
                child: Text(
                  "acountexists",
                  style: Theme.of(context)
                      .primaryTextTheme
                      .bodyMedium
                      ?.copyWith(color: const Color(0xff2A7DE1)),
                ).tr(),
              ),
            ),
          ),
        ),
        const ResponsiveRowColumnItem(child: Gap(50)),
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
              raduis: 50,
              height: 60,
              onTap: () {
                if (formKey.value.currentState!.validate()) {
                  ref.read(registrationNotifierProvider.notifier).nextStep();
                }
              },
              color: const Color(0xffD2D3D6),
              child: Text(
                "next",
                style: Theme.of(context)
                    .primaryTextTheme
                    .titleSmall
                    ?.copyWith(color: Colors.white),
              ).tr(),
            ),
          ),
        )),
        const ResponsiveRowColumnItem(child: Gap(10)),
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
              onTap: () => ref
                  .read(registrationNotifierProvider.notifier)
                  .previousStep(),
              color: const Color(0xffD2D3D6),
              child: Text(
                "back",
                style: Theme.of(context)
                    .primaryTextTheme
                    .titleSmall
                    ?.copyWith(color: Colors.white),
              ).tr(),
            ),
          ),
        ))
      ],
    );
  }
}
