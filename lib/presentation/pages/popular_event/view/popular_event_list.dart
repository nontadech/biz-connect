import 'package:biz_connect/domain/entities/event_entity.dart';
import 'package:biz_connect/presentation/pages/popular_event/controllers/controllers.dart';
import 'package:biz_connect/presentation/widgets/card_horizontal.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class PopularEventList extends StatelessWidget {
  final List<EventList> evant;
  const PopularEventList({
    super.key,
    required this.evant
  });

  Widget getCardWidgets(BuildContext context){
    List<Widget> widgetList = [];
    for(var i = 0; i < evant.length; i++){
      widgetList.add(
        Center(
          child: CardHorizontal(
            title: evant[i].title!,
            isFavorite: evant[i].is_favorite,
            thumnail: evant[i].image_display,
            location: evant[i].location_name,
            date: evant[i].start_time != '' ? '${evant[i].date!} / ${evant[i].start_time!} - ${evant[i].end_time!}' : evant[i].date!,
            onTap: () {
              context.push('/popular_event', extra: {'event' :evant[i]});
            },
            onTapHeart: () {
              final popularEventC = PopularEventController.call;
              popularEventC.setFavoriteEvent(evant[i].event_id!);
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
      child: getCardWidgets(context),
    );
  }
}