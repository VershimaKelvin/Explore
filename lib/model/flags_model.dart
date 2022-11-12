import 'package:json_annotation/json_annotation.dart';

part 'flags_model.g.dart';

@JsonSerializable()
class FlagsModel {
  FlagsModel(
      this.png,
      this.svg,

      );

  factory FlagsModel.fromJson(Map<String, dynamic> json) =>
      _$FlagsModelFromJson(json);

  final String png;
  final String svg;

  Map<String, dynamic> toJson() => _$FlagsModelToJson(this);
}