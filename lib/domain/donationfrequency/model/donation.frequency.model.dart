// ignore_for_file: non_constant_identifier_names, depend_on_referenced_packages

import 'package:freezed_annotation/freezed_annotation.dart';

part 'donation.frequency.model.freezed.dart';
part 'donation.frequency.model.g.dart';

@freezed
class DonationFrequencyModel with _$DonationFrequencyModel {
  const factory DonationFrequencyModel({
    int? id,
    String? name,
    String? name_ar,
    String? value,
    String? created_at,
    String? updated_at,
    String? deleted_at,
  }) = _DonationFrequencyModel;
  const DonationFrequencyModel._();
  factory DonationFrequencyModel.fromJson(Map<String, dynamic> json) =>
      _$DonationFrequencyModelFromJson(json);
}
