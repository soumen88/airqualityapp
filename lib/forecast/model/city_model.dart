import 'package:freezed_annotation/freezed_annotation.dart';

part 'city_model.freezed.dart';
part 'city_model.g.dart';


@freezed
class CityModel with _$CityModel{
  @JsonSerializable(explicitToJson: true)
  const factory CityModel({
    required int? id,
    @JsonKey(name: "name")
    required String? placeName,
    @JsonKey(name: "country")
    required String? countryName,
    required int? population,
    required int? timezone,
    required int? sunrise,
    required int? sunset,
  }) = _CityModel;

  factory CityModel.fromJson(Map<String, dynamic> json) => _$CityModelFromJson(json);

}