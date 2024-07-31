import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

enum RateType { 
  big, 
  middle, 
}
class Rate extends StatefulWidget {
  final RateType type;
  const Rate({
    super.key,
    this.type = RateType.big,
  });

  @override
  State<Rate> createState() =>
      _RateState();
}

class _RateState extends State<Rate> {
  bool status = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Color(0xffEAF4FF),
        borderRadius: BorderRadius.all(
          Radius.circular(12.0),
        ),
      ),
      padding: widget.type == RateType.big ? 
        const EdgeInsets.only(left: 80, right: 80, top: 20, bottom: 20) : 
        const EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SvgPicture.asset('assets/icons/tick_circle_active.svg'),
          SvgPicture.asset('assets/icons/tick_circle_active.svg'),
          SvgPicture.asset('assets/icons/tick_circle_active.svg'),
          SvgPicture.asset('assets/icons/tick_circle.svg'),
          SvgPicture.asset('assets/icons/tick_circle.svg'),
        ],
      ),
    );
  }
}