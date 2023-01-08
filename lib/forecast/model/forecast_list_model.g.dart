// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forecast_list_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ForecastListModel _$$_ForecastListModelFromJson(Map<String, dynamic> json) =>
    _$_ForecastListModel(
      unixTimeStamp: json['dt'] as int?,
      weatherMain: json['main'] == null
          ? null
          : WeatherMain.fromJson(json['main'] as Map<String, dynamic>),
      weatherModelList: (json['weather'] as List<dynamic>?)
          ?.map((e) => WeatherModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      visibility: json['visibility'] as int?,
      pop: json['pop'] as int?,
      currentTimestamp: json['dt_txt'] as String?,
    );

Map<String, dynamic> _$$_ForecastListModelToJson(
        _$_ForecastListModel instance) =>
    <String, dynamic>{
      'dt': instance.unixTimeStamp,
      'main': instance.weatherMain?.toJson(),
      'weather': instance.weatherModelList?.map((e) => e.toJson()).toList(),
      'visibility': instance.visibility,
      'pop': instance.pop,
      'dt_txt': instance.currentTimestamp,
    };
