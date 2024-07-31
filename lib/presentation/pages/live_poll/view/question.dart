import 'package:biz_connect/presentation/pages/live_poll/view/chat_box.dart';
import 'package:biz_connect/presentation/widgets/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
class Question extends StatefulWidget {
  const Question({super.key});

  @override
  State<Question> createState() => _QuestionState();
}

class _QuestionState extends State<Question> {
  @override
  void initState() {
    // Initialize & inject UserController() using Get.put()
    super.initState();
  }
 
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(left: 25, right: 25, top: 10, bottom: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ChatBox(
                  name: 'John Doe',
                  avatar: 'assets/demo/profile_1.png',
                  msg: 'What is the best way to start a business?',
                ),
                ChatBox(
                  name: 'New DEV',
                  msg: 'Sit amet tellus cras adipiscing enim. Velit euismod in pellentesque massa placerat. ',
                ),
              ],
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: ButtonPositionChat(
            onTap: () {
              popupThank(context);
            }
          )
        )
      ]
    );
  }
}
