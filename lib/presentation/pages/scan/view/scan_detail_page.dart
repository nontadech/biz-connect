import 'package:biz_connect/app/config/themes/theme.dart';
import 'package:biz_connect/presentation/pages/scan/controllers/controllers.dart';
import 'package:biz_connect/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';

class ScanDetailPage extends GetView<ScanController> {
  final String code;

  const ScanDetailPage({
    super.key,
    required this.code
  });


  @override
   Widget build(BuildContext context) {
    ScanBinding().dependencies();
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBarCustom(
        context,
        title: 'Scan Detail',
        type: AppBarType.back,
        onPressedBack: () {
          context.go('/home');
        },
      ),
      body: GetX(
        init: controller,
        initState: (_) {
          controller.getQRContactInformation(code);
        },
        builder: (_){
          final contactData = controller.qrContact.value.contact_data;
          if(contactData == null) {
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
      
          return Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 25.0, right: 25.0, top: 20.0, bottom: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    Center(
                      child: SizedBox(
                        width: 106,
                        height: 106,
                        child: PictureAccount(
                          avatar: contactData.profile_image!,
                        ),
                      )
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Center(
                      child: TextCustom(
                        text: '${contactData.first_name!} ${contactData.last_name!}', 
                        fontSize: FontSize.h6, 
                        fontWeight: FontWeight.w600, 
                        color: const Color(0xff13315F),
                        height: 1,
                      ),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    TextDisplay(
                      title: 'Company',
                      text: contactData.company!, 
                    ),
                    TextDisplay(
                      title: 'Position',
                      text: contactData.position!, 
                    ),
                    TextDisplay(
                      title: 'Email',
                      text: contactData.email!, 
                    ),
                    TextDisplay(
                      title: 'Phone',
                      text: contactData.tel!, 
                    ),
                  ],
                ),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: ButtonPositionBottom(
                  text: 'SAVE CONTACT TO PHONE',
                  onPressed: () {
                    controller.saveContact(contactData.user_id!);
                  }
                )
              )
            ],
          );
        }
      )
    );
  }
}
