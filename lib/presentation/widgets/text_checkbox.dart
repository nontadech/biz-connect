import 'package:biz_connect/app/config/themes/theme.dart';
import 'package:biz_connect/presentation/widgets/checkbox.dart';
import 'package:biz_connect/presentation/widgets/text.dart';
import 'package:flutter/material.dart';

class TextCheckbox extends StatefulWidget {
  final String title;
  final bool value;
  final void Function(bool) onChanged;

  const TextCheckbox({
    super.key, 
    required this.value, 
    required this.onChanged,
    required this.title
  });

  @override
  TextCheckboxState createState() => TextCheckboxState();
}

class TextCheckboxState extends State<TextCheckbox> {
  @override
  Widget build(BuildContext context) {

     return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CheckboxCustom(
          value: widget.value,
          onChanged: (bool? value) {
            widget.onChanged(widget.value);
          },
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