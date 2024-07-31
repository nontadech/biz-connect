import 'dart:io';
import 'package:biz_connect/app/services/local_storage.dart';
import 'package:biz_connect/data/providers/network/api_endpoint.dart';
import 'package:biz_connect/data/providers/network/api_provider.dart';
import 'package:biz_connect/data/providers/network/api_request_representable.dart';
import 'package:get/get.dart';

enum MasterType { getInterest, getCategory }

class MasterDataAPI implements APIRequestRepresentable {
  final MasterType type;
  int? eventId;
  MasterDataAPI._({required this.type, this.eventId});
 final store = Get.find<LocalStorageService>();

  MasterDataAPI.getInterest() : this._(type: MasterType.getInterest);
  MasterDataAPI.getCategory() : this._(type: MasterType.getCategory);

  @override
  String get endpoint => APIEndpoint.api;

  @override
  String get path {
    switch (type) {
      case MasterType.getInterest:
        return "/getInterest";
      case MasterType.getCategory:
        return "/getCategory";
      default:
        return "";
    }
  }

  @override
  HTTPMethod get method {
    switch (type) {
      case MasterType.getInterest:
      case MasterType.getCategory:
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
  get body => null;
}
