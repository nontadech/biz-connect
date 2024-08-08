import 'package:biz_connect/app/config/themes/theme.dart';
import 'package:biz_connect/domain/entities/join_entity.dart';
import 'package:biz_connect/presentation/pages/survey/controllers/survey_controller.dart';
import 'package:biz_connect/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

class Survey6 extends StatelessWidget {
  final SessionRatingData data;
  final int page;
  final SurveyController controller;
  const Survey6({
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
    controller.context(context);
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
        InkWell( 
          onTap: () {
            showBarModalBottomSheet(
              expand: false,
              context: context,
              builder: (context) => SizedBox(
                height: 200,
                child: PickedImageWidget(
                  saveImage: controller.saveImage,
                  page: page,
                ),
              ),
            );
          },
          child: Container(
            alignment: Alignment.center,
            margin: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 10),
            width: 82.0,
            height: 22,
            decoration: BoxDecoration(
              color: const Color(0xff56BED6),
              borderRadius: BorderRadius.circular(50),
            ),
            child: const TextCustom(
              text: 'UPLOAD FILE', 
              fontSize: 8, 
              fontWeight: FontWeight.w600, 
              color: Colors.white
            )
          )
        ),
      ],
    );
  }
}
