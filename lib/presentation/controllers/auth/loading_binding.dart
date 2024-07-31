import 'package:biz_connect/presentation/controllers/auth/loading_controller.dart';
import 'package:get/get.dart';

class LoadingBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(LoadingController(), permanent: true);

  }
}
