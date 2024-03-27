import 'package:alaman/domain/userregistration/user.registration.model.dart';

class ChangeFieldUseCaseInput {
  final String value;
  final String field;


  ChangeFieldUseCaseInput({
    required this.value,
    required this.field,
  });
}
