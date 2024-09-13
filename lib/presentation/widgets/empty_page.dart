import 'package:biz_connect/app/config/themes/theme.dart';
import 'package:biz_connect/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class EmptyPage extends StatelessWidget {
  final SvgPicture? icon;
  final String text;
  const EmptyPage({
    super.key,
    this.icon,
    this.text = 'You don`t have any data'
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 120,
          height: 120,
          padding: const EdgeInsets.all(35),
          decoration: BoxDecoration(
            color: const Color.fromRGBO(86, 190, 214, 0.14),
            borderRadius: BorderRadius.circular(100),
           
          ),
          child: icon ?? SvgPicture.asset('assets/icons/empty_event.svg')
        ),
        const SizedBox(
          height: 20,
        ),
        Center(
          child: TextCustom(
            text: text, 
            fontSize: FontSize.h8, 
            fontWeight: FontWeight.w600, 
            color: const Color(0xff122D58)
          ),
        )
      ],
    );
  }
}