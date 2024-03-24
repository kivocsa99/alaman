// ignore_for_file: non_constant_identifier_names, depend_on_referenced_packages

import 'package:freezed_annotation/freezed_annotation.dart';

part 'alamanservices.model.freezed.dart';
part 'alamanservices.model.g.dart';

@freezed
class AlamanServicesModel with _$AlamanServicesModel {
  const factory AlamanServicesModel({
    int? id,
    String? name,
    String? name_ar,
    int? active,
    String? created_at,
    String? updated_at,
    String? deleted_at,
  }) = _AlamanServicesModel;
  const AlamanServicesModel._();
  factory AlamanServicesModel.fromJson(Map<String, dynamic> json) =>
      _$AlamanServicesModelFromJson(json);
}
