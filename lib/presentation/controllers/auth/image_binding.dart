import 'package:biz_connect/presentation/controllers/auth/image_controller.dart';
import 'package:get/get.dart';

class ImageBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(ImageController(), permanent: true);

  }
}
