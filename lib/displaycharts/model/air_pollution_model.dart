import 'package:airqualityapp/displaycharts/model/air_index_model.dart';
import 'package:airqualityapp/displaycharts/model/co_ordinates_data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'air_pollution_model.freezed.dart';
part 'air_pollution_model.g.dart';


@freezed
class AirPollutionModel with _$AirPollutionModel{
  @JsonSerializable(explicitToJson: true)
  const factory AirPollutionModel({
    @JsonKey(name: "coord")
    required CoordinatesData? coordinatesData,
    @JsonKey(name: "list")
    required List<AirIndexModel>? airIndexModelList,
  }) = _AirPollutionModel;


  factory AirPollutionModel.fromJson(Map<String, dynamic> json) => _$AirPollutionModelFromJson(json);

}