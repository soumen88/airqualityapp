import 'dart:io';

import 'package:dio/dio.dart';
import '../base/application_constants.dart';
import '../base/logger_utils.dart';
import '../dependencyinjection/injection.dart';
import 'custom_network_exception.dart';
import 'network_error_type_enum.dart';

/// Interceptor for the app
class AppInterceptor extends Interceptor {
  final TAG = "AppInterceptor";
  final _logger = locator<LoggerUtils>();


  @override
  void onResponse(Response<dynamic> response, ResponseInterceptorHandler handler) {
    if(isNullEmptyOrFalse(response.data)){
      handler.next(response);
      return;
    }
    final message = response.data["message"];
    handler.next(response);
  }

  @override
  void onError(DioError error, ErrorInterceptorHandler handler) async {
    // Check if error is of time out error
    if (error.type == DioErrorType.sendTimeout ||
        error.type == DioErrorType.connectTimeout ||
        error.type == DioErrorType.receiveTimeout) {
      error.error = CustomNetworkException(
        errorMessage: 'Could not connect with server. Please try again.',
        networkErrorType: NetworkErrorType.SERVER_CONNECTION_ERROR,
        errorCode: error.response?.statusCode,
        errorResponseJsonMap: error.response?.data,
      );
    } // Check if the error is regarding no internet connection.
    else if (error.type == DioErrorType.other && error.error is SocketException) {
      error.error = CustomNetworkException(
        errorMessage: 'No internet connection',
        networkErrorType: NetworkErrorType.NO_INTERNET,
        errorCode: error.response?.statusCode,
        errorResponseJsonMap: error.response?.data,
      );
    }

    // Check if server responded with non-success status code.
    // In this case, we will check if we got a specific error
    // from API to display to the user.
    else if (error.type == DioErrorType.response) {
      await _getErrorObject(error.response)
          .then((errorObj){
        error.error = errorObj;
      })
          .catchError((errorObj){
        error.error = errorObj;
      });
    }
    _logger.log(TAG, "Rejecting because of error");
    handler.reject(error);
  }

  /// Parses the response to get the error object if any
  /// from the API response based on status code.
  Future<CustomNetworkException?> _getErrorObject(Response? response) async {
    final responseData = response?.data;
    if(response != null){
      switch(response.statusCode){
        case 403:{
          var customNetworkException = CustomNetworkException(
            errorMessage:
            responseData['message'] ?? ApplicationConstants.kWentWrongMessage,
            errorCode: response.statusCode,
            networkErrorType: NetworkErrorType.RESPONSE_ERROR,
            errorResponseJsonMap: null,
          );
          return customNetworkException;
        }
        case 401:{
          _logger.log(TAG,
              "Probably token has expired and we would refresh it from server");

          break;
        }
        case 403:{
          _logger.log(
              TAG, "You are trying to reach a endpoint which does not exist");
          var customNetworkException = CustomNetworkException(
            errorMessage: ApplicationConstants.k404Message,
            errorCode: response.statusCode,
            networkErrorType: NetworkErrorType.INVALID_ENDPOINT_ERROR,
            errorResponseJsonMap: null,
          );
          return customNetworkException;
        }


        default:
          if (responseData != null && responseData is Map) {
            _logger.log(TAG,
                "Inside response data is map and status code ${response.statusCode}");
            var customNetworkException = CustomNetworkException(
              errorMessage: responseData['message'] ?? ApplicationConstants.kWentWrongMessage,
              errorCode: response.statusCode,
              networkErrorType: NetworkErrorType.RESPONSE_ERROR,
              errorResponseJsonMap: null,
            );
            return customNetworkException;
          }
          else {
            _logger.log(TAG, "Inside error response when no status code matches");
            var customNetworkException = CustomNetworkException(
              errorMessage:
              'Error occurred while Communication with Server with StatusCode : ${response.statusCode}',
              networkErrorType: NetworkErrorType.RESPONSE_ERROR,
              errorCode: response.statusCode,
              errorResponseJsonMap: null,
            );
            return customNetworkException;
          }
      }
    }
    return null;
  }


}

bool isNullEmptyOrFalse(dynamic o) {
  if (o is Map<String, dynamic> || o is List<dynamic>) {
    return o == null || o.length == 0;
  }
  return o == null || false == o || "" == o;
}