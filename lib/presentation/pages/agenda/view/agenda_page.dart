import 'package:biz_connect/domain/entities/join_entity.dart';
import 'package:biz_connect/presentation/pages/agenda/controllers/controllers.dart';
import 'package:biz_connect/presentation/pages/agenda/view/adenda_slide_date.dart';
import 'package:biz_connect/presentation/pages/agenda/view/adenda_slide_time.dart';
import 'package:biz_connect/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';

class AgendaPage extends GetView<AgendaController> {
  final int eventId;
  const AgendaPage({
    super.key,
    required this.eventId
  });
  Widget getCardCustum(BuildContext context) {
    List<Widget> widgetList = [];
    for (var session in controller.sessionList) {
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
            onTap: () {
              context.push(
                '/join/agenda/session', 
                extra: {
                  'session': session
                }
              );
            },
          )
        )
      );
    }
    return Expanded(
      child: SingleChildScrollView(
        child: widgetList.isNotEmpty ? 
        Column(
          children: widgetList
        ) : 
        const SizedBox(),
      ),
    );
  }
  
  @override
  Widget build(BuildContext context) {
    AgendaBinding().dependencies();
    return GetX(
      init: controller,
      initState: (_) {
        controller.getAgenda(
          JoinAgendaInput(
            eventId: eventId,
            room: ''
          )
        );
      },
      builder: (_) {
        if(controller.agenda.value.sessions.isEmpty) {
          return Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: AppBarAgenda(
              context,
              title: 'Agenda',
              onSelectRoom: controller.onSelectRoom,
            ),
            body: const Column(
              children: [
                SizedBox(
                  height: 200,
                ),
                Center(
                  child: CircularProgressIndicator(),
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
                  selectSession: controller.selectSession.value != '' ? controller.selectSession.value : controller.agenda.value.sessions[0].session_title_date!,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              getCardCustum(context),
            
            ],
          )
        );
      }
    );
  }
}
