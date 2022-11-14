import 'package:json_annotation/json_annotation.dart';

part 'ara_model.g.dart';

@JsonSerializable()
class AraModel {
  AraModel(
      this.official,
      this.common,

      );

  factory AraModel.fromJson(Map<String, dynamic> json) =>
      _$AraModelFromJson(json);

  final String official;
  final String common;

  Map<String, dynamic> toJson() => _$AraModelToJson(this);
}