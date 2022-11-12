// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'maps_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MapsModel _$MapsModelFromJson(Map<String, dynamic> json) => MapsModel(
      json['googleMaps'] as String,
      json['openStreetMaps'] as String,
    );

Map<String, dynamic> _$MapsModelToJson(MapsModel instance) => <String, dynamic>{
      'googleMaps': instance.googleMaps,
      'openStreetMaps': instance.openStreetMaps,
    };
