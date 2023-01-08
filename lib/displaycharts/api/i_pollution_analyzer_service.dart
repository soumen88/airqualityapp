import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:rxdart/rxdart.dart';

abstract class IPollutionAnalyzerService{
  Future<Either<ErrorAndStackTrace, Response?>> getPollutionData(double lat, double lng);
  Future<Either<ErrorAndStackTrace, Response?>> getWeatherForecastData(double lat, double lng);
}