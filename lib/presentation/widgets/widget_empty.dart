import 'package:biz_connect/app/config/themes/theme.dart';
import 'package:biz_connect/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';

class WidgetEmpty extends StatelessWidget {
  
  const WidgetEmpty({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SizedBox(
          height: 20,
        ),
        Center(
          child: TextCustom(
            text: 'You don`t have any saved', 
            fontSize: FontSize.h6, 
            fontWeight: FontWeight.w600, 
            color: const Color(0xff122D58)
          ),
        )
      ],
    );
  }
}