// ignore_for_file: non_constant_identifier_names, depend_on_referenced_packages

import 'package:freezed_annotation/freezed_annotation.dart';

part 'commitmentmethods.model.freezed.dart';
part 'commitmentmethods.model.g.dart';

@freezed
class CommitmentMethodsModel with _$CommitmentMethodsModel {
  const factory CommitmentMethodsModel({
    int? id,
    String? name,
    String? name_ar,
    String? created_at,
    String? updated_at,
    String? deleted_at,
  }) = _CommitmentMethodsModel;
  const CommitmentMethodsModel._();
  factory CommitmentMethodsModel.fromJson(Map<String, dynamic> json) =>
      _$CommitmentMethodsModelFromJson(json);
}
