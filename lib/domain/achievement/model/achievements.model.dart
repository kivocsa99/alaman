// ignore_for_file: non_constant_identifier_names, depend_on_referenced_packages

import 'package:freezed_annotation/freezed_annotation.dart';

part 'achievements.model.freezed.dart';
part 'achievements.model.g.dart';

@freezed
class AchievementsModel with _$AchievementsModel {
  const factory AchievementsModel({
    int? id,
    int? beneficiary_id,
    String? image,
    String? title,
    String? title_ar,
    String? created_at,
    String? updated_at,
    String? deleted_at,
  }) = _AchievementsModel;
  const AchievementsModel._();
  factory AchievementsModel.fromJson(Map<String, dynamic> json) =>
      _$AchievementsModelFromJson(json);
}
