import 'package:biz_connect/app/config/themes/theme.dart';
import 'package:biz_connect/presentation/pages/rate/controllers/controllers.dart';
import 'package:biz_connect/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RateForm extends GetView<RateController> {
  final int agendaId;
  final int eventId;

  const RateForm({
    super.key,
    required this.agendaId,
    required this.eventId
  });

  @override
  Widget build(BuildContext context) {
    RateBinding().dependencies();
        controller.context.value = context;

    return GetX(
      init: controller,
      initState: (_) {
        controller.getSessionRating(agendaId, eventId);
      },
      builder: (_) {
        if(controller.sessionAnswer.value.answer_status) {
          controller.commentController.text = controller.sessionAnswer.value.answer_list[0].text!;
          controller.rate(controller.sessionAnswer.value.answer_list[0].rating!);
        }
        return Form(
          key: controller.ratePageFormKey,
          child: Padding(
            padding: const EdgeInsets.only(left: 25, right: 25, bottom: 40, top: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextCustom(
                  text: 'Tap s star to rate', 
                  fontSize: FontSize.h9, 
                  fontWeight: FontWeight.w400, 
                  color: const Color(0xff122D58)
                ),
                const SizedBox(
                  height: 10,
                ),
                Rate(
                  type: RateType.big,
                  setRateCallBack: controller.setRate,
                  rate: controller.rate.value
                ),
                const SizedBox(
                  height: 10,
                ),
                TextCustom(
                  text: 'Comment', 
                  fontSize: FontSize.h9, 
                  fontWeight: FontWeight.w400, 
                  color: const Color(0xff122D58)
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFormFieldCustom(
                  controller: controller.commentController,
                  context,
                  hintText: 'Type here...',
                  maxLines: 7,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter your comment';
                    }
                    return null;
                  },
                ),
                Expanded(child: Container()),
                controller.sessionAnswer.value.answer_status ? Container() : 
                ElevatedButtonCustom(
                  text: 'DONE',
                  onPressed: () {
                    controller.rateAgenda(agendaId, eventId);
                  },
                ),
              ],
            )
          ),
        );
      }
    );
  }
}