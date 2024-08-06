import 'dart:developer';

import 'package:biz_connect/data/models/join_model.dart';
import 'package:biz_connect/domain/usecases/gallery_use_case.dart';
import 'package:get/get.dart';

class GalleryController extends GetxController {
  GalleryController(this._galleryUseCase);
  final GalleryUseCase _galleryUseCase;
  final Rx<Gallery> gallery = const Gallery().obs;
  final RxBool isLoading = false.obs;
  final RxBool isDataEmtpy = false.obs;

   getGallery(int eventId) async {
    isLoading(false);
    isDataEmtpy(false);
    try {
      gallery.value = await _galleryUseCase.execute(eventId);
      isLoading(true);
    } catch (error) {
      isDataEmtpy(true);
      log('error ${error.toString()}');
    }
  }
}