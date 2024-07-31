import 'package:biz_connect/presentation/pages/my_favorite/controllers/controllers.dart';
import 'package:biz_connect/presentation/pages/my_favorite/view/my_favorite_list.dart';
import 'package:biz_connect/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class MyFavoritePage extends GetView<MyFavoriteController> {
  const MyFavoritePage({super.key});
  
  @override
   Widget build(BuildContext context) {
    MyFavoriteBinding().dependencies();
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBarCustom(
        context,
        title: 'My Favourite',
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
