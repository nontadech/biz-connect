import 'package:biz_connect/app/config/themes/theme.dart';
import 'package:biz_connect/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CardLivePoll extends StatelessWidget {
  final VoidCallback onTap;
  const CardLivePoll({
    super.key,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.only(top: 10, bottom: 10),
        padding: const EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
        decoration: BoxDecoration(
          color: const Color(0xffFFFFFF),
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: const Color(0xffEAF4FF),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextCustom(
              text: 'B2GC: Blockchain 2 Government Conference', 
              fontSize: FontSize.h7, 
              fontWeight: FontWeight.w600, 
              height: 1.2,
              color: const Color(0xff13315F)
            ),
            const SizedBox(
              height: 10,
            ),
            TextIcon(
              title: '17 Jan 2024 14:00', 
              fontSize: FontSize.h9,
              icon: SvgPicture.asset(
                'assets/icons/agenda_join.svg',
                width: 24,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            TextIcon(
              title: 'Blockchain Technology Center (BTC) Phuket', 
              fontSize: FontSize.h9,
              icon: SvgPicture.asset(
                'assets/icons/location.svg',
                width: 24,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}