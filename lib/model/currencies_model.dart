import 'package:json_annotation/json_annotation.dart';
import 'package:untitled4/model/awg_model.dart';

part 'currencies_model.g.dart';

@JsonSerializable()
class CurrenciesModel {
  CurrenciesModel(
      this.awg,

      );

  factory CurrenciesModel.fromJson(Map<String, dynamic> json) =>
      _$CurrenciesModelFromJson(json);

  final AWGModel awg;


  Map<String, dynamic> toJson() => _$CurrenciesModelToJson(this);
}