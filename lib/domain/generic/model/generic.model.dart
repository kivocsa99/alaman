// ignore_for_file: non_constant_identifier_names, depend_on_referenced_packages

import 'package:alaman/domain/accountsources/model/accountsources.model.dart';
import 'package:alaman/domain/alamanservices/model/alamanservices.model.dart';
import 'package:alaman/domain/avatar/model/avatar.model.dart';
import 'package:alaman/domain/booth/model/booth.model.dart';
import 'package:alaman/domain/city/model/city.model.dart';
import 'package:alaman/domain/commitmentmethods/model/commitmentmethods.model.dart';
import 'package:alaman/domain/donationfrequency/model/donation.frequency.model.dart';
import 'package:alaman/domain/donationtype/model/donation.type.model.dart';
import 'package:alaman/domain/donortype/model/donor.type.model.dart';
import 'package:alaman/domain/topdonor/model/topdonor.model.dart';
import 'package:alaman/domain/educationalyear/model/educationalyear.model.dart';
import 'package:alaman/domain/gender/model/gender.model.dart';
import 'package:alaman/domain/meetingmethod/model/meetingmethods.model.dart';
import 'package:alaman/domain/partner/model/partner.model.dart';
import 'package:alaman/domain/paymentmethod/model/payment.method.model.dart';
import 'package:alaman/domain/scholarshipstatuses/model/scholarshipstatuses.model.dart';
import 'package:alaman/domain/scholarshiptypes/model/scholarshiptypes.model.dart';
import 'package:alaman/domain/trainingreqeust/model/training.request.model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'generic.model.freezed.dart';
part 'generic.model.g.dart';

@freezed
class GenericModel with _$GenericModel {
  const factory GenericModel({
    List<AccountSourcesModel>? AccountSources,
    List<AlamanServicesModel>? AlamanServices,
    List<CityModel>? Cities,
    List<CommitmentMethodsModel>? CommitmentMethods,
    List<ScholarshipStatusesModel>? ScholarshipStatuses,
    List<ScholarshipTypesModel>? ScholarshipTypes,
    List<BoothModel>? Booths,
    List<PartnerModel>? Partners,
    List<TopDonorModel>? TopDonors,
    List<EducationalYearModel>? EducationalYears,
    List<GenderModel>? Genders,
    List<DonorTypeModel>? DonorTypes,
    List<MeetingMethodsModel>? MeetingMethods,
    List<ProgramModel>? TrainingPrograms,
    List<DonationFrequencyModel>? DonationFrequencies,
    List<PaymentMethodModel>? PaymentMethods,
    List<DonationType>? DonationTypes,
    List<AvatarModel>? Avatars,
    bool? EidiehEnabled,
    bool? ONLINE_PAYMENT_ENABLED,
    bool? SHOP_ENABLED,
  }) = _GenericModel;
  const GenericModel._();
  factory GenericModel.fromJson(Map<String, dynamic> json) =>
      _$GenericModelFromJson(json);
}
