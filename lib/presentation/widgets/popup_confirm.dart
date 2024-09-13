import 'package:biz_connect/app/config/themes/theme.dart';
import 'package:biz_connect/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';

Future<void> popupConfirm(BuildContext context, {String? topic, String? message, Function? onPressed}) {
  return showDialog<void>(
    context: context,
    builder: (context) => AlertDialog(
      content: Container(
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(
              height: 10.0,
            ),
            TextCustom(
              text: topic!, 
              fontSize: FontSize.h5, 
              fontWeight: FontWeight.w600,
              color: const Color(0xff1D1D1B),
              height: 1,
            ),
            const SizedBox(
              height: 10.0,
            ),
            TextCustom(
              text: message!, 
              fontSize: FontSize.h9, 
              fontWeight: FontWeight.w400,
              color: const Color(0xff1D1D1B),
              height: 1,
            ),
            const SizedBox(
              height: 20.0,
            ),
            Column(
              children: [
                ElevatedButtonOutlineBorder(
                  text: 'CLOSE',
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                const SizedBox(
                  height: 10.0,
                ),
                ElevatedButtonCustom(
                  text: 'Opens Settings',
                  onPressed: () {
                    Navigator.pop(context);
                    onPressed!();
                  },
                ),
              ],
            )
          ],
        ),
      )
    )
  );
}
