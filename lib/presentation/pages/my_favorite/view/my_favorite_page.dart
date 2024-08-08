import 'package:biz_connect/app/config/themes/theme.dart';
import 'package:biz_connect/presentation/controllers/auth/auth_controller.dart';
import 'package:biz_connect/presentation/pages/my_favorite/controllers/controllers.dart';
import 'package:biz_connect/presentation/pages/my_favorite/view/my_favorite_list.dart';
import 'package:biz_connect/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class MyFavoritePage extends GetView<MyFavoriteController> {
  const MyFavoritePage({super.key});
  
  Widget getWidgetEmpty(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 120,
          height: 120,
          padding: const EdgeInsets.all(35),
          decoration: BoxDecoration(
            color: const Color.fromRGBO(86, 190, 214, 0.14),
            borderRadius: BorderRadius.circular(100),
           
          ),
          child: SvgPicture.asset(
            'assets/icons/empty_favorite.svg'
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Center(
          child: TextCustom(
            text: 'You don`t have any saved', 
            fontSize: FontSize.h8, 
            fontWeight: FontWeight.w600, 
            color: const Color(0xff122D58)
          ),
        )
      ],
    );
  }
  
  @override
   Widget build(BuildContext context) {
    final authC = AuthController.call;
    if(!authC.isLoggedIn.value){
      return getWidgetEmpty(context);
    }
    MyFavoriteBinding().dependencies();
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBarCustom(
        context,
        title: 'Saved',
        type: AppBarType.none,
      ),
      body: RefreshIndicator(
        color: Colors.white,
        backgroundColor: Colors.blue,
        onRefresh: () async {
          controller.fetchData();
        },
        child: GetX(
          init: controller,
          initState: (state) {
          },
          builder: (_) {             
            if(controller.favorite.value == null){
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
            return MyFavoriteList(
              favorite: controller.favorite.value!.data,
            );
          }
        ),
      )
    );
  }
}
