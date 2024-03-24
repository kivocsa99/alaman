// ignore_for_file: non_constant_identifier_names, depend_on_referenced_packages

import 'package:freezed_annotation/freezed_annotation.dart';

part 'topdonor.model.freezed.dart';
part 'topdonor.model.g.dart';

@freezed
class TopDonorModel with _$TopDonorModel {
  const factory TopDonorModel({
    int? id,
    String? image,
    String? name,
    String? name_ar,
    num? amount,
    String? created_at,
    String? updated_at,
    String? deleted_at,
  }) = _TopDonorModel;
  const TopDonorModel._();
  factory TopDonorModel.fromJson(Map<String, dynamic> json) =>
      _$TopDonorModelFromJson(json);
}
