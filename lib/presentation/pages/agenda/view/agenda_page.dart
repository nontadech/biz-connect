import 'package:biz_connect/domain/entities/join_entity.dart';
import 'package:biz_connect/presentation/pages/agenda/controllers/controllers.dart';
import 'package:biz_connect/presentation/pages/agenda/view/adenda_slide_date.dart';
import 'package:biz_connect/presentation/pages/agenda/view/adenda_slide_time.dart';
import 'package:biz_connect/presentation/widgets/widgets.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';

class AgendaPage extends GetView<AgendaController> {
  final int eventId;
  const AgendaPage({
    super.key,
    required this.eventId
  });
  Widget getCardCustum(BuildContext context,List<SessionList> sessions) {
    List<Widget> widgetList = [];
    for (var session in sessions) {
      widgetList.add(AdendaSlideTime(
        time: session.start_time!,
      ));
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
    AgendaBinding().dependencies();
    return GetX(
      init: controller,
      initState: (_) {
        controller.isLoading.value = false;
        controller.getAgenda(
          JoinAgendaInput(
            eventId: eventId,
            room: ''
          )
        );
      },
      builder: (_) {
        if(!controller.isLoading.value) {
          return Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: AppBarAgenda(
              context,
              title: 'Agenda',
              onSelectRoom: controller.onSelectRoom,
            ),
            body: Column(
              children: [
                const SizedBox(
                  height: 200,
                ),
                Center(
                  child: controller.isDataEmtpy.value ?  const SizedBox() : const CircularProgressIndicator(),
                )
              ],
            )
          );
        }
        return Scaffold(
          resizeToAvoidBottomInset: false,
          appBar: AppBarAgenda(
            context,
            title: 'Agenda',
            roomList: controller.agenda.value.room_list,
            onSelectRoom: controller.onSelectRoom,
          ),
          body: Column(
            children: [
              const SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25),
                child: AdendaSlideDate(
                  agendaList: controller.agenda.value.sessions,
                  onSelectSession: controller.onSelectSession,
                  selectSession: controller.selectSession.value,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Expanded(
                child: CarouselSlider(
                  disableGesture: true,
                  carouselController: controller.carouselController,
                  items: controller.sessionList.map((sessions) {
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
          )
        );
      }
    );
  }
}
