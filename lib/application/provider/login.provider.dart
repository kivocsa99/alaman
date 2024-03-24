import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'login.provider.g.dart';

enum LoginStep {
  phone,
  password,
}

@riverpod
class LoginNotifier extends _$LoginNotifier {
  @override
  LoginStep build() => LoginStep.phone;

  void nextStep() {
    switch (state) {
      case LoginStep.phone:
        state = LoginStep.password;
        break;

      case LoginStep.password:
        // Registration is complete, handle accordingly (e.g., navigate to a success page)
        break;
    }
  }

  void previousStep() {
    switch (state) {
      case LoginStep.phone:
        // Handle the case for the first step, such as showing a dialog to confirm exit
        break;
      case LoginStep.password:
        state = LoginStep.phone;
        break;
    }
  }
}
