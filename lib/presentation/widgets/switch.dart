import 'package:biz_connect/app/config/themes/theme.dart';
import 'package:biz_connect/presentation/widgets/text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';

class SwitchCustom extends StatelessWidget {
  final String title;
  final bool value;
  final Function(bool) onToggle;
  const SwitchCustom({
    super.key,
    required this.title,
    required this.value,
    required this.onToggle,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TextCustom(
         text: title,
            fontSize: FontSize.h7, 
            color: const Color(0xff13315F),
            fontWeight: FontWeight.w500,
        ),
        FlutterSwitch(
          width: 44.0,
          height: 24.0,
          toggleSize: 18.0,
          value: value,
          borderRadius: 12.0,
          padding: 2,
          activeColor: const Color(0xffEAF4FF),
          activeToggleColor: const Color(0xff56BED6),
          inactiveColor: const Color(0xffEAF4FF),
          inactiveToggleColor: const Color(0xff91A6C4),
          onToggle:onToggle,
        )
      ],
    );
  }
}