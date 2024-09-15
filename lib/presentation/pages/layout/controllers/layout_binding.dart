
import 'package:biz_connect/presentation/pages/layout/controllers/layout_controller.dart';
import 'package:get/get.dart';

class LayoutBinding extends Bindings {
  @override
  void dependencies() {
     Get.put(LayoutController(), permanent: true);
  }
}