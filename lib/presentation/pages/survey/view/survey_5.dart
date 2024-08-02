import 'package:biz_connect/app/config/themes/theme.dart';
import 'package:biz_connect/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';

class Survey5 extends StatefulWidget {
  const Survey5({super.key});

  @override
  State<Survey5> createState() => _Survey5State();
}

class _Survey5State extends State<Survey5> {
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
          text: '5. Odio facilisis mauris sit amet massa vitaetortor condimentum lacinia?, 1',
          fontSize: FontSize.h8, 
          fontWeight: FontWeight.w400, 
          height: 1.2,
          color: const Color(0xff122D58)
        ),
        const SizedBox(
          height: 15,
        ),
        SizedBox(
          width: 232,
          child: Rate(
            type: RateType.middle, setRateCallBack: (value) {
              // Call controller method
            },
          ),
        )
      ],
    );
  }
}
