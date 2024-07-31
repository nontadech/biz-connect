import 'package:biz_connect/data/models/news_model.dart';
import 'package:biz_connect/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class EventCalendarList extends StatelessWidget {
  final News news;
  const EventCalendarList({
    super.key,
    required this.news,
  });

  Widget getCardWidgets(BuildContext context){
    List<Widget> widgetList = [];
    for(var i = 0; i < news.data.length; i++){
      widgetList.add(CardCustom(
        title: news.data[i].title!,
        thumnail: news.data[i].thumnail!,
        location: news.data[i].location!,
        date: news.data[i].start_time != '' ? '${news.data[i].date!} / ${news.data[i].start_time!} - ${news.data[i].end_time!}' : news.data[i].date!,
        onTap: () {
          context.push('/event_calendar', extra: {'news' :news.data[i]});
        },
      ));
           widgetList.add(const SizedBox(height: 15));
    }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: widgetList
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25, right: 25, top: 15, bottom: 50),
      child: getCardWidgets(context)
    );
  }
}