// ignore_for_file: non_constant_identifier_names, depend_on_referenced_packages

import 'package:alaman/domain/status/model/status.model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment.model.freezed.dart';
part 'payment.model.g.dart';

@freezed
class PaymentModel with _$PaymentModel {
  const factory PaymentModel({
    int? id,
    int? mou_id,
    int? donation_id,
    int? donor_id,
    int? payment_status_id,
    String? due_date,
    String? name,
    String? email,
    num? amount,
    String? provider_ref,
    String? provider_callback,
    int? is_success,
    StatusModel? status,
    String? created_at,
    String? updated_at,
    String? deleted_at,
  }) = _PaymentModel;
  const PaymentModel._();
  factory PaymentModel.fromJson(Map<String, dynamic> json) =>
      _$PaymentModelFromJson(json);
}
