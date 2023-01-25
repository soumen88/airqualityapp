import 'dart:convert';

import 'package:airqualityapp/base/logger_utils.dart';
import 'package:airqualityapp/dependencyinjection/injection.dart';
import 'package:airqualityapp/displaycharts/api/pollution_analyzer_repository.dart';
import 'package:airqualityapp/displaycharts/model/air_index_model.dart';
import 'package:airqualityapp/displaycharts/model/air_pollution_model.dart';
import 'package:airqualityapp/displaycharts/graph_point.dart';
import 'package:airqualityapp/displaycharts/viewmodel/pollution_analyzer_events.dart';
import 'package:airqualityapp/enums/chart_value_enum.dart';
import 'package:geolocator/geolocator.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../base/permission_utils.dart';

class PollutionAnalyzerStateNotifier extends StateNotifier<PollutionAnalyzerEvents>{
  final _TAG = "PollutionAnalyzerStateNotifier";
  final _logger = locator<LoggerUtils>();
  late AirPollutionModel _airPollutionModel;

  PollutionAnalyzerStateNotifier() : super(const PollutionAnalyzerEvents.loading()){
    hitServerToGetPollutionData();
  }

  Future<void> hitServerToGetPollutionData() async{
    state = const PollutionAnalyzerEvents.loading();
    PermissionUtils permissionUtils = PermissionUtils();
    Position? userPosition = await permissionUtils.determineUserPosition();
    Future.delayed(Duration(seconds: 1), (){
      var jsonString = '{"coord":{"lon":80.219,"lat":19.18},"list":[{"main":{"aqi":5},"components":{"co":340.46,"no":0,"no2":2.14,"o3":34.33,"so2":0.6,"pm2_5":100.3,"pm10":103.25,"nh3":3.17},"dt":1606266000},{"main":{"aqi":5},"components":{"co":353.81,"no":0.06,"no2":3.3,"o3":31.47,"so2":0.57,"pm2_5":100.85,"pm10":103.97,"nh3":3.14},"dt":1606269600},{"main":{"aqi":5},"components":{"co":373.84,"no":0.4,"no2":3.9,"o3":39.7,"so2":0.71,"pm2_5":102.15,"pm10":105.54,"nh3":2.88},"dt":1606273200},{"main":{"aqi":5},"components":{"co":393.87,"no":0.23,"no2":1.86,"o3":81.54,"so2":1.58,"pm2_5":107,"pm10":110.96,"nh3":1.5},"dt":1606276800},{"main":{"aqi":5},"components":{"co":397.21,"no":0.15,"no2":1.21,"o3":100.14,"so2":1.94,"pm2_5":109.93,"pm10":114.37,"nh3":0.94},"dt":1606280400},{"main":{"aqi":5},"components":{"co":403.88,"no":0.12,"no2":1.01,"o3":110.15,"so2":2.09,"pm2_5":112.01,"pm10":116.74,"nh3":0.71},"dt":1606284000},{"main":{"aqi":5},"components":{"co":387.19,"no":0.08,"no2":0.74,"o3":133.04,"so2":1.94,"pm2_5":99.12,"pm10":103.26,"nh3":0},"dt":1606287600},{"main":{"aqi":5},"components":{"co":373.84,"no":0.07,"no2":0.66,"o3":135.9,"so2":1.65,"pm2_5":87.39,"pm10":90.92,"nh3":0},"dt":1606291200},{"main":{"aqi":5},"components":{"co":370.5,"no":0.06,"no2":0.65,"o3":135.9,"so2":1.62,"pm2_5":86.02,"pm10":89.47,"nh3":0},"dt":1606294800},{"main":{"aqi":5},"components":{"co":373.84,"no":0.05,"no2":1.52,"o3":125.89,"so2":1.59,"pm2_5":85.97,"pm10":89.48,"nh3":0.05},"dt":1606298400},{"main":{"aqi":5},"components":{"co":383.85,"no":0.03,"no2":3.17,"o3":107.29,"so2":1.48,"pm2_5":86.55,"pm10":90,"nh3":0.67},"dt":1606302000},{"main":{"aqi":5},"components":{"co":397.21,"no":0,"no2":4.93,"o3":92.98,"so2":1.39,"pm2_5":87.29,"pm10":90.71,"nh3":1.2},"dt":1606305600},{"main":{"aqi":5},"components":{"co":410.56,"no":0,"no2":6.17,"o3":86.55,"so2":1.59,"pm2_5":92.2,"pm10":95.77,"nh3":1.44},"dt":1606309200},{"main":{"aqi":5},"components":{"co":417.23,"no":0,"no2":6.68,"o3":89.41,"so2":2.15,"pm2_5":100.63,"pm10":104.38,"nh3":1.38},"dt":1606312800},{"main":{"aqi":5},"components":{"co":417.23,"no":0,"no2":6.08,"o3":95.84,"so2":2.83,"pm2_5":108.68,"pm10":112.55,"nh3":0.9},"dt":1606316400},{"main":{"aqi":5},"components":{"co":440.6,"no":0,"no2":4.46,"o3":101.57,"so2":3.99,"pm2_5":126.42,"pm10":130.75,"nh3":0.03},"dt":1606320000},{"main":{"aqi":5},"components":{"co":453.95,"no":0,"no2":3.56,"o3":94.41,"so2":4.59,"pm2_5":139.55,"pm10":143.99,"nh3":0},"dt":1606323600},{"main":{"aqi":5},"components":{"co":397.21,"no":0,"no2":3,"o3":63.66,"so2":2.74,"pm2_5":110.96,"pm10":114.42,"nh3":0.54},"dt":1606327200},{"main":{"aqi":5},"components":{"co":300.41,"no":0,"no2":1.95,"o3":38.27,"so2":0.86,"pm2_5":62.18,"pm10":64.4,"nh3":2.22},"dt":1606330800},{"main":{"aqi":4},"components":{"co":280.38,"no":0,"no2":1.23,"o3":45.78,"so2":0.56,"pm2_5":46.72,"pm10":48.7,"nh3":2.69},"dt":1606334400},{"main":{"aqi":5},"components":{"co":313.76,"no":0,"no2":1.02,"o3":69.38,"so2":0.83,"pm2_5":59.65,"pm10":62.19,"nh3":2.47},"dt":1606338000},{"main":{"aqi":5},"components":{"co":353.81,"no":0,"no2":0.99,"o3":86.55,"so2":1.03,"pm2_5":76.41,"pm10":79.49,"nh3":2.31},"dt":1606341600},{"main":{"aqi":5},"components":{"co":367.17,"no":0,"no2":0.98,"o3":85.12,"so2":0.98,"pm2_5":84.99,"pm10":88.21,"nh3":2.34},"dt":1606345200},{"main":{"aqi":5},"components":{"co":377.18,"no":0,"no2":1.01,"o3":81.54,"so2":0.91,"pm2_5":92.95,"pm10":96.31,"nh3":2.34},"dt":1606348800},{"main":{"aqi":5},"components":{"co":387.19,"no":0,"no2":1.23,"o3":78.68,"so2":0.89,"pm2_5":102.95,"pm10":106.58,"nh3":2.34},"dt":1606352400},{"main":{"aqi":5},"components":{"co":400.54,"no":0,"no2":1.93,"o3":79.39,"so2":1,"pm2_5":111.78,"pm10":115.73,"nh3":2.22},"dt":1606356000},{"main":{"aqi":5},"components":{"co":403.88,"no":0.01,"no2":2.46,"o3":84.4,"so2":1.12,"pm2_5":111.57,"pm10":115.52,"nh3":1.9},"dt":1606359600},{"main":{"aqi":5},"components":{"co":377.18,"no":0.02,"no2":1.52,"o3":90.84,"so2":1.07,"pm2_5":95.57,"pm10":98.85,"nh3":1.43},"dt":1606363200},{"main":{"aqi":5},"components":{"co":357.15,"no":0.02,"no2":1.18,"o3":85.12,"so2":0.91,"pm2_5":80.48,"pm10":83.29,"nh3":1.39},"dt":1606366800},{"main":{"aqi":5},"components":{"co":337.12,"no":0.02,"no2":1.03,"o3":80.11,"so2":0.77,"pm2_5":67.85,"pm10":70.25,"nh3":1.41},"dt":1606370400},{"main":{"aqi":5},"components":{"co":320.44,"no":0.02,"no2":0.96,"o3":76.53,"so2":0.65,"pm2_5":56.13,"pm10":58.13,"nh3":1.27},"dt":1606374000},{"main":{"aqi":4},"components":{"co":303.75,"no":0.01,"no2":0.94,"o3":71.53,"so2":0.54,"pm2_5":46.03,"pm10":47.7,"nh3":1.17},"dt":1606377600},{"main":{"aqi":4},"components":{"co":287.06,"no":0.01,"no2":0.91,"o3":67.95,"so2":0.45,"pm2_5":38.29,"pm10":39.71,"nh3":1.11},"dt":1606381200},{"main":{"aqi":4},"components":{"co":280.38,"no":0.01,"no2":1.8,"o3":60.08,"so2":0.43,"pm2_5":34.44,"pm10":35.77,"nh3":1.39},"dt":1606384800},{"main":{"aqi":4},"components":{"co":290.39,"no":0.01,"no2":3.77,"o3":50.07,"so2":0.45,"pm2_5":35.99,"pm10":37.46,"nh3":1.9},"dt":1606388400},{"main":{"aqi":4},"components":{"co":310.42,"no":0,"no2":6.17,"o3":42.56,"so2":0.5,"pm2_5":40.78,"pm10":42.47,"nh3":2.25},"dt":1606392000},{"main":{"aqi":4},"components":{"co":330.45,"no":0,"no2":8.65,"o3":35.41,"so2":0.53,"pm2_5":44.78,"pm10":46.56,"nh3":2.53},"dt":1606395600},{"main":{"aqi":5},"components":{"co":353.81,"no":0,"no2":10.37,"o3":32.19,"so2":0.54,"pm2_5":50.77,"pm10":52.57,"nh3":2.53},"dt":1606399200},{"main":{"aqi":5},"components":{"co":380.52,"no":0,"no2":10.97,"o3":31.47,"so2":0.55,"pm2_5":59.04,"pm10":60.81,"nh3":2.12},"dt":1606402800},{"main":{"aqi":5},"components":{"co":380.52,"no":0,"no2":9.85,"o3":29.33,"so2":0.5,"pm2_5":57.75,"pm10":59.36,"nh3":1.85},"dt":1606406400},{"main":{"aqi":4},"components":{"co":357.15,"no":0,"no2":8.23,"o3":26.11,"so2":0.32,"pm2_5":48.1,"pm10":49.71,"nh3":2.53},"dt":1606410000},{"main":{"aqi":5},"components":{"co":347.14,"no":0,"no2":5.66,"o3":32.9,"so2":0.28,"pm2_5":53.47,"pm10":55.51,"nh3":3.64},"dt":1606413600},{"main":{"aqi":5},"components":{"co":383.85,"no":0,"no2":2.87,"o3":53.64,"so2":1.65,"pm2_5":80.02,"pm10":82.72,"nh3":3.71},"dt":1606417200},{"main":{"aqi":5},"components":{"co":410.56,"no":0,"no2":2.46,"o3":57.22,"so2":3.07,"pm2_5":91.02,"pm10":94.11,"nh3":3.39},"dt":1606420800},{"main":{"aqi":5},"components":{"co":403.88,"no":0,"no2":2.16,"o3":56.51,"so2":2.98,"pm2_5":86.16,"pm10":89.25,"nh3":3.33},"dt":1606424400},{"main":{"aqi":5},"components":{"co":373.84,"no":0,"no2":1.65,"o3":57.22,"so2":1.94,"pm2_5":72.87,"pm10":75.53,"nh3":3.26},"dt":1606428000},{"main":{"aqi":5},"components":{"co":347.14,"no":0,"no2":1.25,"o3":57.22,"so2":1.07,"pm2_5":60.21,"pm10":62.37,"nh3":3.2},"dt":1606431600},{"main":{"aqi":5},"components":{"co":337.12,"no":0,"no2":1.09,"o3":58.65,"so2":0.7,"pm2_5":55.01,"pm10":56.97,"nh3":3.14},"dt":1606435200},{"main":{"aqi":5},"components":{"co":347.14,"no":0,"no2":1.14,"o3":60.08,"so2":0.66,"pm2_5":57.93,"pm10":59.99,"nh3":3.04},"dt":1606438800},{"main":{"aqi":5},"components":{"co":373.84,"no":0,"no2":1.56,"o3":61.51,"so2":0.86,"pm2_5":70.82,"pm10":73.27,"nh3":2.72},"dt":1606442400},{"main":{"aqi":5},"components":{"co":410.56,"no":0.01,"no2":2.16,"o3":62.94,"so2":1.15,"pm2_5":87.72,"pm10":90.56,"nh3":2.15},"dt":1606446000},{"main":{"aqi":5},"components":{"co":433.92,"no":0.03,"no2":2.19,"o3":63.66,"so2":1.34,"pm2_5":98.3,"pm10":101.23,"nh3":1.76},"dt":1606449600},{"main":{"aqi":5},"components":{"co":440.6,"no":0.04,"no2":1.74,"o3":64.37,"so2":1.4,"pm2_5":100.43,"pm10":103.02,"nh3":1.69},"dt":1606453200},{"main":{"aqi":5},"components":{"co":440.6,"no":0.04,"no2":1.3,"o3":65.09,"so2":1.33,"pm2_5":96.43,"pm10":98.32,"nh3":1.63},"dt":1606456800},{"main":{"aqi":5},"components":{"co":433.92,"no":0.04,"no2":1.1,"o3":64.37,"so2":1.06,"pm2_5":84.14,"pm10":85.34,"nh3":1.43},"dt":1606460400},{"main":{"aqi":5},"components":{"co":427.25,"no":0.04,"no2":1.15,"o3":60.8,"so2":0.91,"pm2_5":77.38,"pm10":78.3,"nh3":1.38},"dt":1606464000},{"main":{"aqi":5},"components":{"co":420.57,"no":0.03,"no2":1.19,"o3":57.22,"so2":0.79,"pm2_5":69.65,"pm10":70.44,"nh3":1.39},"dt":1606467600},{"main":{"aqi":5},"components":{"co":407.22,"no":0.04,"no2":1.26,"o3":53.64,"so2":0.69,"pm2_5":60.61,"pm10":61.31,"nh3":1.38},"dt":1606471200},{"main":{"aqi":5},"components":{"co":397.21,"no":0.04,"no2":1.5,"o3":51.5,"so2":0.67,"pm2_5":57.09,"pm10":57.72,"nh3":1.36},"dt":1606474800},{"main":{"aqi":5},"components":{"co":390.53,"no":0.01,"no2":1.91,"o3":51.5,"so2":0.75,"pm2_5":56.44,"pm10":57.03,"nh3":1.24},"dt":1606478400},{"main":{"aqi":5},"components":{"co":380.52,"no":0,"no2":2.12,"o3":50.78,"so2":0.85,"pm2_5":55.02,"pm10":55.56,"nh3":0.93},"dt":1606482000}]}';
      var jsonDecode = json.decode(jsonString);
      //_airPollutionModel = AirPollutionModel.fromJson(response?.data ?? "");
      _airPollutionModel = AirPollutionModel.fromJson(jsonDecode);
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
    });
      /*PollutionAnalyzerRepository pollutionAnalyzerRepository = PollutionAnalyzerRepository();
      var pollutionResponse = await pollutionAnalyzerRepository.getPollutionData(userPosition.latitude, userPosition.longitude);
      pollutionResponse.fold(
         (exception){
            _logger.log(_TAG, "Exception occurred $exception");
            state = const PollutionAnalyzerEvents.error();
          },
          (response){


          }
      );*/


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