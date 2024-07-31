import 'package:biz_connect/app/config/themes/theme.dart';
import 'package:biz_connect/presentation/pages/sign_in/controllers/controllers.dart';
import 'package:biz_connect/presentation/widgets/widgets.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:go_router/go_router.dart';

class SignInPageForm extends GetView<SignInController>  {
  const SignInPageForm({super.key});

  @override
  Widget build(BuildContext context) {
    SignInBinding().dependencies();
    return Column(
      children: <Widget>[
        Form(
          key: controller.signInPageFormKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              TextCustom(
                text: 'Email/Username', 
                fontSize: FontSize.h9, 
                fontWeight: FontWeight.w400,
                color: const Color(0xff122D58)
              ),
              TextFormFieldCustom(
                context,
                controller: controller.emailController,
                hintText: 'Email/Username',
                validator: (val) {
                  if(val!.isEmpty) {
                    return 'Please enter your email/username';
                  }
                  return null;
                }
              ),
              const SizedBox(height: 10.0),
              TextCustom(
                text: 'Password', 
                fontSize: FontSize.h9, 
                fontWeight: FontWeight.w400,
                color: const Color.fromRGBO(18, 45, 88, 1)
              ),
              TextFormFieldCustom(
                context,
                controller: controller.passwordController,
                hintText: 'Password',
                obscureText: true,
                validator: (val) {
                  if(val!.isEmpty) {
                    return 'Please enter your password';
                  }
                  return null;
                }
              ),
              const SizedBox(height: 15.0),
              InkWell(
                onTap: () {
                  context.push('/forgot');
                },
                child: TextCustom(
                  text: 'Forgot Password',
                  fontSize: FontSize.h9,
                  fontWeight: FontWeight.w500,
                  color: const Color(0xff56BED6),
                  decoration: TextDecoration.underline, 
                  decorationColor: const Color(0xff56BED6),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 20.0),
              ElevatedButtonCustom(
                text: 'LOG IN',
                onPressed: () {
                  controller.signInWith();
                },
              ),
              const SizedBox(height: 25.0),
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  text: 'DON`T HAVE AN ACCOUNT? '.tr(),
                  style: TextStyle(
                    fontSize: FontSize.h10, 
                    fontWeight: FontWeight.w400, 
                    color: const Color(0xff122D58),
                    fontFamily: 'LINESeedSansTH',
                  ),
                  children: [
                    TextSpan(
                      text: 'SIGN UP HERE'.tr(), 
                       recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        context.push('/sign_up');
                      },
                      style: TextStyle(
                        fontSize: FontSize.h10, 
                        fontWeight: FontWeight.w400, 
                        color: const Color(0xff00CBA1),
                        fontFamily: 'LINESeedSansTH',
                        decoration: TextDecoration.underline,
                        decorationColor: const Color(0xff00CBA1),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}