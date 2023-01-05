import 'package:airqualityapp/displaycharts/model/components.dart';
import 'package:airqualityapp/displaycharts/model/main_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'air_index_model.freezed.dart';
part 'air_index_model.g.dart';


@freezed
class AirIndexModel with _$AirIndexModel{
  @JsonSerializable(explicitToJson: true)
  const factory AirIndexModel({
    required MainModel? main,
    required Components? components,
    required int dt
  }) = _AirIndexModel;


  factory AirIndexModel.fromJson(Map<String, dynamic> json) => _$AirIndexModelFromJson(json);

}