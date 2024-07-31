import 'package:biz_connect/app/config/themes/theme.dart';
import 'package:biz_connect/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
class TermConditionDetail extends StatelessWidget {
  final VoidCallback onTap;
  final String subject;
  final bool isSuccess;

  const TermConditionDetail({
    super.key,
    required this.onTap,
    required this.subject,
    required this.isSuccess,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 20),
      margin: const EdgeInsets.only(top: 10, bottom: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        border: Border.all(
          color: const Color(0xffEAF4FF),
          width: 1
        ),
      ),
      child: Row(
        children: [
          Container(
            clipBehavior:Clip.hardEdge,
            height: 58,
            width: 58,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: const Color(0xff13B4FF).withOpacity(0.1),
                  blurRadius: 7
                ),
              ],
            ),
            child: Center(
              child: SvgPicture.asset(
                'assets/icons/document.svg', 
                width: 26
              )
            ),
          ),
          const SizedBox(width: 20),
          Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextCustom(
                  text: subject, 
                  fontSize: FontSize.h7, 
                  fontWeight: FontWeight.w400, 
                  color: const Color(0xff122D58),
                  height: 1.2,
                ),
                const SizedBox(height: 20),
                InkWell(
                  onTap: onTap,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                        child: isSuccess ? TextCustom(
                          text: 'I accept the terms.', 
                          fontSize: FontSize.h8, 
                          fontWeight: FontWeight.w400, 
                          color: const Color(0xff56BED6),
                          height: 1.2,
                          decoration: TextDecoration.underline,
                          decorationColor: const Color(0xff56BED6),
                        ) : TextCustom(
                          text: 'Haven`t accepted the conditions yet.', 
                          fontSize: FontSize.h8, 
                          fontWeight: FontWeight.w400, 
                          color: const Color(0xffFF3A44),
                          height: 1.2,
                          decoration: TextDecoration.underline,
                          decorationColor: const Color(0xffFF3A44),
                        ),
                      ),
                      SvgPicture.asset('assets/icons/edit.svg', width: 25)
                    ],
                  )
                )
              ]
            )
          ),
        ],
      ), 
    );
  }
}