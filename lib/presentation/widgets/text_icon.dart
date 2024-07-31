import 'package:biz_connect/app/config/themes/theme.dart';
import 'package:biz_connect/presentation/widgets/text.dart';
import 'package:flutter/material.dart';

class TextIcon extends StatelessWidget {
  final String title;
  final Widget icon;
  final double fontSize;

  const TextIcon({
    super.key,
    required this.title,
    required this.icon,
    this.fontSize = 22,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        icon,
        const SizedBox(width: 10),
        Flexible(
          child: TextCustom(
            text: title, 
            fontSize: FontSize.h8, 
            fontWeight: FontWeight.w500, 
            height: 1.2,
            color: const Color(0xff122D58),
          ),
        )
      ],
    );
  }
}