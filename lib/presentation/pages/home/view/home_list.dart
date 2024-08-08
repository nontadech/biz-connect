import 'package:biz_connect/app/config/themes/theme.dart';
import 'package:biz_connect/domain/entities/event_entity.dart';
import 'package:biz_connect/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeList extends StatelessWidget {
  final List<EventList> list;
  final String title;
  final String? subTitle;
  final Color bgColor;
  const HomeList({
    super.key,
    required this.title,
    required this.bgColor,
    required this.list,
    this.subTitle,
  });

  Widget getCardWidgets(BuildContext context){
    List<Widget> widgetList = [];
    for(var i = 0; i < list.length; i++){
      widgetList.add(CardCustom(
        title: list[i].title!,
        thumnail: list[i].thumnail!,
        location: list[i].location!,
        date: list[i].start_time != '' ? '${list[i].date!} / ${list[i].start_time!} - ${list[i].end_time!}' : list[i].date!,
        onTap: () {
          context.push('/event_calendar', extra: {'news' :list[i]});
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
    return Container(
      color: bgColor,
      child: Column(
        children: [
           Padding(
            padding: const EdgeInsets.only(left: 25, right: 25, top: 10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextCustom(
                      text: title,
                      fontSize: FontSize.h8,
                      fontWeight: FontWeight.w700,
                      color: const Color(0xff122D58),
                    ),
                    subTitle != null
                    ? TextCustom(
                        text: subTitle!,
                        fontSize: FontSize.h8,
                        fontWeight: FontWeight.w500,
                        color: const Color(0xff122D58),
                        height: 0.8
                      )
                    : const SizedBox(),
                    subTitle != null ? const SizedBox(height: 15) : const SizedBox(),
                  ],
                ),
                InkWell(
                  onTap: () {
                    context.push('/events_calendar');
                  },
                  child: TextCustom(
                    text: 'See more',
                    fontSize: FontSize.h8,
                    fontWeight: FontWeight.w600,
                    color: const Color(0xff56BED6)
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25, right: 25, top: 10),
            child: getCardWidgets(context)
          ),
          const SizedBox(height: 20)
        ],
      ),
    );
  }
}