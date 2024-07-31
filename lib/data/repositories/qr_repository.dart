import 'package:biz_connect/data/models/qr_model.dart';
import 'package:biz_connect/data/providers/network/apis/qr_api.dart';
import 'package:biz_connect/domain/repositories/qr_repository.dart';

class QRRepositoryIml extends QRRepository {
  @override
  Future<QR> getMyQR() async {
    final response = await QRAPI.getMyQR().request();
    return QR.fromJson(response);
  }
  
  @override
  Future<QRContact> getQRContactInformation(String contactQRCode) async {
     final response = await QRAPI.getQRContactInformation(contactQRCode).request();
    return QRContact.fromJson(response);
  }

}
