// ignore_for_file: non_constant_identifier_names, depend_on_referenced_packages

import 'package:freezed_annotation/freezed_annotation.dart';

part 'scholarshipstatuses.model.freezed.dart';
part 'scholarshipstatuses.model.g.dart';

@freezed
class ScholarshipStatusesModel with _$ScholarshipStatusesModel {
  const factory ScholarshipStatusesModel({
    int? id,
    String? name,
    String? name_ar,
    String? created_at,
    String? updated_at,
    String? deleted_at,
  }) = _ScholarshipStatusesModel;
  const ScholarshipStatusesModel._();
  factory ScholarshipStatusesModel.fromJson(Map<String, dynamic> json) =>
      _$ScholarshipStatusesModelFromJson(json);
}
