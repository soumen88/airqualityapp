// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'air_pollution_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AirPollutionModel _$$_AirPollutionModelFromJson(Map<String, dynamic> json) =>
    _$_AirPollutionModel(
      coordinatesData: json['coord'] == null
          ? null
          : CoordinatesData.fromJson(json['coord'] as Map<String, dynamic>),
      airIndexModelList: (json['list'] as List<dynamic>?)
          ?.map((e) => AirIndexModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_AirPollutionModelToJson(
        _$_AirPollutionModel instance) =>
    <String, dynamic>{
      'coord': instance.coordinatesData?.toJson(),
      'list': instance.airIndexModelList?.map((e) => e.toJson()).toList(),
    };
