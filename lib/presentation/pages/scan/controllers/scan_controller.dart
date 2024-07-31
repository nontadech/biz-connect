// ignore_for_file: unused_result
import 'dart:developer';

import 'package:biz_connect/data/models/body_model.dart';
import 'package:biz_connect/data/models/qr_model.dart';
import 'package:biz_connect/domain/usecases/contacts_case.dart';
import 'package:biz_connect/domain/usecases/scan_use_case.dart';
import 'package:biz_connect/main.dart';
import 'package:biz_connect/presentation/controllers/auth/loading_binding.dart';
import 'package:biz_connect/presentation/controllers/auth/loading_controller.dart';
import 'package:biz_connect/presentation/widgets/popup_loading.dart';
import 'package:biz_connect/presentation/widgets/popup_status.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

class ScanController extends GetxController {
  ScanController(this._scanUseCase, this._contactsUseCase);
  final ScanUseCase _scanUseCase;
  final ContactsUseCase _contactsUseCase;
  final Rx<QRContact> qrContact = const QRContact().obs;
  Rx<BuildContext> context = NavigationService.navigatorKey.currentContext!.obs;
  Rx<Barcode>? result;
  Rx<QRViewController>? controller;

  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');
  
  @override
  void onClose() {
    controller!.value.dispose();
    super.onClose();
  }

  getQRContactInformation(String contactQRCode) async {
    try {
      qrContact.value = await _scanUseCase.execute(contactQRCode);
    } catch (error) {
      log('error ${error.toString()}');
    }
  }

  saveContact(int userID) async {
    LoadingBinding().dependencies();
    final loadingC = LoadingController.call;
    try {
      popupLoading(context.value);
      Body result =  await _contactsUseCase.saveContact(userID);
      Navigator.pop(loadingC.buildContext.value);
      popupStatus(
        context.value, 
        PopupStatusType.sucess, 
        message: result.message.toString(),
        onPressed:() { },
      );
    } catch (error) {
      Navigator.pop(loadingC.buildContext.value);
      log('error ${error.toString()}');
    }
  } 
}