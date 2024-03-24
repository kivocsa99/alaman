// ignore_for_file: non_constant_identifier_names, depend_on_referenced_packages

import 'package:freezed_annotation/freezed_annotation.dart';

part 'meetingmethods.model.freezed.dart';
part 'meetingmethods.model.g.dart';

@freezed
class MeetingMethodsModel with _$MeetingMethodsModel {
  const factory MeetingMethodsModel({
    int? id,
    String? name,
    String? name_ar,
    String? created_at,
    String? updated_at,
    String? deleted_at,
  }) = _MeetingMethodsModel;
  const MeetingMethodsModel._();
  factory MeetingMethodsModel.fromJson(Map<String, dynamic> json) =>
      _$MeetingMethodsModelFromJson(json);
}
