import 'package:freezed_annotation/freezed_annotation.dart';

part 'weather_main.freezed.dart';
part 'weather_main.g.dart';


@freezed
class WeatherMain with _$WeatherMain{
  @JsonSerializable(explicitToJson: true)
  const factory WeatherMain({
    required double? temp,
    required int? humidity,
  }) = _WeatherMain;

  factory WeatherMain.fromJson(Map<String, dynamic> json) => _$WeatherMainFromJson(json);

}