import 'package:flutter/material.dart';

class RadioCustom extends StatefulWidget {
  final int value;
  final int groupValue;
  final void Function(int) onChanged;
  const RadioCustom({super.key, required this.value, required this.groupValue, required this.onChanged});

  @override
  RadioCustomState createState() => RadioCustomState();
}

class RadioCustomState extends State<RadioCustom> {
  @override
  Widget build(BuildContext context) {
    bool selected = (widget.value == widget.groupValue);
    return InkWell(
      onTap: () => widget.onChanged(widget.value),
      child: Container(
        margin: const EdgeInsets.all(4),
        padding: const EdgeInsets.all(2),
        decoration: BoxDecoration(
          border: Border.all(
            color: const Color(0xff91A6C4),
            width: 1.5,
          ),
          shape: BoxShape.circle, 
          color: Colors.white
        ),
        child: Icon(
          Icons.circle,
          size: 18,
          color: selected ? const Color(0xff91A6C4) : Colors.white,
        ),
      ),
    );
  }
}