// ignore_for_file: non_constant_identifier_names, depend_on_referenced_packages

import 'package:alaman/domain/status/model/status.model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'alaman.request.model.freezed.dart';
part 'alaman.request.model.g.dart';

@freezed
class AlamanRequestModel with _$AlamanRequestModel {
  const factory AlamanRequestModel(
      {int? id,
      int? beneficiary_id,
      int? alaman_service_id,
      int? alaman_request_status_id,
      String? notes,
      String? created_at,
      String? updated_at,
      String? deleted_at,
      StatusModel? status,
      TypeModel? type}) = _AlamanRequestModel;
  const AlamanRequestModel._();
  factory AlamanRequestModel.fromJson(Map<String, dynamic> json) =>
      _$AlamanRequestModelFromJson(json);
}

@freezed
class TypeModel with _$TypeModel {
  const factory TypeModel({
    int? id,
    String? name,
    String? name_ar,
    int? active,
    String? created_at,
    String? updated_at,
    String? deleted_at,
    StatusModel? status,
  }) = _TypeModel;
  const TypeModel._();
  factory TypeModel.fromJson(Map<String, dynamic> json) =>
      _$TypeModelFromJson(json);
}
