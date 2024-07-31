import 'package:biz_connect/app/config/themes/theme.dart';
import 'package:biz_connect/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';

class Poll extends StatefulWidget {
  const Poll({super.key});

  @override
  State<Poll> createState() => _PollState();
}

class _PollState extends State<Poll> {
  @override
  void initState() {
    // Initialize & inject UserController() using Get.put()
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [ 
        Padding(
          padding: const EdgeInsets.only(left: 25, right: 25, top: 10, bottom: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextCustom(
                text: '1. Odio facilisis mauris sit amet massa vitaetortor condimentum lacinia?,',
                fontSize: FontSize.h6, 
                fontWeight: FontWeight.w400, 
                height: 1.2,
                color: const Color(0xff122D58)
              ),
              const SizedBox(
                height: 10,
              ),
              TextRadio(
                title: 'At in tellus integer feugiat', 
                value: 1, 
                groupValue: 1, 
                onChanged: (int int) {  },
              ),
              const SizedBox(
                height: 10,
              ),
              TextRadio(
                title: 'Vel fringilla est ullamcorper',
                value: 3, 
                groupValue: 1, 
                onChanged: (int int) {  },
              ),
              const SizedBox(
                height: 10,
              ),
              TextRadio(
                title: 'Odio facilisis', 
                value: 3, 
                groupValue: 1, 
                onChanged: (int int) {  },
              ),
              const SizedBox(
                height: 10,
              ),
              TextRadio(
                title: 'Dui ut ornare lectus sit amet', 
                value: 3, 
                groupValue: 1, 
                onChanged: (int int) {  },
              ),
              Expanded(child: Container()),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  TextCustom(
                    text: '2/3',
                    fontSize: FontSize.h1, 
                    fontWeight: FontWeight.w500, 
                    color: const Color(0xff56BED6),
                    height: 1.2,
                  ),
                  const SizedBox(width: 5,),
                  TextCustom(
                    text: 'COMPLETE',
                    fontSize: FontSize.h10, 
                    fontWeight: FontWeight.w400, 
                    color: const Color(0xff56BED6),
                    height: 1.7,
                  ),
                ],
              ),
              const SizedBox(
                height: 6,
                child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  child: LinearProgressIndicator(
                    value: 0.7,
                    valueColor: AlwaysStoppedAnimation<Color>(Color(0xff56BED6)),
                    backgroundColor: Color(0xffEAF4FF),
                  ),
                ),
              ),
              const SizedBox(
                height: 90,
              ),
            ],
          )
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: ButtonPositionTwoBottom(
            text: 'Done',
            onPressed: () {
            },
            onCancel: () {
            }
          )
        )
      ]
    );
  }
}
