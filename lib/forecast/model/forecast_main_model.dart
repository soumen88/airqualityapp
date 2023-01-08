import 'package:airqualityapp/forecast/model/city_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'forecast_list_model.dart';

part 'forecast_main_model.freezed.dart';
part 'forecast_main_model.g.dart';


@freezed
class ForecastMainModel with _$ForecastMainModel{
  @JsonSerializable(explicitToJson: true)
  const factory ForecastMainModel({
    @JsonKey(name: "cod")
    required String? cod,
    required int? message,
    required int? cnt,
    @JsonKey(name: "list")
    required List<ForecastListModel>? forecastList,
    required CityModel? city,
  }) = _ForecastMainModel;

  factory ForecastMainModel.fromJson(Map<String, dynamic> json) => _$ForecastMainModelFromJson(json);

}