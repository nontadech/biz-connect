import 'package:biz_connect/app/config/themes/theme.dart';
import 'package:biz_connect/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
class LivePollPage extends StatefulWidget {
  const LivePollPage({super.key});

  @override
  State<LivePollPage> createState() => _LivePollPageState();
}

class _LivePollPageState extends State<LivePollPage> {
  @override
  void initState() {
    // Initialize & inject UserController() using Get.put()
    super.initState();
  }
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBarCustom(
        context,
        title: 'Live poll',
        type: AppBarType.back,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 25, right: 25, top: 10, bottom: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextCustom(
                text: 'Select Zone', 
                fontSize: FontSize.h8, 
                fontWeight: FontWeight.w600, 
                color: const Color(0xff13315F)
              ),
              CardLivePoll(
                onTap: () {  
                  context.push('/join/live_poll/detail');
                },
              ),
              CardLivePoll(
                onTap: () {  
                  context.push('/join/live_poll/detail');
                },
              ),
              CardLivePoll(
                onTap: () {  
                  context.push('/join/live_poll/detail');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
