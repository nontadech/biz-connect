import 'package:biz_connect/app/config/themes/theme.dart';
import 'package:biz_connect/domain/entities/join_entity.dart';
import 'package:biz_connect/presentation/pages/survey/controllers/controllers.dart';
import 'package:biz_connect/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';

class Survey3 extends StatefulWidget {
  final SessionRatingData data;
  final int page;
  final SurveyController controller;
  const Survey3({
    super.key,
    required this.data,
    required this.page,
    required this.controller,
  });

  @override
  State<Survey3> createState() => _Survey3State();
}

class _Survey3State extends State<Survey3> {
  int groupValue = 0;
  @override
  Widget build(BuildContext context) {
    if(widget.controller.answersController.length < widget.page){
      widget.controller.answersController.add(TextEditingController());
      widget.controller.answersController[widget.page - 1].text = '0';
    }else{
      setState(() {
        groupValue = widget.controller.answersController[widget.page - 1].text != '' ? int.parse(widget.controller.answersController[widget.page - 1].text) : 0;
      });
    }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextCustom(
          text: '${widget.page} ${widget.data.title}',
          fontSize: FontSize.h8, 
          fontWeight: FontWeight.w400, 
          height: 1,
          color: const Color(0xff122D58)
        ),
        const SizedBox(
          height: 10,
        ),
        for(ChoiceItem item  in widget.data.choice_item)
        Column(
          children: [
            TextRadio(
              title: item.label, 
              value: item.id!, 
              groupValue: groupValue,
              onChanged: (int int) { 
                setState(() {
                  groupValue = int;
                });
                widget.controller.answersController[widget.page - 1].text = int.toString();
              },
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        )
      ],
    );
  }
}
