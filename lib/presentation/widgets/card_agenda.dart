import 'package:biz_connect/app/config/themes/theme.dart';
import 'package:biz_connect/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CardAgenda extends StatelessWidget {
  final VoidCallback onTap;
  final String time;
  final String title;
  final String location;

  const CardAgenda({
    super.key,
    required this.onTap,
    required this.title,
    required this.location,
    required this.time,

  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10, bottom: 10),
      padding: const EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
      decoration: BoxDecoration(
        color: const Color(0xffFFFFFF),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: const Color(0xffEAF4FF),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
            onTap: onTap,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextCustom(
                  text: time, 
                  fontSize: FontSize.h9, 
                  fontWeight: FontWeight.w600, 
                  color: const Color(0xff13315F)
                ),
                SvgPicture.asset(
                  'assets/icons/arrow_right.svg',
                  width: 24,
                  height: 24,
                ),
              ],
            ),
          ),
          TextCustom(
            text: title, 
            fontSize: FontSize.h7, 
            height: 1.2,
            fontWeight: FontWeight.w400, 
            color: const Color(0xff13315F)
          ),
          const SizedBox(
            height: 10,
          ),
          TextIcon(
            title: location, 
            fontSize: FontSize.h9,
            icon: SvgPicture.asset(
              'assets/icons/location.svg',
              width: 24,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          TextCustom(
            text: 'Download', 
            fontSize: FontSize.h9, 
            fontWeight: FontWeight.w500, 
            color: const Color(0xff122D58),
            height: 1.2,
          ),
          TextCustom(
            text: 'Sample file.pdf', 
            fontSize: FontSize.h9, 
            height: 1.2,
            fontWeight: FontWeight.w500, 
            color: const Color(0xff56BED6),
            decoration: TextDecoration.underline,
            decorationColor: const Color(0xff56BED6),
          )
        ],
      ),
    );
  }
}