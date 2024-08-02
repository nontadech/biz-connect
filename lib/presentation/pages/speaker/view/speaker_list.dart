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

  getCard(BuildContext context) {
    List<Widget> widgetList = [];
    for (var speaker in speakers) {
      widgetList.add(
        CardSpeaker(
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
      );
    }

    return GridView.count(
      shrinkWrap: true,
      crossAxisCount: 2,
      childAspectRatio: 0.43,
      mainAxisSpacing: 10,
      children: widgetList
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25, right: 25, top: 10, bottom: 10),
      child: getCard(context), 
    );
  }
}