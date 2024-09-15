import 'package:biz_connect/presentation/pages/layout/view/layout_page.dart';
import 'package:get/get.dart';

class LayoutController extends GetxController {
  LayoutController();
  static LayoutController get call => Get.find();
  final Rx<AppBarPage> selectedPage = AppBarPage.home.obs;
  onItemTapped(page) {
    selectedPage(page);
  }
}

