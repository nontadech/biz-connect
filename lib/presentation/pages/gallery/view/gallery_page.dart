import 'package:biz_connect/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';

class GalleryPage extends StatefulWidget {
  const GalleryPage({super.key});

  @override
  State<GalleryPage> createState() => _GalleryPageState();
}

class _GalleryPageState extends State<GalleryPage> {
  @override
  void initState() {
    // Initialize & inject UserController() using Get.put()
    super.initState();
  }

  @override
   Widget build(BuildContext context) {
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
          child: Center(
            child: Wrap(
              alignment:WrapAlignment.spaceEvenly,
              children: [
              for (var i = 0; i < 9; i++)
                InkWell(
                  onTap: () {
                    popupPicture(context, 'https://via.placeholder.com/150');
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
                        child:  Image.asset(
                        'assets/demo/gallery.png',
                      ),
                    )
                  )
                )
              ]
            ),
          )
        ),
      )
    );
  }
}
