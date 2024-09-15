import 'package:biz_connect/app/config/themes/theme.dart';
import 'package:biz_connect/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';

Future<void> popupAPI(BuildContext context, String message) {
  return showDialog<void>(
    context: context,
    builder: (context) {
      return AlertDialog(
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
                text: 'Message', 
                fontSize: FontSize.h5, 
                fontWeight: FontWeight.w600,
                color: const Color(0xff1D1D1B),
                height: 1,
              ),
              const SizedBox(
                height: 10.0,
              ),
              TextCustom(
                text: message, 
                fontSize: FontSize.h9,
                textAlign: TextAlign.center,
                fontWeight: FontWeight.w400,
                color: const Color(0xff1D1D1B),
                height: 1,
              ),
              const SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30, right: 30),
                child: ElevatedButtonCustom(
                  text: 'CLOSE',
                  onPressed: () {
                    if(message == 'This email already exists.' || message == "We can't find a user with that e-mail address."){
                      Navigator.pop(context);
                    }
                    Navigator.pop(context);
                  },
                ),
              ),
            ],
          ),
        )
      );
    }
  );
}
