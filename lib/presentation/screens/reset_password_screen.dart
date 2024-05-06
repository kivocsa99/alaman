import 'package:alaman/application/auth/reset_password/reset_password_use_case.dart';
import 'package:alaman/application/auth/reset_password/reset_password_use_case_input.dart';
import 'package:alaman/application/provider/hive.login.provider.dart';
import 'package:alaman/application/provider/hive.register.provider.dart';
import 'package:alaman/application/provider/login.provider.dart';
import 'package:alaman/application/provider/registration.provider.dart';
import 'package:alaman/application/provider/user.repository.provider.dart';
import 'package:alaman/domain/userregistration/user.registration.model.dart';
import 'package:alaman/presentation/widgets/auth_container.dart';
import 'package:alaman/presentation/widgets/auth_field.dart';
import 'package:alaman/presentation/widgets/responsive_widget.dart';
import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:gap/gap.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:responsive_framework/responsive_framework.dart';

@RoutePage()
class ResetPasswordScreen extends HookConsumerWidget {
  const ResetPasswordScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = useTextEditingController();
    final nationalController = useTextEditingController();
    final controller1 = useAnimationController(duration: const Duration(seconds: 1));
    final controller2 = useAnimationController(duration: const Duration(seconds: 1));
    final controller3 = useAnimationController(duration: const Duration(seconds: 1));
    final controller5 = useAnimationController(duration: const Duration(seconds: 1));
    final isLoading = useState(false);
    useEffect(() {
      controller1.forward();
      controller2.forward();
      controller3.forward();
      controller5.forward();
      return null;
    }, const []);
    final formKey = useState(GlobalKey<FormState>());
    return Scaffold(
      body: ResponsiveWidget(
        child: Padding(
          padding: const EdgeInsets.only(top: 150, bottom: 50, left: 20, right: 20),
          child: Form(
            key: formKey.value,
            child: ResponsiveRowColumn(
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
                    ).animate(CurvedAnimation(parent: controller1, curve: Curves.easeOut)),
                    child: Text(
                      "phoneandnational",
                      style: Theme.of(context).primaryTextTheme.titleLarge?.copyWith(color: Colors.black, fontSize: 28),
                    ).tr(),
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
                    ).animate(CurvedAnimation(parent: controller2, curve: Curves.easeOut)),
                    child: AuthField(
                      controller: controller,
                      validator: MultiValidator([
                        RequiredValidator(errorText: "reqfield".tr()),
                      ]),
                      hint: "phonenumber".tr(),
                      inputType: TextInputType.number,
                      inputAction: TextInputAction.done,
                      onChanged: (value) async {},
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
                    ).animate(CurvedAnimation(parent: controller2, curve: Curves.easeOut)),
                    child: AuthField(
                      controller: controller,
                      validator: MultiValidator([
                        RequiredValidator(errorText: "reqfield".tr()),
                      ]),
                      hint: "nationalid".tr(),
                      inputAction: TextInputAction.done,
                      onChanged: (value) async {},
                    ),
                  ),
                )),
                const ResponsiveRowColumnItem(child: Gap(50)),
                ResponsiveRowColumnItem(
                    child: FadeTransition(
                  opacity: CurvedAnimation(parent: controller3, curve: Curves.easeIn),
                  child: SlideTransition(
                    position: Tween<Offset>(
                      begin: const Offset(0, 0.2),
                      end: Offset.zero,
                    ).animate(CurvedAnimation(parent: controller3, curve: Curves.easeOut)),
                    child: AuthContainer(
                      raduis: 50,
                      height: 60,
                      onTap: () async {
                        if (formKey.value.currentState!.validate()) {
                          isLoading.value = true;
                          ref.read(resetPasswordUseCaseProvider).execute(ResetPasswordUseCaseInput(phone: controller.text, nationalId: nationalController.text)).then((value) {
                            isLoading.value = false;
                            context.router.maybePopTop();
                            value.fold((l) => ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(l.message ?? "internetconnection").tr())),
                                (r) => ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("newpassword").tr())));
                          });
                        }
                      },
                      color: const Color(0xffD2D3D6),
                      child: Text(
                        "next",
                        style: Theme.of(context).primaryTextTheme.titleSmall?.copyWith(color: Colors.white),
                      ).tr(),
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
                      ).animate(CurvedAnimation(parent: controller5, curve: Curves.easeOut)),
                      child: AuthContainer(
                        raduis: 50,
                        height: 60,
                        onTap: () => context.router.maybePop(),
                        color: const Color(0xffD2D3D6),
                        child: Text(
                          "back",
                          style: Theme.of(context).primaryTextTheme.titleSmall?.copyWith(color: Colors.white),
                        ).tr(),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
