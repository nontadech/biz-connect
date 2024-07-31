import 'package:biz_connect/app/config/themes/theme.dart';
import 'package:biz_connect/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TextSelectList extends StatelessWidget {
  final String text;
  final Widget icon;
  final VoidCallback onTap;
  const TextSelectList({
    super.key,
    required this.text,
    required this.icon,
    required this.onTap,
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
              SizedBox(
                width: 24,
                height: 24,
                child: Center(
                  child: icon,
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              TextCustom(
                text: text,
                fontSize: FontSize.h7,
                fontWeight: FontWeight.w500,
                color: const Color(0xff13315F),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10), 
            child: SvgPicture.asset('assets/icons/arrow_right.svg'),
          )
        ],
      )
    );
  }
}