import 'package:json_annotation/json_annotation.dart';

part 'idd_model.g.dart';

@JsonSerializable()
class IddModel {
  IddModel(
      this.root,
      this.suffixes,

      );

  factory IddModel.fromJson(Map<String, dynamic> json) =>
      _$IddModelFromJson(json);

  final String root;
  final List<String> suffixes;

  Map<String, dynamic> toJson() => _$IddModelToJson(this);
}