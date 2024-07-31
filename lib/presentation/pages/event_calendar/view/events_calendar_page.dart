import 'package:biz_connect/presentation/pages/event_calendar/controllers/controllers.dart';
import 'package:biz_connect/presentation/pages/event_calendar/view/event_calendar_list.dart';
import 'package:biz_connect/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class EventsCalendarPage extends GetView<EventCalendarController> {
  const EventsCalendarPage({super.key});


  @override
   Widget build(BuildContext context) {
    EventCalendarBinding().dependencies();
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBarCustom(
        context,
        title: 'Events Calendar',
        type: AppBarType.back,
      ),
      body: RefreshIndicator(
        color: Colors.white,
        backgroundColor: Colors.blue,
        onRefresh: () async {
          controller.fetchData();
        },
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: GetX(
            init: controller,
            initState: (state) {
            },
            builder: (_) {
              if(controller.news.value == null){
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
              return EventCalendarList(
                news: controller.news.value!,
              );
            }
          )
        ),
      )
    );
  }
}
