
import 'package:biz_connect/app/config/themes/theme.dart';
import 'package:biz_connect/presentation/pages/private_event/view/private_event_form.dart';
import 'package:biz_connect/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';

Future<void> privateEvent(BuildContext context) {

  return showDialog<void>(
    context: context,
    builder: (context) => AlertDialog(
      content: Container(
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextCustom(
              text: 'Add Private Event by code', 
              fontSize: FontSize.h9, 
              fontWeight: FontWeight.w400,
              color: const Color(0xff1D1D1B)
            ),
            const SizedBox(
              height: 10.0,
            ),
            PrivateEventForm(
              popppContext: context
            )
          ],
        ),
      )
    )
  );
}
