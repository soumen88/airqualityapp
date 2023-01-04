import 'package:freezed_annotation/freezed_annotation.dart';

part 'country_data.freezed.dart';
part 'country_data.g.dart';


@freezed
class CountryData with _$CountryData{
  @JsonSerializable(explicitToJson: true)
  const factory CountryData({
    @JsonKey(name: "country")
    required String? countryName,
  }) = _CountryData;


  factory CountryData.fromJson(Map<String, dynamic> json) => _$CountryDataFromJson(json);

}