import 'package:freezed_annotation/freezed_annotation.dart';

part 'co_ordinates_data.freezed.dart';
part 'co_ordinates_data.g.dart';


@freezed
class CoordinatesData with _$CoordinatesData{
  @JsonSerializable(explicitToJson: true)
  const factory CoordinatesData({
    @JsonKey(name: "lon")
    required double? longitude,
    @JsonKey(name: "lat")
    required double? latitude,
  }) = _CoordinatesData;


  factory CoordinatesData.fromJson(Map<String, dynamic> json) => _$CoordinatesDataFromJson(json);

}