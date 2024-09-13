import 'package:biz_connect/app/config/themes/theme.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class TextFormFieldCustom extends StatefulWidget {
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

  @override
  TextFormFieldCustomState createState() => TextFormFieldCustomState();
}

class TextFormFieldCustomState extends State<TextFormFieldCustom> {


  late bool hidden;
  @override
  void initState() {
    widget.obscureText ? hidden = false : hidden = true;
    super.initState();
  }

  void openKeyboard(){
    FocusScope.of(context).requestFocus(widget.inputNode);
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: widget.onChanged,
      controller: widget.controller,
      maxLines: widget.maxLines,
      readOnly: widget.readOnly,
      autofocus: widget.autofocus,
      focusNode: widget.inputNode,
      validator: widget.validator,
      keyboardType: widget.keyboardType ?? (widget.isNumber ? TextInputType.number : TextInputType.text),
      obscureText: hidden ? false : true,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 20.0),
        hintText: widget.hintText.tr(),
         suffixIcon: widget.obscureText ? IconButton(
          onPressed: () => setState(() {
            hidden = !hidden;
          }),
          icon: hidden ? SvgPicture.asset('assets/icons/eye.svg') : SvgPicture.asset('assets/icons/eye-slash.svg'),
        ) : null,
        
        hintStyle: TextStyle(
          fontSize: FontSize.h9, 
          color: const Color(0xff91A6C4).withOpacity(0.8),
          fontWeight: FontWeight.w400,
          fontFamily: 'FC_Iconic',
        ),
        fillColor: Colors.white,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(widget.borderRadius),
          borderSide: const BorderSide(
            color: Color(0xffEAF4FF),
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(widget.borderRadius),
          borderSide: const BorderSide(
            color: Colors.red,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(widget.borderRadius),
          borderSide: const BorderSide(
            color: Color(0xffEAF4FF),
          ),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(widget.borderRadius),
          borderSide: const BorderSide(
            color: Colors.red,
          ),
        ),
      ),
    );
  }
}