import 'package:airqualityapp/base/logger_utils.dart';
import 'package:airqualityapp/dependencyinjection/injection.dart';
import 'package:airqualityapp/displaycharts/api/pollution_analyzer_repository.dart';
import 'package:airqualityapp/forecast/model/forecast_list_model.dart';
import 'package:airqualityapp/forecast/viewmodel/forecast_screen_events.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../displaycharts/graph_point.dart';
import '../model/forecast_main_model.dart';

class ForecastStateNotifier extends StateNotifier<ForecastScreenEvents>{

  final _TAG = "ForecastStateNotifier";
  final _logger = locator<LoggerUtils>();

  ForecastStateNotifier() : super(const ForecastScreenEvents.loading()){
    hitServerToGetWeatherForecast();
  }

  Future<void> hitServerToGetWeatherForecast() async{
    state = const ForecastScreenEvents.loading();
    PollutionAnalyzerRepository pollutionAnalyzerRepository = PollutionAnalyzerRepository();
    final forecastResponse = await pollutionAnalyzerRepository.getWeatherForecastData();
    forecastResponse.fold(
        (exception){
          _logger.log(_TAG, "Exception $exception");
          state = const ForecastScreenEvents.error();
        },
        (response){
          ForecastMainModel forecastMainModel = ForecastMainModel.fromJson(response?.data ?? "");
          //_logger.log(_TAG, "Forecast main model $forecastMainModel");
          if(forecastMainModel.forecastList != null && forecastMainModel.forecastList!.isNotEmpty){
            List<GraphPoint> points = [];

            for(var i = 0; i < 15; i++){
              var currentPoint = GraphPoint(x: i.toDouble(), y: forecastMainModel.forecastList![i].weatherMain!.temp!);
              points.add(currentPoint);
            }
            state = ForecastScreenEvents.displayGraph(points, forecastMainModel);
          }
        }
    );
  }

}