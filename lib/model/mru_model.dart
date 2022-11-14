import 'package:json_annotation/json_annotation.dart';

part 'mru_model.g.dart';

@JsonSerializable()
class MRUModel {
  MRUModel(
      this.name,
      this.symbol,

      );

  factory MRUModel.fromJson(Map<String, dynamic> json) =>
      _$MRUModelFromJson(json);

  final String name;
  final String symbol;

  Map<String, dynamic> toJson() => _$MRUModelToJson(this);
}