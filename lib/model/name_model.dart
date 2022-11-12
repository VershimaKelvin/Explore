import 'package:json_annotation/json_annotation.dart';

part 'name_model.g.dart';

@JsonSerializable()
class NameModel {
  NameModel(
      this.common,
      this.official,

      );

  factory NameModel.fromJson(Map<String, dynamic> json) =>
      _$NameModelFromJson(json);

  final String common;
  final String official;

  Map<String, dynamic> toJson() => _$NameModelToJson(this);
}