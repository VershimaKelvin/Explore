import 'package:json_annotation/json_annotation.dart';
import 'package:untitled4/model/latlong_model.dart';

part 'capital_info_model.g.dart';

@JsonSerializable()
class CapitalInfoModel {
  CapitalInfoModel(
      this.latlong,


      );

  factory CapitalInfoModel.fromJson(Map<String, dynamic> json) =>
      _$CapitalInfoModelFromJson(json);

  final LatLongModel latlong;


  Map<String, dynamic> toJson() => _$CapitalInfoModelToJson(this);
}