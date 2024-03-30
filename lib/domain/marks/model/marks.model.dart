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

part 'marks.model.freezed.dart';
part 'marks.model.g.dart';

@freezed
class MarksModel with _$MarksModel {
  const factory MarksModel({
    int? id,
    int? beneficiary_id,
    String? academic_year,
    String? semester,
    String? file,
    double? semester_average,
    String? semester_result,
    double? cumulative_average,
    String? notes,
    String? created_at,
    String? updated_at,
    String? deleted_at,
  }) = _MarksModel;
  const MarksModel._();
  factory MarksModel.fromJson(Map<String, dynamic> json) =>
      _$MarksModelFromJson(json);
}
