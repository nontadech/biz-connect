import 'package:biz_connect/domain/entities/event_entity.dart';
import 'package:biz_connect/presentation/pages/home/controllers/controllers.dart';
import 'package:biz_connect/presentation/pages/home/view/home_list.dart';
import 'package:biz_connect/presentation/pages/home/view/home_slide.dart';
import 'package:biz_connect/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class HomePage extends GetView<HomeController>  {
  const HomePage({super.key});
  
  @override
   Widget build(BuildContext context) {
    HomeBinding().dependencies();
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBarCustom(
        context,
        title: 'BizConnect',
        type: AppBarType.home,
        page: '/scan',
      ),
      body: RefreshIndicator(
        color: Colors.white,
        backgroundColor: Colors.blue,
        onRefresh: () async {
          controller.fetchData();
        },
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: GetX(
            init: controller,
            initState: (state) {
            },
            builder: (_) {
              List<Widget>  widget = [];
              var x = 0;
              if(controller.event.value != null){
                for (EventData event in controller.event.value!.data) {
                  if(event.list!.isNotEmpty){
                    if (event.type == EventType.events) {
                      widget = [...widget, HomeSlide(
                        title: event.title!,
                        isMore: event.is_more == 'N' ? false : true,
                        list: event.list!,
                        bgColor: x % 2 == 0 ? const Color(0xffffffff) : const Color(0xffF5F5F5),
                      )];
                      x++;
                    } else {
                      widget = [...widget, HomeList(
                        title: event.title!,
                        list: event.list!,
                        bgColor: x % 2 == 0 ? const Color(0xffffffff) : const Color(0xffF5F5F5),
                      )];
                      x++;
                    }
                  }
                }
                return Column(
                  children: widget,
                );
              }
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
          )
        ),
      ),
    );
  }
}
