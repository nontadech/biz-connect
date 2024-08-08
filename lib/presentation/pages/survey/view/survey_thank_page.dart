import 'package:biz_connect/app/config/themes/theme.dart';
import 'package:biz_connect/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SurveyThankPage extends StatefulWidget {
  const SurveyThankPage({super.key});

  @override
  State<SurveyThankPage> createState() => _SurveyThankPageState();
}

class _SurveyThankPageState extends State<SurveyThankPage> {
  @override
  void initState() {
    // Initialize & inject UserController() using Get.put()
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
   return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBarCustom(
        context,
        title: 'Survey',
        type: AppBarType.back,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 25, right: 25, top: 10, bottom: 10),
        child: Column(
          children: [
            const SizedBox(height: 50),
            Center(
              child: TextGradient(
                'Thank you!',
                style: TextStyle(
                  height: 1,
                  fontSize: FontSize.h1,
                  fontFamily: 'FC_Iconic',
                  fontWeight: FontWeight.w500,
                ),
                gradient: const LinearGradient(colors: [
                  Color(0xff0081DC),
                  Color(0xff60D0FA),
                  Color(0xff62D5D8),
                ]),
              ),
            ),
            const SizedBox(height: 10),
            TextCustom(
              text: 'for your cooperation',
              fontSize: FontSize.h7,
              fontWeight: FontWeight.w400,
              height: 1,
              color: const Color(0xff122D58),
            ),
            const SizedBox(height: 70),
            SizedBox(
              width: 180,
              child: ElevatedButtonCustom(
                text: 'BACK TO HOME',
                onPressed: () {
                  context.go('/home');
                },
              ),
            )
          ]
        ),
      ),
    );
  }
}
