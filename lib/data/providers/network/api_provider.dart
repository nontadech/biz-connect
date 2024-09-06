import 'dart:async';
import 'dart:developer';
import 'dart:io';
import 'package:biz_connect/data/models/body_model.dart';
import 'package:biz_connect/data/providers/network/api_request_representable.dart';
import 'package:biz_connect/main.dart';
import 'package:biz_connect/presentation/controllers/auth/auth_controller.dart';
import 'package:biz_connect/presentation/widgets/widgets.dart';
import 'package:get/get_connect/connect.dart';

class APIProvider {
  static const requestTimeOut = Duration(seconds: 25);
  final _client = GetConnect(
    timeout: requestTimeOut,
    allowAutoSignedCert: true,
    withCredentials: true,
  );
  static final _singleton = APIProvider();
  static APIProvider get instance => _singleton;

  Future request(APIRequestRepresentable request) async {
    try {
      final response = await _client.request(
        request.url,
        request.method.string,
        headers: request.headers,
        query: request.query,
        body: request.body
      );
      log(request.url);
      return _returnResponse(response);
    } on TimeoutException catch (_) {
      throw TimeOutException(null);
    } on SocketException {
      throw FetchDataException('No Internet connection');
    }
  }

  dynamic _returnResponse(Response<dynamic> response) {
    var body = Body.fromJson(response.body);
    switch (body.status) {
      case true:
      case 200:
        return response.body;
      default:
      if(body.success){
         return response.body;
      }else{
        popupAPI(NavigationService.navigatorKey.currentContext!, body.message.toString());
        if(body.status == 401){
          final authC = AuthController.call;
          authC.logout();
        }
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
