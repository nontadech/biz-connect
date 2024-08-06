import 'package:biz_connect/app/config/themes/theme.dart';
import 'package:biz_connect/domain/entities/poll_entity.dart';
import 'package:biz_connect/presentation/pages/live_poll/controllers/controllers.dart';
import 'package:biz_connect/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Poll extends GetView<LivePollController> {
  final int eventId;
  final int zoneId;

  const Poll({
    super.key,
    required this.eventId,
    required this.zoneId,
  });

  Widget getCard(BuildContext context, int index){ 
    return Obx(() {
      List<List<Widget>> widgetData = [];
      for(PollData poll in controller.poll.value.data!){
        List<Widget> widgetList = [];
        widgetList.add(
          TextCustom(
            text: poll.question!,
            fontSize: FontSize.h6, 
            fontWeight: FontWeight.w400, 
            height: 1.2,
            color: const Color(0xff122D58)
          ),
        );
        for(Choice choice in poll.choice_list!){
          widgetList.add(
            const SizedBox(
              height: 10,
            ),
          );
 
          widgetList.add(
            TextRadio(
              title: choice.awnser!, 
              value: int.parse(choice.id ?? '0'), 
              groupValue: int.parse(controller.pollInput.firstWhere((element) => element.choice_id == choice.id, orElse: () => PollInput()).choice_id ?? '0'), 
              onChanged: (int int) {  
                controller.addAwnser(eventId, zoneId, poll.id.toString(), int.toString());
              },
            ),
          );
        }
        widgetData.add(widgetList);
      }
      return Column(
        children: widgetData[index],
      );
    }
    );
  }

  @override
  Widget build(BuildContext context) {
    LivePollBinding().dependencies();
  
    return GetX(
      init: controller,
      initState: (_){
        controller.context(context);
        controller.step(0);
        controller.getPoll(eventId, zoneId);
      },
      builder: (_){
        if(!controller.isLoadingPoll.value){
          return Column(
            children: [
              const SizedBox(
                height: 200,
              ),
              Center(
                child: controller.isDataEmtpyPoll.value ? const SizedBox() : const CircularProgressIndicator(),
              )
            ],
          );
        }
        return Stack(
          children: [ 
            Padding(
              padding: const EdgeInsets.only(left: 25, right: 25, top: 10, bottom: 40),
              child: getCard(context, controller.step.value),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: ButtonPositionTwoBottom(
                text: 'Done',
                onPressed: () {
                  controller.onNext();
                },
                onCancel: () {
                  controller.onBack();
                }
              )
            )
          ]
        );
      }
    );
  }
}
