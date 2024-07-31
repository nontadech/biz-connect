import 'package:biz_connect/domain/entities/event_entity.dart';
import 'package:biz_connect/presentation/pages/my_event/view/my_event_list.dart';
import 'package:biz_connect/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';


class MyEventPage extends StatefulWidget {
  final List<EventList> events;
  const MyEventPage({
    super.key,
    required this.events,
  });

  @override
  State<MyEventPage> createState() => _MyEventPageState();
}

class _MyEventPageState extends State<MyEventPage> {
  @override
  void initState() {
    // Initialize & inject UserController() using Get.put()
    super.initState();
  }

  @override
   Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEAF4FF),
      resizeToAvoidBottomInset: false,
      appBar: AppBarCustom(
        context,
        title: 'My Event',
        type: AppBarType.back,
      ),
      body: MyEventList(
        events: widget.events
      ),
    );
  }
}
