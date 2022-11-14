import 'package:json_annotation/json_annotation.dart';

part 'latlong_model.g.dart';

@JsonSerializable()
class LatLongModel {
  LatLongModel(
      this.latlong,


      );

  factory LatLongModel.fromJson(Map<String, dynamic> json) =>
      _$LatLongModelFromJson(json);

  final List latlong;


  Map<String, dynamic> toJson() => _$LatLongModelToJson(this);
}