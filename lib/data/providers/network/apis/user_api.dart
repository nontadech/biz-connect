import 'dart:developer';
import 'dart:io';
import 'package:biz_connect/app/services/local_storage.dart';
import 'package:biz_connect/data/providers/network/api_endpoint.dart';
import 'package:biz_connect/data/providers/network/api_provider.dart';
import 'package:biz_connect/data/providers/network/api_request_representable.dart';
import 'package:biz_connect/domain/entities/user_entity.dart';
import 'package:get/get.dart';

enum UserType { userEdit, setImageProfile, userSignUp, deleteAccount}

class UserAPI implements APIRequestRepresentable {
  final UserType type;
  final UserEdit? userEdit;
  final String? image;
  final store = Get.find<LocalStorageService>();
  
  UserAPI._({required this.type, this.userEdit, this.image});

  UserAPI.userEdit(UserEdit userEdit) : this._(type: UserType.userEdit, userEdit: userEdit);

  UserAPI.setImageProfile(String image) : this._(type: UserType.setImageProfile, image: image);

  UserAPI.deleteAccount() : this._(type: UserType.deleteAccount);

  @override
  String get endpoint => APIEndpoint.api;

  @override
  String get path {
    switch (type) {
      case UserType.deleteAccount:
        return "/deleteAccount";
      case UserType.userEdit:
        return "/UserEdit";
      case UserType.setImageProfile:
        return "/setUserImageProfile";
      default:
        return "";
    }
  }

  @override
  HTTPMethod get method {
    return HTTPMethod.post;
  }

  @override
  Map<String, String> get headers {
    if (store.user == null) {
      return {
        HttpHeaders.contentTypeHeader: 'application/json',
      };
    }
    log('Bearer ${store.user!.data!.attendee!.api_token}');
    return {
      HttpHeaders.contentTypeHeader: 'application/json',
      HttpHeaders.authorizationHeader: 'Bearer ${store.user!.data!.attendee!.api_token}'
    };
  }

  @override
  Map<String, String> get query {
    return {HttpHeaders.contentTypeHeader: 'application/json'};
  }

  @override
  Future request() {
    return APIProvider.instance.request(this);
  }

  @override
  String get url => endpoint + path;
  
  @override
  get body {
     switch (type) {
      case UserType.userEdit:
        return {
          'first_name': userEdit!.first_name,
          'last_name': userEdit!.last_name,
          'email': userEdit!.email,
          'phone': userEdit!.phone,
          'company': userEdit!.company,
          'position': userEdit!.position,
          'status_contact': userEdit!.status_contact,
          'api_token': store.user!.data!.attendee!.api_token,
          'categorys': userEdit!.categorys,
          'interests': userEdit!.interests,
          'status_notification': userEdit!.status_notification
        };
      case UserType.setImageProfile:
        return {
          'image_profile': image!,
          'user_id': store.user!.data!.attendee!.id.toString()
        };
      default:
        return null;
    }
  }
}
