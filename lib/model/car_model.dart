import 'package:json_annotation/json_annotation.dart';

part 'car_model.g.dart';

@JsonSerializable()
class CarModel {
  CarModel(
      this.signs,
      this.side,

      );

  factory CarModel.fromJson(Map<String, dynamic> json) =>
      _$CarModelFromJson(json);

  final List<String> signs;
  final String side;

  Map<String, dynamic> toJson() => _$CarModelToJson(this);
}