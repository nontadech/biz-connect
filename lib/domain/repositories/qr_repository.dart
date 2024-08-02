import 'package:biz_connect/data/models/qr_model.dart';

abstract class QRRepository {
  Future<QR> getMyQR();
  Future<QRContact> getQRContactInformation(String contactQRCode);
  Future<QRPrivateEvent> getQRPrivateEvent(String contactQRCode);
}
