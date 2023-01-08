import 'package:airqualityapp/base/logger_utils.dart';
import 'package:airqualityapp/dependencyinjection/injection.dart';
import 'package:airqualityapp/displaycharts/api/pollution_analyzer_repository.dart';
import 'package:airqualityapp/forecast/model/forecast_list_model.dart';
import 'package:airqualityapp/forecast/viewmodel/forecast_screen_events.dart';
import 'package:geolocator/geolocator.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../base/permission_utils.dart';
import '../../displaycharts/graph_point.dart';
import '../model/forecast_main_model.dart';

class ForecastStateNotifier extends StateNotifier<ForecastScreenEvents>{

  final _TAG = "ForecastStateNotifier";
  final _logger = locator<LoggerUtils>();

  ForecastStateNotifier() : super(const ForecastScreenEvents.loading()){
    init();
  }

  void init() async{
    PermissionUtils permissionUtils = PermissionUtils();
    Position? userPosition = await permissionUtils.determineUserPosition();
    if(userPosition != null){
      bool isLocationPermissionAvailable = userPosition.latitude != 0.0 && userPosition.longitude != 0.0;
      if(isLocationPermissionAvailable){
        hitServerToGetWeatherForecast();
      }
      else{
        state = const ForecastScreenEvents.error();
      }
    }
    else{
      state = const ForecastScreenEvents.error();
    }

  }

  Future<void> hitServerToGetWeatherForecast() async{
    state = const ForecastScreenEvents.loading();
    PollutionAnalyzerRepository pollutionAnalyzerRepository = PollutionAnalyzerRepository();
    PermissionUtils permissionUtils = PermissionUtils();
    Position? userPosition = await permissionUtils.determineUserPosition();
    if(userPosition != null){
      final forecastResponse = await pollutionAnalyzerRepository.getWeatherForecastData(userPosition.latitude, userPosition.longitude);
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
    else{
      state = const ForecastScreenEvents.error();
    }
  }

}