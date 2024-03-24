// ignore_for_file: non_constant_identifier_names, depend_on_referenced_packages

import 'package:freezed_annotation/freezed_annotation.dart';

part 'beneficiary.payment.model.freezed.dart';
part 'beneficiary.payment.model.g.dart';

@freezed
class BeneficiaryPaymentModel with _$BeneficiaryPaymentModel {
  const factory BeneficiaryPaymentModel({
    int? id,
    int? beneficiary_id,
    int? donor_id,
    int? recorded_by,
    num? amount,
    String? created_at,
    String? updated_at,
    String? deleted_at,
  }) = _BeneficiaryPaymentModel;
  const BeneficiaryPaymentModel._();
  factory BeneficiaryPaymentModel.fromJson(Map<String, dynamic> json) =>
      _$BeneficiaryPaymentModelFromJson(json);
}
