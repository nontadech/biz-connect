import 'package:biz_connect/app/config/themes/theme.dart';
import 'package:biz_connect/domain/entities/join_entity.dart';
import 'package:biz_connect/presentation/pages/survey/controllers/controllers.dart';
import 'package:biz_connect/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';

class Survey1 extends StatelessWidget {
  final SessionRatingData data;
  final int page;
  final SurveyController controller;
  const Survey1({
    super.key,
    required this.data,
    required this.page,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    if(controller.answersController.length < page){
      controller.answersController.add(TextEditingController());
    }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextCustom(
          text: '$page ${data.title}',
          fontSize: FontSize.h8, 
          fontWeight: FontWeight.w400, 
          height: 1,
          color: const Color(0xff122D58)
        ),
        const SizedBox(
          height: 20,
        ),
        TextFormFieldCustom(
          context,
          hintText: 'Answer here...',
          controller: controller.answersController[page - 1],
        ),
      ],
    );
  }
}
