import 'package:alaman/application/provider/registration.provider.dart';
import 'package:alaman/presentation/widgets/register/address.dart';
import 'package:alaman/presentation/widgets/register/birthdate.dart';
import 'package:alaman/presentation/widgets/register/city.dart';
import 'package:alaman/presentation/widgets/register/email.dart';
import 'package:alaman/presentation/widgets/register/gender.dart';
import 'package:alaman/presentation/widgets/register/name.dart';
import 'package:alaman/presentation/widgets/register/national.dart';
import 'package:alaman/presentation/widgets/register/password.dart';
import 'package:alaman/presentation/widgets/register/phone.dart';
import 'package:alaman/presentation/widgets/register/type.dart';
import 'package:alaman/presentation/widgets/responsive_widget.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

@RoutePage()
class RegisterScreen extends HookConsumerWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final registrationStep = ref.watch(registrationNotifierProvider);
    final stepWidget = useState<Widget>(const PhoneStep());

    switch (registrationStep) {
      case RegistrationStep.email:
        stepWidget.value = const EmailStep();
        break;
      case RegistrationStep.name:
        stepWidget.value = const NameStep();
        break;
      case RegistrationStep.type:
        stepWidget.value = const TypeStep();
        break;
      case RegistrationStep.password:
        stepWidget.value = const PasswordStep();
        break;
      case RegistrationStep.national:
        stepWidget.value = const NationalStep();
        break;
      case RegistrationStep.address:
        stepWidget.value = const AddressStep();
        break;
      case RegistrationStep.gender:
        stepWidget.value = const GenderStep();
        break;
      case RegistrationStep.birthdate:
        stepWidget.value = const BirthdateStep();
        break;
      case RegistrationStep.city:
        stepWidget.value = const CityStep();
        break;
      case RegistrationStep.phone:
        stepWidget.value = const PhoneStep();
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
