import 'package:json_annotation/json_annotation.dart';

part 'postal_model.g.dart';

@JsonSerializable()
class PostalModel {
  PostalModel(
      this.format,
      this.regex,

      );

  factory PostalModel.fromJson(Map<String, dynamic> json) =>
      _$PostalModelFromJson(json);

  final String? format;
  final String? regex;

  Map<String, dynamic> toJson() => _$PostalModelToJson(this);
}