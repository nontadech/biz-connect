import 'package:biz_connect/app/config/themes/theme.dart';
import 'package:biz_connect/domain/entities/event_entity.dart';
import 'package:biz_connect/presentation/widgets/widgets.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';

class EventCalendarDetail extends StatelessWidget {
  final EventList news;
  const EventCalendarDetail({
    super.key,
    required this.news
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xffffffff),
      child: Padding(
        padding: const EdgeInsets.only(left: 25, right: 25),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 15),
              Container(
                clipBehavior: Clip.hardEdge,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: news.thumnail != '' ?  CachedNetworkImage(
                  fit: BoxFit.cover,
                  imageUrl: news.thumnail!,
                  placeholder: (BuildContext context, String url) => Container(
                    color: Colors.white,
                  ),
                  errorWidget: (context, url, error) => const Icon(Icons.error), 
                )
                : Image.asset('assets/demo/event_1.png'),
              ),
              const SizedBox(height: 25),
              TextCustom(
                text: news.title!, 
                fontSize: FontSize.h7, 
                fontWeight: FontWeight.w600, 
                color: const Color(0xff13315F),
                height: 1.4,
              ),
              const SizedBox(height: 10),
              HtmlWidget(
                news.description!,
                textStyle: TextStyle(
                  fontSize: FontSize.h12,
                  fontWeight: FontWeight.w400,
                  color: const Color(0xff122D58),
                  height: 1.4,
                ),
              ),
              const Divider(
                color: Color(0xffE5E5E5),
                thickness: 1,
              ),
              const SizedBox(height: 10),
              TextCustom(
                text: 'Post by ${news.company}', 
                fontSize: FontSize.h7, 
                fontWeight: FontWeight.w400, 
                color: const Color(0xff6481A9),
                height: 1.2,
              ),
              TextCustom(
                text: '${news.date}', 
                fontSize: FontSize.h7, 
                height: 1.2,
                fontWeight: FontWeight.w400, 
                color: const Color(0xff6481A9),
              ),
              const SizedBox(height: 40),
            ],
          )
        ),
      ),
    );
  }
}