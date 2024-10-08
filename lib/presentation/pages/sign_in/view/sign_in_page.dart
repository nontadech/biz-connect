import 'package:biz_connect/app/config/themes/theme.dart';
import 'package:biz_connect/presentation/pages/sign_in/view/sign_in_form.dart';
import 'package:biz_connect/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
  void initState() {
    // Initialize & inject UserController() using Get.put()
    super.initState();
  }

  @override
   Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                InkWell(
                  onTap: () {
                    context.pop();
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(left: 25.0, right: 25.0, top: 90.0),
                    child: SvgPicture.asset(
                      'assets/icons/back.svg',
                      colorFilter: const ColorFilter.mode(
                        Color(0xff13315F),
                        BlendMode.srcIn,
                      ),
                    )
                  ),
                ),
              ],
            ),  
            Center(
              child: Image.asset(
                'assets/icons/logo.png',
                width: 123,
              ),
            ),
            const SizedBox(height: 15.0),
            TextCustom(
              text: 'BizConnect', 
              fontSize: FontSize.h1, 
              fontWeight: FontWeight.w600, 
              color: const Color(0xff13315F)
            ),
            const Padding(
              padding: EdgeInsets.only(left: 25.0, right: 25.0, top: 20.0),
              child: SignInPageForm(),
            ),
            const SizedBox(
              height: 50,
            ),
          ],
        )
      )
    );
  }
}
