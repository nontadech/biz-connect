import 'package:biz_connect/domain/entities/join_entity.dart';
import 'package:biz_connect/presentation/pages/agenda/view/adenda_slide_date.dart';
import 'package:biz_connect/presentation/pages/speaker/controllers/controllers.dart';
import 'package:biz_connect/presentation/widgets/widgets.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';

class SpeakerDetail extends StatelessWidget {
  final List<SessionData> sessions;
  final String eventStartDate;
  final int eventId;
  final SpeakerData speaker; 
  final SpeakerController controller;

  const SpeakerDetail({
    super.key,
    required this.sessions,
    required this.eventStartDate,
    required this.eventId,
    required this.speaker,
    required this.controller
  });

   Widget getCardCustum(BuildContext context,List<SessionList> sessions) {
    List<Widget> widgetList = [];
    for (var session in sessions) {
      widgetList.add(
        Padding(
          padding: const EdgeInsets.only(left: 25, right: 25),
          child: CardAgenda(
            title: session.title!,
            location: session.location!,
            time: '${session.start_time} - ${session.end_time}',
            files:  const [],
            onTap: () {
              context.push(
                '/join/agenda/session', 
                extra: {
                  'session': session,
                  'event_id': eventId
                }
              );
            },
          )
        )
      );
    }
    
    return SingleChildScrollView(
      child: widgetList.isNotEmpty ? 
      Column(
        children: widgetList
      ) : 
      const SizedBox(),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 15,
        ),
        Center(
          child: CardSpeaker(
          image: speaker.image_url!,
            fullname: speaker.fullname!,
            position: speaker.position!,
            company: speaker.company!,
            onTap: () {
            
            },
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        const TitleSession(
          title: 'Session',
        ),
        const SizedBox(
          height: 5,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 25),
          child: GetX<SpeakerController>(
            builder: (_) {
              return AdendaSlideDate(
                agendaList: sessions,
                onSelectSession: controller.onSelectSession,
                selectSession: controller.selectSession.value,
              );
            }
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Expanded(
          child: CarouselSlider(
            disableGesture: true,
            carouselController: controller.carouselController,
            items: sessions.map((sessions) {
              return getCardCustum(context, sessions.session_list!);
            }).toList(),
            options: CarouselOptions(
              aspectRatio: 16/9,
              viewportFraction: 1,
              initialPage: 0,
              height: double.infinity,
              enableInfiniteScroll: false,
              reverse: false,
              autoPlay: false,
              pauseAutoPlayOnTouch: false,
              autoPlayInterval: const Duration(seconds: 3),
              autoPlayAnimationDuration: const Duration(milliseconds: 800),
              autoPlayCurve: Curves.fastOutSlowIn,
              enlargeCenterPage: false,
              scrollDirection: Axis.horizontal,
              onPageChanged: (index, reason) {
                controller.onSelectSession(index);
              }
            ),
          ),
        )
      ],
    );
  }
}