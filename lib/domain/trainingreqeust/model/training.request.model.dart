// ignore_for_file: non_constant_identifier_names, depend_on_referenced_packages

import 'package:alaman/domain/status/model/status.model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'training.request.model.freezed.dart';
part 'training.request.model.g.dart';

@freezed
class TrainingRequestModel with _$TrainingRequestModel {
  const factory TrainingRequestModel({
    int? id,
    int? beneficiary_id,
    int? training_program_id,
    int? training_request_status_id,
    String? training_date,
    String? training_time,
    String? notes,
    String? national_id_number,
    String? address,
    String? created_at,
    String? updated_at,
    String? deleted_at,
    StatusModel? status,
    ProgramModel? program,
  }) = _TrainingRequestModel;
  const TrainingRequestModel._();
  factory TrainingRequestModel.fromJson(Map<String, dynamic> json) =>
      _$TrainingRequestModelFromJson(json);
}

@freezed
class ProgramModel with _$ProgramModel {
  const factory ProgramModel({
    int? id,
    String? name,
    String? name_ar,
    String? date_from,
    String? date_to,
    String? time_from,
    String? national_id_number,
    String? time_to,
    String? notes,
    int? Active,
    String? created_at,
    String? updated_at,
    String? deleted_at,
  }) = _ProgramModel;
  const ProgramModel._();
  factory ProgramModel.fromJson(Map<String, dynamic> json) =>
      _$ProgramModelFromJson(json);
}
