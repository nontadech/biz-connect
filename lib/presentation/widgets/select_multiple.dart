import 'package:biz_connect/app/config/themes/theme.dart';
import 'package:biz_connect/presentation/widgets/text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SelectMultiple extends StatelessWidget {
  final VoidCallback? onTap;
  final String title;
  final List<String> items;

  const SelectMultiple({
    super.key,
    required this.onTap,
    required this.title,
    required this.items,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextCustom(
                text: title, 
                fontSize: FontSize.h9, 
                fontWeight: FontWeight.w500, 
                color: const Color(0xff13315F)
              ),
              SvgPicture.asset('assets/icons/arrow_right.svg')
            ],
          ),
          Row(
            children: [
              Expanded(
                child: Wrap(
                  children: [
                    for (var i = 0; i < items.length; i++)
                      Container(
                        margin: const EdgeInsets.only(right: 10, top: 5, bottom: 5),
                        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 2),
                        decoration: BoxDecoration(
                          color: const Color(0xffEAF4FF),
                          border: Border.all(color: const Color(0xff007AFF)),
                          borderRadius: BorderRadius.circular(100),
                        ),
                        child: TextCustom(
                          text: items[i], 
                          fontSize: FontSize.h10, 
                          fontWeight: FontWeight.w500, 
                          color: const Color(0xff007AFF)
                        )
                      )
                  ]
                )
              ),
            ]
          )
        ],
      )
    );
  }
}