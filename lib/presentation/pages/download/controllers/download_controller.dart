import 'dart:developer';
import 'dart:io';

import 'package:biz_connect/data/models/body_model.dart';
import 'package:biz_connect/data/models/join_model.dart';
import 'package:biz_connect/domain/entities/join_entity.dart';
import 'package:biz_connect/domain/usecases/file_use_case.dart';
import 'package:biz_connect/main.dart';
import 'package:biz_connect/presentation/controllers/auth/loading_binding.dart';
import 'package:biz_connect/presentation/controllers/auth/loading_controller.dart';
import 'package:biz_connect/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:open_filex/open_filex.dart';
import 'package:path_provider/path_provider.dart';
import 'package:dio/dio.dart' as dio;

class DownloadController extends GetxController {
  DownloadController(this._fileUseCase);
  static DownloadController get call => Get.find();
  final FileUseCase _fileUseCase;
  final Rx<EventFile> eventFile = const EventFile().obs;
  final RxBool isLoading = false.obs;
  final RxBool isLoadingPopup = false.obs;
  final RxBool isDataEmtpy = false.obs;
  Rx<BuildContext> context = NavigationService.navigatorKey.currentContext!.obs;
  GlobalKey<FormState> downloadPageFormKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  getEventFile(int eventId) async {
    isDataEmtpy(false);
    isLoading(false);
    try {
      eventFile.value = await _fileUseCase.execute(eventId);
      isLoading(true);
    } catch (error) {
      isDataEmtpy(true);
      log('error ${error.toString()}');
    }
 
  }

  Future<String?> _findLocalPath() async {
    if (Platform.isAndroid) {
      return "/sdcard/download/";
    } else {
      var directory = await getApplicationDocumentsDirectory();
      return '${directory.path}${Platform.pathSeparator}Download';
    }
  }


  downloadFile(EventFileData eventFile) async {
    LoadingBinding().dependencies();
    final loadingC = LoadingController.call;
    try {
      popupLoading(loadingC.buildContext.value);
      String? localPath = await _findLocalPath();
      final savedDir = Directory(localPath!);
      bool hasExisted = await savedDir.exists();
      if (!hasExisted) {
        savedDir.create();
      }
      String fullPath = "${savedDir.path}/${eventFile.path_file!.split('/').last}";
      dio.Dio().download(eventFile.path_file!, fullPath).then((value) {
        OpenFilex.open(fullPath);
      });
      Navigator.pop(loadingC.buildContext.value);
    } catch (e) {
      Navigator.pop(loadingC.buildContext.value);
      Get.snackbar(
        'Download',
        'Download Failed',
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.red,
        colorText: Colors.white,
      );
    }
  }

  sendFileEmail(int eventId) async {
    LoadingBinding().dependencies();
    final loadingC = LoadingController.call;
    try {
      if (downloadPageFormKey.currentState!.validate()) {
        popupLoading(context.value);
        await _fileUseCase.sendFileEmail(FileEmailInput(
          email: emailController.text,
          eventId: eventId,
        ));
        Navigator.pop(loadingC.buildContext.value);
        popupStatus(
          NavigationService.navigatorKey.currentContext!, 
          PopupStatusType.sucess, 
          message: 'Success: send email',
          onPressed:() { 
            Navigator.pop(context.value);
          },
        );
        isLoadingPopup(false);
      }
    } catch (error) {
      Navigator.pop(loadingC.buildContext.value);
      log('error ${error.toString()}');
    }
 
  }
}