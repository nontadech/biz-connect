import 'package:biz_connect/app/config/themes/theme.dart';
import 'package:biz_connect/presentation/widgets/text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CardHorizontal extends StatelessWidget {
  final VoidCallback? onTap;
  final VoidCallback? onTapHeart;
  final String title;
  final String? location;
  final String date;
  final String? thumnail;
  final bool? isFavorite;
  final bool showPrivate;

  const CardHorizontal({
    super.key,
    this.onTap,
    this.title = '',
    this.location = '',
    this.date = '',
    this.thumnail = '',
    this.isFavorite = false,
    this.showPrivate = false,
    this.onTapHeart,
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
            Stack(
              children: [
                thumnail != '' && thumnail != null ? CachedNetworkImage(
                  width: 179,
                  height: 254,
                  fit: BoxFit.cover,
                  imageUrl: thumnail!,
                  placeholder: (BuildContext context, String url) => Container(
                    width: 179,
                    height: 254,
                    color: Colors.white,
                  ),
                  errorWidget: (context, url, error) => const Icon(Icons.error), 
                ) : Image.asset(
                  'assets/images/place_image.png',
                  width: 179,
                  height: 254,
                  fit: BoxFit.cover,
                ),
                showPrivate ? Positioned(
                  top: 0,
                  left: 0,
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Color(0xffFF6C00),
                      gradient: LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: [
                          Color(0xff0FD8AA),
                          Color(0xff13B4FF),
                        ],
                      ),
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(8.0),
                      ),
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    child: TextCustom(
                      text: 'Private Event',
                      fontSize: FontSize.h10,
                      fontWeight: FontWeight.w700,
                      height: 1,
                      color: const Color(0xffFFFFFF),
                    ),
                  )
                ) : const SizedBox(),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    height: 35,
                    child: TextCustom(
                      text: date,
                      fontSize: FontSize.h11,
                      fontWeight: FontWeight.w500,
                      height: 1,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      color: const Color(0xff56BED6),
                    ),
                  ),
                  const SizedBox(height: 5),
                  SizedBox(
                    height: 40,
                    child: TextCustom(
                      text: title,
                      fontSize: FontSize.h10,
                      fontWeight: FontWeight.w700,
                      height: 1,
                      color: const Color(0xff122D58),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  const SizedBox(height: 8),
                  SizedBox(
                    height: 36,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 2, right: 2),
                          child:  SvgPicture.asset(
                            'assets/icons/location.svg',
                            width: 16,
                          ),
                        ),
                        Flexible(
                          child: TextCustom(
                            text: location!,
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                            fontSize: FontSize.h10,
                            height: 1,
                            fontWeight: FontWeight.w500,
                            color: const Color(0xff91A6C4),
                          ),
                        ),
                      ],
                    )
                   )
                ],
              )
            ),
          ],
        ),
      ),
    );
  }
}