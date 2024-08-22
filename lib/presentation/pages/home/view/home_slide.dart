import 'package:biz_connect/app/config/themes/theme.dart';
import 'package:biz_connect/domain/entities/event_entity.dart';
import 'package:biz_connect/presentation/pages/home/controllers/controllers.dart';
import 'package:biz_connect/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeSlide extends StatelessWidget {
  final List<EventList> list;
  final String title;
  final String? subTitle;
  final Color bgColor;
  final bool isMore;
  final bool showPrivate;
  const HomeSlide({
    super.key,
    required this.title,
    required this.list,
    required this.bgColor,
    this.subTitle,
    this.isMore = true,
    this.showPrivate = false,
  });

  Widget getCardWidgets(BuildContext context){
    List<Widget> widgetList = [];
    for(var i = 0; i < list.length; i++){
      widgetList.add(const SizedBox(width: 10));
      widgetList.add(CardHorizontal(
        title: list[i].title!,
        isFavorite: list[i].is_favorite,
        thumnail: list[i].thumnail,
        location: list[i].venue_name,
        date: list[i].date!,
        showPrivate: showPrivate,
        onTap: () {
          context.push(
            '/popular_event', 
            extra: {
              'event' :list[i],
              'is_private': showPrivate
            }
          );
        },
        onTapHeart: () {
          final homeC = HomeController.call;
          homeC.setFavoriteEvent(list[i].event_id!);
        },
      ));
    }
    return Row(
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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 25, right: 25, top: 10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    SizedBox(
                      width: 200,
                      child: TextCustom(
                        text: title,
                        fontSize: FontSize.h8,
                        height: 1,
                        fontWeight: FontWeight.w700,
                        color: const Color(0xff122D58),
                      ),
                    ),
                    SizedBox(
                      width: 200,
                      child: TextCustom(
                        text: subTitle ?? '',
                        fontSize: FontSize.h8,
                        height: 1,
                        fontWeight: FontWeight.w400,
                        color: const Color(0xff122D58),
                      ),
                    ),
                  ],
                ),
                isMore ? InkWell(
                  onTap: () {
                    context.push('/popular_events');
                  },
                  child: TextCustom(
                    text: 'See more',
                    fontSize: FontSize.h8,
                    fontWeight: FontWeight.w600,
                    color: const Color(0xff56BED6)
                  ),
                ) : Container(),
              ],
            ),
          ),
          const SizedBox(height: 5),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            physics: const BouncingScrollPhysics(),
            child: Padding(
              padding: const EdgeInsets.only(left: 15, right: 25),
              child: getCardWidgets(context),
            )
          ),
          const SizedBox(height: 20)
        ],
      ),
    );
  }
}