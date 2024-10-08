import 'package:biz_connect/app/config/themes/theme.dart';
import 'package:biz_connect/domain/entities/join_entity.dart';
import 'package:biz_connect/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SessionDetail extends StatelessWidget {
  final SessionList session;
  const SessionDetail({
    super.key,
    required this.session
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
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
            text: '${session.start_time} - ${session.end_time}', 
            fontSize: FontSize.h9, 
            fontWeight: FontWeight.w600, 
            color: const Color(0xff13315F)
          ),
          TextCustom(
            text: session.title!, 
            fontSize: FontSize.h7, 
            height: 1,
            fontWeight: FontWeight.w600, 
            color: const Color(0xff13315F)
          ),
          const SizedBox(
            height: 20,
          ),
          TextCustom(
            text: session.detail!, 
            fontSize: FontSize.h8, 
            fontWeight: FontWeight.w500, 
            color: const Color(0xff122D58),
            height: 1,
          ),
          const SizedBox(
            height: 10,
          ),
          TextIcon(
            title: session.location!, 
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
    );
  }
}