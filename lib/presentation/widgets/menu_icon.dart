import 'package:biz_connect/app/config/themes/theme.dart';
import 'package:biz_connect/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';

class MenuIcon extends StatelessWidget {
  final VoidCallback? onTap;
  final Widget icon;
  final String title;

  const MenuIcon({
    super.key,
    required this.onTap,
    required this.icon,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 5),
        child: Column(
          children: [
            Container(
              clipBehavior:Clip.hardEdge,
              height: 80,
              width: 80,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
                border: Border.all(
                  color: const Color(0xffEAF4FF),
                  width: 1
                ),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0xff13B4FF).withOpacity(0.1),
                    blurRadius: 10
                  ),
                ],
              ),
              child: Center(
                child: icon
              ),
            ),
            SizedBox(
              width: 90,
              child: TextCustom(
                textAlign: TextAlign.center,
                text: title, 
                fontSize: FontSize.h9, 
                fontWeight: FontWeight.w400, 
                height: 1.2,
                color: const Color(0xff13315F)
              )
            )
          ],
        ),
      ),
    );
  }
}