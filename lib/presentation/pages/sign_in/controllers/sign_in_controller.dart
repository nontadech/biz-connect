import 'dart:developer';

import 'package:biz_connect/app/services/local_storage.dart';
import 'package:biz_connect/data/models/user_model.dart';
import 'package:biz_connect/domain/entities/user_entity.dart';
import 'package:biz_connect/domain/usecases/signin_use_case.dart';
import 'package:biz_connect/main.dart';
import 'package:biz_connect/presentation/controllers/auth/auth_controller.dart';
import 'package:biz_connect/presentation/pages/layout/controllers/layout_controller.dart';
import 'package:biz_connect/presentation/pages/layout/view/layout_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';

class SignInController extends GetxController {
  static SignInController get call => Get.find();
  SignInController(this._signUpUseCase);
  final SignInUseCase _signUpUseCase;
  final store = Get.find<LocalStorageService>();
  Rx<BuildContext> context = NavigationService.navigatorKey.currentContext!.obs;
  var isLoggedIn = false.obs;
  User? get user => store.user;
  GlobalKey<FormState> signInPageFormKey = GlobalKey<FormState>();
  final Rx<TextEditingController> emailController = TextEditingController(
    text: 'new@jenosize.com'
  ).obs;
  final Rx<TextEditingController> passwordController = TextEditingController(
    text: '123456'
  ).obs;
  final authC = AuthController.call;
  final Rx<bool> checkDisabled = true.obs;
  
  @override
  void onClose() {
    emailController.value.dispose();
    passwordController.value.dispose();
    super.onClose();
  }
  
  checkFrom() async {
    if(emailController.value.text.isNotEmpty && passwordController.value.text.isNotEmpty){
      checkDisabled(false);
    }else{
      checkDisabled(true);
    }
  }

  signInWith() async {
    try {
      if (signInPageFormKey.currentState!.validate()) {
        final user = await _signUpUseCase.execute(UserLogin(
          email: emailController.value.text,
          password: passwordController.value.text
        ));
        store.user = user;
        authC.isLoggedIn.value = true;
        final layoutC = LayoutController.call;
        context.value.pop();
        layoutC.onItemTapped(AppBarPage.home);
      }
    } catch (error) {
      log('error ${error.toString()}');
    }
  }
}