import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:rxdart/rxdart.dart';

abstract class IChooseCountryService{
  Future<Either<ErrorAndStackTrace, Response?>> getCountryList();
  Future<Either<ErrorAndStackTrace, Response?>> getStateList();
}