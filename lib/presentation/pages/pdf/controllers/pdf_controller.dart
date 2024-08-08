import 'dart:async';
import 'dart:developer';
import 'dart:io';

import 'package:get/get.dart';
import 'package:path_provider/path_provider.dart';
import 'package:dio/dio.dart' as dio;

class PDFController extends GetxController {
  PDFController();
  static PDFController get call => Get.find();
  final Rx<String> path = ''.obs;
  final RxBool isLoading = false.obs;


  Future<String?> _findLocalPath() async {
    if (Platform.isAndroid) {
      return "/sdcard/download/";
    } else {
      var directory = await getApplicationDocumentsDirectory();
      return '${directory.path}${Platform.pathSeparator}Download';
    }
  }
  
  downloadFile(String url) async {
    isLoading(false);
    try {
      String? localPath = await _findLocalPath();
      final savedDir = Directory(localPath!);
      bool hasExisted = await savedDir.exists();
      if (!hasExisted) {
        savedDir.create();
      }
      String fullPath = "${savedDir.path}/${url.split('/').last}";
      await dio.Dio().download(url, fullPath);
      path(fullPath);
      isLoading(true);
    } catch (e) {
      isLoading(true);
      log('error ${e.toString()}');
    }
  }
}