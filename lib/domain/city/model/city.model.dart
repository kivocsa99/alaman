// ignore_for_file: non_constant_identifier_names, depend_on_referenced_packages

import 'package:freezed_annotation/freezed_annotation.dart';

part 'city.model.freezed.dart';
part 'city.model.g.dart';

@freezed
class CityModel with _$CityModel {
  const factory CityModel({
    int? id,
    String? name,
    String? name_ar,
    String? created_at,
    String? updated_at,
    String? deleted_at,
  }) = _CityModel;
  const CityModel._();
  factory CityModel.fromJson(Map<String, dynamic> json) =>
      _$CityModelFromJson(json);
}
