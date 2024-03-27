// ignore_for_file: non_constant_identifier_names, depend_on_referenced_packages

import 'package:freezed_annotation/freezed_annotation.dart';

part 'donor.type.model.freezed.dart';
part 'donor.type.model.g.dart';

@freezed
class DonorTypeModel with _$DonorTypeModel {
  const factory DonorTypeModel({
    int? id,
    String? name,
    String? name_ar,
    double? start_amount,
    double? end_amount,
    String? created_at,
    String? updated_at,
    String? deleted_at,
  }) = _DonorTypeModel;
  const DonorTypeModel._();
  factory DonorTypeModel.fromJson(Map<String, dynamic> json) =>
      _$DonorTypeModelFromJson(json);
}
