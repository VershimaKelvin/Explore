import 'package:json_annotation/json_annotation.dart';

part 'coat_of_arm_model.g.dart';

@JsonSerializable()
class CoatOfArmModel {
  CoatOfArmModel(
      this.png,
      this.svg,

      );

  factory CoatOfArmModel.fromJson(Map<String, dynamic> json) =>
      _$CoatOfArmModelFromJson(json);

  final String png;
  final String svg;

  Map<String, dynamic> toJson() => _$CoatOfArmModelToJson(this);
}