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
  final isLoad = Rx<bool?>(true);
  
  @override
  void onInit() async {
    getMyEventStat();
    super.onInit();
  }

  getMyEventStat() async {
    try {
      final data = await _eventUseCase.getMyEventStat();
      event(data);
      isLoad(false);
    } catch (error) {
      log('error ${error.toString()}');
    }
  }
}