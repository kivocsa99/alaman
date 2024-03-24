// ignore_for_file: non_constant_identifier_names, depend_on_referenced_packages

import 'package:alaman/domain/user/model/beneficiary/beneficiary.model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'donor.beneficiary.model.freezed.dart';
part 'donor.beneficiary.model.g.dart';

@freezed
class DonorBeneficiaryModel with _$DonorBeneficiaryModel {
  const factory DonorBeneficiaryModel({
    int? id,
    int? donation_id,
    int? donor_id,
    int? beneficiary_id,
    String? created_at,
    String? updated_at,
    String? deleted_at,
    BeneficiaryModel? beneficiary,
  }) = _DonorBeneficiaryModel;
  const DonorBeneficiaryModel._();
  factory DonorBeneficiaryModel.fromJson(Map<String, dynamic> json) =>
      _$DonorBeneficiaryModelFromJson(json);
}
