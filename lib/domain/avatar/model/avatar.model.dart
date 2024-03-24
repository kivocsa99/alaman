// ignore_for_file: non_constant_identifier_names, depend_on_referenced_packages

import 'package:freezed_annotation/freezed_annotation.dart';

part 'avatar.model.freezed.dart';
part 'avatar.model.g.dart';

@freezed
class AvatarModel with _$AvatarModel {
  const factory AvatarModel({
    String? id,
    String? filename,
    String? created_at,
    String? updated_at,
    String? deleted_at,
  }) = _AvatarModel;
  const AvatarModel._();
  factory AvatarModel.fromJson(Map<String, dynamic> json) =>
      _$AvatarModelFromJson(json);
}
