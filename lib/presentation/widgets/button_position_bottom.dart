import 'package:biz_connect/presentation/widgets/elevated_button.dart';
import 'package:flutter/material.dart';

class ButtonPositionBottom extends StatelessWidget {
  final String text;
  final void Function() onPressed;
  final bool isDisabled;
  const ButtonPositionBottom({
    super.key,
    required this.text,
    required this.onPressed,
    this.isDisabled = false,
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
      child: ElevatedButtonCustom(
        text: text,
        onPressed: onPressed,
        isDisabled: isDisabled,
      ),
    );
  }
}