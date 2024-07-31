import 'package:biz_connect/app/config/themes/theme.dart';
import 'package:biz_connect/presentation/pages/forgot/controllers/controllers.dart';
import 'package:biz_connect/presentation/widgets/widgets.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgotPageForm extends GetView<ForgotController> {
  const ForgotPageForm({super.key});

  @override
  Widget build(BuildContext context) {
    ForgotBinding().dependencies();
    return  GetX(
      init: controller,
      initState: (state) {
      },
      builder: (_) {
        controller.context(context);
        return  Form(
          key: controller.forgotPageFormKey,
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 25.0, right: 25.0, top: 20.0, bottom: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    TextCustom(
                      text: 'Email', 
                      required: true,
                      fontSize: FontSize.h9, 
                      fontWeight: FontWeight.w400,
                      color: const Color(0xff122D58)
                    ),
                    TextFormFieldCustom(
                      context,
                      autofocus: true,
                      hintText: 'Email',
                      controller: controller.emailController,
                      validator: (val) {
                        if (val!.isEmpty) {
                          return 'Please enter your email';
                        }
                        if(!EmailValidator.validate(val)) {
                          return 'Email is valid';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 100.0),
                  ],
                ),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: ButtonPositionBottom(
                  text: 'ENTER',
                  onPressed: () {
                    controller.forgotPassword();
                  }
                )
              )
            ],
          )
        );
      }
    );
  }
}