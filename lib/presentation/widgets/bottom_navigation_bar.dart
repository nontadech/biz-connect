import 'package:biz_connect/app/config/themes/theme.dart';
import 'package:biz_connect/presentation/pages/layout/controllers/controllers.dart';
import 'package:biz_connect/presentation/pages/layout/view/layout_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

class BottomNavigationBarCustom extends StatefulWidget {
  const BottomNavigationBarCustom(
    {
      super.key,
    }
  );

  @override
  State<BottomNavigationBarCustom> createState() =>
      _BottomNavigationBarCustomState();
}

class _BottomNavigationBarCustomState extends State<BottomNavigationBarCustom> {
  final layoutC = LayoutController.call;
  
  @override
  void initState() {
    super.initState();
    Get.put<LayoutController>(LayoutController(AppBarPage.home), permanent: true);
  }
  
  void _onItemTapped(int index) {
    layoutC.onItemTapped(AppBarPage.values[index]);
  }

  @override
  Widget build(BuildContext context) {
    return Obx((){
      return Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: const Color(0xff000000).withOpacity(0.07),
              blurRadius: 30
            ),
          ],
        ),
        child: BottomNavigationBar(
          selectedFontSize: FontSize.h10,
          unselectedFontSize: FontSize.h10,
          selectedLabelStyle: const TextStyle(
            fontWeight: FontWeight.w500,
            fontFamily: 'LINESeedSansTH',
            color: Color(0xff56BED6)
          ),
          unselectedLabelStyle: const TextStyle(
            fontWeight: FontWeight.w500,
            fontFamily: 'LINESeedSansTH',
            color: Color(0xff56BED6)
          ),
          backgroundColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/icons/home.svg',
                height: 32,
                width: 32,
              ),
              activeIcon: SvgPicture.asset(
                'assets/icons/home_active.svg',
                height: 32,
                width: 32,
              ),
              label: 'Home'.tr(),
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/icons/note.svg',
                height: 32,
                width: 32,
              ),
              activeIcon: SvgPicture.asset(
                'assets/icons/note_active.svg',
                height: 32,
                width: 32,
              ),
              label: 'My Event'.tr(),
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/icons/heart.svg',
                height: 32,
                width: 32,
              ),
              activeIcon: SvgPicture.asset(
                'assets/icons/heart_active.svg',
                height: 32,
                width: 32,
              ),
              label: 'My Favourite'.tr(),
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/icons/profile.svg',
                height: 32,
                width: 32,
              ),
              activeIcon: SvgPicture.asset(
                'assets/icons/profile_active.svg',
                height: 32,
                width: 32,
              ),
              label: 'Profile'.tr(),
            ),
          ],
          currentIndex: layoutC.selectedPage.value.index,
          onTap: _onItemTapped,
        )
      );
    });
  }
}