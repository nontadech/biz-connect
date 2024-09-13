import 'package:biz_connect/presentation/pages/profile/controllers/controllers.dart';
import 'package:biz_connect/presentation/widgets/widgets.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

class PictureProfile extends GetView<ProfileController> {
  final String profile;

  const PictureProfile({
    super.key,
    required this.profile,
  });

  @override
  Widget build(BuildContext context) {
    ProfileBinding().dependencies();
    final profileC  = ProfileController.call;
    return Stack(  
      children: [
        Container(
          width: 106,
          height: 106,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: profile != '' ?  
            DecorationImage(
              image: 
              CachedNetworkImageProvider(
                profile
              ) 
            ):
            const DecorationImage(
              image : AssetImage('assets/images/profile.png'),
              fit: BoxFit.fill
            )
          ),
        ),
        Positioned(
          bottom: 0,
          right: 0,
          child: Container(
            width: 28,
            height: 28,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: const Color(0xff000000).withOpacity(0.1),
                  blurRadius: 12
                )
              ],
              color: Colors.white,
              shape: BoxShape.circle,
            ),
            child: InkWell( 
              onTap: () {
  
                showBarModalBottomSheet(
                  expand: false,
                  context: context,
                  builder: (context) => SizedBox(
                    height: 200,
                    child: PickedImageWidget(
                      saveImage: profileC.saveImageProfile
                    ),
                  ),
                );
              },
              child: Padding(
                padding: const EdgeInsets.all(6),
                child: SvgPicture.asset('assets/icons/edit.svg'),
              )
            )
          ),
        )
      ],
    );
  }
}