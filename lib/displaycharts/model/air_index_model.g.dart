// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'air_index_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AirIndexModel _$$_AirIndexModelFromJson(Map<String, dynamic> json) =>
    _$_AirIndexModel(
      main: json['main'] == null
          ? null
          : MainModel.fromJson(json['main'] as Map<String, dynamic>),
      components: json['components'] == null
          ? null
          : Components.fromJson(json['components'] as Map<String, dynamic>),
      dt: json['dt'] as int,
    );

Map<String, dynamic> _$$_AirIndexModelToJson(_$_AirIndexModel instance) =>
    <String, dynamic>{
      'main': instance.main?.toJson(),
      'components': instance.components?.toJson(),
      'dt': instance.dt,
    };
