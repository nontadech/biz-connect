import 'package:biz_connect/domain/entities/ticket_entity.dart';
import 'package:biz_connect/presentation/pages/my_ticket/controllers/controllers.dart';
import 'package:biz_connect/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MyTicketList extends StatelessWidget {
  final List<TicketData> tickets;
  const MyTicketList({
    super.key,
    required this.tickets,
  });

   Widget getCardWidgets(BuildContext context){
    List<Widget> widgetList = [];
    for(var i = 0; i < tickets.length; i++){
      widgetList.add(Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: CardHorizontal(
            title: tickets[i].event_title!,
            thumnail: tickets[i].image_display,
            location: tickets[i].venue_name,
            date: tickets[i].event_date!,
            onTap: () {
              context.push('/my_ticket', extra: {'event_id' :tickets[i].event_id});
            },
          )
        )
      );
    }
    if(widgetList.length % 2 != 0){
      widgetList.add(
        const SizedBox(
          width: 179,
        )
      );
    }
    return Wrap(
      spacing: 10,
      children: widgetList
    );
  }

  @override
  Widget build(BuildContext context) {
    MyTicketBinding().dependencies();
    return Padding(
      padding: const EdgeInsets.only(top: 10, bottom: 10),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Center(
          child: getCardWidgets(context),
        )
      )
    );
  }
}