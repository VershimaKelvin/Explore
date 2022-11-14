import 'package:json_annotation/json_annotation.dart';
import 'package:untitled4/model/awg_model.dart';
import 'package:untitled4/model/mru_model.dart';

part 'currencies_model.g.dart';

@JsonSerializable()
class CurrenciesModel {
  CurrenciesModel(
      this.mru,
      );

  factory CurrenciesModel.fromJson(Map<String, dynamic> json) =>
      _$CurrenciesModelFromJson(json);

  final MRUModel mru;


  Map<String, dynamic> toJson() => _$CurrenciesModelToJson(this);
}