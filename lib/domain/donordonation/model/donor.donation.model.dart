// ignore_for_file: non_constant_identifier_names, depend_on_referenced_packages

import 'package:alaman/domain/donationtype/model/donation.type.model.dart';
import 'package:alaman/domain/donorbeneficiary/model/donor.beneficiary.model.dart';
import 'package:alaman/domain/paymentmethod/model/payment.method.model.dart';
import 'package:alaman/domain/paymentmodel/model/payment.model.dart';
import 'package:alaman/domain/status/model/status.model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'donor.donation.model.freezed.dart';
part 'donor.donation.model.g.dart';

@freezed
class DonorDonation with _$DonorDonation {
  const factory DonorDonation({
    int? id,
    int? donation_type_id,
    int? donation_status_id,
    int? payment_method_id,
    int? donor_id,
    int? mou_id,
    String?start_date,
    String?end_date,
    int? is_recurring,
    num? total_amount,
    String? location,
    String? notes,
    String? created_at,
    String? updated_at,
    String? deleted_at,
    DonationType? type,
    StatusModel? status,
    PaymentMethodModel? payment_method,
    List<PaymentModel>? payments,
    List<DonorBeneficiaryModel>? beneficiaries,
  }) = _DonorDonation;
  const DonorDonation._();
  factory DonorDonation.fromJson(Map<String, dynamic> json) =>
      _$DonorDonationFromJson(json);
}
