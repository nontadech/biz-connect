import 'package:biz_connect/app/config/themes/theme.dart';
import 'package:biz_connect/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';

class TextIconVertical extends StatelessWidget {
  final String text;
  final Widget icon;

  const TextIconVertical({
    super.key,
    required this.text,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        icon,
        TextCustom(
          textAlign: TextAlign.center,
          text: text,
          color: const Color(0xff122D58),
          fontSize: FontSize.h8,
          fontWeight: FontWeight.w400,
          height: 1,
        ),
      ],
    );
  }
}