import 'package:biz_connect/app/config/themes/theme.dart';
import 'package:biz_connect/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';

class Survey4 extends StatefulWidget {
  const Survey4({super.key});

  @override
  State<Survey4> createState() => _Survey4State();
}

class _Survey4State extends State<Survey4> {
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
          text: '4. Odio facilisis mauris sit amet massa vitaetortor condimentum lacinia?, 1',
          fontSize: FontSize.h8, 
          fontWeight: FontWeight.w400, 
          height: 1.2,
          color: const Color(0xff122D58)
        ),
        const SizedBox(
          height: 10,
        ),
        TextCheckbox(
          title: 'At in tellus integer feugiat', 
          value: true, 
          onChanged: (bool bool) {  },
        ),
        const SizedBox(
          height: 10,
        ),
        TextCheckbox(
          title: 'Vel fringilla est ullamcorper',
          value: false,
          onChanged: (bool bool) {  },
        ),
        const SizedBox(
          height: 10,
        ),
        TextCheckbox(
          title: 'Odio facilisis', 
          value: false,
          onChanged: (bool bool) {  },
        ),
        const SizedBox(
          height: 10,
        ),
        TextCheckbox(
          title: 'Dui ut ornare lectus sit amet', 
          value: false,
          onChanged: (bool bool) {  },
        ),
      ],
    );
  }
}
