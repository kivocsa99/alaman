// ignore_for_file: non_constant_identifier_names, depend_on_referenced_packages

import 'package:freezed_annotation/freezed_annotation.dart';

part 'accountsources.model.freezed.dart';
part 'accountsources.model.g.dart';

@freezed
class AccountSourcesModel with _$AccountSourcesModel {
  const factory AccountSourcesModel({
    int? id,
    String? name,
    String? name_ar,
    String? created_at,
    String? updated_at,
    String? deleted_at,
  }) = _AccountSourcesModel;
  const AccountSourcesModel._();
  factory AccountSourcesModel.fromJson(Map<String, dynamic> json) =>
      _$AccountSourcesModelFromJson(json);
}
