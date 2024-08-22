import 'package:biz_connect/domain/entities/event_entity.dart';
import 'package:biz_connect/presentation/pages/popular_event/controllers/controllers.dart';
import 'package:biz_connect/presentation/widgets/card_horizontal.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class PopularEventList extends StatelessWidget {
  final List<EventList> event;
  const PopularEventList({
    super.key,
    required this.event
  });

  Widget getCardWidgets(BuildContext context){
    List<Widget> widgetList = [];
    for(var i = 0; i < event.length; i++){
      widgetList.add(
        Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: CardHorizontal(
            title: event[i].title!,
            isFavorite: event[i].is_favorite,
            thumnail: event[i].image_display,
            location: event[i].location_name,
            date: event[i].date!,
            onTap: () {
              context.push('/popular_event', extra: {'event' :event[i]});
            },
            onTapHeart: () {
              final popularEventC = PopularEventController.call;
              popularEventC.setFavoriteEvent(event[i].event_id!);
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