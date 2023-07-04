import 'dart:async';
import 'dart:io';

import 'package:get/get_connect/connect.dart';

import 'api_request_representable.dart';

class APIProvider {
  static const requestTimeOut = Duration(seconds: 25);
  final _client = GetConnect(timeout: requestTimeOut);

  static final _singleton = APIProvider();
  static APIProvider get instance => _singleton;

  Future request(APIRequestRepresentable request) async {
    try {
      final response = await _client.request(
        request.url,
        request.method.string,
        headers: request.headers,
        query: request.query,
        body: request.body,
      );
      return _returnResponse(response);
    } on TimeoutException catch (_) {
      throw TimeOutException(null);
    } on SocketException {
      throw FetchDataException('No Internet connection');
    }
  }

  dynamic _returnResponse(Response<dynamic> response) {
    if(response.isOk) {
      return response.body;
    }else if(response.unauthorized) {
      throw UnauthorisedException(response.body.toString());
    }else if((response.statusCode ?? 0) >= 400 && (response.statusCode ?? 0) < 500) {
      throw BadRequestException(response.body.toString());
    }else if((response.statusCode ?? 0) >= 500) {
      throw FetchDataException('Internal Server Error');

    }else if (response.statusText
        ?.contains('SocketException: Failed host lookup:') ??
        false) {
      throw const SocketException("Failed host lookup");
    }else {
      throw FetchDataException(
          'Error occurred while Communication with Server with StatusCode : ${response.statusCode}');
    }

  }
}

class AppException implements Exception {
  final code;
  final message;
  final details;

  AppException({this.code, this.message, this.details});

  @override
  String toString() {
    return "[$code]: $message \n $details";
  }
}

class FetchDataException extends AppException {
  FetchDataException(String? details)
      : super(
          code: "fetch-data",
          message: "Error During Communication",
          details: details,
        );
}

class BadRequestException extends AppException {
  BadRequestException(String? details)
      : super(
          code: "invalid-request",
          message: "Invalid Request",
          details: details,
        );
}

class UnauthorisedException extends AppException {
  UnauthorisedException(String? details)
      : super(
          code: "unauthorised",
          message: "Unauthorised",
          details: details,
        );
}

class InvalidInputException extends AppException {
  InvalidInputException(String? details)
      : super(
          code: "invalid-input",
          message: "Invalid Input",
          details: details,
        );
}

class AuthenticationException extends AppException {
  AuthenticationException(String? details)
      : super(
          code: "authentication-failed",
          message: "Authentication Failed",
          details: details,
        );
}

class TimeOutException extends AppException {
  TimeOutException(String? details)
      : super(
          code: "request-timeout",
          message: "Request TimeOut",
          details: details,
        );
}
