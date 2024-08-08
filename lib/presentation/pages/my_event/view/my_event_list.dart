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
      widgetList.add(Center(
          child: CardHorizontal(
            showFavorite: false,
            title: events[i].title!,
            isFavorite: events[i].is_favorite,
            thumnail: events[i].image_display,
            location: events[i].venue_name,
            date: events[i].start_time != '' ? '${events[i].date!} / ${events[i].start_time!} - ${events[i].end_time!}' : events[i].date!,
            onTap: () {
              context.push('/join', extra: {'event' :events[i]});
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
    return Padding(padding: const EdgeInsets.only(left: 25, right: 25, top: 10, bottom: 10),
      child: getCardWidgets(context) 
    );
  }
}
