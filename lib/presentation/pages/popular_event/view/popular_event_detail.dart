import 'package:biz_connect/app/config/themes/theme.dart';
import 'package:biz_connect/domain/entities/event_entity.dart';
import 'package:biz_connect/presentation/widgets/widgets.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
import 'package:go_router/go_router.dart';

class PopularEventDetail extends StatelessWidget {
  final EventList event;
  
  const PopularEventDetail({
    super.key,
    required this.event
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: const Color(0xffffffff),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                padding: const EdgeInsets.only(left: 20, top: 80),
                alignment: Alignment.topLeft,
                height: 280,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
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
                child:  IconButton(
                  icon: SvgPicture.asset('assets/icons/back.svg'),
                  onPressed: () {
                    context.pop();
                  },
                ),
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
                            TextCustom(
                              text: event.title!, 
                              fontSize: FontSize.h7, 
                              fontWeight: FontWeight.w600, 
                              height: 1.2,
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
                                  onPressed: () {  },
                                  text: 'Agenda',
                                ),
                                const SizedBox(width: 10),
                                ButtonIcon(
                                  icon: SvgPicture.asset('assets/icons/people.svg'),
                                  onPressed: () {  },
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
                      Image.asset('assets/demo/map.png'),
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
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: ButtonPositionBottom(
            text: 'Register now',
            onPressed: () {
              context.go('/home');
            }
          )
        )
      ]
    );
  }
}