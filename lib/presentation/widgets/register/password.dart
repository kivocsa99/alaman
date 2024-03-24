import 'package:alaman/application/auth/sign_in_with_email_password/sign_in_with_email_and_password.input.dart';
import 'package:alaman/application/auth/sign_in_with_email_password/sign_in_with_email_and_password.use_case.dart';
import 'package:alaman/application/auth/sign_up_with_email_password/sign_up_with_email_and_password.input.dart';
import 'package:alaman/application/auth/sign_up_with_email_password/sign_up_with_email_and_password.use_case.dart';
import 'package:alaman/application/provider/login.provider.dart';
import 'package:alaman/application/provider/registration.provider.dart';
import 'package:alaman/domain/userregistration/user.registration.model.dart';
import 'package:alaman/presentation/widgets/auth_container.dart';
import 'package:alaman/presentation/widgets/auth_field.dart';
import 'package:alaman/routes/app_route.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:gap/gap.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:responsive_framework/responsive_framework.dart';

class PasswordStep extends HookConsumerWidget {
  final bool? isLogin;
  const PasswordStep({
    super.key,
    this.isLogin = false,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final box = Hive.box(isLogin == false ? "register" : "login");
    final isLoading = useState(false);
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
    useEffect(() {
      controller1.forward();
      controller2.forward();
      controller3.forward();
      controller4.forward();
      controller5.forward();

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
              begin: const Offset(0, 0.2),
              end: Offset.zero,
            ).animate(
                CurvedAnimation(parent: controller1, curve: Curves.easeOut)),
            child: Text(
              isLogin == false
                  ? "Enter a Password\nto join us"
                  : "Enter your Password",
              style: Theme.of(context)
                  .primaryTextTheme
                  .titleLarge
                  ?.copyWith(color: Colors.black),
            ),
          ),
        )),
        const ResponsiveRowColumnItem(child: Gap(10)),
        ResponsiveRowColumnItem(
            child: FadeTransition(
          opacity: CurvedAnimation(parent: controller2, curve: Curves.easeIn),
          child: SlideTransition(
            position: Tween<Offset>(
              begin: const Offset(0, 0.2),
              end: Offset.zero,
            ).animate(
                CurvedAnimation(parent: controller2, curve: Curves.easeOut)),
            child: Form(
              key: formKey.value,
              child: AuthField(
                validator: MultiValidator([
                  RequiredValidator(errorText: 'This Field is required'),
                ]),
                hint: "Password",
                obsecuretext: true,
                inputAction: TextInputAction.done,
                onChanged: (value) async {
                  register.value.password = value;
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
                begin: const Offset(0, 0.2),
                end: Offset.zero,
              ).animate(
                  CurvedAnimation(parent: controller3, curve: Curves.easeOut)),
              child: Text(
                "By entering you information and tapping join,\nyou agree to the Terms & Privacy Policy",
                style: Theme.of(context)
                    .primaryTextTheme
                    .bodyMedium
                    ?.copyWith(color: const Color(0xff2A7DE1)),
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
              begin: const Offset(0, 0.2),
              end: Offset.zero,
            ).animate(
                CurvedAnimation(parent: controller4, curve: Curves.easeOut)),
            child: AuthContainer(
              raduis: 50,
              height: 60,
              onTap: () {
                if (formKey.value.currentState!.validate()) {
                  FocusManager.instance.primaryFocus?.unfocus();
                  if (isLogin == false) {
                    isLoading.value = true;
                    ref
                        .read(signUpWithEmailAndPasswordUseCaseProvider)
                        .execute(SignUpWithEmailAndPasswordUseCaseInput(
                            model: box.getAt(0)))
                        .then((value) => value.fold((l) {
                              isLoading.value = false;

                              ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(content: Text("${l.message}")));
                            }, (r) {
                              isLoading.value = false;
                              context.router.replaceAll([const MainRoute()]);
                            }));
                  } else {
                    isLoading.value = true;

                    ref
                        .read(signInWithEmailAndPasswordUseCaseProvider)
                        .execute(SignInWithEmailAndPasswordUseCaseInput(
                            model: box.getAt(0)))
                        .then((value) => value.fold((l) {
                              isLoading.value = false;

                              ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(content: Text("${l.message}")));
                            }, (r) {
                              isLoading.value = false;

                              context.router.replaceAll([const MainRoute()]);
                            }));
                  }
                }
              },
              color: const Color(0xffD2D3D6),
              child: isLoading.value == false
                  ? Text(
                      "Next",
                      style: Theme.of(context)
                          .primaryTextTheme
                          .titleSmall
                          ?.copyWith(color: Colors.white),
                    )
                  : const CircularProgressIndicator(),
            ),
          ),
        )),
        const ResponsiveRowColumnItem(child: Gap(10)),
        ResponsiveRowColumnItem(
            child: FadeTransition(
          opacity: CurvedAnimation(parent: controller5, curve: Curves.easeIn),
          child: SlideTransition(
            position: Tween<Offset>(
              begin: const Offset(0, 0.2),
              end: Offset.zero,
            ).animate(
                CurvedAnimation(parent: controller5, curve: Curves.easeOut)),
            child: AuthContainer(
              raduis: 50,
              height: 60,
              onTap: () => isLogin == false
                  ? ref
                      .read(registrationNotifierProvider.notifier)
                      .previousStep()
                  : ref.read(loginNotifierProvider.notifier).previousStep(),
              color: const Color(0xffD2D3D6),
              child: Text(
                "Back",
                style: Theme.of(context)
                    .primaryTextTheme
                    .titleSmall
                    ?.copyWith(color: Colors.white),
              ),
            ),
          ),
        ))
      ],
    );
  }
}
