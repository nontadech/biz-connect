import 'package:biz_connect/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SpeakerDetail extends StatelessWidget {
  const SpeakerDetail({
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 15,
        ),
        Center(
          child: CardSpeaker(
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
        Padding(
          padding: const EdgeInsets.only(left: 25, right: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const TitleCustom(
                title: '8 May 2024',
                isActive: true,
              ),
               CardAgenda(
                onTap: () {  
                  context.push('/join/agenda/session');
                }, 
                title: '', 
                location: '', 
                time: '',
              ),
            ],
          )
        ),
      ],
    );
  }
}