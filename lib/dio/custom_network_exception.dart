import '../base/logger_utils.dart';
import '../dependencyinjection/injection.dart';
import 'network_error_type_enum.dart';

class CustomNetworkException implements Exception {
  //final Map<String, dynamic>? errorResponseJsonMap;
  final String? errorResponseJsonMap;
  final String? errorMessage;
  final int? errorCode;
  final NetworkErrorType networkErrorType;
  final TAG = "CustomNetworkException";
  final logger = locator<LoggerUtils>();
  bool? isTokenRefreshed = false;

  CustomNetworkException({
    this.errorResponseJsonMap,
    this.errorCode,
    required this.errorMessage,
    required this.networkErrorType,
    this.isTokenRefreshed});

  String toString() {
    return "Error occurred with message $errorMessage and status code $errorCode" ;
  }
}