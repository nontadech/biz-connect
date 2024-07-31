import 'package:biz_connect/app/config/themes/theme.dart';
import 'package:biz_connect/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';


Future<void> popupPicture(BuildContext context) {
  return showDialog<void>(
    context: context,
    builder: (context) => Dialog(
      backgroundColor: Colors.transparent,
      child: Container(
        color: Colors.transparent,
        width: MediaQuery.of(context).size.width+100,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
           Image.asset(
            'assets/demo/zone.png',
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40, right: 40, top: 100),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                style: ButtonStyle(
                  backgroundColor: WidgetStateProperty.all<Color>(Colors.transparent),
                  shadowColor: WidgetStateProperty.all<Color>(Colors.transparent),
                  shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                    const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(100)),
                      side: BorderSide(color: Color(0xffFFFFFF))
                    )
                  )
                ),
                child: Container(
                  alignment: Alignment.center,
                  height: 50.0,
                  child: TextCustom(
                    text: 'CLOSE',
                    fontSize: FontSize.h10,
                    fontWeight: FontWeight.w600,
                    color: const Color(0xffFFFFFF)
                  ),
                ),
              ),
            )
          ],
        ),
      )
    )
  );
}
