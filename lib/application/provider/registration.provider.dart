import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'registration.provider.g.dart';

enum RegistrationStep {
  phone,
  email,
  name,
  type,
  national,
  birthdate,
  city,
  address,
  gender,
  password,
}

@riverpod
class RegistrationNotifier extends _$RegistrationNotifier {
  @override
  RegistrationStep build() => RegistrationStep.phone;

  void nextStep() {
    switch (state) {
      case RegistrationStep.phone:
        state = RegistrationStep.email;
        break;
      case RegistrationStep.email:
        state = RegistrationStep.name;
        break;
      case RegistrationStep.name:
        state = RegistrationStep.type;
        break;
      case RegistrationStep.type:
        state = RegistrationStep.national;
        break;
      case RegistrationStep.national:
        state = RegistrationStep.birthdate;
        break;
      case RegistrationStep.birthdate:
        state = RegistrationStep.city;
        break;
      case RegistrationStep.city:
        state = RegistrationStep.address;
        break;
      case RegistrationStep.address:
        state = RegistrationStep.gender;
        break;
      case RegistrationStep.gender:
        state = RegistrationStep.password;
        break;
      case RegistrationStep.password:
        break;
    }
  }

  void previousStep() {
    switch (state) {
      case RegistrationStep.phone:
        break;
      case RegistrationStep.email:
        state = RegistrationStep.phone;
        break;
      case RegistrationStep.name:
        state = RegistrationStep.email;
        break;

      case RegistrationStep.type:
        state = RegistrationStep.name;
        break;
      case RegistrationStep.birthdate:
        state = RegistrationStep.national;
        break;
      case RegistrationStep.city:
        state = RegistrationStep.birthdate;
        break;
      case RegistrationStep.address:
        state = RegistrationStep.city;
        break;
      case RegistrationStep.national:
        state = RegistrationStep.type;
        break;
      case RegistrationStep.gender:
        state = RegistrationStep.address;
        break;
      case RegistrationStep.password:
        state = RegistrationStep.gender;
        break;
    }
  }
}
