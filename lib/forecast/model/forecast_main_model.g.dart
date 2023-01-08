// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forecast_main_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ForecastMainModel _$$_ForecastMainModelFromJson(Map<String, dynamic> json) =>
    _$_ForecastMainModel(
      cod: json['cod'] as String?,
      message: json['message'] as int?,
      cnt: json['cnt'] as int?,
      forecastList: (json['list'] as List<dynamic>?)
          ?.map((e) => ForecastListModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      city: json['city'] == null
          ? null
          : CityModel.fromJson(json['city'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ForecastMainModelToJson(
        _$_ForecastMainModel instance) =>
    <String, dynamic>{
      'cod': instance.cod,
      'message': instance.message,
      'cnt': instance.cnt,
      'list': instance.forecastList?.map((e) => e.toJson()).toList(),
      'city': instance.city?.toJson(),
    };
