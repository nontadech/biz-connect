import 'package:biz_connect/app/config/themes/theme.dart';
import 'package:biz_connect/domain/entities/join_entity.dart';
import 'package:biz_connect/presentation/pages/survey/controllers/controllers.dart';
import 'package:biz_connect/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';

class Survey5 extends StatefulWidget {
  final SessionRatingData data;
  final int page;
  final SurveyController controller;
  const Survey5({
    super.key,
    required this.data,
    required this.page,
    required this.controller,
  });

  @override
  State<Survey5> createState() => _Survey5State();
}

class _Survey5State extends State<Survey5> {
  int rateValue = 0;

  @override
  Widget build(BuildContext context) {
    if(widget.controller.answersController.length < widget.page){
      widget.controller.answersController.add(TextEditingController());
    }else{
      setState(() {
        rateValue = widget.controller.answersController[widget.page - 1].text != '' ? int.parse(widget.controller.answersController[widget.page - 1].text) : 0;
      });
    }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextCustom(
          text: '${widget.page} ${widget.data.title}',
          fontSize: FontSize.h8, 
          fontWeight: FontWeight.w400, 
          height: 1.2,
          color: const Color(0xff122D58)
        ),
        const SizedBox(
          height: 15,
        ),
        SizedBox(
          width: 232,
          child: Rate(
            type: RateType.middle, 
            rate: rateValue,
            setRateCallBack: (value) {
              setState(() {
                rateValue = value;
              });
              widget.controller.answersController[widget.page - 1].text = value.toString();
            },
          ),
        )
      ],
    );
  }
}
