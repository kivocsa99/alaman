// ignore_for_file: non_constant_identifier_names, depend_on_referenced_packages

import 'package:freezed_annotation/freezed_annotation.dart';

part 'partner.model.freezed.dart';
part 'partner.model.g.dart';

@freezed
class PartnerModel with _$PartnerModel {
  const factory PartnerModel({
    int? id,
    String? image,
    String? name,
    String? name_ar,
    String? href,
    String? created_at,
    String? updated_at,
    String? deleted_at,
  }) = _PartnerModel;
  const PartnerModel._();
  factory PartnerModel.fromJson(Map<String, dynamic> json) =>
      _$PartnerModelFromJson(json);
}
