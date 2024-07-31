import 'package:biz_connect/app/config/themes/theme.dart';
import 'package:biz_connect/presentation/widgets/text.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SelectOne extends StatelessWidget {
  final VoidCallback? onTap;
  final String title;
  final String value;

  const SelectOne({
    super.key,
    required this.onTap,
    required this.title,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              TextCustom(
                text: '${title.tr()} : ', 
                fontSize: FontSize.h7, 
                fontWeight: FontWeight.w500, 
                color: const Color(0xff13315F)
              ),
              TextCustom(
                text: value, 
                fontSize: FontSize.h7, 
                fontWeight: FontWeight.w500, 
                color: const Color(0xff13315F)
              )
            ],
          ),
          SvgPicture.asset('assets/icons/arrow_right.svg')
        ],
      )
    );
  }
}