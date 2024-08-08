import 'package:biz_connect/app/config/themes/theme.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class TextFormFieldCustom extends StatelessWidget {
  final FocusNode inputNode = FocusNode();
  final String hintText;
  final bool obscureText;
  final bool isNumber;
  final BuildContext context;
  final bool autofocus;
  final bool readOnly;
  final int maxLines;
  final double borderRadius;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final TextInputType? keyboardType;
  final void Function(String)? onChanged;

  TextFormFieldCustom(
    this.context,
  {
    super.key,
    required this.hintText,
    this.controller,
    this.obscureText = false,
    this.isNumber = false,
    this.autofocus = false,
    this.readOnly = false,
    this.maxLines = 1,
    this.borderRadius = 8.0,
    this.validator,
    this.keyboardType,
    this.onChanged,
  });


  void openKeyboard(){
    FocusScope.of(context).requestFocus(inputNode);
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChanged,
      controller: controller,
      maxLines: maxLines,
      readOnly: readOnly,
      autofocus: autofocus,
      focusNode: inputNode,
      validator: validator,
      keyboardType: keyboardType ?? (isNumber ? TextInputType.number : TextInputType.text),
      obscureText: obscureText,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 20.0),
        hintText: hintText.tr(),
        hintStyle: TextStyle(
          fontSize: FontSize.h9, 
          color: const Color(0xff91A6C4).withOpacity(0.8),
          fontWeight: FontWeight.w400,
          fontFamily: 'FC_Iconic',
        ),
        fillColor: Colors.white,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius),
          borderSide: const BorderSide(
            color: Color(0xffEAF4FF),
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius),
          borderSide: const BorderSide(
            color: Colors.red,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius),
          borderSide: const BorderSide(
            color: Color(0xffEAF4FF),
          ),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius),
          borderSide: const BorderSide(
            color: Colors.red,
          ),
        ),
      ),
    );
  }
}