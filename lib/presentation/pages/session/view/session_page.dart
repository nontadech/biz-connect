import 'package:biz_connect/app/config/themes/theme.dart';
import 'package:biz_connect/domain/entities/join_entity.dart';
import 'package:biz_connect/presentation/pages/session/view/session_detail.dart';
import 'package:biz_connect/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
class SessionPage extends StatelessWidget {
  final SessionList session;
  const SessionPage({
    super.key,
    required this.session
  });
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBarCustom(
        context,
        title: 'Session',
        type: AppBarType.back,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.only(left: 25, right: 25, top: 20, bottom: 10),
              padding: const EdgeInsets.only(left: 20, right: 20, top: 5, bottom: 5),
              decoration: const BoxDecoration(
                color: Color(0xff56BED6),
                borderRadius: BorderRadius.all(
                  Radius.circular(100.0),
                ),
              ),
              child: TextCustom(
                text: session.date!,
                fontSize: FontSize.h9,
                color: const Color(0xffFFFFFF),
                fontWeight: FontWeight.w600,
              ),
            ),
            SessionDetail(
              session: session,
            ),
            Expanded(child: Container()),
            Padding(
              padding: const EdgeInsets.only(left: 25, right: 25, bottom: 40),
              child: ButtonRate(
                onPressed: () {
                  context.push('/join/agenda/session/rate');
                },
              )
            )
          ],
        ),
    );
  }
}
