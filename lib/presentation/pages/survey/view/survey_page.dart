import 'package:biz_connect/app/config/themes/theme.dart';
import 'package:biz_connect/domain/entities/join_entity.dart';
import 'package:biz_connect/presentation/pages/survey/controllers/controllers.dart';
import 'package:biz_connect/presentation/pages/survey/view/survey_1.dart';
import 'package:biz_connect/presentation/pages/survey/view/survey_2.dart';
import 'package:biz_connect/presentation/pages/survey/view/survey_3.dart';
import 'package:biz_connect/presentation/pages/survey/view/survey_4.dart';
import 'package:biz_connect/presentation/pages/survey/view/survey_5.dart';
import 'package:biz_connect/presentation/pages/survey/view/survey_6.dart';
import 'package:biz_connect/presentation/pages/survey/view/survey_7.dart';
import 'package:biz_connect/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class SurveyPage extends GetView<SurveyController> {
  final int eventId;
  const SurveyPage({
    super.key,
    required this.eventId,
  });

  Widget getSurvey(int numberPage, SessionRatingData sessionRating){
    switch (sessionRating.quiestion_type_name) {
      case QuiestionTypeName.singleText:
        return Survey1(
          data: sessionRating,
          page: numberPage,
          controller: controller,
        );
      case QuiestionTypeName.longText:
        return Survey2(
          data: sessionRating,
          page: numberPage,
          controller: controller,
        );
      case QuiestionTypeName.singleChoice:
        return Survey3(
          data: sessionRating,
          page: numberPage,
          controller: controller,
        );
      case QuiestionTypeName.multipleChoice:
        return Survey4(
          data: sessionRating,
          page: numberPage,
          controller: controller,
        );
      case QuiestionTypeName.star:
        return Survey5(
          data: sessionRating,
          page: numberPage,
          controller: controller,
        );
      case QuiestionTypeName.attachImage:
        return Survey6(
          data: sessionRating,
          page: numberPage,
          controller: controller,
        );
      case QuiestionTypeName.rateTen:
        return Survey7(
          data: sessionRating,
          page: numberPage,
          controller: controller,
        );
      default:
        return Survey7(
          data: sessionRating,
          page: numberPage,
          controller: controller,
        );
    }
  }

  @override
  Widget build(BuildContext context) {
    SurveyBinding().dependencies();
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBarCustom(
        context,
        title: 'Survey',
        type: AppBarType.back,
      ),
      body: GetX(
        init: controller,
        initState: (_){

      
          for(int i = 0; i < controller.answersController.length; i++){
            controller.answersController[i] = TextEditingController();
          }
  
          controller.img.value = '';
          controller.numberPage.value = 1;
          controller.getSurvey(eventId);
        },
        builder: (_){
          if(!controller.isLoading.value || controller.sessionRating.value.data!.isEmpty){
            return Column(
              children: [
                const SizedBox(
                  height: 200,
                ),
                Center(
                  child: controller.isDataEmtpy.value || controller.sessionRating.value.data!.isEmpty ? const SizedBox() : const CircularProgressIndicator(),
                )
              ],
            );
          }
          return Stack(
            children: [ 
              Padding(
                padding: const EdgeInsets.only(left: 25, right: 25, top: 20, bottom: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: getSurvey(controller.numberPage.value, controller.sessionRating.value.data![controller.numberPage.value-1]),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        TextCustom(
                          text: '${controller.numberPage.value}/${controller.maxPage.value}',
                          fontSize: FontSize.h1, 
                          fontWeight: FontWeight.w500, 
                          color: const Color(0xff56BED6),
                          height: 1,
                        ),
                        const SizedBox(width: 5,),
                        TextCustom(
                          text: 'COMPLETE',
                          fontSize: FontSize.h10, 
                          fontWeight: FontWeight.w400, 
                          color: const Color(0xff56BED6),
                          height: 1.7,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 6,
                      child: ClipRRect(
                        borderRadius: const BorderRadius.all(Radius.circular(10)),
                        child: Obx(() => LinearProgressIndicator(
                          value: controller.numberPage.value/controller.maxPage.value,
                          valueColor: const AlwaysStoppedAnimation<Color>(Color(0xff56BED6)),
                          backgroundColor: const Color(0xffEAF4FF),
                          ),
                        )
                      ),
                    ),
                    const SizedBox(
                      height: 90,
                    )
                  ],
                )
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: ButtonPositionTwoBottom(
                  text: 'Done',
                  onPressed: () async {
                    if(controller.answersController[controller.numberPage.value-1].text != ''){
                      if (controller.numberPage.value == controller.maxPage.value) {
                        controller.context(context);
                        await controller.saveSurvey(eventId);
                      }
                      controller.onNext();
                    }else{
                     popupStatus(
                        context, 
                        PopupStatusType.error, 
                        message: 'Please fill in the answer',
                      );
                    }
                  },
                  onCancel: () {
                    controller.onBack();
                  }
                )
              )
            ]
          );
        }
      )
    );
  }
}
