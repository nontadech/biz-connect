import 'dart:developer';

import 'package:biz_connect/app/services/local_storage.dart';
import 'package:biz_connect/data/models/user_model.dart';
import 'package:biz_connect/domain/entities/user_entity.dart';
import 'package:biz_connect/domain/usecases/profile_use_case.dart';
import 'package:biz_connect/main.dart';
import 'package:biz_connect/presentation/controllers/auth/image_binding.dart';
import 'package:biz_connect/presentation/controllers/auth/image_controller.dart';
import 'package:biz_connect/presentation/controllers/auth/loading_binding.dart';
import 'package:biz_connect/presentation/controllers/auth/loading_controller.dart';
import 'package:biz_connect/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';
import 'package:image_picker/image_picker.dart';

class ProfileController extends GetxController {
  static ProfileController get call => Get.find();
  ProfileController(this._profileUseCase);
  final ProfileUseCase _profileUseCase;
  final store = Get.find<LocalStorageService>();
  final profile = const Attendee().obs;
  Attendee? get user => store.user!.data!.attendee;
  Rx<BuildContext> context = NavigationService.navigatorKey.currentContext!.obs;

  fechData(Attendee user) {
    profile(user);
  }

  saveImageProfile(ImageSource imageSource, int? page) async {
    ImageBinding().dependencies();
    final imageC = ImageController.call;
    LoadingBinding().dependencies();
    final loadingC = LoadingController.call;
    try {
      String? image = await imageC.pickedImg(imageSource);
      if(image != '' && image != null){
        if(image != 'permission_denied') {
          popupLoading(context.value);
          UserAttendee user = await _profileUseCase.setImageProfile(image);
          Attendee attendee = store.user!.data!.attendee!.copyWith(
            profile: user.data!.profile
          );      
          store.user = store.user!.copyWith(data: store.user!.data!.copyWith(attendee: attendee));
          fechData(attendee);
          Navigator.pop(loadingC.buildContext.value);
          popupStatus(
            context.value, 
            PopupStatusType.sucess, 
            message: user.message.toString(),
            onPressed:() {
              context.value.pop();
            },
          );
        }
      }else{
        // Navigator.pop(loadingC.buildContext.value);
        popupStatus(
          context.value, 
          PopupStatusType.error, 
          message: 'Error to save image',
          onPressed:() {
            context.value.pop();
          },
        );
      }
    } catch (error) {
      Navigator.pop(loadingC.buildContext.value);
      context.value.pop();
      log('error ${error.toString()}');
    }
  }
}