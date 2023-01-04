import 'package:airqualityapp/choosecountry/models/country_data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'country_list.freezed.dart';
part 'country_list.g.dart';


@freezed
class CountryList with _$CountryList{
  @JsonSerializable(explicitToJson: true)
  const factory CountryList({
    required String? status,
    @JsonKey(name: "data")
    required List<CountryData>? countryData,
  }) = _CountryList;


  factory CountryList.fromJson(Map<String, dynamic> json) => _$CountryListFromJson(json);

}