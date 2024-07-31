import 'package:biz_connect/app/config/themes/theme.dart';
import 'package:biz_connect/presentation/widgets/text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DropdownButtonFormFieldCustom extends StatefulWidget {
  final String text;
  const DropdownButtonFormFieldCustom({
    super.key,
    required this.text,
  });

  @override
  State<DropdownButtonFormFieldCustom> createState() =>
      _DropdownButtonFormFieldCustomState();
}

class _DropdownButtonFormFieldCustomState extends State<DropdownButtonFormFieldCustom> {
  String? dropdownValue;

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      icon: SvgPicture.asset(
        'assets/icons/arrow_down.svg',
        width: 20,
        height: 20,
      ),
      hint: TextCustom(
        text: widget.text,
        fontSize: FontSize.h9, 
        color: const Color(0xff91A6C4).withOpacity(0.8),
        fontWeight: FontWeight.w400,
      ),
      style: TextStyle(
        fontSize: FontSize.h9, 
        color: const Color(0xff122D58),
        fontWeight: FontWeight.w400,
        fontFamily: 'LINESeedSansTH',
      ),
      value: dropdownValue,
      onChanged: (String? newValue) {
        setState(() {
          dropdownValue = newValue!;
        });
      },
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(
            color: Color(0xffEAF4FF)
          ),
        ), focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(
            color: Color(0xffEAF4FF)
          ),
        ),
        border: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Color(0xffEAF4FF)
          ),
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      items: <String>['Apple', 'Mango', 'Banana', 'Peach']
      .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList()
    );
  }
}