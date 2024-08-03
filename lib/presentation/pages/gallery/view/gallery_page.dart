import 'package:biz_connect/presentation/pages/gallery/controllers/controllers.dart';
import 'package:biz_connect/presentation/widgets/widgets.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GalleryPage extends GetView<GalleryController> {
  final int eventId; 
  const GalleryPage({
    super.key,
    required this.eventId,
  });

  @override
   Widget build(BuildContext context) {
    GalleryBinding().dependencies();
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBarCustom(
        context,
        title: 'Gallery',
        type: AppBarType.back,
      ),
      body: Padding(
        padding: const EdgeInsets.only( top: 10, bottom: 10),
        child: SingleChildScrollView(
          child: GetX(
            init: controller,
            initState: (_){
              controller.getGallery(eventId);
            },
            builder: (_){
              if(!controller.isLoading.value){
                return Column(
                  children: [
                    const SizedBox(
                      height: 200,
                    ),
                    Center(
                      child: controller.isDataEmtpy.value ? const SizedBox() : const CircularProgressIndicator(),
                    )
                  ],
                );
              }
              return Center(
                child: Wrap(
                  alignment:WrapAlignment.spaceEvenly,
                  children: [
                   for (var gallery in controller.gallery.value.data!)
                    InkWell(
                      onTap: () {
                        popupPicture(context, gallery.image_path);
                      }, 
                      child: Container(
                        clipBehavior: Clip.hardEdge,
                        margin: const EdgeInsets.only(right: 10, left: 10, bottom: 15),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8.7),
                          border: Border.all(
                            color: const Color(0xffffffff),
                            width: 1,
                          ),
                        ),
                        width: 103,
                        height: 103,
                        child: Center(
                            child: CachedNetworkImage(
                              imageUrl: gallery.image_path,
                              placeholder: (BuildContext context, String url) => const CircularProgressIndicator(),
                              errorWidget: (context, url, error) => const Icon(Icons.error),
                          ),
                        )
                      )
                    )
                  ]
                ),
              );
            }
          )
        ),
      )
    );
  }
}
