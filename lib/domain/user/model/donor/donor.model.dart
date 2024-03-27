// ignore_for_file: non_constant_identifier_names, depend_on_referenced_packages

import 'package:alaman/domain/city/model/city.model.dart';
import 'package:alaman/domain/donorbeneficiary/model/donor.beneficiary.model.dart';
import 'package:alaman/domain/donordonation/model/donor.donation.model.dart';
import 'package:alaman/domain/donortype/model/donor.type.model.dart';
import 'package:alaman/domain/gender/model/gender.model.dart';
import 'package:alaman/domain/mou/model/mou.model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'donor.model.freezed.dart';
part 'donor.model.g.dart';

@freezed
class DonorModel with _$DonorModel {
  const factory DonorModel({
    int? id,
    String? name,
    String? phone,
    String? email,
    String? email_verified_at,
    String? account_type,
    bool? active,
    String? image,
    String? national_id_number,
    String? address,
    int? gender_id,
    String? first_donation_date,
    num? total_donation_amount,
    String? sector,
    int? account_source_id,
    int? city_id,
    int? commitment_method_id,
    String? area,
    String? contact_person,
    String? contact_person_phone,
    int? alaman_contact_person_id,
    String? alaman_join_date,
    String? educational_organization_name,
    String? specialization,
    String? place_of_residence,
    int? educational_year_id,
    String? birthdate,
    String? e_wallet_number,
    int? e_wallet_status,
    int? scholarship_type_id,
    int? scholarship_status_id,
    String? scholarship_status_notes,
    String? rent_expiration_date,
    String? insurance_covering,
    String? insurance_covering_from_date,
    String? insurance_covering_to_date,
    int? donations_goal,
    String? created_at,
    String? updated_at,
    String? deleted_at,
    String? theme,
    String? theme_color,
    GenderModel? gender,
    CityModel? city,
    DonorTypeModel? donor_type,
    List<DonorDonation>? donor_donations,
    List<DonorBeneficiaryModel>? donor_beneficiaries,
    List<MouModel>? mous,
  }) = _DonorModel;
  const DonorModel._();
  factory DonorModel.fromJson(Map<String, dynamic> json) =>
      _$DonorModelFromJson(json);
}
