// ignore_for_file: non_constant_identifier_names, depend_on_referenced_packages

import 'package:freezed_annotation/freezed_annotation.dart';

part 'campaign.model.freezed.dart';
part 'campaign.model.g.dart';

@freezed
class CampaignModel with _$CampaignModel {
  const factory CampaignModel({
    int? id,
    String? image,
    String? name,
    String? name_ar,
    String? text,
    String? text_ar,
    int? active,
    String? href,
    String? created_at,
    String? updated_at,
    String? deleted_at,
  }) = _CampaignModel;
  const CampaignModel._();
  factory CampaignModel.fromJson(Map<String, dynamic> json) =>
      _$CampaignModelFromJson(json);
}
