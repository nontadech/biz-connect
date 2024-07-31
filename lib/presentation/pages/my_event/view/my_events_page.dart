import 'package:biz_connect/presentation/pages/my_event/controllers/controllers.dart';
import 'package:biz_connect/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';


class MyEventsPage extends GetView<MyEventController> {
  const MyEventsPage({super.key});

  @override
   Widget build(BuildContext context) {
    MyEventBinding().dependencies();
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBarCustom(
        context,
        title: 'My Event',
        type: AppBarType.reload,
        tap: () {
          controller.isLoad(true);
          controller.getMyEventStat();
        },
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 25, right: 25, top: 10, bottom: 10),
        child: SingleChildScrollView(
          child: GetX(
            init: controller,
            initState: (state) {
            },
            builder: (_) {
              if(controller.evant.value == null){
                return const Column(
                  children: [
                    SizedBox(
                      height: 200,
                    ),
                    Center(
                      child: CircularProgressIndicator(),
                    )
                  ],
                );
              }
              final myEventStat = controller.evant.value?.my_event_stat;
              return Column(
                children: [
                  CardEvent(
                    isLoad: controller.isLoad.value!,
                    title: 'Today Event',
                    count: myEventStat!.my_today_joining.toString(),
                    onTap: () {
                      if(myEventStat.my_today_joining == 0){
                        return;
                      }
                      context.push('/my_event', extra: {'events': myEventStat.join_event_today});
                    },
                  ),
                  const SizedBox(height: 10),
                  CardEvent(
                    isLoad: controller.isLoad.value!,
                    title: 'Upcoming Event',
                    count: myEventStat.my_joining.toString(),
                    onTap: () {
                      if(myEventStat.my_joining == 0){
                        return;
                      }
                      context.push('/my_event', extra: {'events': myEventStat.join_event_data});
                    },
                  ),
                  const SizedBox(height: 10),
                  CardEvent(
                    isLoad: controller.isLoad.value!,
                    title: 'Past Event',
                    count: myEventStat.my_hist_joining.toString(),
                    onTap: () {
                      if(myEventStat.my_hist_joining == 0){
                        return;
                      }
                      context.push('/my_event', extra: {'events': myEventStat.join_hist_event_data});
                    },
                  ),
                  const SizedBox(height: 10),
                ]
              );
            }
          )
        ),
      )
    );
  }
}
