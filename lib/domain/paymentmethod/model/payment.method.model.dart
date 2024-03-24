// ignore_for_file: non_constant_identifier_names, depend_on_referenced_packages

import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment.method.model.freezed.dart';
part 'payment.method.model.g.dart';

@freezed
class PaymentMethodModel with _$PaymentMethodModel {
  const factory PaymentMethodModel({
    int? id,
    String? name,
    String? name_ar,
    String? created_at,
    String? updated_at,
    String? deleted_at,
  }) = _PaymentMethodModel;
  const PaymentMethodModel._();
  factory PaymentMethodModel.fromJson(Map<String, dynamic> json) =>
      _$PaymentMethodModelFromJson(json);
}
