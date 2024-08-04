import 'package:biz_connect/app/services/local_storage.dart';
import 'package:biz_connect/data/models/user_model.dart';
import 'package:biz_connect/domain/usecases/fcm_token_use_case.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  static AuthController get call => Get.find();
  AuthController(this._fcmTokenUseCase);
  final FCMTokenUseCase _fcmTokenUseCase;
  final store = Get.find<LocalStorageService>();
  var isLoggedIn = false.obs;
  User? get user => store.user;

  @override
  void onInit() async {
    super.onInit();
    isLoggedIn.value = store.user != null;
  }

  Future<void> postFCMToken() async {
    await _fcmTokenUseCase.execute();
  }
  logout() {
    store.user = null;
    isLoggedIn.value = false;
  }
}
