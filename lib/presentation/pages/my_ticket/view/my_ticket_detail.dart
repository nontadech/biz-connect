import 'package:biz_connect/app/config/themes/theme.dart';
import 'package:biz_connect/data/models/ticket_model.dart';
import 'package:biz_connect/presentation/pages/my_ticket/controllers/controllers.dart';
import 'package:biz_connect/presentation/widgets/widgets.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_getx_widget.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:qr_flutter/qr_flutter.dart';


class MyTicketDetail extends GetView<MyTicketController> {
  final int eventId;
  
  const MyTicketDetail({
    super.key,
    required this.eventId,
  });

  @override
   Widget build(BuildContext context) {
    
    return  GetX(
      init: controller,
      initState: (_) {
        controller.index.value = 0;
        controller.ticketDetail.value = const Ticket();
        controller.fetchDataDetail(eventId);
      },
      builder: (controller) {
        if(controller.ticketDetail.value.tickets.isEmpty){
          const Column(
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
        final tickets = controller.ticketDetail.value.tickets;
        return Stack(
          children: [
            CarouselSlider(
              carouselController: controller.carouselController,
              items: tickets.map((ticket) {
                return Builder(
                  builder: (BuildContext context) {
                    return Padding(
                      padding: const EdgeInsets.only(left: 25, right: 25, top: 10, bottom: 10),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child: Stack(
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width,
                              decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.all(Radius.circular(16)),
                              ),
                              child: Column(
                                children: [
                                  const SizedBox(
                                    height: 30,
                                  ),
                                  Center(
                                    child: TextCustom(
                                      textAlign: TextAlign.center,
                                      text: 'BizConnect',
                                      color: const Color(0xff13315F),
                                      fontSize: FontSize.h4,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Center(
                                    child: QrImageView(
                                      data: ticket.private_ref.toString(),
                                      version: QrVersions.auto,
                                      size: 190.0,
                                    ),
                                  ),
                                  Container(
                                    height: 56,
                                    margin: const EdgeInsets.only(top: 20, bottom: 10,),
                                    alignment: Alignment.center,
                                    width: MediaQuery.of(context).size.width-50,
                                    decoration: const BoxDecoration(
                                      gradient: LinearGradient(
                                        begin: Alignment.centerLeft,
                                        end: Alignment.centerRight,
                                        colors: [
                                          Color(0xff0081DC),
                                          Color(0xff60D0FA),
                                          Color(0xff62D5D8),
                                        ], 
                                      ),
                                    ),
                                    child: TextCustom(
                                      text: 'NO.'.tr(args: [ticket.private_ref.toString()]),
                                      color: Colors.white,
                                      fontSize: FontSize.h6,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 25, right: 25, top: 15, bottom: 15),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Center(
                                          child: TextCustom(
                                            textAlign: TextAlign.center,
                                            text: ticket.venue_name!,
                                            color: const Color(0xff13315F),
                                            fontSize: FontSize.h6,
                                            fontWeight: FontWeight.w400,
                                            height: 1,
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Expanded(
                                              child: TextIconVertical(
                                                text: ticket.event_date!,
                                                icon: SvgPicture.asset(
                                                  'assets/icons/agenda.svg',
                                                  height: 24,
                                                  width: 24,
                                                  colorFilter: const ColorFilter.mode(
                                                    Color(0xff56BED6),
                                                    BlendMode.srcIn,
                                                  ),
                                                ),
                                              )
                                            ),
                                            Expanded(
                                              child: TextIconVertical(
                                                text: '${ticket.event_start_time!}-${ticket.event_end_time!}',
                                                icon:  SvgPicture.asset(
                                                  'assets/icons/clock.svg',
                                                  height: 24,
                                                  width: 24,
                                                  colorFilter: const ColorFilter.mode(
                                                    Color(0xff56BED6),
                                                    BlendMode.srcIn,
                                                  ),
                                                ),
                                              )
                                            ),
                                            Expanded(
                                              child: TextIconVertical(
                                                text: '${ticket.ticket_type}',
                                                icon: SvgPicture.asset(
                                                  'assets/icons/ticket.svg',
                                                  height: 24,
                                                  width: 24,
                                                  colorFilter: const ColorFilter.mode(
                                                    Color(0xff56BED6),
                                                    BlendMode.srcIn,
                                                  ),
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 15,
                                        ),
                                        const Separator(
                                          color: Color(0xff6481A9),
                                        ),
                                        const SizedBox(
                                          height: 15,
                                        ),
                                        TextCustom(
                                          text: ticket.event_title!, 
                                          fontSize: FontSize.h6, 
                                          fontWeight: FontWeight.w600, 
                                          height: 1,
                                          color: const Color(0xff13315F),
                                        ),
                                        const SizedBox(
                                          height: 15,
                                        ),
                                        Row(
                                          crossAxisAlignment:CrossAxisAlignment.start,
                                          children: [
                                            Stack(
                                              children: [
                                                Container(
                                                  clipBehavior: Clip.hardEdge,
                                                  decoration: const BoxDecoration(
                                                    color: Color(0xffEAF4FF),
                                                    borderRadius: BorderRadius.all(Radius.circular(8)),
                                                  ),
                                                  child: CachedNetworkImage(
                                                    imageUrl: ticket.image_display!,
                                                    width: 120,
                                                    height: 170,
                                                    fit: BoxFit.cover,
                                                  )
                                                ),
                                              ],
                                            ),
                                            const SizedBox(
                                              width: 20,
                                            ),
                                            Flexible(
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  TextCustom(
                                                    text: 'Name',
                                                    fontSize: FontSize.h8,
                                                    fontWeight: FontWeight.w500,
                                                    color: const Color(0xff13315F),
                                                    height: 1,
                                                  ),
                                                  TextCustom(
                                                    text: ticket.fullname!,
                                                    fontSize: FontSize.h8,
                                                    fontWeight: FontWeight.w400,
                                                    color: const Color(0xff6481A9),
                                                    height: 1,
                                                  ),
                                                  const SizedBox(
                                                    height: 5,
                                                  ),
                                                  TextCustom(
                                                    text: 'Email',
                                                    fontSize: FontSize.h8,
                                                    fontWeight: FontWeight.w500,
                                                    color: const Color(0xff13315F),
                                                    height: 1,
                                                  ),
                                                  TextCustom(
                                                    text: ticket.email!,
                                                    fontSize: FontSize.h8,
                                                    fontWeight: FontWeight.w400,
                                                    color: const Color(0xff6481A9),
                                                    height: 1,
                                                  ),
                                                  const SizedBox(
                                                    height: 5,
                                                  ),
                                                  TextCustom(
                                                    text: 'Phone',
                                                    fontSize: FontSize.h8,
                                                    fontWeight: FontWeight.w500,
                                                    color: const Color(0xff13315F),
                                                    height: 1,
                                                  ),
                                                  TextCustom(
                                                    text: ticket.tel!,
                                                    fontSize: FontSize.h8,
                                                    fontWeight: FontWeight.w400,
                                                    color: const Color(0xff6481A9),
                                                    height: 1,
                                                  ),
                                                ],  
                                              )
                                            )
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        TextCustom(
                                          text: 'Information', 
                                          fontSize: FontSize.h6, 
                                          fontWeight: FontWeight.w600, 
                                          color: const Color(0xff13315F)
                                        ),
                                        HtmlWidget(
                                          ticket.event_detail!,
                                          textStyle: TextStyle(
                                            fontSize: FontSize.h12,
                                            fontWeight: FontWeight.w400,
                                            color: const Color(0xff122D58),
                                              height: 1.4,
                                          ),
                                        ),
                                      ],
                                    )
                                  ),
                                ]
                              )
                            ),
                            Positioned(
                              left: 0,
                              top: 0,
                              child: Container(
                                height: 17,
                                width: MediaQuery.of(context).size.width-50,
                                decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(16),
                                    topRight: Radius.circular(16),
                                  ),
                                  gradient: LinearGradient(
                                    begin: Alignment.centerLeft,
                                    end: Alignment.centerRight,
                                    colors: [
                                      Color(0xff0081DC),
                                      Color(0xff60D0FA),
                                      Color(0xff62D5D8),
                                    ],
                                  ),
                                ),
                              ),
                            )
                          ]
                        ),
                      )
                    );
                  });
                }
              ).toList(),
              options: CarouselOptions(
                onPageChanged: (index, reason) {
                  controller.index.value = index;
                },
                height: MediaQuery.of(context).size.height-100,
                aspectRatio: 16/9,
                viewportFraction: 1,
                initialPage: 0,
                enableInfiniteScroll: false,
                reverse: false,
                autoPlay: false,
                autoPlayInterval: const Duration(seconds: 3),
                autoPlayAnimationDuration: const Duration(milliseconds: 800),
                autoPlayCurve: Curves.fastOutSlowIn,
                enlargeCenterPage: false,
                scrollDirection: Axis.horizontal,
              ),
            ),
            controller.index.value == 0 && tickets.length > 1 ? Positioned(
              right: 10,
              top: MediaQuery.of(context).size.height/2-100,
              child: InkWell(
                onTap: () {
                  controller.carouselController.nextPage();
                },
                child: Container(
                  width: 40,
                  height: 40,
                  decoration: const BoxDecoration(
                    color: Color.fromRGBO(255, 255, 255, 0.8),
                    borderRadius: BorderRadius.all(Radius.circular(16)),
                  ),
                  child: const Center(
                    child: Icon(
                      Icons.arrow_forward_ios,
                      color: Color.fromRGBO(0, 0, 0, 0.5),
                    ),
                  ),
                )
              ),
            ) : Container(),
            controller.index.value > 0 ? Positioned(
              left: 10,
              top: MediaQuery.of(context).size.height/2-100,
              child: InkWell(
                onTap: () {
                  controller.carouselController.previousPage();
                },
                child: Container(
                  width: 40,
                  height: 40,
                  decoration: const BoxDecoration(
                    color: Color.fromRGBO(255, 255, 255, 0.8),
                    borderRadius: BorderRadius.all(Radius.circular(16)),
                  ),
                  child: const Center(
                    child: Icon(
                      Icons.arrow_back_ios,
                      color: Color.fromRGBO(0, 0, 0, 0.5),
                    ),
                  ),
                )
              ),
            ) : Container(),
          ]
        );
      }
    );
  }
}
