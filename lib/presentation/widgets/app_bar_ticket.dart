import 'package:biz_connect/app/config/themes/theme.dart';
import 'package:biz_connect/presentation/widgets/text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

class AppBarTicket extends StatelessWidget implements PreferredSizeWidget{
  final String title;
  final String subject;
  final String location;
  final String date;
  final BuildContext context;
  final int eventId; 
  const AppBarTicket(
    this.context,
  {
    super.key, 
    required this.title,
    required this.subject,
    required this.date,
    required this.location,
    required this.eventId
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: false,
      toolbarHeight: 50,
      titleSpacing: 0,
      leading: IconButton(
        color: Colors.black, 
        onPressed: () => context.pop(),
        icon: SvgPicture.asset(
          'assets/icons/back.svg',
        )
        
      ), 
      title: TextCustom(
        text: title,
        color: Colors.white,
        fontSize: FontSize.h5,
        fontWeight: FontWeight.w500,
      ),
      flexibleSpace: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20.0),
            bottomRight: Radius.circular(20.0),
          ),
          gradient: LinearGradient(
            begin: Alignment.centerLeft, // Start direction
            end: Alignment.centerRight, // End direction
            colors: [
              Color(0xff0081DC),
              Color(0xff60D0FA),
              Color(0xff60D0FA),
            ], // Customize your colors here
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: 300,
              child: Padding(
                padding: const EdgeInsets.only(left: 20, bottom: 10, top: 60),
                child: TextCustom(
                  textAlign: TextAlign.center,
                  text: subject,
                  color: Colors.white,
                  fontSize: FontSize.h6,
                  fontWeight: FontWeight.w400,
                  height: 1,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
            SizedBox(
              width: 300,
              child: Padding(
                padding: const EdgeInsets.only(left: 20, bottom: 10),
                child: TextCustom(
                  text: date,
                  textAlign: TextAlign.center,
                  color: Colors.white,
                  fontSize: FontSize.h10,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            SizedBox(
              width: 300,
              child: Padding(
                padding: const EdgeInsets.only(left: 20, bottom: 10),
                child: TextCustom(
                  text: location,
                  color: Colors.white,
                  textAlign: TextAlign.center,
                  fontSize: FontSize.h10,
                  fontWeight: FontWeight.w400,
                  height: 1,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
            const SizedBox(height: 10),
            Container(
              width: 160,
              height: 43,
              padding: const EdgeInsets.only(left: 10, right: 10),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(20.0),
                ),
                gradient: LinearGradient(
                  begin: Alignment.topLeft, 
                  end: Alignment.bottomRight, 
                  colors: [
                    Color(0xff0FD8AA),
                    Color(0xff0FD8AA),
                    Color(0xff13B4FF),
                  ],
                  stops: [0.4526, 0.4526, 2.2784], 
                ),
              ),
              child: InkWell(
                onTap: () => context.push('/my_ticket', 
                  extra: {
                    'event_id': eventId
                  }
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      'assets/icons/ticket_join.svg',
                      width: 24,
                      height: 24,
                    ),
                    const SizedBox(width: 5),
                    TextCustom(
                      text: 'MY TICKET', 
                      fontSize: FontSize.h9, 
                      fontWeight: FontWeight.w600, 
                      color: Colors.white
                    )
                  ],
                ),
              )
            ),
            const SizedBox(height: 30)
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(300); 
}