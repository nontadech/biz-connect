import 'dart:developer';

import 'package:biz_connect/app/services/local_storage.dart';
import 'package:biz_connect/data/models/user_model.dart';
import 'package:biz_connect/domain/usecases/fcm_token_use_case.dart';
import 'package:biz_connect/presentation/pages/home/controllers/controllers.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  static AuthController get call => Get.find();
  AuthController(this._fcmTokenUseCase);
  final FCMTokenUseCase _fcmTokenUseCase;
  final store = Get.find<LocalStorageService>();
  var isLoggedIn = false.obs;
  User? get user => store.user;
  String? get apnsToken => store.setting!.apnsToken;
  final RxString apiToken = ''.obs;

  @override
  void onInit() async {
    super.onInit();
    isLoggedIn.value = store.user != null;
    if(store.user != null){
       apiToken.value = store.user!.data!.attendee!.api_token!;
    }
  }

  Future<void> postFCMToken() async {
    try {
      if(apnsToken != '' && apnsToken != null){
        await _fcmTokenUseCase.execute();
      }
    } catch (e) {
      log(e.toString());
    }
  }
  logout() {
    store.user = null;
    isLoggedIn.value = false;
    final homeC = HomeController.call;
    homeC.fetchData();
  }
}
