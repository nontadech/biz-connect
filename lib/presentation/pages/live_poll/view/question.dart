import 'package:biz_connect/domain/entities/poll_entity.dart';
import 'package:biz_connect/presentation/pages/live_poll/controllers/live_poll_controller.dart';
import 'package:biz_connect/presentation/pages/live_poll/view/chat_box.dart';
import 'package:biz_connect/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class Question extends GetView<LivePollController> {
  final int eventId;
  final int zoneId;

  const Question({
    super.key,
    required this.eventId,
    required this.zoneId,
  });

  @override
  Widget build(BuildContext context) {
    return GetX(
      init: controller,
      initState: (_){
        controller.context(context);
        controller.getQuestion(eventId, zoneId);
      },
      builder: (_){ 
        if(!controller.isLoadingQuestion.value){
          return Column(
            children: [
              const SizedBox(
                height: 200,
              ),
              Center(
                child: controller.isDataEmtpyQuestion.value ? const SizedBox() : const CircularProgressIndicator(),
              )
            ],
          );
        }
        return Stack(
          children: [
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(left: 25, right: 25, top: 10, bottom: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    for(QuestionData question in controller.question)
                    ChatBox(
                      name: question.user_name!,
                      avatar: question.user_profile!,
                      msg: question.text!,
                    ),
                  ]
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: ButtonPositionChat(
                questionFormKey: controller.questionFormKey,
                msgController: controller.msgController,
                onTap: () {
                  controller.addQuestion(eventId, zoneId);
                }
              )
            )
          ]
        );
      }
    );
  }
}
