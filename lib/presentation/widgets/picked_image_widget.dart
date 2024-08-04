import 'package:biz_connect/app/config/themes/theme.dart';
import 'package:biz_connect/presentation/controllers/auth/image_binding.dart';
import 'package:biz_connect/presentation/controllers/auth/image_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class PickedImageWidget extends GetView<ImageController> {
  final Function saveImage;
  final int? page;
  const PickedImageWidget({
    super.key,
    required this.saveImage,
    this.page,
  });

  @override
   Widget build(BuildContext context) {
    ImageBinding().dependencies();
    return Padding(
      padding: const EdgeInsets.only(left: 25, right: 25, top: 10, bottom: 10),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Text('Select Image', style: TextStyle(fontSize: FontSize.h9)),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    IconButton(
                      icon: const Icon(Icons.camera_alt),
                      onPressed: () async {
                        saveImage(ImageSource.camera, page);
                      },
                    ),
                    Text('Camera', style: TextStyle(fontSize: FontSize.h12)),
                  ],
                ),
                Column(
                  children: [
                    IconButton(
                      icon: const Icon(Icons.photo),
                      onPressed: () async {
                        saveImage(ImageSource.gallery, page);
                      },
                    ),
                    Text('Gallery', style: TextStyle(fontSize: FontSize.h12)),
                  ],
                ),
              ],
            ),
          ],
        )
      )
    );
  }
}
