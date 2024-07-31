import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class PictureAccount extends StatelessWidget {
  final String avatar;

  const PictureAccount({
    super.key,
    this.avatar = '',
  });

  @override
  Widget build(BuildContext context) {
    return Stack(  
      children: [
        Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: avatar == '' ? const DecorationImage(
              image: AssetImage(
                'assets/icons/contact_circle.png',
              ) 
            )
            : DecorationImage(
              image: CachedNetworkImageProvider(
                avatar
              ),
            ),
          ),
        ),  
      ],
    );
  }
}