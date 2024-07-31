import 'package:biz_connect/app/config/themes/theme.dart';
import 'package:biz_connect/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';

class Survey7 extends StatefulWidget {
  const Survey7({super.key});

  @override
  State<Survey7> createState() => _Survey7State();
}

class _Survey7State extends State<Survey7> {
  @override
  void initState() {
    // Initialize & inject UserController() using Get.put()
    super.initState();
  }
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextCustom(
          text: '7. Odio facilisis mauris sit amet massa vitaetortor condimentum lacinia?, 1',
          fontSize: FontSize.h8, 
          fontWeight: FontWeight.w400, 
          height: 1.2,
          color: const Color(0xff122D58)
        ),
        const SizedBox(
          height: 15,
        ),
        Center(
          child: Wrap(
            spacing: 15,
            runSpacing: 15,
            children: [
              for (var i = 1; i <= 10; i++)
              Container(
                decoration: BoxDecoration(
                  color: i  == 8 ? const Color(0xff56BED6) : const Color(0xffEAF4FF),
                  borderRadius: BorderRadius.circular(10),
                ),
                width: 54,
                height: 50,
                alignment: Alignment.center,
                child: TextCustom(
                  text:'$i',
                  fontSize: FontSize.h8,
                  fontWeight: FontWeight.w500,
                  color:  i  == 8 ? Colors.white : const Color(0xff122D58),
                )
              ),
            ],
          ),
        )
      ],
    );
  }
}
