import 'package:json_annotation/json_annotation.dart';
import 'package:untitled4/model/ara_model.dart';

part 'translation_model.g.dart';

@JsonSerializable()
class TranslationModel {
  TranslationModel(

      this.ara,

      );

  factory TranslationModel.fromJson(Map<String, dynamic> json) =>
      _$TranslationModelFromJson(json);

  final AraModel ara;

  Map<String, dynamic> toJson() => _$TranslationModelToJson(this);
}