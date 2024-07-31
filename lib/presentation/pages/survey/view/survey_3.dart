import 'package:biz_connect/app/config/themes/theme.dart';
import 'package:biz_connect/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';

class Survey3 extends StatefulWidget {
  const Survey3({super.key});

  @override
  State<Survey3> createState() => _Survey3State();
}

class _Survey3State extends State<Survey3> {
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
          text: '3. Odio facilisis mauris sit amet massa vitaetortor condimentum lacinia?, 1',
          fontSize: FontSize.h8, 
          fontWeight: FontWeight.w400, 
          height: 1.2,
          color: const Color(0xff122D58)
        ),
        const SizedBox(
          height: 10,
        ),
        TextRadio(
          title: 'At in tellus integer feugiat', 
          value: 1, 
          groupValue: 1, 
          onChanged: (int int) {  },
        ),
        const SizedBox(
          height: 10,
        ),
        TextRadio(
          title: 'Vel fringilla est ullamcorper',
          value: 3, 
          groupValue: 1, 
          onChanged: (int int) {  },
        ),
        const SizedBox(
          height: 10,
        ),
        TextRadio(
          title: 'Odio facilisis', 
          value: 3, 
          groupValue: 1, 
          onChanged: (int int) {  },
        ),
        const SizedBox(
          height: 10,
        ),
        TextRadio(
          title: 'Dui ut ornare lectus sit amet', 
          value: 3, 
          groupValue: 1, 
          onChanged: (int int) {  },
        ),
      ],
    );
  }
}
