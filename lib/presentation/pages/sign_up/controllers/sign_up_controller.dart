import 'dart:developer';

import 'package:biz_connect/app/services/local_storage.dart';
import 'package:biz_connect/data/models/user_model.dart';
import 'package:biz_connect/domain/entities/event_entity.dart';
import 'package:biz_connect/domain/entities/setting_entity.dart';
import 'package:biz_connect/domain/entities/user_entity.dart';
import 'package:biz_connect/domain/usecases/signup_use_case.dart';
import 'package:biz_connect/main.dart';
import 'package:biz_connect/presentation/controllers/auth/auth_controller.dart';
import 'package:biz_connect/presentation/controllers/auth/loading_binding.dart';
import 'package:biz_connect/presentation/controllers/auth/loading_controller.dart';
import 'package:biz_connect/presentation/pages/my_account/controllers/controllers.dart';
import 'package:biz_connect/presentation/pages/profile/controllers/controllers.dart';
import 'package:biz_connect/presentation/widgets/widgets.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpController extends GetxController {
  static SignUpController get call => Get.find();
  SignUpController(this._signUpUseCase);
  final SignUpUseCase _signUpUseCase;
  final store = Get.find<LocalStorageService>();
  GlobalKey<FormState> signUpPageFormKey = GlobalKey<FormState>();
  final firstNameController = TextEditingController(
    // text:  'นนทเดช'
  );
  final lastNameController = TextEditingController(
    // text:  'จูประเสริฐ'
  );
  final emailController = TextEditingController(
    // text:  'non_tadech@hotmail.com'
  );
  final mobilePhoneController = TextEditingController(
    // text:  '0812345678'
  );
  final positionController = TextEditingController(
    // text:  'Developer'
  );
  final companyController = TextEditingController(
    // text:  'Biz Connect'
  );
  final passwordController = TextEditingController(
    // text:  '123456'
  );
  final confirmPasswordController = TextEditingController(
    // text:  '123456'
  );
  RxList<dynamic> userCategory = [].obs;
  RxList<dynamic> userInterest = [].obs;
  Rx<BuildContext> context = NavigationService.navigatorKey.currentContext!.obs;

  Setting? get setting => store.setting;
  Attendee? get user => store.user!.data!.attendee;
  
  Rx<Attendee> attendee = const Attendee().obs;
  final lang = LangType.en.obs;
  final Rx<bool> isNotification = false.obs;
  final Rx<bool> isContact = false.obs;
  final authC = AuthController.call;
  final Rx<bool> checkDisabled = true.obs;

  clear() {
    firstNameController.clear();
    lastNameController.clear();
    emailController.clear();
    mobilePhoneController.clear();
    positionController.clear();
    companyController.clear();
    userCategory.clear();
    userInterest.clear();
    passwordController.clear();
    confirmPasswordController.clear();
    isNotification.value = false;
    isContact.value = false;
  }

  @override
  void onClose() {
    emailController.dispose();
    lastNameController.dispose();
    firstNameController.dispose();
    mobilePhoneController.dispose();
    positionController.dispose();
    companyController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    super.onClose();
  }

  checkFrom() async {
    if(
      emailController.value.text.isNotEmpty 
      && EmailValidator.validate(emailController.value.text)
      && firstNameController.text.isNotEmpty
      && lastNameController.text.isNotEmpty
      && mobilePhoneController.text.isNotEmpty
      && positionController.text.isNotEmpty
      && companyController.text.isNotEmpty
      && passwordController.text.isNotEmpty
      && confirmPasswordController.text.isNotEmpty
    ){
      checkDisabled(false);
    }else{
      checkDisabled(true);
    }
  }
  
  Future<void> userSignUp() async {
    LoadingBinding().dependencies();
    final loadingC = LoadingController.call;
    try {
      if (signUpPageFormKey.currentState!.validate()) {
        popupLoading(context.value);
        final userSignUp = UserSignUp(
          first_name: firstNameController.text,
          last_name: lastNameController.text,
          email: emailController.text,
          phone: mobilePhoneController.text,
          company: companyController.text,
          position: positionController.text,
          password: passwordController.text,
          categorys: userCategory.map((e) => UserCategory(cate_id: int.parse(e['value']), cate_name: e['text'])).toList(),
          interests: userInterest.map((e) => UserInterest(interest_id: int.parse(e['value']), interest_name: e['text'])).toList(),
        );
        UserAttendee user = await _signUpUseCase.execute(userSignUp);
        store.user = User (
          data: UserData(
            attendee: user.data,
          )
        );
        ProfileBinding().dependencies();
        final profileC = ProfileController.call;
        profileC.fechData(user.data!);
        MyAccountBinding().dependencies();
        final myAccountC = MyAccountController.call;        
        myAccountC.getProfile();
        Navigator.pop(loadingC.buildContext.value);
        popupStatus(
          NavigationService.navigatorKey.currentContext!, 
          PopupStatusType.sucess, 
          message: user.message.toString(),
          onPressed:() {
            authC.isLoggedIn.value = true;
            authC.isLoggedIn.refresh();
          },
        );
      }
    } catch (error) {
      // Navigator.pop(loadingC.buildContext.value);
      log('error ${error.toString()}');
    }
  }

  Future<void> changeLanguage(LangType langType) async {
    store.setting = Setting(language: langType);
    lang(langType);
    EasyLocalization.of(NavigationService.navigatorKey.currentContext!)!.setLocale(langType == LangType.th ? const Locale('th', 'TH') : const Locale('en', 'US'));
    Get.updateLocale(langType == LangType.th ? const Locale('th', 'TH') : const Locale('en', 'US'));
  }
}