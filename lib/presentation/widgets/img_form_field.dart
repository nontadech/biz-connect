import 'package:biz_connect/app/config/themes/theme.dart';
import 'package:biz_connect/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';

class ImgFormFieldCustom extends StatelessWidget {
  final FocusNode inputNode = FocusNode();
  final String hintText;
  final bool obscureText;
  final bool isNumber;
  final BuildContext context;
  final bool autofocus;
  final bool readOnly;
  final int maxLines;
  final double borderRadius;

  ImgFormFieldCustom(
    this.context,
  {
    super.key,
    required this.hintText,
    this.obscureText = false,
    this.isNumber = false,
    this.autofocus = false,
    this.readOnly = false,
    this.maxLines = 1,
    this.borderRadius = 8.0
  });


  void openKeyboard(){
    FocusScope.of(context).requestFocus(inputNode);
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: maxLines,
      readOnly: readOnly,
      autofocus: autofocus,
      focusNode: inputNode,
      keyboardType: isNumber ? TextInputType.number : TextInputType.text,
      obscureText: obscureText,
      decoration: InputDecoration(
         suffixIcon: Padding(
          padding: const EdgeInsets.all(0.0),
          child: Container(
            alignment: Alignment.center,
            margin: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 10),
            width: 82.0,
            height: 22,
            decoration: BoxDecoration(
              color: const Color(0xff56BED6),
              borderRadius: BorderRadius.circular(50),
            ),
            child: const TextCustom(
              text: 'UPLOAD FILE', 
              fontSize: 8, 
              fontWeight: FontWeight.w600, 
              color: Colors.white
            )
          ),
        ),
        contentPadding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 20.0),
        hintText: hintText,
        hintStyle: TextStyle(
          fontSize: FontSize.h9, 
          color: const Color(0xff91A6C4).withOpacity(0.8),
          fontWeight: FontWeight.w400,
          fontFamily: 'LINESeedSansTH',
        ),
        fillColor: Colors.white,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius),
          borderSide: const BorderSide(
            color: Color(0xffEAF4FF),
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius),
          borderSide: const BorderSide(
            color: Color(0xffEAF4FF),
          ),
        ),
      ),
    );
  }
}