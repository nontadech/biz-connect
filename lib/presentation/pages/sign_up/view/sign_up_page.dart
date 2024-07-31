import 'package:biz_connect/presentation/pages/sign_up/controllers/controllers.dart';
import 'package:biz_connect/presentation/pages/sign_up/view/sign_up_form.dart';
import 'package:biz_connect/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  void initState() {
    SignUpBinding().dependencies();
    // final signUpC = SignUpController.call;
    // signUpC.clear();
    super.initState();
  }

  @override
   Widget build(BuildContext context) {
   return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBarCustom(
        context,
        title: 'Create Account',
        type: AppBarType.back,
        page: '/sign_in',
      ),
      body: const SignUpPageForm()
    );
  }
}
