import 'package:biz_connect/domain/entities/event_entity.dart';
import 'package:biz_connect/presentation/pages/my_favorite/controllers/controllers.dart';
import 'package:biz_connect/presentation/widgets/card_horizontal.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MyFavoriteList extends StatelessWidget {
  final List<EventList> favorite;

  const MyFavoriteList({
    super.key,
    required this.favorite
  });

  Widget getCardWidgets(BuildContext context){
    List<Widget> widgetList = [];
    for(var i = 0; i < favorite.length; i++){
      widgetList.add(
        Center(
          child: CardHorizontal(
            title: favorite[i].title!,
            isFavorite: favorite[i].is_favorite,
            thumnail: favorite[i].image_display,
            location: favorite[i].location_name,
            date: favorite[i].start_time != '' ? '${favorite[i].date!} / ${favorite[i].start_time!} - ${favorite[i].end_time!}' : favorite[i].date!,
            onTap: () {
              context.push('/popular_event', extra: {'event' :favorite[i]});
            },
            onTapHeart: () {
              final myFavoriteC = MyFavoriteController.call;
              myFavoriteC.setFavoriteEvent(favorite[i].event_id!);
            },
          )
        )
      );
    }
    return GridView.count(
        shrinkWrap: true,
        crossAxisCount: 2,
        childAspectRatio: 0.46,
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