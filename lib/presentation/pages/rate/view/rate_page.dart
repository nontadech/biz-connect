import 'package:biz_connect/presentation/pages/rate/view/rate_form.dart';
import 'package:biz_connect/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
class RatePage extends StatelessWidget {
  final int agendaId;
  final int eventId;
  const RatePage({
    super.key,
    required this.agendaId,
    required this.eventId
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBarCustom(
        context,
        title: 'Session Rating',
        type: AppBarType.back,
      ),
      body: RateForm(
        agendaId: agendaId,
        eventId: eventId,
      ),
    );
  }
}
