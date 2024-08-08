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
      widgetList.add(Center(
          child: CardHorizontal(
            showFavorite: false,
            title: tickets[i].event_title!,
            thumnail: tickets[i].image_display,
            location: tickets[i].venue_name,
            date: tickets[i].event_start_time != '' ? '${tickets[i].event_date!} / ${tickets[i].event_start_time!} - ${tickets[i].event_date_end!}' : tickets[i].event_end_time!,
            onTap: () {
              context.push('/my_ticket', extra: {'event_id' :tickets[i].event_id});
            },
          )
        )
      );
    }
    return GridView.count(
        shrinkWrap: true,
        crossAxisCount: 2,
        childAspectRatio: 0.44,
        mainAxisSpacing: 10,
        children: widgetList
    );
  }

  @override
  Widget build(BuildContext context) {
    MyTicketBinding().dependencies();
    return Padding(padding: const EdgeInsets.only(left: 25, right: 25, top: 10, bottom: 10),
      child: getCardWidgets(context),
    );
      
  }
}