import 'package:biz_connect/app/config/themes/theme.dart';
import 'package:biz_connect/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class TextDisplay extends StatelessWidget {
  final String title;
  final String text;
  const TextDisplay({
    super.key,
    required this.title,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 100,
          child: TextCustom(
            text: title, 
            fontSize: FontSize.h7, 
            fontWeight: FontWeight.w600, 
            color: const Color(0xff13315F),
            height: 1.2,
          ),
        ),
        TextCustom(
          text: ' :   ', 
          fontSize: FontSize.h7, 
          fontWeight: FontWeight.w600, 
          color: const Color(0xff13315F),
          height: 1.2,
        ),
        Flexible(
          child: TextCustom(
            overflow: TextOverflow.ellipsis,
            text: text, 
            fontSize: FontSize.h7, 
            fontWeight: FontWeight.w400, 
            color: const Color(0xff13315F),
            height: 1.2,
          ),
        )
      ]
    );
  }
}