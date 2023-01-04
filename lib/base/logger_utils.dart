import 'package:flutter/material.dart';
import 'dart:developer' as developer;
import 'package:injectable/injectable.dart';

@injectable
class LoggerUtils {

  void log(String TAG, String message){
    developer.log(message, name: TAG);
  }

  void logWeb(String TAG, String message){
    debugPrint(TAG + " - " + message);
  }
}