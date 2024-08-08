import 'package:biz_connect/app/config/themes/theme.dart';
import 'package:biz_connect/presentation/widgets/text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CardDownload extends StatelessWidget {
  final String title;
  final String size;
  final VoidCallback onTap;

  const CardDownload({
    super.key,
    required this.title,
    required this.onTap,
    required this.size,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Card(
        shadowColor: const Color(0xffffffff),
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 15, bottom: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextCustom(
                      text: title, 
                      fontSize: FontSize.h8,
                      fontWeight: FontWeight.w600, 
                      color: const Color(0xff56BED6),
                      height: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    TextCustom(
                      text: size, 
                      fontSize: FontSize.h9,
                      fontWeight: FontWeight.w400, 
                      color: const Color(0xff91A6C4),
                      height: 1,
                    ),
                  ],
                )
              ),
              SizedBox(
                width: 43,
                child: Center(
                  child: SvgPicture.asset(
                    'assets/icons/download.svg',
                    width: 28,
                    height: 28,
                  )
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}