import 'package:biz_connect/app/config/themes/theme.dart';
import 'package:biz_connect/presentation/widgets/radio.dart';
import 'package:biz_connect/presentation/widgets/text.dart';
import 'package:flutter/material.dart';

class TextRadio extends StatefulWidget {
  final String title;
  final int value;
  final int groupValue;
  final void Function(int) onChanged;

  const TextRadio({
    super.key, 
    required this.value, 
    required this.groupValue, 
    required this.onChanged,
    required this.title
  });

  @override
  TextRadioState createState() => TextRadioState();
}

class TextRadioState extends State<TextRadio> {
  @override
  Widget build(BuildContext context) {

     return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        RadioCustom(
          value: widget.value, 
          groupValue: widget.groupValue, 
          onChanged: widget.onChanged,

        ),
        const SizedBox(width: 10,),
        Flexible(
          child: TextCustom(
            height: 1.2,
            text: widget.title, 
            fontSize: FontSize.h8, 
            fontWeight: FontWeight.w400, 
            color: const Color(0xff122D58)
          )
        )
      ],
    );
  }
}