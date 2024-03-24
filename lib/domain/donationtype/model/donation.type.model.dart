// ignore_for_file: non_constant_identifier_names, depend_on_referenced_packages

import 'package:freezed_annotation/freezed_annotation.dart';

part 'donation.type.model.freezed.dart';
part 'donation.type.model.g.dart';

@freezed
class DonationType with _$DonationType {
  const factory DonationType({
    int? id,
    String? name,
    String? name_ar,
    String? created_at,
    String? updated_at,
    String? deleted_at,
  }) = _DonationType;
  const DonationType._();
  factory DonationType.fromJson(Map<String, dynamic> json) =>
      _$DonationTypeFromJson(json);
}
