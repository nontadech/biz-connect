import 'package:biz_connect/presentation/pages/my_event/my_event.dart';
import 'package:biz_connect/presentation/pages/my_favorite/my_favorite.dart';
import 'package:biz_connect/presentation/pages/home/home.dart';
import 'package:biz_connect/presentation/pages/layout/controllers/controllers.dart';
import 'package:biz_connect/presentation/pages/profile/profile.dart';
import 'package:biz_connect/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

enum AppBarPage {
  home,
  myEvent,
  myFavorite,
  profile
}

class LayoutPage extends StatefulWidget {
  final AppBarPage page;
  const LayoutPage(
    this.page,
    {super.key,});

  @override
  State<LayoutPage> createState() => _LayoutPageState();
}

class _LayoutPageState extends State<LayoutPage> {
  @override
  void initState() {
    super.initState();
    Get.put<LayoutController>(LayoutController(AppBarPage.home), permanent: true);
  }

  @override
   Widget build(BuildContext context) {
    final layoutC = LayoutController.call;
    layoutC.onItemTapped(widget.page);
    return Scaffold(
      body: Obx(() {        
        switch (layoutC.selectedPage.value) {
          case AppBarPage.myEvent:
            return const MyEventsPage();
          case AppBarPage.myFavorite:
            return const MyFavoritePage();
          case AppBarPage.profile:
            return const ProfilePage();
          case AppBarPage.home:
          default:
            return const HomePage();
        }
      }),
      bottomNavigationBar: const BottomNavigationBarCustom(),
    );
  }
}
