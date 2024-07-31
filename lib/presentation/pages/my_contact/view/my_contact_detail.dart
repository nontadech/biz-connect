import 'package:biz_connect/app/config/themes/theme.dart';
import 'package:biz_connect/domain/entities/contact_entity.dart';
import 'package:biz_connect/presentation/pages/my_contact/controllers/controllers.dart';
import 'package:biz_connect/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyContactDetail extends GetView<MyContactController> {
  final ContactData contact;
  
  const MyContactDetail({
    super.key,
    required this.contact
  });

  @override
  Widget build(BuildContext context) {
    MyContactBinding().dependencies();
    controller.context.value = context;
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
                      avatar: contact.profile_image!,
                    ),
                  )
                ),
                const SizedBox(
                  height: 20,
                ),
                Center(
                  child: TextCustom(
                    text: '${contact.first_name!} ${contact.last_name!}', 
                    fontSize: FontSize.h6, 
                    fontWeight: FontWeight.w600, 
                    color: const Color(0xff13315F),
                    height: 1.2,
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                TextDisplay(
                  title: 'Company',
                  text: contact.company!,
                ),
                TextDisplay(
                  title: 'Position',
                  text: contact.position!,
                ),
                TextDisplay(
                  title: 'Email',
                  text: contact.email!,
                ),
                TextDisplay(
                  title: 'Phone',
                  text: contact.phone!,
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
            onPressed: () async {
              controller.addContact(contact);
            }
          )
        )
      ],
    );
  }
}