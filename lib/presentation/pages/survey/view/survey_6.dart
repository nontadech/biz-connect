import 'package:biz_connect/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';

import '../../../../app/config/themes/theme.dart';

class Survey6 extends StatefulWidget {
  const Survey6({super.key});

  @override
  State<Survey6> createState() => _Survey6State();
}

class _Survey6State extends State<Survey6> {
  @override
  void initState() {
    // Initialize & inject UserController() using Get.put()
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextCustom(
          text: '6. Odio facilisis mauris sit amet massa vitaetortor condimentum lacinia?, 1',
          fontSize: FontSize.h8, 
          fontWeight: FontWeight.w400, 
          height: 1.2,
          color: const Color(0xff122D58)
        ),
         const SizedBox(
          height: 20,
        ),
        ImgFormFieldCustom(
          context,
          hintText: 'Upload file your files (.jpeg, png, .pdf)',
        ),
      ],
    );
  }
}
