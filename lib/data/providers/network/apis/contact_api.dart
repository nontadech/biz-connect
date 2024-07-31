import 'dart:io';
import 'package:biz_connect/app/services/local_storage.dart';
import 'package:biz_connect/data/providers/network/api_endpoint.dart';
import 'package:biz_connect/data/providers/network/api_provider.dart';
import 'package:biz_connect/data/providers/network/api_request_representable.dart';
import 'package:get/get.dart';

enum ContactType { getMyContactList, postSaveMyContact }

class ContactAPI implements APIRequestRepresentable {
  final ContactType type;
  final int? contactUserID;
  final store = Get.find<LocalStorageService>();

  ContactAPI._({required this.type, this.contactUserID});
  ContactAPI.getMyContactList() : this._(type: ContactType.getMyContactList);
  ContactAPI.postSaveMyContact(int contactUserID) : this._(type: ContactType.postSaveMyContact, contactUserID: contactUserID);
  

  @override
  String get endpoint => APIEndpoint.api;

  @override
  String get path {
    switch (type) {
      case ContactType.postSaveMyContact:
        return "/postSaveMyContact";
      case ContactType.getMyContactList:
        return "/getMyContactList";
      default:
        return "";
    }
  }

  @override
  HTTPMethod get method {
    switch (type) {
      case ContactType.getMyContactList:
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
    return {
      HttpHeaders.contentTypeHeader: 'application/json'
    };
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
      case ContactType.postSaveMyContact:
        return {
          'contact_user_id': contactUserID.toString()
        };
      default:
        return null;
    }
  }
}
