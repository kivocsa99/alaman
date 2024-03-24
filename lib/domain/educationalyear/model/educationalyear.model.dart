// ignore_for_file: non_constant_identifier_names, depend_on_referenced_packages

import 'package:freezed_annotation/freezed_annotation.dart';

part 'educationalyear.model.freezed.dart';
part 'educationalyear.model.g.dart';

@freezed
class EducationalYearModel with _$EducationalYearModel {
  const factory EducationalYearModel({
    int? id,
    String? name,
    String? name_ar,
    String? created_at,
    String? updated_at,
    String? deleted_at,
  }) = _EducationalYearModel;
  const EducationalYearModel._();
  factory EducationalYearModel.fromJson(Map<String, dynamic> json) =>
      _$EducationalYearModelFromJson(json);
}
