import 'package:biz_connect/app/config/themes/theme.dart';
import 'package:biz_connect/presentation/pages/my_account/controllers/my_account_binding.dart';
import 'package:biz_connect/presentation/pages/my_account/controllers/my_account_controller.dart';
import 'package:biz_connect/presentation/pages/my_account/view/my_account_detail.dart';
import 'package:biz_connect/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:go_router/go_router.dart';


class MyAccountPage extends GetView<MyAccountController>{
  const MyAccountPage({super.key});

  @override
   Widget build(BuildContext context) {
    MyAccountBinding().dependencies();
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBarCustom(
        context,
        title: 'My Account',
        type: AppBarType.back,
        onPressedBack: () {
          controller.getProfile();
          context.pop();
        },
        actions: [
          InkWell(
            onTap: () {
              controller.myAccountFormKey.currentState!.save();
              controller.updateProfile();
            },
            child: Padding(
              padding: const EdgeInsets.only(right: 25),
              child: TextCustom(
                text: 'Save', 
                fontSize: FontSize.h7, 
                fontWeight: FontWeight.w500, 
                color: const Color(0xffffffff)
              )
            ),
          )
        ],
      ),
      body: const Padding(
        padding: EdgeInsets.only(left: 25, right: 25, top: 10, bottom: 10),
        child: MyAccountDetail(),
      )
    );
  }
}
