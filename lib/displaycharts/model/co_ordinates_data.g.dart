// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'co_ordinates_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CoordinatesData _$$_CoordinatesDataFromJson(Map<String, dynamic> json) =>
    _$_CoordinatesData(
      longitude: (json['lon'] as num?)?.toDouble(),
      latitude: (json['lat'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$_CoordinatesDataToJson(_$_CoordinatesData instance) =>
    <String, dynamic>{
      'lon': instance.longitude,
      'lat': instance.latitude,
    };
