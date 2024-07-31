import 'package:biz_connect/app/config/themes/theme.dart';
import 'package:biz_connect/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';

class AdendaSlideTime extends StatelessWidget {
  final String time;
  const AdendaSlideTime({
    super.key,
    this.time = ''

  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.centerLeft, // Start direction
          end: Alignment.centerRight, // End direction
          colors: [
            Color(0xff0081DC),
            Color(0xff60D0FA),
            Color(0xff60D0FA),
          ], // Customize your colors here
        ),
      ),
      child: Center(
        child: Container(
          padding: const EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 5),
          child: TextCustom(
            text: time,
            fontSize: FontSize.h8,
            color: Colors.white,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}