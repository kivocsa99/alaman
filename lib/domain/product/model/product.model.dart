// ignore_for_file: non_constant_identifier_names, depend_on_referenced_packages

import 'package:freezed_annotation/freezed_annotation.dart';

part 'product.model.freezed.dart';
part 'product.model.g.dart';

@freezed
class ProductModel with _$ProductModel {
  const factory ProductModel({
    int? id,
    String? image,
    String? name,
    String? name_ar,
    num? price,
    String? href,
    String? created_at,
    String? updated_at,
    String? deleted_at,
  }) = _ProductModel;
  const ProductModel._();
  factory ProductModel.fromJson(Map<String, dynamic> json) =>
      _$ProductModelFromJson(json);
}
