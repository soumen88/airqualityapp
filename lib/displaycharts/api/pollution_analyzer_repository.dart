import 'package:airqualityapp/displaycharts/api/i_pollution_analyzer_service.dart';
import 'package:dartz/dartz.dart';

import 'package:dio/src/response.dart';

import 'package:rxdart/src/utils/error_and_stacktrace.dart';

import '../../base/logger_utils.dart';
import '../../dependencyinjection/injection.dart';
import '../../dio/dio_util.dart';


class PollutionAnalyzerRepository implements IPollutionAnalyzerService {

  final _TAG = "PollutionAnalyzerRepository";
  final _logger = locator<LoggerUtils>();

  @override
  Future<Either<ErrorAndStackTrace, Response?>> getPollutionData() async{
    try{
      final response = await DioUtil.coreDioOpenWeatherInstance?.get('data/2.5/air_pollution/forecast?lat=19.191&lon=72.944&appid=3a8b48c75d62e585e1381e4bebc2ee7f');
      return right(response);
    }
    catch(error, stackTrace){
      return left(ErrorAndStackTrace(error, stackTrace));
    }
  }

}