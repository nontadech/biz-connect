import 'package:biz_connect/app/config/themes/theme.dart';
import 'package:biz_connect/presentation/widgets/text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CardContact extends StatelessWidget {
  final String fullName;
  final String position;
  final String url;
  final VoidCallback onTap;

  const CardContact({
    super.key,
    required this.fullName,
    required this.position,
    required this.onTap,
    this.url = '',

  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Card(
        child: Padding(padding: const EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
          child: Row(
            children: [
              Container(
                clipBehavior:Clip.hardEdge,
                height: 58,
                width: 58,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0xff13B4FF).withOpacity(0.1),
                      blurRadius: 7
                    ),
                  ],
                ),
                child: Center(
                  child: url != '' ? CachedNetworkImage(
                    imageUrl: url,
                    fit: BoxFit.cover,
                    placeholder: (BuildContext context, String url) => const CircularProgressIndicator(),
                    errorWidget: (context, url, error) => const Icon(Icons.error),
                  ) : SvgPicture.asset('assets/icons/contact.svg', width: 25)
                ),
              ),
              const SizedBox(width: 20),
              Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextCustom(
                      text: fullName, 
                      fontSize: FontSize.h6, 
                      fontWeight: FontWeight.w600, 
                      color: const Color(0xff122D58),
                      maxLines: 1,
                      height: 1.2,
                    ),
                    TextCustom(
                      text: position, 
                      fontSize: FontSize.h8, 
                      fontWeight: FontWeight.w400, 
                      color: const Color(0xff122D58),
                      maxLines: 1,
                      height: 1.2,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}