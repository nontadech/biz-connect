import 'dart:io';
import 'package:biz_connect/app/services/local_storage.dart';
import 'package:biz_connect/data/providers/network/api_endpoint.dart';
import 'package:biz_connect/data/providers/network/api_provider.dart';
import 'package:biz_connect/data/providers/network/api_request_representable.dart';
import 'package:biz_connect/domain/entities/event_entity.dart';
import 'package:biz_connect/domain/entities/policy_entity.dart';
import 'package:get/get.dart';

enum PolicyType { getPolicy, savePolicy, getPolicyDetail, postEnroll }

class PolicyAPI implements APIRequestRepresentable {
  final PolicyType type;
  final TermConditionType? termConditionType;
  final bool? isAccept;
  final String? image;
  PolicyAPI._({required this.type, this.termConditionType, this.isAccept, this.image});
 final store = Get.find<LocalStorageService>();

  PolicyAPI.getPolicy() : this._(type: PolicyType.getPolicy);
  PolicyAPI.getPolicyDetail(TermConditionType termConditionType) : this._(type: PolicyType.getPolicyDetail, termConditionType: termConditionType);
  PolicyAPI.savePolicy(TermConditionType termConditionType, bool isAccept) : this._(type: PolicyType.savePolicy, termConditionType: termConditionType, isAccept: isAccept);
  PolicyAPI.postEnroll(String image) : this._(type: PolicyType.postEnroll, image: image);
  

  @override
  String get endpoint => APIEndpoint.api;

  @override
  String get path {
    switch (type) {
      case PolicyType.postEnroll:
        return "/postEnroll";
      case PolicyType.savePolicy:
        return "/savePolicy";
      case PolicyType.getPolicyDetail:
        return "/termAndCondition";
      case PolicyType.getPolicy:
        return "/getPolicy";
      default:
        return "";
    }
  }

  @override
  HTTPMethod get method {
    switch (type) {
      case PolicyType.getPolicyDetail:
      case PolicyType.getPolicy:
        return HTTPMethod.get;
      default:
        return HTTPMethod.post;
    }
  }

  @override
  Map<String, String> get headers {
       switch (type) {
        case PolicyType.postEnroll:
          if (store.user == null) {
            return {
              HttpHeaders.contentTypeHeader: 'application/json',
            };
          }
          return {
            HttpHeaders.contentTypeHeader: 'application/json',
            HttpHeaders.authorizationHeader: 'Bearer ${store.user!.data!.attendee!.api_token}'
          };
        default:
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
  }

  @override
  Map<String, String> get query {
     switch (type) {
      case PolicyType.getPolicyDetail:
        return {
          HttpHeaders.contentTypeHeader: 'application/json',
          "type": termConditionType == TermConditionType.pdpa ? "pdpa" : "recondition",
          'lang': store.setting!.language == LangType.th ? 'th' : 'en'
        };
      default:
        return {
          HttpHeaders.contentTypeHeader: 'application/json',
        };
    }
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
      case PolicyType.postEnroll:
        return {
           HttpHeaders.contentTypeHeader: 'multipart/form-data',
          "user_id": store.user!.data!.attendee!.id.toString(),
          "image_profile": image!,
          "_token": store.user!.data!.attendee!.api_token
      };
      case PolicyType.savePolicy:
        return {
          "type": termConditionType == TermConditionType.pdpa ? "pdpa" : "recondition",
          'action': isAccept! ? '1' : '0'
        };
      default:
        return null;
    }
  }
}
