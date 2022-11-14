// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'idd_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

IddModel _$IddModelFromJson(Map<String, dynamic> json) => IddModel(
      json['root'] as String,
      (json['suffixes'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$IddModelToJson(IddModel instance) => <String, dynamic>{
      'root': instance.root,
      'suffixes': instance.suffixes,
    };
