import 'package:biz_connect/presentation/pages/my_favorite/my_favorite.dart';
import 'package:biz_connect/presentation/pages/home/home.dart';
import 'package:biz_connect/presentation/pages/pages.dart';
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

class LayoutPage extends GetView<LayoutController>  {
  final AppBarPage page;
  const LayoutPage(
    this.page,
    {super.key,});

  @override
   Widget build(BuildContext context) {
    LayoutBinding().dependencies();
    return Scaffold(
      body: GetX(
        init: controller,
        initState: (_){
          controller.onItemTapped(page);
        },
        builder: (_){
          switch (controller.selectedPage.value) {
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
