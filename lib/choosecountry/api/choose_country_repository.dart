import 'package:airqualityapp/base/application_constants.dart';
import 'package:dartz/dartz.dart';

import 'package:dio/src/response.dart';

import 'package:rxdart/src/utils/error_and_stacktrace.dart';

import '../../base/logger_utils.dart';
import '../../dependencyinjection/injection.dart';
import '../../dio/dio_util.dart';
import 'i_choose_country_service.dart';

class ChooseCountryRepository implements IChooseCountryService{

  final _TAG = "ChooseCountryRepository";
  final _logger = locator<LoggerUtils>();

  @override
  Future<Either<ErrorAndStackTrace, Response?>> getCountryList() async{
    try{
      final response = await DioUtil.coreDioInstance?.get('countries?key=f5a6a1da-4091-4d32-8bc7-9b9c184b0e93');
      return right(response);
    }
    catch(error, stackTrace){
      return left(ErrorAndStackTrace(error, stackTrace));
    }
  }

  @override
  Future<Either<ErrorAndStackTrace, Response?>> getStateList() async{
    try{
      final response = await DioUtil.coreDioInstance?.get('states?country=${ApplicationConstants.kCountryName}&key=f5a6a1da-4091-4d32-8bc7-9b9c184b0e93');
      return right(response);
    }
    catch(error, stackTrace){
      return left(ErrorAndStackTrace(error, stackTrace));
    }
  }

}