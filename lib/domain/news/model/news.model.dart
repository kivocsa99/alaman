// ignore_for_file: non_constant_identifier_names, depend_on_referenced_packages

import 'package:freezed_annotation/freezed_annotation.dart';

part 'news.model.freezed.dart';
part 'news.model.g.dart';

@freezed
class NewsModel with _$NewsModel {
  const factory NewsModel({
    int? id,
    String? image,
    String? title,
    String? title_ar,
    String? content,
    String? content_ar,
    String? created_at,
    String? updated_at,
    String? deleted_at,
  }) = _NewsModel;
  const NewsModel._();
  factory NewsModel.fromJson(Map<String, dynamic> json) =>
      _$NewsModelFromJson(json);
}
