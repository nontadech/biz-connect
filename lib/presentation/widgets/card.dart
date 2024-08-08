import 'package:biz_connect/app/config/themes/theme.dart';
import 'package:biz_connect/presentation/widgets/text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CardCustom extends StatelessWidget {
  final VoidCallback? onTap;
  final String thumnail;
  final String title;
  final String location;
  final String date;

  const CardCustom({
    super.key,
    required this.onTap,
    this.thumnail = '',
    this.title = '',
    this.location = '',
    this.date = '',
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
      height: 110,
      child: InkWell(
        onTap: onTap,
        child: Row(
          children:[
            thumnail != '' ? CachedNetworkImage(
              width: 140,
              height: 110,
              fit: BoxFit.cover,
              imageUrl: thumnail,
              placeholder: (BuildContext context, String url) => Container(
                width: 140,
                height: 110,
                color: Colors.white,
              ),
              errorWidget: (context, url, error) => const Icon(Icons.error), 
            ) : Image.asset(
              'assets/images/place_image.png',
              width: 140,
              height: 110,
              fit: BoxFit.cover,
            ),
            Flexible(
              child: Padding(
                padding: const EdgeInsets.only(left: 10, right: 1, top: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    TextCustom(
                      text: date,
                      fontSize: FontSize.h11,
                      fontWeight: FontWeight.w500,
                      height: 1,
                      color: const Color(0xff56BED6),
                    ),
                    const SizedBox(height: 5),
                    SizedBox(
                      height: 45,
                      child: TextCustom(
                        text: title,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                        height: 1,
                        fontSize: FontSize.h9,
                        fontWeight: FontWeight.w500,
                        color: const Color(0xff122D58),
                      ),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 1, right: 2),
                          child:  SvgPicture.asset(
                            'assets/icons/location.svg',
                            width: 16,
                          ),
                        ),
                        Flexible(
                          child: TextCustom(
                            text: location,
                            fontSize: FontSize.h10,
                            height: 1,
                            maxLines: 1,
                            fontWeight: FontWeight.w500,
                            color: const Color(0xff91A6C4),
                          ),
                        ),
                      ],
                    )
                  ],
                )
              ),
            )
          ],
        ),
      ),
    );
  }

}