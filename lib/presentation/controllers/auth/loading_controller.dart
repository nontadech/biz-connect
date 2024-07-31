import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoadingController extends GetxController {
  static LoadingController get call => Get.find();
  LoadingController();
  final Rx<bool> isLoading = false.obs;
  final Rx<BuildContext> buildContext = Get.context!.obs;
}
