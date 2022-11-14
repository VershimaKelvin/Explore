import 'package:json_annotation/json_annotation.dart';

part 'gini_model.g.dart';

@JsonSerializable()
class GiniModel {
  GiniModel(
      this.gini,


      );

  factory GiniModel.fromJson(Map<String, dynamic> json) =>
      _$GiniModelFromJson(json);

  final String gini;

  Map<String, dynamic> toJson() => _$GiniModelToJson(this);
}