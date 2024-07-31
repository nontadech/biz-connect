import 'dart:io';
import 'package:biz_connect/app/services/local_storage.dart';
import 'package:biz_connect/data/providers/network/api_endpoint.dart';
import 'package:biz_connect/data/providers/network/api_provider.dart';
import 'package:biz_connect/data/providers/network/api_request_representable.dart';
import 'package:get/get.dart';

enum QRType { getMyQR, getQRContactInformation }

class QRAPI implements APIRequestRepresentable {
  final QRType type;
  final String? contactQRCode;
  final store = Get.find<LocalStorageService>();

  QRAPI._({required this.type, this.contactQRCode});
  QRAPI.getMyQR() : this._(type: QRType.getMyQR);
  QRAPI.getQRContactInformation(String contactQRCode) : this._(type: QRType.getQRContactInformation, contactQRCode: contactQRCode);
  
  @override
  get body => null;
  

  @override
  String get endpoint => APIEndpoint.api;

  @override
  String get path {
    switch (type) {
      case QRType.getMyQR:
        return "/getMyQR";
      case QRType.getQRContactInformation:
        return "/getQRContactInformation";
      default:
        return "";
    }
  }

  @override
  HTTPMethod get method {
    switch (type) {
      case QRType.getMyQR:
      case QRType.getQRContactInformation:
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
      case QRType.getQRContactInformation:
        return  {
          HttpHeaders.contentTypeHeader: 'application/json',
          'contact_qr_code': contactQRCode!
        };
      default:
        return  {HttpHeaders.contentTypeHeader: 'application/json'};
    }
  }
   


  @override
  Future request() {
    return APIProvider.instance.request(this);
  }

  @override
  String get url => endpoint + path;
}
