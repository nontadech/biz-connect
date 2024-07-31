import 'dart:developer';

import 'package:biz_connect/app/services/local_storage.dart';
import 'package:biz_connect/data/models/user_model.dart';
import 'package:biz_connect/domain/usecases/forgot_use_case.dart';
import 'package:biz_connect/main.dart';
import 'package:biz_connect/presentation/controllers/auth/auth_controller.dart';
import 'package:biz_connect/presentation/controllers/auth/loading_binding.dart';
import 'package:biz_connect/presentation/controllers/auth/loading_controller.dart';
import 'package:biz_connect/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';

class ForgotController extends GetxController {
  static ForgotController get call => Get.find();
  ForgotController(this._forgotInUseCase);
  final ForgotInUseCase _forgotInUseCase;
  final store = Get.find<LocalStorageService>();
  var isLoggedIn = false.obs;
  User? get user => store.user;
  GlobalKey<FormState> forgotPageFormKey = GlobalKey<FormState>();
  Rx<BuildContext> context = NavigationService.navigatorKey.currentContext!.obs;
  final emailController = TextEditingController(
    text: 'new@jenosize.com'
  );

  final authC = AuthController.call;
  
  @override
  void onClose() {
    emailController.dispose();
    super.onClose();
  }

  forgotPassword() async {
    LoadingBinding().dependencies();
    final loadingC = LoadingController.call;
    // try {
      if (forgotPageFormKey.currentState!.validate()) {
        popupLoading(context.value);
        final result = await _forgotInUseCase.execute(emailController.value.text);
        Navigator.pop(loadingC.buildContext.value);
        popupStatus(
          NavigationService.navigatorKey.currentContext!, 
          PopupStatusType.sucess, 
          message: result.message.toString(),
          onPressed:() {
            context.value.pop();
            log('1');
          },
        );
      }
    // } catch (error) {
    //   log('error ${error.toString()}');
    // }
  }
}