import 'package:biz_connect/presentation/widgets/text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ButtonPositionChat extends StatelessWidget {
  final void Function() onTap;
  const ButtonPositionChat({
    super.key,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.only(top: 10, bottom: 40, left: 20, right: 20),
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          border: const Border(
            top: BorderSide(
              color: Colors.white,
              width: 1.0,
            ),
          ),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: const Color(0xff000000).withOpacity(0.1),
              blurRadius: 12
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              child: Container(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: TextFormFieldCustom(
                  context,
                  hintText: 'Type a message...',
                  borderRadius: 100,
                ),
              ),
            ),
            Container(
              width: 43,
              height: 43,
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: const Color(0xff56BED6),
                borderRadius: BorderRadius.circular(100),
              ),
              child: SvgPicture.asset('assets/icons/send.svg'),
            )
          ],
        ),
      )
    );
  }
}