import 'dart:developer';

import 'package:biz_connect/data/models/join_model.dart';
import 'package:biz_connect/domain/usecases/support_use_case.dart';
import 'package:get/get.dart';

class SupportController extends GetxController {
  SupportController(this._supportUseCase);
  final SupportUseCase _supportUseCase;
  final Rx<Partners> partners = const Partners().obs;
  final RxBool isLoading = false.obs;
  final RxBool isDataEmtpy = false.obs;

  getPartners(int eventId) async {
     isLoading(false);
     isDataEmtpy(false);
    try {
      partners.value = await _supportUseCase.execute(eventId);
      isLoading(true);
    } catch (error) {
      isDataEmtpy(true);
      log('error ${error.toString()}');
    }
  }
}