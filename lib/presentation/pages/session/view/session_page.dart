import 'package:biz_connect/app/config/themes/theme.dart';
import 'package:biz_connect/domain/entities/join_entity.dart';
import 'package:biz_connect/presentation/controllers/auth/auth_controller.dart';
import 'package:biz_connect/presentation/pages/popular_event/controllers/popular_event_controller.dart';
import 'package:biz_connect/presentation/pages/session/view/session_detail.dart';
import 'package:biz_connect/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_getx_widget.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:go_router/go_router.dart';
class SessionPage extends GetView<PopularEventController> {
  final SessionList session;
  final int eventId;
  const SessionPage({
    super.key,
    required this.session,
    required this.eventId
  });
 
  @override
  Widget build(BuildContext context) {
    final authC = AuthController.call;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBarCustom(
        context,
        title: 'Session',
        type: AppBarType.back,
      ),
      body: GetX(
        init: controller,
        initState: (_) {
          controller.getEventPermission(eventId);
        },
        builder: (_) {
          return Column(
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
              authC.isLoggedIn.value ? controller.eventPermission.value!.data!.attendee_has_ticket! ? Padding(
                padding: const EdgeInsets.only(left: 25, right: 25, bottom: 40),
                child: ButtonRate(
                  onPressed: () {
                    context.push(
                      '/join/agenda/session/rate', 
                      extra: {
                        'agendaId': session.id, 
                        'event_id': eventId
                      }
                    );
                  },
                ) 
              ) : const SizedBox() : const SizedBox(),
            ],
          );
        }
      )
    );
  }
}
