import 'package:biz_connect/domain/entities/join_entity.dart';
import 'package:biz_connect/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SpeakerList extends StatelessWidget {
  final List<SpeakerData> speakers;
  final int eventId;
  const SpeakerList({
    super.key,
    required this.speakers,
    required this.eventId
  });

  Widget getCardWidgets(BuildContext context) {
    List<Widget> widgetList = [];
    for (var speaker in speakers) {
      widgetList.add(
        Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: CardSpeaker(
            image: speaker.image_url!,
            fullname: speaker.fullname!,
            position: speaker.position!,
            company: speaker.company!,
            onTap: () {
              context.push(
                '/join/speaker',
                extra: {
                  'speaker': speaker,
                  'event_id': eventId
                }
              );
            },
          )
        )
      );
    }

    if(widgetList.length % 2 != 0){
      widgetList.add(
        const SizedBox(
          width: 179,
        )
      );
    }
    return Wrap(
      spacing: 10,
      children: widgetList
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, bottom: 10),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Center(
          child: getCardWidgets(context),
        )
      )
    );
  }
}