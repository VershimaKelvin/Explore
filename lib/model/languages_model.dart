import 'package:json_annotation/json_annotation.dart';

part 'languages_model.g.dart';

@JsonSerializable()
class LanguagesModel {
  LanguagesModel(
      this.nld,
      this.pap,

      );

  factory LanguagesModel.fromJson(Map<String, dynamic> json) =>
      _$LanguagesModelFromJson(json);

  final String nld;
  final String pap;

  Map<String, dynamic> toJson() => _$LanguagesModelToJson(this);
}