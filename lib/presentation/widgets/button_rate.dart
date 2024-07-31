import 'package:biz_connect/app/config/themes/theme.dart';
import 'package:biz_connect/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ButtonRate extends StatelessWidget {
  final VoidCallback onPressed;

  const ButtonRate({
    super.key,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(100.0),
        ),
        gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [
            Color(0xff0081DC),
            Color(0xff60D0FA),
            Color(0xff60D0FA),
            Color(0xff62D5D8),
          ],
        ),
      ),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ButtonStyle(
          backgroundColor: WidgetStateProperty.all<Color>(Colors.transparent),
          shadowColor: WidgetStateProperty.all<Color>(Colors.transparent),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              'assets/icons/star.svg',
              width: 24,
            ),
            const SizedBox(width: 10,),
            Container(
              alignment: Alignment.center,
              height: 50.0,
              child: TextCustom(
                text: 'SESSION RATING',
                fontSize: FontSize.h10,
                fontWeight: FontWeight.w600,
                color: Colors.white
              ),
            ),
          ],
        )
      )
    );
  }
}