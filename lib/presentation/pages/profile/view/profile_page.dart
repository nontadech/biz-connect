import 'package:biz_connect/app/config/themes/theme.dart';
import 'package:biz_connect/domain/entities/event_entity.dart';
import 'package:biz_connect/presentation/controllers/auth/auth_controller.dart';
import 'package:biz_connect/presentation/pages/private_event/controllers/controllers.dart';
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
    final authC = AuthController.call;
    if(!authC.isLoggedIn.value){
       return Center(
         child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
           children: [
              Image.asset(
                'assets/icons/logo.png',
                width: 123,
              ),
              Padding(padding: const EdgeInsets.only(left: 25.0, right: 25.0, top: 50.0),
                child: ElevatedButtonCustom(
                  onPressed: () {
                    context.push('/sign_in');
                  },
                  text: 'Sign In',
                )
              )
           ],
         ),
       );
    }
    PrivateEventBinding().dependencies();
    final privateEventc = PrivateEventController.call;               
    ProfileBinding().dependencies();
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.only(left: 25, right: 25, top: 10, bottom: 10),
        child: GetX(
          init: controller,
          initState: (state) {
            controller.fechData(controller.user!);
            controller.context(context);
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
                      height: 1,
                    ),
                  ),
                  Center(
                    child: TextCustom(
                      text: controller.profile.value.email!, 
                      fontSize: FontSize.h8, 
                      height: 1,
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
                      WidgetsBinding.instance.addPostFrameCallback((_){
                        try {
                          if(!privateEventc.isLoading.value){
                            context.push('/popular_event', extra: {
                            'is_private': true,
                            'event': 
                              EventList(
                                event_id: privateEventc.qrPrivateEvent.value.data![0].event_id,
                                title: privateEventc.qrPrivateEvent.value.data![0].title,
                                description: privateEventc.qrPrivateEvent.value.data![0].description,
                                date: privateEventc.qrPrivateEvent.value.data![0].date,
                                start_time: privateEventc.qrPrivateEvent.value.data![0].start_time,
                                date_end: privateEventc.qrPrivateEvent.value.data![0].date_end,
                                end_time: privateEventc.qrPrivateEvent.value.data![0].end_time,
                                location_name: privateEventc.qrPrivateEvent.value.data![0].location_name,
                                venue_name: privateEventc.qrPrivateEvent.value.data![0].venue_name,
                                venue_tel: privateEventc.qrPrivateEvent.value.data![0].venue_tel,
                                venue_email: privateEventc.qrPrivateEvent.value.data![0].venue_email!,
                                thumnail: privateEventc.qrPrivateEvent.value.data![0].image_display,
                                location_lat: privateEventc.qrPrivateEvent.value.data![0].location_lat,
                                location_lng: privateEventc.qrPrivateEvent.value.data![0].location_lng,
                              )
                            }); 
                          }
                        } catch (error) {
                          popupStatus(
                            context, 
                            PopupStatusType.error,
                            message: 'No event found',
                          );
                        }
                      });
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
