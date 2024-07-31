import 'package:biz_connect/app/config/themes/theme.dart';
import 'package:biz_connect/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';

class ButtonIcon extends StatelessWidget {
  final Widget icon;
  final VoidCallback onPressed;
  final String text;

  const ButtonIcon({
    super.key,
    required this.icon,
    required this.onPressed,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        foregroundColor: WidgetStateProperty.all<Color>(Colors.white),
        backgroundColor: WidgetStateProperty.all<Color>(const Color(0xff56BED6)),
        shape: WidgetStateProperty.all<RoundedRectangleBorder>(
          const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(100)),
            side: BorderSide(color: Color(0xff56BED6))
          )
        )
      ),
      onPressed: onPressed,
      child: SizedBox(
        child: Padding(
          padding: const EdgeInsets.only(top: 8, bottom: 8, left: 10, right: 10),
          child: Row(
            mainAxisSize:MainAxisSize.min,
            children: [
              icon,
              const SizedBox(
                width: 10,
              ),
              TextCustom(
                text: text,
                fontSize: FontSize.h10,
                fontWeight: FontWeight.w600,
                color: Colors.white
              ),
            ],
          )
        )
      ),
    );
  }
}