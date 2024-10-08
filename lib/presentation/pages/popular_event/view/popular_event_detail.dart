
import 'dart:developer';

import 'package:biz_connect/app/config/themes/theme.dart';
import 'package:biz_connect/domain/entities/event_entity.dart';
import 'package:biz_connect/presentation/controllers/auth/auth_controller.dart';
import 'package:biz_connect/presentation/pages/join/view/join_page.dart';
import 'package:biz_connect/presentation/pages/popular_event/controllers/controllers.dart';
import 'package:biz_connect/presentation/widgets/widgets.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';
import "package:latlong2/latlong.dart";
import 'package:maps_launcher/maps_launcher.dart';


class PopularEventDetail extends GetView<PopularEventController> {
  final EventList event;
  final bool isPrivate;

  const PopularEventDetail({
    super.key,
    required this.event,
    this.isPrivate = false,
  });
 

  @override
  Widget build(BuildContext context) {
    final authC = AuthController.call;
    PopularEventBinding().dependencies();

    return GetX(
      init: controller,
      initState: (_) {
        controller.eventPermission.value = null;
        controller.isFavorite(event.is_favorite);
        if(authC.isLoggedIn.value){
          controller.getFavoriteEventDetail(event.event_id!);
        }
      },
      builder: (_) {
        controller.getEventPermission(event.event_id!);
        if(authC.isLoggedIn.value){
          if(controller.eventPermission.value == null){
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
          if(controller.eventPermission.value!.data!.attendee_has_ticket!){
            return JoinPage(
              event: event,
            );
          }
        }
        log(event.toString()  );
        return Stack(
          children: [
            Container(
              color: const Color(0xffffffff),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    alignment: Alignment.topLeft,
                    height: 300.w,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      image: event.thumnail != '' ? DecorationImage(
                        image: CachedNetworkImageProvider(
                          event.thumnail!
                        ),
                        fit: BoxFit.cover,
                      ) : const DecorationImage(
                        image: AssetImage('assets/images/place_image.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                          child: Container(
                            width: double.infinity,
                            height: 450,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  Colors.black.withOpacity(0.7),
                                  Colors.black.withOpacity(0.4),
                                  Colors.transparent,
                                ],
                              ),
                            ),
                          )
                        ),
                        Padding(padding: const EdgeInsets.only(left: 20, top: 80, right: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              IconButton(
                                icon: SvgPicture.asset('assets/icons/back.svg'),
                                onPressed: () {
                                  context.pop();
                                },
                              ),
                              !controller.isLoading.value && authC.isLoggedIn.value ? IconButton(
                                icon: controller.isFavorite.value ? 
                                SvgPicture.asset(
                                  'assets/icons/favorite_active.svg',
                                  width: 16,
                                  height: 18,
                                ) :
                                SvgPicture.asset('assets/icons/favorite.svg',
                                  width: 16,
                                  height: 18,
                                ),
                                onPressed: () async {
                                await controller.setFavoriteEventDetail(event.event_id!);
                                },
                              ) : const SizedBox(),
                            ],
                          )
                        )
                      ],
                    )
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [   
                          Padding(
                            padding: const EdgeInsets.only(left: 25, right: 25),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(height: 20),
                                isPrivate? Container(
                                  padding: const EdgeInsets.only(left: 10, right: 10),
                                  decoration: BoxDecoration(
                                    gradient: const LinearGradient(
                                      begin: Alignment.centerLeft,
                                      end: Alignment.centerRight,
                                      colors: [
                                        Color(0xff0FD8AA),
                                        Color(0xff13B4FF),
                                      ],
                                    ),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: TextCustom(
                                    text: 'Private Event',
                                    fontSize: FontSize.h10,
                                    fontWeight: FontWeight.w600,
                                    color: const Color(0xffffffff),
                                  ),
                                ) : const SizedBox(),
                                TextCustom(
                                  text: event.title!, 
                                  fontSize: FontSize.h7, 
                                  fontWeight: FontWeight.w600, 
                                  height: 1,
                                  color: const Color(0xff13315F),
                                ),
                                const SizedBox(height: 15),
                                TextIcon(
                                  title: '${event.date} ${event.start_time} - ${event.date_end} ${event.end_time}', 
                                  icon: SvgPicture.asset(
                                    'assets/icons/calendar.svg',
                                    width: 24,
                                  ),
                                ),
                                const SizedBox(height: 10),
                                TextIcon(
                                  title: event.location_name!, 
                                  icon: SvgPicture.asset(
                                    'assets/icons/location.svg',
                                    width: 24,
                                  ),
                                ),
                                const SizedBox(height: 20),
                                 Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    ButtonIcon(
                                      icon: SvgPicture.asset('assets/icons/agenda.svg'),
                                      // isDisabled: authC.isLoggedIn.value ? controller.eventPermission.value!.data!.attendee_has_ticket! ? false : true : true,
                                      onPressed: () {
                                        // if(controller.eventPermission.value!.data!.attendee_has_ticket!){
                                          context.push('/join/agenda', 
                                            extra: {
                                              'event_id': event.event_id,
                                            }
                                          );
                                        // }
                                      },
                                      text: 'Agenda',
                                    ),
                                    SizedBox(width: 8.w),
                                    ButtonIcon(
                                      icon: SvgPicture.asset('assets/icons/people.svg'),
                                      // isDisabled: authC.isLoggedIn.value ? controller.eventPermission.value!.data!.attendee_has_ticket! ? false : true : true,
                                      onPressed: () { 
                                        // if(controller.eventPermission.value!.data!.attendee_has_ticket!){
                                          context.push('/join/speakers', 
                                            extra: {
                                              'event_id': event.event_id,
                                            }
                                          );
                                        // }
                                      },
                                      text: 'Speaker',
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 25),
                                TextCustom(
                                  text: 'Information', 
                                  fontSize: FontSize.h7, 
                                  fontWeight: FontWeight.w600, 
                                  color: const Color(0xff13315F),
                                ),
                                HtmlWidget(
                                  event.description!,
                                  textStyle: TextStyle(
                                    fontSize: FontSize.h12,
                                    fontWeight: FontWeight.w400,
                                    color: const Color(0xff122D58),
                                    height: 1.4,
                                  ),
                                ),
                                const SizedBox(height: 25),
                                TextCustom(
                                  text: 'How to get there', 
                                  fontSize: FontSize.h7, 
                                  fontWeight: FontWeight.w600, 
                                  color: const Color(0xff13315F),
                                ),
                                const SizedBox(height: 10),
                                TextIcon(
                                  title: event.venue_name!,
                                  icon: SvgPicture.asset(
                                    'assets/icons/location.svg',
                                    width: 24,
                                  ),
                                ),
                                const SizedBox(height: 10),
                                TextIcon(
                                  title: event.venue_tel!,
                                  icon: SvgPicture.asset(
                                    'assets/icons/call.svg',
                                    width: 24,
                                  ),
                                ),
                                const SizedBox(height: 10),
                                TextIcon(
                                  title: event.venue_email,
                                  icon: SvgPicture.asset(
                                    'assets/icons/sms.svg',
                                    width: 24,
                                  ),
                                ),
                                const SizedBox(height: 10),
                                TextIcon(
                                  title: 'www.ftikorat.or.th',
                                  icon: SvgPicture.asset(
                                    'assets/icons/global.svg',
                                    width: 24,
                                  ),
                                ),
                                const SizedBox(height: 10),
                                TextIcon(
                                  title: 'www.facebook.com/FTI.Korat',
                                  icon: SvgPicture.asset(
                                    'assets/icons/facebook.svg',
                                    width: 24,
                                  ),
                                ),
                                const SizedBox(height: 40),
                              ],
                            )
                          ),
                          event.location_lat != 0.0 && event.location_lng != 0.0 ?  SizedBox(
                            width: double.infinity,
                            height: 300,
                            child: FlutterMap(
                              options: MapOptions(
                                initialCenter: LatLng(event.location_lat!, event.location_lng!),
                                initialZoom: 16,
                                interactionOptions: const InteractionOptions(
                                  flags:InteractiveFlag.pinchZoom,
                                ),
                              ),
                              children: [
                                TileLayer(
                                  urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png'
                                ),
                                const Center(
                                  child: Icon(
                                    Icons.location_pin,
                                    size: 40,
                                    color: Colors.red,
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    MapsLauncher.launchCoordinates( event.location_lat!, event.location_lng!, event.location_name!);
                                  },
                                  child: Container(
                                    width: double.infinity,
                                    height: 300,
                                    color: Colors.transparent,
                                  ),
                                ),
                              ],
                            )
                          ) : const SizedBox(),
                          const SizedBox(
                            height: 100,
                          )
                        ],
                      )
                    ),
                  ),
                ]
              ),
            ),
            authC.isLoggedIn.value ? Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: !controller.eventPermission.value!.data!.attendee_has_ticket! ? ButtonPositionBottom(
                text: 'Register now',
                onPressed: () {
                  context.push(
                    '/web_view',
                    extra: {
                      'title': 'Event Detail',
                      'url': '${dotenv.get('BASE_URL')}/e/${event.event_id}/embed',
                      'event_id': event.event_id,
                    }
                  );
                }
              ) : ButtonPositionBottom(
                text: 'View Ticket',
                onPressed: () {
                  context.push(
                    '/my_ticket',
                    extra: {
                      'event_id': event.event_id,
                    }
                  );
                }
              )
            ) :  Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: ButtonPositionBottom(
                text: 'Sign in',
                onPressed: () {
                  context.push(
                    '/sign_in',
                  );
                }
              )
            )
        
          ]
        );
      }
    );
  }
}