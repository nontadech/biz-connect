import 'package:biz_connect/presentation/pages/my_ticket/controllers/controllers.dart';
import 'package:biz_connect/presentation/pages/my_ticket/view/my_ticket_detail.dart';
import 'package:biz_connect/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';


class MyTicketPage extends StatelessWidget {
  final int eventId;
  
  const MyTicketPage({
    super.key,
    required this.eventId
  });

  @override
   Widget build(BuildContext context) {
    MyTicketBinding().dependencies();
    return Scaffold(
      backgroundColor: const Color(0xFFEAF4FF),
      resizeToAvoidBottomInset: false,
      appBar: AppBarCustom(
        context,
        title: 'My Ticket',
        type: AppBarType.back,
      ),
      body: MyTicketDetail(eventId: eventId),
    );
  }
}
