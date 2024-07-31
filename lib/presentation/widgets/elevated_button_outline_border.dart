import 'package:biz_connect/app/config/themes/theme.dart';
import 'package:biz_connect/presentation/widgets/text.dart';
import 'package:flutter/material.dart';

class ElevatedButtonOutlineBorder extends StatelessWidget {
  final String text;
  final void Function() onPressed;
  const ElevatedButtonOutlineBorder({
    super.key,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all<Color>(Colors.white),
        shape: WidgetStateProperty.all<RoundedRectangleBorder>(
          const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(100)),
            side: BorderSide(color: Color(0xff56BED6))
          )
        )
      ),
      child: Container(
        alignment: Alignment.center,
        height: 50.0,
        child: TextCustom(
          text: text,
          fontSize: FontSize.h10,
          fontWeight: FontWeight.w600,
          color: const Color(0xff91A6C4)
        ),
      ),
    );
  }
}