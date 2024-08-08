import 'package:biz_connect/app/config/themes/theme.dart';
import 'package:biz_connect/presentation/widgets/text.dart';
import 'package:flutter/material.dart';

class ElevatedButtonCustom extends StatelessWidget {
  final String text;
  final bool isDisabled;
  final void Function() onPressed;
  const ElevatedButtonCustom({
    super.key,
    required this.text,
    required this.onPressed,
    this.isDisabled = false,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: isDisabled ? (){} : onPressed,
      style: ButtonStyle(
        foregroundColor: WidgetStateProperty.all<Color>(Colors.white),
        backgroundColor: isDisabled ? WidgetStateProperty.all<Color>(const Color(0xffEAF4FF)) : WidgetStateProperty.all<Color>(const Color(0xff56BED6)),
        shape: WidgetStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: const BorderRadius.all(Radius.circular(100)),
            side: isDisabled ? const BorderSide(color: Color(0xffEAF4FF)) : const BorderSide(color: Color(0xff56BED6))
          )
        ),
        shadowColor: isDisabled ? WidgetStateProperty.all<Color>(Colors.transparent) : WidgetStateProperty.all<Color>(Colors.black),
      ),
      child: Container(
        alignment: Alignment.center,
        height: 50.0,
        child: TextCustom(
          text: text,
          fontSize: FontSize.h10,
          fontWeight: FontWeight.w400,
          color: isDisabled ? const Color(0xff91A6C4) : Colors.white
        ),
      ),
    );
  }
}