import 'package:biz_connect/app/config/themes/theme.dart';
import 'package:biz_connect/domain/entities/event_entity.dart';
import 'package:biz_connect/presentation/pages/my_account/controllers/controllers.dart';
import 'package:biz_connect/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LanguageWidget extends GetView<MyAccountController> {
  const LanguageWidget({super.key});

  @override
   Widget build(BuildContext context) {
    MyAccountBinding().dependencies();
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        leading: Container(),
        title: TextCustom(
          text: 'Language', 
          fontSize: FontSize.h4, 
          fontWeight: FontWeight.w500, 
          color: const Color(0xff13315F)
        ),
       
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 25, right: 25, top: 10, bottom: 10),
        child: Center(
          child: GetX(
            init: controller,
            initState: (state) {
            },
            builder: (_) {
              return Column(
                children: [
                  InkWell(
                    onTap: () {
                     controller.changeLanguage(LangType.en);
                    },
                    child: TextCustom(
                      textAlign: TextAlign.center,
                      text: 'English', 
                      fontSize: FontSize.h7, 
                      fontWeight: controller.lang.value == LangType.en ? FontWeight.w600 : FontWeight.w400, 
                      color: const Color(0xff13315F)
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  InkWell(
                    onTap: () {
                      controller.changeLanguage(LangType.th);
                    },
                    child: TextCustom(
                      text: 'Thai', 
                      fontSize: FontSize.h7, 
                      fontWeight: controller.lang.value == LangType.th ? FontWeight.w600 : FontWeight.w400, 
                      color: const Color(0xff13315F)
                    )
                  )
                ],
              );
            }
          )
        )
      )
    );
  }
}
