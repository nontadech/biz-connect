// ignore_for_file: unused_result

import 'dart:developer';

import 'package:biz_connect/data/models/news_model.dart';
import 'package:biz_connect/domain/usecases/news_use_case.dart';
import 'package:get/get.dart';

class EventCalendarController extends GetxController {
  EventCalendarController(this._newsUseCase);
  final NewsUseCase _newsUseCase;

  var news = Rx<News?>(null);
  
  @override
  void onInit() async {
    getEvent();
    super.onInit();
  }

  fetchData() async {
    await getEvent();
  }

  getEvent() async {
    try {
      final data = await _newsUseCase.execute();
      news(data);
   
    } catch (error) {
      log('error ${error.toString()}');
    }
  }

  
}