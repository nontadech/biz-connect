import 'package:biz_connect/app/services/local_storage.dart';
import 'package:biz_connect/data/models/user_model.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  static AuthController get call => Get.find();
  AuthController();
  final store = Get.find<LocalStorageService>();
  var isLoggedIn = false.obs;
  User? get user => store.user;

  @override
  void onInit() async {
    super.onInit();
    isLoggedIn.value = store.user != null;
  }


  logout() {
    store.user = null;
    isLoggedIn.value = false;
  }
}
