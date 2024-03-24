// ignore_for_file: non_constant_identifier_names, depend_on_referenced_packages

import 'package:freezed_annotation/freezed_annotation.dart';

part 'gender.model.freezed.dart';
part 'gender.model.g.dart';

@freezed
class GenderModel with _$GenderModel {
  const factory GenderModel({
    int? id,
    String? name,
    String? name_ar,
    String? created_at,
    String? updated_at,
  }) = _GenderModel;
  const GenderModel._();
  factory GenderModel.fromJson(Map<String, dynamic> json) =>
      _$GenderModelFromJson(json);
}
