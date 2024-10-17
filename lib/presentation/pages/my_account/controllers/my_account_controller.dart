import 'dart:developer';

import 'package:biz_connect/app/services/local_storage.dart';
import 'package:biz_connect/data/models/user_model.dart';
import 'package:biz_connect/domain/entities/event_entity.dart';
import 'package:biz_connect/domain/entities/setting_entity.dart';
import 'package:biz_connect/domain/entities/user_entity.dart';
import 'package:biz_connect/domain/usecases/delete_account_use_case.dart';
import 'package:biz_connect/domain/usecases/profile_use_case.dart';
import 'package:biz_connect/main.dart';
import 'package:biz_connect/presentation/controllers/auth/loading_binding.dart';
import 'package:biz_connect/presentation/controllers/auth/loading_controller.dart';
import 'package:biz_connect/presentation/pages/profile/controllers/profile_controller.dart';
import 'package:biz_connect/presentation/widgets/widgets.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';

class MyAccountController extends GetxController {
  static MyAccountController get call => Get.find();
  MyAccountController(this._profileUseCase, this._deleteAccountUseCase);
  final ProfileUseCase _profileUseCase;
  final DeleteAccountUseCase _deleteAccountUseCase;
  final store = Get.find<LocalStorageService>();
  final profileC = Get.find<ProfileController>();
  GlobalKey<FormState> myAccountFormKey = GlobalKey<FormState>();
  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();
  final emailController = TextEditingController();
  final mobilePhoneController = TextEditingController();
  final positionController = TextEditingController();
  final companyController = TextEditingController();
  RxList<dynamic> userCategory = [].obs;
  RxList<dynamic> userInterest = [].obs;
  Rx<BuildContext> context = NavigationService.navigatorKey.currentContext!.obs;

  Setting? get setting => store.setting;
  Attendee? get user => store.user!.data!.attendee;
  
  Rx<Attendee> attendee = const Attendee().obs;
  final lang = LangType.en.obs;
  final Rx<bool> isNotification = false.obs;
  final Rx<bool> isContact = false.obs;
  @override
  void onInit() async {
    getProfile();
    super.onInit();
  }

  @override
  void onClose() {
    emailController.dispose();
    lastNameController.dispose();
    firstNameController.dispose();
    mobilePhoneController.dispose();
    positionController.dispose();
    companyController.dispose();
    super.onClose();
  }
  
  Future<void> getProfile() async {
    lang(store.setting!.language);
    isNotification(store.setting!.isNotification);
    attendee(store.user!.data!.attendee);
    isContact(store.user!.data!.attendee!.status_contact == 1);
    emailController.text = attendee.value.email!;
    lastNameController.text = attendee.value.full_name!.split(' ')[1];
    firstNameController.text = attendee.value.full_name!.split(' ')[0];
    mobilePhoneController.text = attendee.value.phone!;
    positionController.text = attendee.value.position!;
    companyController.text = attendee.value.company!;
    userCategory(attendee.value.user_category!.map(
      (e) => 
        {
          "value" : e.cate_id.toString(),
          "text" : e.cate_name.toString(),
        },
    ).toList());
    userInterest(attendee.value.user_interest!.map(
      (e) => 
        {
          "value" : e.interest_id.toString(),
          "text" : e.interest_name.toString(),
        },
    ).toList());
  }
  Future<void> updateProfile() async {

    LoadingBinding().dependencies();
    final loadingC = LoadingController.call;
    try {
      if (myAccountFormKey.currentState!.validate()) {
        popupLoading(context.value);
        final userEdit = UserEdit(
          first_name: firstNameController.text,
          last_name: lastNameController.text,
          email: emailController.text,
          phone: mobilePhoneController.text,
          company: companyController.text,
          position: positionController.text,
          categorys: userCategory.map((e) => UserCategory(cate_id: int.parse(e['value']), cate_name: e['text'])).toList(),
          interests: userInterest.map((e) => UserInterest(interest_id: int.parse(e['value']), interest_name: e['text'])).toList(),
          status_contact: isContact.value ? 1 : 0,
          status_notification: isNotification.value ? 1 : 0
        );
        UserAttendee user = await _profileUseCase.execute(userEdit);
        Attendee attendee = store.user!.data!.attendee!.copyWith(
          full_name: user.data!.full_name,
          email: user.data!.email,
          phone: user.data!.phone,
          company: user.data!.company,
          position: user.data!.position,
          user_category: user.data!.user_category,
          user_interest: user.data!.user_interest,
          status_contact: user.data!.status_contact,
        );
        store.setting = Setting(
          language: lang.value,
          isNotification: isNotification.value,
        );
        
        store.user = store.user!.copyWith(data: store.user!.data!.copyWith(attendee: attendee));
        profileC.fechData(user.data!);
        Navigator.pop(loadingC.buildContext.value);
        popupStatus(
          NavigationService.navigatorKey.currentContext!, 
          PopupStatusType.sucess, 
          message: user.message.toString(),
          onPressed:() {
               context.value.pop();
          },
        );
      }
    } catch (error) {
      Navigator.pop(loadingC.buildContext.value);
      log('error ${error.toString()}');
    }
  }

  Future<void> changeLanguage(LangType langType) async {
    store.setting = Setting(language: langType);
    lang(langType);
    EasyLocalization.of(NavigationService.navigatorKey.currentContext!)!.setLocale(langType == LangType.th ? const Locale('th', 'TH') : const Locale('en', 'US'));
    Get.updateLocale(langType == LangType.th ? const Locale('th', 'TH') : const Locale('en', 'US'));
  }

  Future<void>  deleteAccount() async {
    try {
      await _deleteAccountUseCase.execute();

    } catch (error) {
      log('error ${error.toString()}');
    }
  }
}