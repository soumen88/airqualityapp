import 'package:dio/dio.dart';

import '../base/logger_utils.dart';
import '../dependencyinjection/injection.dart';
import 'app_interceptor.dart';

class DioUtil{
  static final DioUtil _instance = DioUtil._init();
  static Dio? _coreDioInstance = DioUtil.createCoreDioInstance();
  static Dio? _coreDioMLInstance = DioUtil.createMLDioInstance();
  static Dio? _coreDioHerokuMLInstance = DioUtil.createMLDioInstanceHeroku();

  static Dio? get coreDioInstance => _coreDioInstance;
  static Dio? get coreDioMLInstance => _coreDioMLInstance;
  static Dio? get coreDioHerokuMLInstance => _coreDioHerokuMLInstance;

  Dio? coreDio;

  DioUtil._init();


  static Dio? createCoreDioInstance() {
    final _logger = locator<LoggerUtils>();
    final _TAG = "DioUtil";
    _instance.coreDio = Dio();
    final baseOptions = BaseOptions(
      baseUrl: 'http://api.airvisual.com/v2/',
    );

    final logInterceptor = LogInterceptor(
        error: true,
        requestHeader: true,
        requestBody: true,
        responseBody: true,
        request: true,
        responseHeader: true,
        logPrint: (object){
          _logger.log(_TAG, object.toString());
          print(object);
        }
    );

    _instance.coreDio = Dio(baseOptions)..interceptors.addAll([
      logInterceptor,
      AppInterceptor(),
    ]);

    return _instance.coreDio!;
  }

  static Dio? createMLDioInstance() {
    final _logger = locator<LoggerUtils>();
    final _TAG = "DioUtil";
    _instance.coreDio = Dio();
    final baseOptions = BaseOptions(
      baseUrl: 'https://my-api.plantnet.org/v2/identify/',
    );

    final logInterceptor = LogInterceptor(
        error: true,
        requestHeader: true,
        requestBody: true,
        responseBody: true,
        request: true,
        responseHeader: true,
        logPrint: (object){
          _logger.log(_TAG, object.toString());
          print(object);
        }
    );

    _instance.coreDio = Dio(baseOptions)..interceptors.addAll([
      logInterceptor,
      AppInterceptor(),
    ]);

    return _instance.coreDio!;
  }

  static Dio? createMLDioInstanceHeroku() {
    final _logger = locator<LoggerUtils>();
    final _TAG = "DioUtil";
    _instance.coreDio = Dio();
    final baseOptions = BaseOptions(
      baseUrl: 'https://plant-disease-detector-pytorch.herokuapp.com/',
    );

    final logInterceptor = LogInterceptor(
        error: true,
        requestHeader: true,
        requestBody: true,
        responseBody: true,
        request: true,
        responseHeader: true,
        logPrint: (object){
          _logger.log(_TAG, object.toString());
          print(object);
        }
    );

    _instance.coreDio = Dio(baseOptions)..interceptors.addAll([
      logInterceptor,
      AppInterceptor(),
    ]);

    return _instance.coreDio!;
  }





}