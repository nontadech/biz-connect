import 'package:biz_connect/domain/entities/join_entity.dart';
import 'package:biz_connect/presentation/pages/speaker/controllers/controllers.dart';
import 'package:biz_connect/presentation/pages/speaker/view/speaker_detail.dart';
import 'package:biz_connect/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SpeakerPage extends GetView<SpeakerController> {
  final int eventId;
  final SpeakerData speaker; 
  const SpeakerPage({
    super.key,
    required this.eventId,
    required this.speaker
  });

  @override
   Widget build(BuildContext context) {
    SpeakerBinding().dependencies();
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBarCustom(
        context,
        title: 'Speaker',
        type: AppBarType.back,
      ),
      body: GetX(
        init: controller,
        initState: (_) {
          controller.selectSession.value = 0;
          controller.getAgenda(eventId, speaker.speaker_id!);
        },
        builder: (_) {
          if(!controller.isLoadingDetail.value) {
            return const Column(
              children: [
                SizedBox(
                  height: 200,
                ),
                Center(
                  child: CircularProgressIndicator(),
                )
              ],
            );
          }
          return SpeakerDetail(
            sessions: controller.agenda.value.sessions,
            eventStartDate: controller.agenda.value.event_start_date!,
            speaker: speaker,
            eventId: eventId,
            controller: controller,
          );
        }
      )
    );
  }
}
