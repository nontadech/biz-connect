import 'package:biz_connect/app/config/themes/theme.dart';
import 'package:biz_connect/presentation/pages/survey/controllers/survey_controller.dart';
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
import 'package:go_router/go_router.dart';
class SurveyPage extends StatefulWidget {
  const SurveyPage({super.key});

  @override
  State<SurveyPage> createState() => _SurveyPageState();
}

class _SurveyPageState extends State<SurveyPage> {
  @override
  void initState() {
    // Initialize & inject UserController() using Get.put()
    super.initState();
    Get.put<SurveyController>(SurveyController(1), permanent: true);
  }
 
  @override
  Widget build(BuildContext context) {
    final surveyC = SurveyController.call;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBarCustom(
        context,
        title: 'Survey',
        type: AppBarType.back,
      ),
      body: Stack(
        children: [ 
          Padding(
            padding: const EdgeInsets.only(left: 25, right: 25, top: 20, bottom: 40),
            child: Column(
              children: [
                Expanded(
                  child: Obx(() {
                    switch (surveyC.numberPage.value) {
                      case 1:
                        return const Survey1();
                      case 2:
                        return const Survey2();
                      case 3:
                        return const Survey3();
                      case 4:
                        return const Survey4();
                      case 5:
                        return const Survey5();
                      case 6:
                        return const Survey6();
                      case 7:
                      default:
                        return const Survey7();
                    }
                  }), 
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Obx(() =>
                      TextCustom(
                        text: '${surveyC.numberPage.value}/${surveyC.maxPage}',
                        fontSize: FontSize.h1, 
                        fontWeight: FontWeight.w500, 
                        color: const Color(0xff56BED6),
                        height: 1.2,
                      )
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
                      value: surveyC.numberPage.value/surveyC.maxPage,
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
              onPressed: () {
                surveyC.onNext();
                if (surveyC.numberPage.value == surveyC.maxPage) {
                  context.push('/join/survey_thank');
                }
              },
              onCancel: () {
                surveyC.onBack();
              }
            )
          )
        ]
      )
    );
  }
}
