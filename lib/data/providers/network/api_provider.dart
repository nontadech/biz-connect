import 'dart:async';
import 'dart:io';
import 'package:biz_connect/data/models/body_model.dart';
import 'package:biz_connect/data/providers/network/api_request_representable.dart';
import 'package:biz_connect/main.dart';
import 'package:biz_connect/presentation/widgets/widgets.dart';
import 'package:dio/dio.dart' as dio;

class APIProvider {
  static const requestTimeOut = Duration(seconds: 25);
  // final _client = GetConnect(
  //   timeout: requestTimeOut,
  //   allowAutoSignedCert: true,
  //   withCredentials: true,
  // );
  final api = dio.Dio();
  static final _singleton = APIProvider();
  static APIProvider get instance => _singleton;

  Future request(APIRequestRepresentable request) async {
    try {
      /*
          String url, {
    Object? data,
    Map<String, dynamic>? queryParameters,
    CancelToken? cancelToken,
    Options? options,
      */
      final response = await api.request(
        request.url,
        // request.method.string,
        // headers: request.headers,
        queryParameters: request.query,
        data: request.body,
        options: dio.Options(
          contentType: 'application/json',
          method: request.method.string,
          headers: request.headers
        )
      );
      return _returnResponse(response);
    } on TimeoutException catch (_) {
      throw TimeOutException(null);
    } on SocketException {
      throw FetchDataException('No Internet connection');
    }
  }

  dynamic _returnResponse(dio.Response<dynamic> response) {
    var body = Body.fromJson(response.data);
    switch (body.status) {
      case true:
      case 200:
        return response.data;
      default:
      if(body.success){
         return response.data;
      }else{
        popupAPI(NavigationService.navigatorKey.currentContext!, body.message.toString());
        throw BadRequestException(body.message.toString());
      }
    }
  }
}

class AppException implements Exception {
  final String? code;
  final String? message;
  final String? details;

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
