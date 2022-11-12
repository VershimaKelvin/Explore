import 'package:json_annotation/json_annotation.dart';

part 'maps_model.g.dart';

@JsonSerializable()
class MapsModel {
  MapsModel(
      this.googleMaps,
      this.openStreetMaps,

      );

  factory MapsModel.fromJson(Map<String, dynamic> json) =>
      _$MapsModelFromJson(json);

  final String googleMaps;
  final String openStreetMaps;

  Map<String, dynamic> toJson() => _$MapsModelToJson(this);
}