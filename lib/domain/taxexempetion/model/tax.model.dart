// ignore_for_file: non_constant_identifier_names, depend_on_referenced_packages

import 'package:alaman/domain/status/model/status.model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'tax.model.freezed.dart';
part 'tax.model.g.dart';

@freezed
class TaxModel with _$TaxModel {
  const factory TaxModel({
    int? id,
    int? donor_id,
    int? user_id,
    int? tax_exemption_status_id,
    int? year,
    String? notes,
    String? file,
    StatusModel? status,
    String? created_at,
    String? updated_at,
    String? deleted_at,
  }) = _TaxModel;
  const TaxModel._();
  factory TaxModel.fromJson(Map<String, dynamic> json) => _$TaxModelFromJson(json);
}
