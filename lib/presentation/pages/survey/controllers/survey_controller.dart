import 'package:get/get.dart';

class SurveyController extends GetxController {
  SurveyController(page);

  static SurveyController get call => Get.find();
  final Rx<int> numberPage = 1.obs;
  final int maxPage = 7;
  onNext() {
    if(numberPage.value >= maxPage) {
      return;
    }
    numberPage.value = numberPage.value + 1;
  }
  onBack() {
     if(numberPage.value == 1) {
      return;
    }
    numberPage.value = numberPage.value - 1;
  }
}

