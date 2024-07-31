import 'dart:convert';

import 'package:biz_connect/app/config/themes/theme.dart';
import 'package:biz_connect/presentation/pages/my_qr/controllers/controllers.dart';
import 'package:biz_connect/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';


class MyQrPage extends GetView<MyQRController> {
  const MyQrPage({super.key});

  @override
  Widget build(BuildContext context) {
    MyQRBinding().dependencies();
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBarCustom(
        context,
        title: 'My QR Code',
        type: AppBarType.back,
      ),
      body: GetX(
        init: controller,
        initState: (_) {
         controller.getQR();
        },
        builder: (_){
          if(controller.qt.value.my_qr_code_png_base64 == null){
            return const Column(
              children: [
                SizedBox(
                  height: 200,
                ),
                Center(
                  child: CircularProgressIndicator(),
                )
              ],
            );
          }
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Column(
                  children: [
                    SizedBox(height: 100.w),
                    Image.memory(base64Decode(controller.qt.value.my_qr_code_png_base64!.split(',').last)),
                    SizedBox(height: 20.w),
                    Padding(
                      padding: const EdgeInsets.only(left: 25.0, right: 25.0, top: 200.0,),
                      child: TextCustom(
                        textAlign: TextAlign.center,
                        text: 'Please allow the  other party to use the QR Code scan code reader. To display your information',
                        fontSize: FontSize.h8,
                        height: 1.2,
                        fontWeight: FontWeight.w400,
                        color: const Color(0xff6481A9)
                      )
                    )
                  ],
                ),
              ),
            ],
          );
        }
      )
    );
  }
}
