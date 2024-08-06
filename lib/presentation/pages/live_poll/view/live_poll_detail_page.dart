import 'package:biz_connect/app/config/themes/theme.dart';
import 'package:biz_connect/presentation/pages/live_poll/view/poll.dart';
import 'package:biz_connect/presentation/pages/live_poll/view/question.dart';
import 'package:biz_connect/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
class LivePollDetailPage extends StatefulWidget {
  final int eventId;
  final int zoneId;

  const LivePollDetailPage({
    super.key,
    required this.eventId,
    required this.zoneId,
  });

  @override
  State<LivePollDetailPage> createState() => _LivePollDetailPageState();
}

class _LivePollDetailPageState extends State<LivePollDetailPage> with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {

    super.initState();
    tabController = TabController(length: 2, vsync: this);
  }
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBarCustom(
        context,
        title: 'Live polling / Q&A',
        type: AppBarType.back,
      ),
      body: Column(
        children: [
          Container(
            clipBehavior: Clip.hardEdge,
            margin: const EdgeInsets.only(left: 25, right: 25, top: 10, bottom: 20),
              decoration: BoxDecoration(
                color: const Color(0xffF9FAFB),
                borderRadius: BorderRadius.circular(12),
              ),
            child: TabBar(
              indicatorSize: TabBarIndicatorSize.tab,
              dividerHeight: 0,
              controller: tabController,
              indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(12.0,),
                color: const Color(0xff56BED6),
              ),
              labelStyle: TextStyle(
                fontSize: FontSize.h12,
                fontWeight: FontWeight.w600,
              ),
              labelColor: Colors.white,
              unselectedLabelColor: const Color(0xff122D58),
              unselectedLabelStyle: TextStyle(
                fontSize: FontSize.h12,
                fontWeight: FontWeight.w600,
              ),
              tabs: [
                Tab(
                  child: Container(
                    alignment: Alignment.center,
                    width: double.infinity,
                    child: Text(
                      'Poll',
                      style: TextStyle(
                        fontSize: FontSize.h12,
                        fontWeight: FontWeight.w600,
                      ),
                    )
                  )
                ),
                Tab(
                  child: Container(
                    alignment: Alignment.center,
                    width: double.infinity,
                    child: Text(
                      'Question',
                      style: TextStyle(
                        fontSize: FontSize.h12,
                        fontWeight: FontWeight.w600,
                      ),
                    )
                  )
                ),
              ]
            ),
          ),
          Expanded(
            child: TabBarView(
              controller: tabController,
              children: [
                Poll(
                  eventId: widget.eventId,
                  zoneId: widget.zoneId,
                ),
                const Question(),
              ]
            ),
          ),
        ],
      ),
    );
  }
}