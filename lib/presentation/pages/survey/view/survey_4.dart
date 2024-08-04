import 'package:biz_connect/app/config/themes/theme.dart';
import 'package:biz_connect/domain/entities/join_entity.dart';
import 'package:biz_connect/presentation/pages/survey/controllers/controllers.dart';
import 'package:biz_connect/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';

class Survey4 extends StatefulWidget {
  final SessionRatingData data;
  final int page;
  final SurveyController controller;
  const Survey4({
    super.key,
    required this.data,
    required this.page,
    required this.controller,
  });

  @override
  State<Survey4> createState() => _Survey4State();
}

class _Survey4State extends State<Survey4> {
  List<String> selected = [];
  @override
  Widget build(BuildContext context) {
    if(widget.controller.answersController.length < widget.page){
      widget.controller.answersController.add(TextEditingController());
    }else{
      setState(() {
        selected = widget.controller.answersController[widget.page - 1].text != '' ? widget.controller.answersController[widget.page - 1].text.split(',') : [];
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
        for(ChoiceItem item  in widget.data.choice_item)
        Column(
          children: [
            Padding(padding:  
              const EdgeInsets.only(left: 5),
              child: TextCheckbox(
                title: item.label, 
                value: selected.firstWhere((element) => element == item.id.toString(), orElse: () => '') == item.id.toString(),
                onChanged: (bool bool) { 
                  if (bool) {
                    setState(() {
                      selected.remove(item.label);
                    });
                  } else {
                    setState(() {
                      selected.add(item.label);
                    });
                  }
                  if(widget.controller.answersController[widget.page - 1].text == ''){
                    widget.controller.answersController[widget.page - 1].text = item.id.toString();
                  }else{
                    widget.controller.answersController[widget.page - 1].text = '${widget.controller.answersController[widget.page - 1].text},${item.id}';
                  }
                },
              ),
              ),
            const SizedBox(
              height: 20,
            ),
          ],
        )
      ],
    );
  }
}
