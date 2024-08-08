import 'package:biz_connect/presentation/pages/pdf/controllers/controllers.dart';
import 'package:get/get.dart';

class PDFBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(PDFController(), permanent: true);
  }
}