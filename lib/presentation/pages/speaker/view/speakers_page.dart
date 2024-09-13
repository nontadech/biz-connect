import 'package:biz_connect/presentation/pages/speaker/controllers/controllers.dart';
import 'package:biz_connect/presentation/pages/speaker/view/speaker_list.dart';
import 'package:biz_connect/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';


class SpeakersPage extends GetView<SpeakerController> {
  final int eventId;
  const SpeakersPage({
    super.key,
    required this.eventId
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
          controller.isLoading.value = false;
          controller.getSpeakers(eventId);
        },
        builder: (_) {
          if(!controller.isLoading.value) {
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
            if(controller.speaker.value.data.isEmpty){
              return Column(
                children: [
                  const SizedBox(
                    height: 200,
                  ),
                  Center(
                    child: EmptyPage(
                      icon: SvgPicture.asset('assets/icons/profile_empty.svg'),
                      text: "You don`t have any speaker"
                    ),
                  )
                ],
              );
            }
          return SpeakerList(
            speakers: controller.speaker.value.data,
            eventId: eventId
          );
        }
      )
    );
  }
}
