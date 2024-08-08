import 'package:biz_connect/domain/entities/event_entity.dart';
import 'package:biz_connect/presentation/pages/join/controllers/controllers.dart';
import 'package:biz_connect/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';

class JoinPage extends GetView<JoinController> {
  final EventList event;
  JoinPage({
    super.key,
    required this.event
  });

  final items = [
    {
      'title': 'Agenda',
      'icon': 'assets/icons/agenda_join.svg',
      'page': '/join/agenda',
      'key': 'agenda'
    },
    {
      'title': 'Floor plan',
      'icon': 'assets/icons/zone.svg',
      'page': '/join/zone',
      'key': 'floor_plan'
    },
    {
      'title': 'Speaker',
      'icon': 'assets/icons/speaker.svg',
      'page': '/join/speakers',
      'key': 'speakers'
    },
    {
      'title': 'Download',
      'icon': 'assets/icons/download.svg',
      'page': '/join/downloads',
      'key': 'download'
    },
    {
      'title': 'Supported',
      'icon': 'assets/icons/supported.svg',
      'page': '/join/supported',
      'key': 'connections'
    },
    {
      'title': 'Gallery',
      'icon': 'assets/icons/gallery.svg',
      'page': '/join/gallery',
      'key': 'gallery'
    },
    {
      'title': 'Live poll',
      'icon': 'assets/icons/agenda_join.svg',
      'page': '/join/live_poll',
      'key': 'live_poll'
    },
    {
      'title': 'Survey',
      'icon': 'assets/icons/agenda_join.svg',
      'page': '/join/survey',
      'key': 'footer_survey'
    },
  ];
  @override
  Widget build(BuildContext context) {
    JoinBinding().dependencies();
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBarTicket(
        context,
        title: 'Joining',
        subject: event.title!,
        date: '${event.date!} ${event.start_time!} - ${event.date_end!} ${event.end_time!}',
        location: event.location_name!,
        eventId: event.event_id!
      ),
      body: GetX(
        init: controller,
        initState: (_){
          controller.getMenu(event.event_id!);
        },
        builder: (_){
          final settings = controller.menuList.value.settings;
          if(controller.menuList.value.settings.isEmpty){
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
          return SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Center(
              child: Wrap(
                children: items.asMap().entries.map((entry) {
                  final item = entry.value;
                   for (var setting in settings) {
                    if(setting.menu_name == item['key'].toString().toLowerCase() && setting.menu_status == 'Y'){
                      return Padding(
                        padding: const EdgeInsets.only(top: 5),
                        child: MenuIcon(
                          onTap: () => {
                            context.push(item['page'] as String, extra: {'event_id': event.event_id})
                          },
                          title: item['title'] as String,
                          icon: SvgPicture.asset(
                            item['icon'] as String, 
                            width: 37
                          )
                        )
                      );
                    }
                  }
                  return const SizedBox();
                }).toList() ,
              )
            )
          );
        }
      )
    );
  }
}
