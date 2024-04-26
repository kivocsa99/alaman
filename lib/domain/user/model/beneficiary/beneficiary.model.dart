// ignore_for_file: non_constant_identifier_names, depend_on_referenced_packages

import 'package:alaman/domain/city/model/city.model.dart';
import 'package:alaman/domain/donordonation/model/donor.donation.model.dart';
import 'package:alaman/domain/educationalyear/model/educationalyear.model.dart';
import 'package:alaman/domain/gender/model/gender.model.dart';
import 'package:alaman/domain/marks/model/marks.model.dart';
import 'package:alaman/domain/scholarshipstatuses/model/scholarshipstatuses.model.dart';
import 'package:alaman/domain/scholarshiptypes/model/scholarshiptypes.model.dart';
import 'package:alaman/domain/status/model/status.model.dart';
import 'package:alaman/domain/user/model/beneficiary/beneficiary.payment.model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'beneficiary.model.freezed.dart';
part 'beneficiary.model.g.dart';

@freezed
class BeneficiaryModel with _$BeneficiaryModel {
  const factory BeneficiaryModel({
    dynamic id,
    String? name,
    String? name_ar,
    String? phone,
    String? bio,
    String? bio_ar,
    String? email,
    String? email_verified_at,
    String? account_type,
    bool? active,
    String? image,
    String? national_id_number,
    String? address,
    dynamic gender_id,
    String? first_donation_date,
    num? total_donation_amount,
    String? sector,
    dynamic account_source_id,
    dynamic city_id,
    dynamic commitment_method_id,
    String? area,
    String? contact_person,
    String? contact_person_phone,
    dynamic alaman_contact_person_id,
    String? alaman_join_date,
    StatusModel? educational_organization,
    String? specialization,
    dynamic place_of_residence,
    dynamic educational_year_id,
    String? birthdate,
    String? e_wallet_number,
    dynamic e_wallet_status,
    dynamic scholarship_type_id,
    dynamic scholarship_status_id,
    String? scholarship_status_notes,
    String? rent_expiration_date,
    String? insurance_covering,
    String? insurance_covering_from_date,
    String? insurance_covering_to_date,
    int? donations_goal,
    String? created_at,
    String? updated_at,
    String? deleted_at,
    String? social_id,
    String? apple_id,
    String? google_id,
    String? theme,
    String? theme_color,
    GenderModel? gender,
    CityModel? city,
    DonorDonation? donor_donation,
    EducationalYearModel? educational_year,
    ScholarshipStatusesModel? scholarship_status,
    ScholarshipTypesModel? scholarship_type,
    List<BeneficiaryPaymentModel>? beneficiary_payments,
    List<MarksModel>? marks,
  }) = _BeneficiaryModel;
  const BeneficiaryModel._();
  factory BeneficiaryModel.fromJson(Map<String, dynamic> json) => _$BeneficiaryModelFromJson(json);
}
