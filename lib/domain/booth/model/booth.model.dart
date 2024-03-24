// ignore_for_file: non_constant_identifier_names, depend_on_referenced_packages

import 'package:freezed_annotation/freezed_annotation.dart';

part 'booth.model.freezed.dart';
part 'booth.model.g.dart';

@freezed
class BoothModel with _$BoothModel {
  const factory BoothModel({
    int? id,
    String? name,
    String? name_ar,
    Map<String, dynamic>? location,
    String? created_at,
    String? updated_at,
    String? deleted_at,
  }) = _BoothModel;
  const BoothModel._();
  factory BoothModel.fromJson(Map<String, dynamic> json) =>
      _$BoothModelFromJson(json);
}

@freezed
class LocationModel with _$LocationModel {
  const factory LocationModel({
    double? lat,
    double? lng,
  }) = _LocationModel;
  const LocationModel._();
  factory LocationModel.fromJson(Map<String, dynamic> json) =>
      _$LocationModelFromJson(json);
}
