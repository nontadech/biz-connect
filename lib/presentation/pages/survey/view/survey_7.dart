import 'package:biz_connect/app/config/themes/theme.dart';
import 'package:biz_connect/domain/entities/join_entity.dart';
import 'package:biz_connect/presentation/pages/survey/controllers/controllers.dart';
import 'package:biz_connect/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';

class Survey7 extends StatefulWidget {
  final SessionRatingData data;
  final int page;
  final SurveyController controller;
  const Survey7({
    super.key,
    required this.data,
    required this.page,
    required this.controller,
  });

  @override
  State<Survey7> createState() => _Survey7State();
}
class _Survey7State extends State<Survey7> {
  int select = 0;

  @override
  Widget build(BuildContext context) {
    if(widget.controller.answersController.length < widget.page){
      widget.controller.answersController.add(TextEditingController());
    }else{
      setState(() {
        select = widget.controller.answersController[widget.page - 1].text != '' ? int.parse(widget.controller.answersController[widget.page - 1].text) : 0;
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
        Center(
          child: Wrap(
            spacing: 15,
            runSpacing: 15,
            children: [
              for (var i = 1; i <= 10; i++)
              InkWell(
                onTap: () {
                  setState(() {
                    select = i;
                  });
                  widget.controller.answersController[widget.page - 1].text = i.toString();
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: i  == select ? const Color(0xff56BED6) : const Color(0xffEAF4FF),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  width: 54,
                  height: 50,
                  alignment: Alignment.center,
                  child: TextCustom(
                    text:'$i',
                    fontSize: FontSize.h8,
                    fontWeight: FontWeight.w500,
                    color: i == select ? Colors.white : const Color(0xff122D58),
                  )
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
