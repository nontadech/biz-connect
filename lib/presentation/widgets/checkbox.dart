import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CheckboxCustom extends StatefulWidget {
  final bool value;
  final void Function(bool) onChanged;
  const CheckboxCustom({
    super.key, 
    required this.value, 
    required this.onChanged
  });

  @override
  CheckboxCustomState createState() => CheckboxCustomState();
}

class CheckboxCustomState extends State<CheckboxCustom> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // setState(() => isChecked = !isChecked);
        widget.onChanged(!widget.value);
      },
      child: Container(
        width: 22,
        height: 22,
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(
          border: Border.all(
            color: const Color(0xff91A6C4),
            width: widget.value ? 0 : 1.5,
          ),
          borderRadius: BorderRadius.circular(6.0),
        ),
        child: widget.value
        ? SvgPicture.asset(
            'assets/icons/right.svg',
            colorFilter: const ColorFilter.mode(
              Color(0xff56BED6),
              BlendMode.srcIn,
            ),
          )
        : null,
      ),
    );
  }
}