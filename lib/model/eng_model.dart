import 'package:json_annotation/json_annotation.dart';

part 'eng_model.g.dart';

@JsonSerializable()
class EngModel {
  EngModel(
      this.f,
      this.m,

      );

  factory EngModel.fromJson(Map<String, dynamic> json) =>
      _$EngModelFromJson(json);


  final String f;
  final String m;

  Map<String, dynamic> toJson() => _$EngModelToJson(this);
}