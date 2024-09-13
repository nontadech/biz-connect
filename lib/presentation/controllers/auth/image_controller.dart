import 'dart:convert';
import 'dart:developer';
import 'dart:io' as io;
import 'dart:io';

import 'package:biz_connect/main.dart';
import 'package:biz_connect/presentation/widgets/popup_confirm.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';
import 'package:image_picker/image_picker.dart';
import 'package:image/image.dart' as img;
import 'package:permission_handler/permission_handler.dart';

class ImageController extends GetxController {
  static ImageController get call => Get.find();
  ImageController();


  Future<String?> pickedImg(ImageSource imageSource) async {
    ImagePicker picker = ImagePicker();
    try {
      
      final XFile? media = await picker.pickImage(source: imageSource, preferredCameraDevice: CameraDevice.front, imageQuality: 80);
      if (media != null) {
        File imageFile = File(media.path);
        img.Image image = img.decodeImage(imageFile.readAsBytesSync())!;
        img.Image orientedImage = img.bakeOrientation(image);
        final orientedImageFile = File(media.path)..writeAsBytesSync(img.encodeJpg(orientedImage));
        final bytes = io.File(orientedImageFile.path).readAsBytesSync();
        return base64Encode(bytes);
      }else{
        final bytes = io.File(media!.path).readAsBytesSync();
        return base64Encode(bytes);
      }
    } catch (e) {
      if(e.toString().contains('photo_access_denied') || e.toString().contains('camera_access_denied')){
        popupConfirm(
          NavigationService.navigatorKey.currentContext!, 
          topic: 'Permission',
          message: 'You need to allow the camera permission to take a picture',
          onPressed:() {
            openAppSettings();
            // NavigationService.navigatorKey.currentContext!.pop();
          },
        );
        return 'permission_denied';
      }
      return '';
    }
  }

  Future<XFile> pickedImgFile(ImageSource imageSource) async {
    ImagePicker picker = ImagePicker();
    try {
      final XFile? media = await picker.pickImage(source: imageSource, preferredCameraDevice: CameraDevice.front, imageQuality: 80);
      return media!;
    } catch (e) {
      log(e.toString());
      return XFile('');
    }
  }

}
