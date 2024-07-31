import 'package:biz_connect/app/config/themes/theme.dart';
import 'package:biz_connect/presentation/pages/private_event/private_event.dart';
import 'package:biz_connect/presentation/pages/profile/controllers/controllers.dart';
import 'package:biz_connect/presentation/pages/profile/view/picture_profile.dart';
import 'package:biz_connect/presentation/pages/profile/view/text_select_list.dart';
import 'package:biz_connect/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';

class ProfilePage extends GetView<ProfileController> {
  const ProfilePage({super.key});

  @override
   Widget build(BuildContext context) {
    ProfileBinding().dependencies();
    controller.fechData(controller.user!);
    controller.context(context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.only(left: 25, right: 25, top: 10, bottom: 10),
        child: GetX(
          init: controller,
          initState: (state) {
          },
          builder: (_) {
            return SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 100,
                  ),
                  Center(
                    child: PictureProfile(
                      profile: controller.profile.value.profile!,
                    )
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: TextCustom(
                      text: controller.profile.value.full_name!, 
                      fontSize: FontSize.h6, 
                      fontWeight: FontWeight.w600, 
                      color: const Color(0xff13315F),
                      height: 1.2,
                    ),
                  ),
                  Center(
                    child: TextCustom(
                      text: controller.profile.value.email!, 
                      fontSize: FontSize.h8, 
                      height: 1.2,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xff6481A9),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Center(
                    child: ButtonIcon(
                      icon: SvgPicture.asset('assets/icons/scan_barcode.svg'),
                      onPressed: () {  
                        context.push('/profile/my_qr');
                      },
                      text: 'My QR Code', 
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  TextDisplay(
                    title: 'Company',
                    text: controller.profile.value.company!,
                  ),
                  TextDisplay(
                    title: 'Position',
                    text: controller.profile.value.position!,
                  ),
                  TextDisplay(
                    title: 'Email',
                    text: controller.profile.value.email!,
                  ),
                  TextDisplay(
                    title: 'Phone',
                    text: controller.profile.value.phone!,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 10, bottom: 10),
                    child: Divider(
                      color: Color(0xffEAF4FF),
                      thickness: 1,
                    ),
                  ),
                  TextSelectList(
                    text: 'My Ticket',
                    icon: SvgPicture.asset('assets/icons/ticket_star.svg'),
                    onTap: () {
                      context.push('/my_tickets');
                    },
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  TextSelectList(
                    text: 'Private Event',
                    icon: SvgPicture.asset('assets/icons/check.svg'),
                    onTap: () async {
                      await privateEvent(context);
                    },
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  TextSelectList(
                    text: 'My Contact',
                    icon: SvgPicture.asset('assets/icons/mobile.svg'),
                    onTap: () {
                      context.push('/profile/my_contacts');
                    },
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  TextSelectList(
                    text: 'Term and Condition',
                    icon: SvgPicture.asset('assets/icons/shield_tick.svg'),
                    onTap: () {
                      context.push('/profile/term_condition');
                    },
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  TextSelectList(
                    text: 'My Account',
                    icon: SvgPicture.asset('assets/icons/setting.svg'),
                    onTap: () {
                      context.push('/profile/my_account');
                    },
                  )
                ],
              )
            );
          } 
        )
      )
    );
  }
}
