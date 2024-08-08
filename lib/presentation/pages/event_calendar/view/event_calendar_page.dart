import 'package:biz_connect/domain/entities/event_entity.dart';
import 'package:biz_connect/presentation/pages/event_calendar/view/event_calendar_detail.dart';
import 'package:biz_connect/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';


class EventCalendarPage extends StatefulWidget {
  final EventList news;
  const EventCalendarPage({
    super.key,
    required this.news
  });

  @override
  State<EventCalendarPage> createState() => _EventCalendarPageState();
}

class _EventCalendarPageState extends State<EventCalendarPage> {
  @override
  void initState() {
    // Initialize & inject UserController() using Get.put()
    super.initState();
  }

  @override
   Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBarCustom(
        context,
        title: 'Events Calendar',
        type: AppBarType.share,
        url: widget.news.link_url,
      ),
      body: EventCalendarDetail(
        news: widget.news,
      )
    );
  }
}
