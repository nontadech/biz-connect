import 'package:biz_connect/app/config/themes/theme.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class TextCustom extends StatelessWidget {
  final String text;
  final double fontSize;
  final FontWeight fontWeight;
  final Color color;
  final TextDecoration? decoration;
  final TextOverflow? overflow;
  final int? maxLines;
  final TextAlign? textAlign;
  final Color? decorationColor;
  final double? height;
  final bool required;
  const TextCustom({
    super.key,
    required this.text,
    required this.fontSize,
    required this.fontWeight,
    required this.color,
    this.decoration,
    this.overflow,
    this.maxLines,
    this.textAlign,
    this.decorationColor,
    this.height,
    this.required = false,
  });

  @override
  Widget build(BuildContext context) {
    return required ?  
    Padding(
      padding: const EdgeInsets.only(bottom: 5.0), 
      child: RichText(
        text: TextSpan(
          text: text.tr(),
          style: TextStyle(
            fontSize: fontSize, 
            fontWeight: fontWeight, 
            color: color,
            fontFamily: 'FC_Iconic',
          ),
          children: [
            TextSpan(
              text: '*', 
              style: TextStyle(
                fontSize: FontSize.h9, 
                fontWeight: FontWeight.w400, 
                color: const Color(0xffFF3A44),
                fontFamily: 'FC_Iconic',
              ),
            ),
          ],
        ),
      ) 
    ) :
    Text(
      textAlign: textAlign,
      text,
      maxLines: maxLines,
      overflow: overflow,
      style: TextStyle(
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: color,
        decoration: decoration,
        fontFamily: 'FC_Iconic',
        decorationColor: decorationColor,
        height: height,
      )
    ).tr();
  }
}