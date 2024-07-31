import 'package:biz_connect/app/config/themes/theme.dart';
import 'package:biz_connect/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';

class TitleCustom extends StatelessWidget {
  final String title;
  final bool isActive;
  final Function()? onTap;

  const TitleCustom({
    super.key,
    required this.title,
    required this.isActive,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.only(right: 20, top: 10, bottom: 10),
        padding: const EdgeInsets.only(left: 20, right: 20, top: 3, bottom: 3),
        decoration: BoxDecoration(
          color: isActive ? const Color(0xff56BED6) : const Color(0xffEAF4FF),
          borderRadius: const BorderRadius.all(
            Radius.circular(100.0),
          ),
        ),
        child: TextCustom(
          text: title,
          fontSize: FontSize.h9,
          color: isActive ? const Color(0xffFFFFFF) : const Color(0xff91A6C4),
          fontWeight: FontWeight.w600,
        ),
      )
    );
  }
}