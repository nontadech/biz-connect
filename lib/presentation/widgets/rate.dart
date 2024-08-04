import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

enum RateType { 
  big, 
  middle, 
}
class Rate extends StatefulWidget {
  final int rate;
  final RateType type;
  final Function(int)? setRateCallBack;
  const Rate({
    super.key,
    this.type = RateType.big,
    required this.setRateCallBack,
    this.rate = 0,
  });

  @override
  State<Rate> createState() =>
      _RateState();
}

class _RateState extends State<Rate> {
  int status = 0;
  setRate(BuildContext context, position){
    double percent = widget.type == RateType.big ? (position/MediaQuery.of(context).size.width)*100 : (position/270)*100;
    if(widget.type == RateType.big){
      if(percent < 26.5){
        setState(() {
          status = 0;
        });
      } else if(percent < 37){
        setState(() {
          status = 1;
        });
      } else if(percent < 47.3){
        setState(() {
          status = 2;
        });
      } else if(percent < 57.5){
        setState(() {
          status = 3;
        });
      } else if(percent < 68.1){
        setState(() {
          status = 4;
        });
      } else{
        setState(() {
          status = 5;
        });
      }
    }else{
      if(percent < 18){
        setState(() {
          status = 0;
        });
      } else if(percent < 31.5){
        setState(() {
          status = 1;
        });
      } else if(percent < 47){
        setState(() {
          status = 2;
        });
      } else if(percent < 62.8){
        setState(() {
          status = 3;
        });
      } else if(percent < 78.6){
        setState(() {
          status = 4;
        });
      } else{
        setState(() {
          status = 5;
        });
        
      }
    }
    widget.setRateCallBack!(status);
  }
  Widget getStart(BuildContext context){
    List<Widget> widgetList = [];
    for(var i = 1; i <= 5; i++){
      widgetList.add(
        SvgPicture.asset(status >= i ? 'assets/icons/tick_circle_active.svg' : 'assets/icons/tick_circle.svg',)
      );
    }
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: widgetList,
    );
  }
  @override
  Widget build(BuildContext context) {
    setState(() {
      status = widget.rate;
    });
    return Listener(
      onPointerDown: (PointerDownEvent event) {
        setRate(context, event.position.dx);
      },
      onPointerMove: (PointerMoveEvent event) {
        setRate(context, event.position.dx);
      },
      child: Container(
        decoration: const BoxDecoration(
          color: Color(0xffEAF4FF),
          borderRadius: BorderRadius.all(
            Radius.circular(12.0),
          ),
        ),
        padding: widget.type == RateType.big ? 
          const EdgeInsets.only(left: 80, right: 80, top: 20, bottom: 20) : 
          const EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 20),
        child: getStart(context)
      )
    );
  }
}