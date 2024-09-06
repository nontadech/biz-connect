// ignore_for_file: unused_result
import 'dart:developer';

import 'package:biz_connect/app/services/local_storage.dart';
import 'package:biz_connect/data/models/event_model.dart';
import 'package:biz_connect/domain/usecases/event_use_case.dart';
import 'package:get/get.dart';

class MyEventController extends GetxController {
  MyEventController(this._eventUseCase);
  final EventUseCase _eventUseCase;
  
  final store = Get.find<LocalStorageService>();
  final event = Rx<EventStat?>(null);
  final RxBool isLoading = false.obs;
  final RxBool isDataEmtpy = false.obs;
  final isLoad = Rx<bool?>(true);

  getMyEventStat() async {
    isDataEmtpy(false);
    try {
      final data = await _eventUseCase.getMyEventStat();
      event(data);
      isLoading(true);
      isLoad(false);
    } catch (error) {
      isDataEmtpy(true);
      log('error ${error.toString()}');
    }
  }
}