// ignore_for_file: non_constant_identifier_names, depend_on_referenced_packages

import 'package:alaman/domain/meetingmethod/model/meetingmethods.model.dart';
import 'package:alaman/domain/status/model/status.model.dart';
import 'package:alaman/domain/user/model/beneficiary/beneficiary.model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'meeting.history.model.freezed.dart';
part 'meeting.history.model.g.dart';

@freezed
class MeetingHistoryModel with _$MeetingHistoryModel {
  const factory MeetingHistoryModel({
    int? id,
    int? beneficiary_id,
    int? sponser_id,
    int? meeting_method_id,
    String? duration,
    String? date,
    String? time,
    int? meeting_status_id,
    String?link,
    String? notes,
    String? created_at,
    String? updated_at,
    String? deleted_at,
    BeneficiaryModel? beneficiary,
    MeetingMethodsModel?method,
    StatusModel? status,
  }) = _MeetingHistoryModel;
  const MeetingHistoryModel._();
  factory MeetingHistoryModel.fromJson(Map<String, dynamic> json) =>
      _$MeetingHistoryModelFromJson(json);
}
