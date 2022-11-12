import 'package:json_annotation/json_annotation.dart';

part 'awg_model.g.dart';

@JsonSerializable()
class AWGModel {
  AWGModel(
      this.name,
      this.symbol,

      );

  factory AWGModel.fromJson(Map<String, dynamic> json) =>
      _$AWGModelFromJson(json);

  final String name;
  final String symbol;

  Map<String, dynamic> toJson() => _$AWGModelToJson(this);
}