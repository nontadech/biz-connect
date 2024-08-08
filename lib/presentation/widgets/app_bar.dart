import 'package:biz_connect/app/config/themes/theme.dart';
import 'package:biz_connect/presentation/controllers/auth/auth_controller.dart';
import 'package:biz_connect/presentation/widgets/text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:share_plus/share_plus.dart';
enum AppBarType {
  home,
  back,
  share,
  reload,
  none,
}
class AppBarCustom extends StatelessWidget implements PreferredSizeWidget{
  final String title;
  final String? page;
  final AppBarType type;
  final BuildContext context;
  final Function()? tap;
  final List<Widget>? actions;
  final Function()? onPressedBack;
  final String? url;
  const AppBarCustom(
    this.context,
  {
    super.key, 
    required this.title,
    required this.type,
    this.page,
    this.tap,
    this.actions,
    this.onPressedBack,
    this.url,
  });

  Widget appBarHome() {
    final authC = AuthController.call;
    return AppBar(
      centerTitle: false,
      toolbarHeight: 70,
      title: Image.asset(
        'assets/images/logo_home.png',
        width: 147,
      ),
      actions: [
        authC.isLoggedIn.value ? InkWell(
          onTap: () {
             context.push(page!);
          },
          child: Container(
            margin: const EdgeInsets.only(right: 20),
            child: SvgPicture.asset(
              'assets/icons/scan.svg',
              height: 32,
              width: 32,
            ),
          ),
        ) : const SizedBox(),
      ],
      flexibleSpace: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20.0),
            bottomRight: Radius.circular(20.0),
          ),
          color: Colors.white,
          boxShadow: [
              BoxShadow(
                color: Color.fromRGBO(19, 180, 255, 0.08),
                blurRadius: 10,
                spreadRadius: 6,
              ),
            ],
        ),
      ),
    );
  }

  Widget appBarBack() {
    return AppBar(
      backgroundColor: Colors.transparent,
      actions: actions ?? [],
      centerTitle: false,
      toolbarHeight: 50,
      titleSpacing: 0,
      leading: IconButton(
        color: Colors.black, 
        onPressed: () { 
          onPressedBack != null ? onPressedBack!() :
          context.pop(); 
        },
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
      ),
    );
  }

  Widget appBarShare() {
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
      actions: [
        Row(
          children: [
            const SizedBox(width: 10,),
            InkWell(
              onTap: () {
                Share.share(url!, subject: title);
              },
              child: Container(
                margin: const EdgeInsets.only(right: 20),
                child: SvgPicture.asset(
                  'assets/icons/share.svg',
                  height: 32,
                  width: 32,
                ),
              ),
            ),
          ],
        )
      ],
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
      ),
    );
  }
  
  Widget appBarReload() {
    return AppBar(
      centerTitle: false,
      toolbarHeight: 50,
      title: TextCustom(
        text: title,
        color: Colors.white,
        fontSize: FontSize.h3,
        fontWeight: FontWeight.w600,
      ),
      actions: [
        InkWell(
          onTap: tap,
          child: Container(
            margin: const EdgeInsets.only(right: 20),
            child: SvgPicture.asset(
              'assets/icons/refresh.svg',
              height: 32,
              width: 32,
            ),
          ),
        )
      ],
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
      ),
    );
  }

  Widget appBarNone() {
    return AppBar(
      centerTitle: false,
      toolbarHeight: 50,
      title: TextCustom(
        text: title,
        color: Colors.white,
        fontSize: FontSize.h3,
        fontWeight: FontWeight.w600,
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
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    switch (type) {
      case AppBarType.home:
        return appBarHome();
      case AppBarType.reload:
        return appBarReload();
      case AppBarType.none:
        return appBarNone();
      case AppBarType.share:
        return appBarShare();
      case AppBarType.back:
      default:
        return appBarBack();
    }
  }

  @override
  Size get preferredSize => const Size.fromHeight(65.0); 
}