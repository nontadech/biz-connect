import 'package:biz_connect/app/config/themes/theme.dart';
import 'package:biz_connect/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';

class RateForm extends StatefulWidget {
  const RateForm({super.key});

  @override
  RateFormState createState() => RateFormState();
}

class RateFormState extends State<RateForm> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Padding(
        padding: const EdgeInsets.only(left: 25, right: 25, bottom: 40, top: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextCustom(
              text: 'Tap s star to rate', 
              fontSize: FontSize.h9, 
              fontWeight: FontWeight.w400, 
              color: const Color(0xff122D58)
            ),
            const SizedBox(
              height: 10,
            ),
            const Rate(),
            const SizedBox(
              height: 10,
            ),
            TextCustom(
              text: 'Comment', 
              fontSize: FontSize.h9, 
              fontWeight: FontWeight.w400, 
              color: const Color(0xff122D58)
            ),
            const SizedBox(
              height: 10,
            ),
            TextFormFieldCustom(
              context,
              hintText: 'Type here...',
              maxLines: 7,
            ),
            Expanded(child: Container()),
            ElevatedButtonCustom(
              text: 'DONE',
              onPressed: () {
                popupStatus(
                  context, 
                  PopupStatusType.sucess,
                  message: 'Thank you for your feedback',
                );
              },
            ),
          ],
        )
      ),
    );
  }
}