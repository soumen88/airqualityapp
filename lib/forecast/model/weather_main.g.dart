// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_main.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_WeatherMain _$$_WeatherMainFromJson(Map<String, dynamic> json) =>
    _$_WeatherMain(
      temp: (json['temp'] as num?)?.toDouble(),
      minTemperature: (json['temp_min'] as num?)?.toDouble(),
      maxTemperature: (json['temp_max'] as num?)?.toDouble(),
      humidity: json['humidity'] as int?,
    );

Map<String, dynamic> _$$_WeatherMainToJson(_$_WeatherMain instance) =>
    <String, dynamic>{
      'temp': instance.temp,
      'temp_min': instance.minTemperature,
      'temp_max': instance.maxTemperature,
      'humidity': instance.humidity,
    };
