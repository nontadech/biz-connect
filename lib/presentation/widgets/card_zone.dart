import 'package:biz_connect/app/config/themes/theme.dart';
import 'package:biz_connect/presentation/widgets/text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CardZone extends StatelessWidget {
  final String title;
  final VoidCallback onTap;

  const CardZone({
    super.key,
    required this.title,
    required this.onTap,
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
              TextCustom(
                text: title, 
                fontSize: FontSize.h6, 
                fontWeight: FontWeight.w600, 
                color: const Color(0xff13315F)
              ),
              SvgPicture.asset('assets/icons/arrow_right.svg')
            ],
          ),
        ),
      ),
    );
  }
}