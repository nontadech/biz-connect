
import 'package:biz_connect/app/config/themes/theme.dart';
import 'package:biz_connect/presentation/pages/download/controllers/controllers.dart';
import 'package:biz_connect/presentation/widgets/widgets.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';

Future<void> sendEmail(BuildContext context, int eventId) async {
  DownloadBinding().dependencies();
  final downloadC = DownloadController.call;
  return showDialog<void>(
    context: context,
    builder: (context) => AlertDialog(
      content: Container(
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.all(20.0),
        child: Form(
          key: downloadC.downloadPageFormKey,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextCustom(
                text: 'Email', 
                fontSize: FontSize.h9, 
                fontWeight: FontWeight.w400,
                color: const Color(0xff1D1D1B)
              ),
              const SizedBox(
                height: 10.0,
              ),
              TextFormFieldCustom(
                context,
                controller: downloadC.emailController,
                hintText: 'Email',
                keyboardType: TextInputType.emailAddress,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter your email';
                  }
                  if(!EmailValidator.validate(value)) {
                    return 'Email is valid';
                  }
                  return null;
                },
              ),
              const SizedBox(
                height: 20.0,
              ),
              ElevatedButtonCustom(
                text: 'Submit',
                onPressed: () {
                  downloadC.sendFileEmail(eventId);
                }
              ),
              const SizedBox(
                height: 15.0,
              ),
              ElevatedButtonOutlineBorder(
                text: 'Close',
                onPressed: () {
                  Navigator.pop(context);
                  downloadC.isLoadingPopup(true);
                }
              ),
            ],
          ),
        )
      ) 
    )
  );
}
