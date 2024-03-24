// ignore_for_file: non_constant_identifier_names, depend_on_referenced_packages

import 'package:alaman/domain/user/model/beneficiary/beneficiary.model.dart';
import 'package:alaman/domain/user/model/donor/donor.model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'shared.donor.model.freezed.dart';
part 'shared.donor.model.g.dart';

@freezed
class SharedDonorModel with _$SharedDonorModel {
  const factory SharedDonorModel({
    String? AZSVR,
    DonorModel? User,
    List<BeneficiaryModel>? beneficiaries,
  }) = _SharedDonorModel;
  const SharedDonorModel._();
  factory SharedDonorModel.fromJson(Map<String, dynamic> json) =>
      _$SharedDonorModelFromJson(json);
}
