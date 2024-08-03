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
                      fontSize: FontSize.h7,
                      fontWeight: FontWeight.w600, 
                      color: const Color(0xff13315F),
                      height: 1.2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    TextCustom(
                      text: size, 
                      fontSize: FontSize.h8,
                      fontWeight: FontWeight.w400, 
                      color: const Color(0xff6481A9),
                      height: 1.2,
                    ),
                  ],
              )
              ),
              Container(
                height: 43,
                width: 43,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                  border: Border.all(
                    width: 0.74, 
                    color:const Color(0xffEAF4FF)
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0xff13B4FF).withOpacity(0.1),
                      blurRadius: 7
                    ),
                  ],
                ),
                child: Center(
                  child: SvgPicture.asset(
                    'assets/icons/download.svg',
                    width: 24,
                    height: 24,
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