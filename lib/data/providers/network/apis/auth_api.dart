import 'dart:io';
import 'package:biz_connect/data/providers/network/api_endpoint.dart';
import 'package:biz_connect/data/providers/network/api_provider.dart';
import 'package:biz_connect/data/providers/network/api_request_representable.dart';
import 'package:biz_connect/domain/entities/user_entity.dart';

enum AuthType { login, logout, register, forgotPassword }

class AuthAPI implements APIRequestRepresentable {
  final AuthType type;
  String? email;
  String? password;
  UserSignUp? userSignUp;

  AuthAPI._({required this.type, this.password, this.email, this.userSignUp});
  AuthAPI.login(String email, String password) : this._(type: AuthType.login, email: email, password: password);
  AuthAPI.register(UserSignUp userSignUp) : this._(type: AuthType.register, userSignUp: userSignUp);
  AuthAPI.forgotPassword(String email) : this._(type: AuthType.forgotPassword, email: email);


  @override
  get body {
     switch (type) {
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
  Map<String, String> get headers =>
      {HttpHeaders.contentTypeHeader: 'application/json'};

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
