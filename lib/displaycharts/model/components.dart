import 'package:freezed_annotation/freezed_annotation.dart';

part 'components.freezed.dart';
part 'components.g.dart';


@freezed
class Components with _$Components{
  @JsonSerializable(explicitToJson: true)
  const factory Components({
    required double? co,
    required double? no,
    required double? no2,
    required double? o3,
    required double? so2,
    @JsonKey(name: "pm2_5")
    required double? pm25,
    required double? pm10,
    required double? nh3,
  }) = _Components;


  factory Components.fromJson(Map<String, dynamic> json) => _$ComponentsFromJson(json);

}