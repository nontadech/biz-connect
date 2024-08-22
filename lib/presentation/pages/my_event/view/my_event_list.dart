import 'package:biz_connect/domain/entities/event_entity.dart';
import 'package:biz_connect/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MyEventList extends StatelessWidget {
  final List<EventList> events;
  const MyEventList({
    super.key,
    required this.events,
  });

  Widget getCardWidgets(BuildContext context){
    List<Widget> widgetList = [];
    for(var i = 0; i < events.length; i++){
      widgetList.add(
        Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: CardHorizontal(
            title: events[i].title!,
            isFavorite: events[i].is_favorite,
            thumnail: events[i].image_display,
            location: events[i].venue_name,
            date: events[i].date!,
            onTap: () {
              context.push('/join', extra: {'event' :events[i]});
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
     return Padding(padding: const EdgeInsets.only(top: 10, bottom: 10),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Center(
          child: getCardWidgets(context),
        )
      )
    );
  }
}
