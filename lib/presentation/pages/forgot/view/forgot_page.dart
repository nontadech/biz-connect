
import 'package:biz_connect/presentation/pages/forgot/view/forgot_form.dart';
import 'package:biz_connect/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';


class ForgotPage extends StatefulWidget {
  const ForgotPage({super.key});

  @override
  State<ForgotPage> createState() => _ForgotPageState();
}

class _ForgotPageState extends State<ForgotPage> {
  @override
  void initState() {
    // Initialize & inject UserController() using Get.put()
    super.initState();
  }

  @override
   Widget build(BuildContext context) {
   return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBarCustom(
        context,
        title: 'Forgot Password?',
        type: AppBarType.back,
        page: '/sign_in',
      ),
      body: const ForgotPageForm()
    );
  }
}
