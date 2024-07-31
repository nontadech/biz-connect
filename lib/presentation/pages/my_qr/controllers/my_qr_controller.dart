// ignore_for_file: unused_result
import 'dart:developer';

import 'package:biz_connect/data/models/qr_model.dart';
import 'package:biz_connect/domain/usecases/qr_use_case.dart';
import 'package:get/get.dart';

class MyQRController extends GetxController {
  MyQRController(this._qrUseCase);
  final QRUseCase _qrUseCase;
  final Rx<QR> qt = const QR().obs;
  


  getQR() async {
    try {
      qt.value = await _qrUseCase.execute();
    } catch (error) {
      log('error ${error.toString()}');
    }
  }
}