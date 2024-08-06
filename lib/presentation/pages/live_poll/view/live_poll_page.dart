import 'package:biz_connect/app/config/themes/theme.dart';
import 'package:biz_connect/presentation/pages/live_poll/controllers/controllers.dart';
import 'package:biz_connect/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';
class LivePollPage extends GetView<LivePollController> {
  final int eventId;

  const LivePollPage({
    super.key,
    required this.eventId,
  });

  Widget getCard(BuildContext context){
    List<Widget> widgetList = [];
    for (var event in controller.eventFromRegister.value.events!) {
      widgetList.add(
        TextCustom(
          text: 'Select Zone', 
          fontSize: FontSize.h8, 
          fontWeight: FontWeight.w600, 
          color: const Color(0xff13315F)
        )
      );
      for (var zone in event.zone_avalible!) {
        widgetList.add(
          CardLivePoll(
            title: zone.zone_name!,
            dateTime: '${zone.date!} ${zone.start_time!}',
            location: zone.location!,
            onTap: () {  
              context.push(
                '/join/live_poll/detail',
                extra: {
                  'event_id': eventId,
                  'zone_id': zone.zone_id
                }
              );
            },
          ),
        );
      }
    } 
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: widgetList
    );
  }

  @override
  Widget build(BuildContext context) {
    LivePollBinding().dependencies();
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBarCustom(
        context,
        title: 'Live poll',
        type: AppBarType.back,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 25, right: 25, top: 10, bottom: 40),
          child: GetX(
            init: controller,
            initState: (_){
              controller.getZone(eventId);
            },
            builder: (_){
               if(!controller.isLoading.value){
                return Column(
                  children: [
                    const SizedBox(
                      height: 200,
                    ),
                    Center(
                      child: controller.isDataEmtpy.value ? const SizedBox() : const CircularProgressIndicator(),
                    )
                  ],
                );
              }
              return getCard(context);
            }
          )
        ),
      ),
    );
  }
}
