import 'package:biz_connect/app/config/themes/theme.dart';
import 'package:biz_connect/presentation/widgets/text.dart';
import 'package:flutter/material.dart';

class CardEvent extends StatelessWidget {
  final String title;
  final String count;
  final bool isLoad;
  final VoidCallback onTap;

  const CardEvent({
    super.key,
    required this.title,
    required this.isLoad,
    required this.count,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Card(
        child: Padding(padding: const EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextCustom(
                text: title, 
                fontSize: FontSize.h6, 
                fontWeight: FontWeight.w600, 
                color: const Color(0xff13315F)
              ),
              SizedBox(
                height: 58,
                width: 58,
                child: Center(
                  child: isLoad ? 
                  const CircularProgressIndicator() :
                  TextCustom(
                    text: count, 
                    fontSize: FontSize.h6, 
                    fontWeight: FontWeight.w600, 
                    color: const Color(0xff56BED6)
                  )
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}