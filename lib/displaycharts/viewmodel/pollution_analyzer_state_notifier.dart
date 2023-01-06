import 'package:airqualityapp/base/logger_utils.dart';
import 'package:airqualityapp/dependencyinjection/injection.dart';
import 'package:airqualityapp/displaycharts/api/pollution_analyzer_repository.dart';
import 'package:airqualityapp/displaycharts/model/air_index_model.dart';
import 'package:airqualityapp/displaycharts/model/air_pollution_model.dart';
import 'package:airqualityapp/displaycharts/graph_point.dart';
import 'package:airqualityapp/displaycharts/viewmodel/pollution_analyzer_events.dart';
import 'package:airqualityapp/enums/chart_value_enum.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class PollutionAnalyzerStateNotifier extends StateNotifier<PollutionAnalyzerEvents>{
  final _TAG = "PollutionAnalyzerStateNotifier";
  final _logger = locator<LoggerUtils>();
  late AirPollutionModel _airPollutionModel;

  PollutionAnalyzerStateNotifier() : super(const PollutionAnalyzerEvents.loading()){
    hitServerToGetPollutionData();
  }



  Future<void> hitServerToGetPollutionData() async{
    state = const PollutionAnalyzerEvents.loading();
    PollutionAnalyzerRepository pollutionAnalyzerRepository = PollutionAnalyzerRepository();
    var pollutionResponse = await pollutionAnalyzerRepository.getPollutionData();
    pollutionResponse.fold(
       (exception){
         _logger.log(_TAG, "Exception occurred $exception");
       },
       (response){
           _airPollutionModel = AirPollutionModel.fromJson(response?.data ?? "");
           //_logger.log(_TAG, "Air index model $airIndexModel");
           _logger.log(_TAG, "Set state to fetch data");
           if(_airPollutionModel.airIndexModelList != null && _airPollutionModel.airIndexModelList!.isNotEmpty){
             int indexCounter = 0;
             List<GraphPoint> points = _airPollutionModel.airIndexModelList!.map(
                (AirIndexModel airIndexModel){
                  indexCounter++;
                  return GraphPoint(x: indexCounter.toDouble(), y: airIndexModel.components!.no2!);
                }
             ).toList();

             state = PollutionAnalyzerEvents.displayGraph(points);
           }

       }
    );
  }

  void filterChartData(ChartValueEnum chartValueEnum){
    int indexCounter = 0;
    switch(chartValueEnum){
      case ChartValueEnum.CARBONMONO :{

        List<GraphPoint> points = _airPollutionModel.airIndexModelList!.map(
                (AirIndexModel airIndexModel){
              indexCounter++;
              return GraphPoint(x: indexCounter.toDouble(), y: airIndexModel.components!.co!);
            }
        ).toList();

        state = PollutionAnalyzerEvents.displayGraph(points);
      }
      break;
      case ChartValueEnum.NITROGENOXIDE :{
        List<GraphPoint> points = _airPollutionModel.airIndexModelList!.map(
                (AirIndexModel airIndexModel){
              indexCounter++;
              return GraphPoint(x: indexCounter.toDouble(), y: airIndexModel.components!.no!);
            }
        ).toList();

        state = PollutionAnalyzerEvents.displayGraph(points);
      }
        break;
      case ChartValueEnum.NITROGENDIOXIDE :{
        List<GraphPoint> points = _airPollutionModel.airIndexModelList!.map(
                (AirIndexModel airIndexModel){
              indexCounter++;
              return GraphPoint(x: indexCounter.toDouble(), y: airIndexModel.components!.no2!);
            }
        ).toList();

        state = PollutionAnalyzerEvents.displayGraph(points);
      }
        break;
      case ChartValueEnum.SULPHURDIOXIDE:
        List<GraphPoint> points = _airPollutionModel.airIndexModelList!.map(
                (AirIndexModel airIndexModel){
              indexCounter++;
              return GraphPoint(x: indexCounter.toDouble(), y: airIndexModel.components!.so2!);
            }
        ).toList();

        state = PollutionAnalyzerEvents.displayGraph(points);
        break;
      case ChartValueEnum.PARTICULATEMATTER:
        List<GraphPoint> points = _airPollutionModel.airIndexModelList!.map(
                (AirIndexModel airIndexModel){
              indexCounter++;
              return GraphPoint(x: indexCounter.toDouble(), y: airIndexModel.components!.pm10!);
            }
        ).toList();

        state = PollutionAnalyzerEvents.displayGraph(points);
        break;
    }
  }
}