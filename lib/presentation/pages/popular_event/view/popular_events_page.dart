import 'package:biz_connect/presentation/pages/popular_event/controllers/controllers.dart';
import 'package:biz_connect/presentation/pages/popular_event/view/popular_event_list.dart';
import 'package:biz_connect/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class PopularEventsPage extends GetView<PopularEventController> {
  const PopularEventsPage({super.key});

  @override
   Widget build(BuildContext context) {
    PopularEventBinding().dependencies();
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBarCustom(
        context,
        title: 'Popular Event',
        type: AppBarType.back,
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
            if(controller.evant.value == null){
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
            return PopularEventList(
              evant: controller.evant.value!.data,
            );
          }
        )      
      )
    );
  }
}
