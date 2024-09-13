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
      int page = 0;
      for(PollData poll in controller.poll.value.data!){
        List<Widget> widgetList = [];
        widgetList.add(
          TextCustom(
            text: poll.question!,
            fontSize: FontSize.h6, 
            fontWeight: FontWeight.w400, 
            height: 1,
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
              groupValue: int.parse(controller.pollInput.firstWhere((element) => element.choice_id == choice.id && element.poll_id == poll.id, orElse: () => PollInput()).choice_id ?? '0'), 
              onChanged: (int int) {  
                controller.addAwnser(eventId, zoneId, poll.id.toString(), int.toString(), page);
              },
            ),
          );
        }
        page++;
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
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: SingleChildScrollView(
                      child: getCard(context, controller.step.value),
                    )
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      TextCustom(
                        text: '${controller.step.value+1}/${(controller.maxPage.value+1)}',
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
                        value: (controller.step.value+1)/(controller.maxPage.value+1),
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
