// ignore_for_file: non_constant_identifier_names, depend_on_referenced_packages

import 'package:freezed_annotation/freezed_annotation.dart';

part 'scholarshiptypes.model.freezed.dart';
part 'scholarshiptypes.model.g.dart';

@freezed
class ScholarshipTypesModel with _$ScholarshipTypesModel {
  const factory ScholarshipTypesModel({
    int? id,
    String? name,
    String? name_ar,
    String? created_at,
    String? updated_at,
    String? deleted_at,
    List<StepsModel>? steps,
  }) = _ScholarshipTypesModel;
  const ScholarshipTypesModel._();
  factory ScholarshipTypesModel.fromJson(Map<String, dynamic> json) =>
      _$ScholarshipTypesModelFromJson(json);
}

@freezed
class StepsModel with _$StepsModel {
  const factory StepsModel({
    int? id,
    int? scholarship_type_id,
    int? sort,
    String? name,
    String? name_ar,
    int? amount,
    String? created_at,
    String? updated_at,
    String? deleted_at,
  }) = _StepsModel;
  const StepsModel._();
  factory StepsModel.fromJson(Map<String, dynamic> json) =>
      _$StepsModelFromJson(json);
}
