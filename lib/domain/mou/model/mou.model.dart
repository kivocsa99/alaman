// ignore_for_file: non_constant_identifier_names, depend_on_referenced_packages

import 'package:alaman/domain/status/model/status.model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'mou.model.freezed.dart';
part 'mou.model.g.dart';

@freezed
class MouModel with _$MouModel {
  const factory MouModel({
    int? id,
    int? donor_id,
    int? mou_status_id,
    String? title,
    num? amount,
    String? currency,
    String? start_date,
    String? end_date,
    String? notes,
    String? created_at,
    String? updated_at,
    String? deleted_at,
    StatusModel? status,
  }) = _MouModel;
  const MouModel._();
  factory MouModel.fromJson(Map<String, dynamic> json) =>
      _$MouModelFromJson(json);
}
