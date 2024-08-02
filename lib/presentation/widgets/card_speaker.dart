import 'package:biz_connect/app/config/themes/theme.dart';
import 'package:biz_connect/presentation/widgets/text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CardSpeaker extends StatelessWidget {
  final VoidCallback? onTap;
  final String image;
  final String fullname;
  final String position;
  final String company;

  const CardSpeaker({
    super.key,
    this.onTap,
    required this.image,
    required this.fullname,
    required this.position,
    required this.company,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        color: const Color(0xffffffff),
        border: Border.all(
          color: const Color(0xffEEEEEE),
        ),
        borderRadius: BorderRadius.circular(10.0),
      ),
      width: 179,
      child: InkWell(
        onTap: onTap,
        child: Column(
          children: <Widget>[
            CachedNetworkImage(
              imageUrl: image,
              width: 179,
              height: 254,
              fit: BoxFit.cover,
              placeholder: (BuildContext context, String url) => const CircularProgressIndicator(),
              errorWidget: (context, url, error) => const Icon(Icons.error),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  TextCustom(
                    text: fullname,
                    fontSize: FontSize.h7,
                    fontWeight: FontWeight.w500,
                    height: 1.2,
                    color: const Color(0xff13315F),
                  ),
                  const Divider(
                    color: Color(0xff56BED6),
                    thickness: 1.72,
                    endIndent: 120,
                  ),
                  TextCustom(
                    text: position,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 3,
                    fontSize: FontSize.h11,
                    fontWeight: FontWeight.w400,
                    height: 1.2,
                    color: const Color(0xff122D58),
                  ),
                  const SizedBox(height: 10),
                  TextCustom(
                    text: company,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 3,
                    fontSize: FontSize.h11,
                    fontWeight: FontWeight.w400,
                    height: 1.2,
                    color: const Color(0xff91A6C4),
                  ),
                ],
              )
            ),
          ],
        ),
      ),
    );
  }

}