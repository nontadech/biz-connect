// ignore_for_file: unused_result
import 'dart:developer';

import 'package:biz_connect/app/services/local_storage.dart';
import 'package:biz_connect/data/models/join_model.dart';
import 'package:biz_connect/domain/usecases/join_menu_use_case.dart';
import 'package:get/get.dart';

class JoinController extends GetxController {
  JoinController(this._joinMenuUseCase);
  final JoinMenuUseCase _joinMenuUseCase;
  final store = Get.find<LocalStorageService>();
  final Rx<JoinMenu> menuList = const JoinMenu().obs;


  getMenu(int eventId) async {
    try {
      menuList.value = await _joinMenuUseCase.execute(eventId);

    } catch (error) {
      log('error ${error.toString()}');
    }
  }
}