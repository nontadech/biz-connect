import 'package:biz_connect/presentation/widgets/elevated_button.dart';
import 'package:biz_connect/presentation/widgets/elevated_button_outline_border.dart';
import 'package:flutter/material.dart';

class ButtonPositionTwoBottom extends StatelessWidget {
  final String text;
  final void Function() onPressed;
  final void Function() onCancel;
  const ButtonPositionTwoBottom({
    super.key,
    required this.text,
    required this.onPressed,
    required this.onCancel,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
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
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.4,
            child: ElevatedButtonOutlineBorder(
              text: 'BACK',
              onPressed: onCancel
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.4,
              child:ElevatedButtonCustom(
              text: 'NEXT',
              onPressed: onPressed
            ),
          )
        ],
      ),
    );
  }
}