import 'dart:io';
import 'package:biz_connect/app/services/local_storage.dart';
import 'package:biz_connect/data/providers/network/api_endpoint.dart';
import 'package:biz_connect/data/providers/network/api_provider.dart';
import 'package:biz_connect/data/providers/network/api_request_representable.dart';
import 'package:biz_connect/domain/entities/user_entity.dart';
import 'package:get/get.dart';

enum AuthType { login, logout, register, forgotPassword, postFCMToken }

class AuthAPI implements APIRequestRepresentable {
  final AuthType type;
  final store = Get.find<LocalStorageService>();
  String? email;
  String? password;
  UserSignUp? userSignUp;

  AuthAPI._({required this.type, this.password, this.email, this.userSignUp});
  AuthAPI.login(String email, String password) : this._(type: AuthType.login, email: email, password: password);
  AuthAPI.register(UserSignUp userSignUp) : this._(type: AuthType.register, userSignUp: userSignUp);
  AuthAPI.forgotPassword(String email) : this._(type: AuthType.forgotPassword, email: email);
  AuthAPI.postFCMToken() : this._(type: AuthType.postFCMToken);


  @override
  get body {
     switch (type) {
      case AuthType.postFCMToken:
        return {
          'fcm_token': store.setting!.apnsToken.toString(),
          'user_id': store.user!.data!.attendee!.id.toString(),
          'device_id': '',
        };
      case AuthType.login:
        return {
          'email': email,
          'password': password,
        };
      case AuthType.register:
        return {
          'first_name': userSignUp!.first_name,
          'last_name': userSignUp!.last_name,
          'password': userSignUp!.password,
          'email': userSignUp!.email,
          'phone': userSignUp!.phone,
          'company': userSignUp!.company,
          'position': userSignUp!.position,
          'categorys': userSignUp!.categorys!.isEmpty ? null : userSignUp!.categorys,
          'interests': userSignUp!.interests!.isEmpty ? null : userSignUp!.interests,
        };
      default:
        return null;
    }
  }

  @override
  String get endpoint => APIEndpoint.api;

  @override
  String get path {
    switch (type) {
      case AuthType.postFCMToken:
        return "/postFCMToken";
      case AuthType.forgotPassword:
        return "/forgotpassword";
      case AuthType.register:
        return "/UserSignup";
      case AuthType.login:
        return "/UserLogin";
      default:
        return "";
    }
  }

  @override
  HTTPMethod get method {
    switch (type) {
      case AuthType.forgotPassword:
        return HTTPMethod.get;
      default:
        return HTTPMethod.post;
    }
  }

  @override
  Map<String, String> get headers {
    if (store.user == null) {
      return {
        HttpHeaders.contentTypeHeader: 'application/json',
      };
    }
    return {
      HttpHeaders.contentTypeHeader: 'application/json',
      HttpHeaders.authorizationHeader: 'Bearer ${store.user!.data!.attendee!.api_token}'
    };
  }


  @override
  Map<String, String> get query {
     switch (type) {
      case AuthType.forgotPassword:
        return {
          HttpHeaders.contentTypeHeader: 'application/json',
          'email': email.toString(),
        };
      default:
        return {HttpHeaders.contentTypeHeader: 'application/json'};
    }
  }

  @override
  Future request() {
    return APIProvider.instance.request(this);
  }

  @override
  String get url => endpoint + path;
}
