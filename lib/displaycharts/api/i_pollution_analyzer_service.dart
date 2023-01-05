import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:rxdart/rxdart.dart';

abstract class IPollutionAnalyzerService{
  Future<Either<ErrorAndStackTrace, Response?>> getPollutionData();
}