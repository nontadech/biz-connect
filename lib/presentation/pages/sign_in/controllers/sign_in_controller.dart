import 'dart:developer';

import 'package:biz_connect/app/services/local_storage.dart';
import 'package:biz_connect/data/models/user_model.dart';
import 'package:biz_connect/domain/entities/user_entity.dart';
import 'package:biz_connect/domain/usecases/signin_use_case.dart';
import 'package:biz_connect/presentation/controllers/auth/auth_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignInController extends GetxController {
  static SignInController get call => Get.find();
  SignInController(this._signUpUseCase);
  final SignInUseCase _signUpUseCase;
  final store = Get.find<LocalStorageService>();
  var isLoggedIn = false.obs;
  User? get user => store.user;
  GlobalKey<FormState> signInPageFormKey = GlobalKey<FormState>();
  final emailController = TextEditingController(
    text: 'new@jenosize.com'
  );

  final passwordController = TextEditingController(
    text: '123456'
  );
  final authC = AuthController.call;
  
  @override
  void onClose() {
    emailController.dispose();
    passwordController.dispose();
    super.onClose();
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
        authC.isLoggedIn.refresh();
      }
    } catch (error) {
      log('error ${error.toString()}');
    }
  }
}