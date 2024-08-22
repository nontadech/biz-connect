import 'package:biz_connect/domain/entities/event_entity.dart';
import 'package:biz_connect/presentation/pages/popular_event/view/popular_event_detail.dart';
import 'package:flutter/material.dart';


class PopularEventPage extends StatefulWidget {
  final EventList event;
  final bool isPrivate;
  const PopularEventPage({
    super.key,
    required this.event,
    this.isPrivate = false,
  });

  @override
  State<PopularEventPage> createState() => _PopularEventPageState();
}

class _PopularEventPageState extends State<PopularEventPage> {
  @override
  void initState() {
    // Initialize & inject UserController() using Get.put()
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: PopularEventDetail(
        event: widget.event,
        isPrivate: widget.isPrivate,
      )
    );
  }
}
