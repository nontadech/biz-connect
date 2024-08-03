import 'dart:developer';

import 'package:biz_connect/data/models/qr_model.dart';
import 'package:biz_connect/domain/usecases/private_event_use_case.dart';
import 'package:biz_connect/main.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
class PrivateEventController extends GetxController {
  PrivateEventController(this._privateEventUseCase);
  final PrivateEventUseCase _privateEventUseCase;
  static PrivateEventController get call => Get.find();
  GlobalKey<FormState> privateEventFormKey = GlobalKey<FormState>();
  final qrController = TextEditingController();

  final isLoading = true.obs;

  final Rx<QRPrivateEvent> qrPrivateEvent = const QRPrivateEvent().obs;
  Rx<BuildContext> context = NavigationService.navigatorKey.currentContext!.obs;

  @override
  void onClose() {
    qrController.dispose();
    super.onClose();
  }


  getPriveEvent() async {
    try {
      if (privateEventFormKey.currentState!.validate()) {
        isLoading(true);
        qrPrivateEvent.value = await _privateEventUseCase.execute('ep--${qrController.value.text}');
        isLoading(false);
        Navigator.pop(context.value);
      }
    } catch (error) {
      isLoading(true);
      log('error ${error.toString()}');
    }

  }
}