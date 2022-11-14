import 'package:json_annotation/json_annotation.dart';
import 'package:untitled4/model/eng_model.dart';

part 'demonyms_model.g.dart';

@JsonSerializable()
class DemonymsModel {
  DemonymsModel(
      this.eng,


      );

  factory DemonymsModel.fromJson(Map<String, dynamic> json) =>
      _$DemonymsModelFromJson(json);

  final EngModel eng;

  Map<String, dynamic> toJson() => _$DemonymsModelToJson(this);
}
