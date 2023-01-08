import 'package:airqualityapp/forecast/model/forecast_list_model.dart';
import 'package:airqualityapp/forecast/model/forecast_main_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../displaycharts/graph_point.dart';

part 'forecast_screen_events.freezed.dart';

@freezed
class ForecastScreenEvents with _$ForecastScreenEvents {
  const factory ForecastScreenEvents.displayGraph(List<GraphPoint> points, ForecastMainModel forecastMainModel) = _DisplayGraph;
  const factory ForecastScreenEvents.loading() = _Loading;
  const factory ForecastScreenEvents.error() = _Error;
}